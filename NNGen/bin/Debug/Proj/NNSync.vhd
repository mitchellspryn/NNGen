LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.fixed_pkg.all;

ENTITY NNSync IS
PORT
(
	nnIn_0 : IN sfixed(4 DOWNTO -4);
	nnIn_1 : IN sfixed(4 DOWNTO -4);
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	nnOut_0 : OUT sfixed(4 DOWNTO -4);
	nnOut_1 : OUT sfixed(4 DOWNTO -4);
	ready : OUT STD_LOGIC
);
END NNSync;

ARCHITECTURE behavorial OF NNSync IS 

COMPONENT weightMemory
PORT
(
	clk : IN STD_LOGIC;
	addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	data : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
);
END COMPONENT;

COMPONENT TFWrapper_UNIPOLAR_SIGMIOD
PORT
(
	clk : IN STD_LOGIC;
	addr : IN sfixed(4 DOWNTO -4);
	data : OUT sfixed(4 DOWNTO -4)
);
END COMPONENT;

COMPONENT neuron_layer_0
PORT
(
	in_0 : IN sfixed(4 DOWNTO -4);
	in_1 : IN sfixed(4 DOWNTO -4);
	BIAS : IN sfixed(4 DOWNTO -4);
	clk : IN STD_LOGIC;
	activate : IN STD_LOGIC;
	loadEnable : IN STD_LOGIC;
	loadValue : IN sfixed(4 DOWNTO -4);
	loadOffset : IN UNSIGNED(1 DOWNTO 0);
	finalLoad : OUT STD_LOGIC;
	neuronOut : OUT sfixed(4 DOWNTO -4)
);
END COMPONENT;

COMPONENT neuron_layer_1
PORT
(
	in_0 : IN sfixed(4 DOWNTO -4);
	in_1 : IN sfixed(4 DOWNTO -4);
	BIAS : IN sfixed(4 DOWNTO -4);
	clk : IN STD_LOGIC;
	activate : IN STD_LOGIC;
	loadEnable : IN STD_LOGIC;
	loadValue : IN sfixed(4 DOWNTO -4);
	loadOffset : IN UNSIGNED(1 DOWNTO 0);
	finalLoad : OUT STD_LOGIC;
	neuronOut : OUT sfixed(4 DOWNTO -4)
);
END COMPONENT;

	TYPE neuronOutputArray IS ARRAY (0 TO 3) OF sfixed(4 DOWNTO -4);
	SIGNAL nnIn_0_latched : sfixed(4 DOWNTO -4);
	SIGNAL nnIn_1_latched : sfixed(4 DOWNTO -4);
	SIGNAL output_latch_0 : sfixed(4 DOWNTO -4);
	SIGNAL output_latch_1 : sfixed(4 DOWNTO -4);
	SIGNAL UNIPOLAR_SIGMIOD_0_out : sfixed(4 DOWNTO -4);
	SIGNAL neuronOutputs : neuronOutputArray;
	SIGNAL threshNeuronOutputs : neuronOutputArray;
	SIGNAL currentNeuronOutput : sfixed(4 DOWNTO -4);
	SIGNAL currentThreshNeuronOutput : sfixed(4 DOWNTO -4);
	SIGNAL wmOut : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL loadVal : sfixed(4 DOWNTO -4);
	SIGNAL loadOff : UNSIGNED(8 DOWNTO 0);
	SIGNAL wmAddr : UNSIGNED(3 DOWNTO 0);
	SIGNAL activateSig : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL clockCount : INTEGER RANGE 0 TO 4 := 0;
	SIGNAL finalLoads : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL loadEnables : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL internalReady : STD_LOGIC := '0';
	SIGNAL holdWM : STD_LOGIC := '1';
	SIGNAL wmClk : STD_LOGIC;

BEGIN

	wmClk <= clk AND NOT holdWM;
	wm: weightMemory PORT MAP
	(
		addr => std_logic_vector(wmAddr),
		clk => wmClk,
		data => wmOut
	);
	loadVal <= to_sfixed(wmOut, loadVal);

	Neuron_1_0: neuron_layer_0 PORT MAP
	(
		in_0 => nnIn_0,
		in_1 => nnIn_1,
		BIAS => "111110000",
		activate => activateSig(0),
		loadEnable => loadEnables(0),
		clk => clk,
		loadValue => loadVal,
		loadOffset => loadOff(1 downto 0),
		neuronOut => neuronOutputs(0)
	);

	Neuron_1_1: neuron_layer_0 PORT MAP
	(
		in_0 => nnIn_0,
		in_1 => nnIn_1,
		BIAS => "111110000",
		activate => activateSig(0),
		loadEnable => loadEnables(1),
		clk => clk,
		loadValue => loadVal,
		loadOffset => loadOff(1 downto 0),
		neuronOut => neuronOutputs(1)
	);

	Neuron_2_0: neuron_layer_1 PORT MAP
	(
		in_0 => threshNeuronOutputs(0),
		in_1 => threshNeuronOutputs(1),
		BIAS => "000010000",
		activate => activateSig(1),
		loadEnable => loadEnables(2),
		clk => clk,
		loadValue => loadVal,
		loadOffset => loadOff(1 downto 0),
		neuronOut => neuronOutputs(2)
	);

	Neuron_2_1: neuron_layer_1 PORT MAP
	(
		in_0 => threshNeuronOutputs(0),
		in_1 => threshNeuronOutputs(1),
		BIAS => "000010000",
		activate => activateSig(1),
		loadEnable => loadEnables(3),
		clk => clk,
		loadValue => loadVal,
		loadOffset => loadOff(1 downto 0),
		neuronOut => neuronOutputs(3)
	);

	process (clk) begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				wmAddr <= (others => '0');
				loadEnables <= (0 => '1', others => '0');
				loadOff <= (others => '0');
				internalReady <= '0';
				holdWM <= '0';
			elsif (internalReady = '0') then
				if (finalLoads(0) = '1') then
					loadOff <= (others => '0');
					loadEnables(0) <= '0';
					loadEnables(1) <= '1';
					holdWM <= '1';
				elsif (finalLoads(1) = '1') then
					loadOff <= (others => '0');
					loadEnables(1) <= '0';
					loadEnables(2) <= '1';
					holdWM <= '1';
				elsif (finalLoads(2) = '1') then
					loadOff <= (others => '0');
					loadEnables(2) <= '0';
					loadEnables(3) <= '1';
					holdWM <= '1';
				elsif (finalLoads(3) = '1') then
					loadOff <= (others => '0');
					loadEnables <= (others => '0');
					internalReady <= '1';
					holdWM <= '1';
				else
					loadOff <= loadOff + 1;
					wmAddr <= wmAddr + 1;
					holdWM <= '0';
				end if;
			end if;
		end if;
	end process;

	mem_0: TFWrapper_UNIPOLAR_SIGMIOD PORT MAP
	(
		clk => clk,
		addr => currentNeuronOutput,
		data => UNIPOLAR_SIGMIOD_0_out
	);

	with clockCount select currentThreshNeuronOutput <= 
		resize(UNIPOLAR_SIGMIOD_0_out, currentThreshNeuronOutput'high, currentThreshNeuronOutput'low) when 0,
		resize(UNIPOLAR_SIGMIOD_0_out, currentThreshNeuronOutput'high, currentThreshNeuronOutput'low) when 1,
		resize(UNIPOLAR_SIGMIOD_0_out, currentThreshNeuronOutput'high, currentThreshNeuronOutput'low) when 2,
		resize(UNIPOLAR_SIGMIOD_0_out, currentThreshNeuronOutput'high, currentThreshNeuronOutput'low) when 3,
		resize(UNIPOLAR_SIGMIOD_0_out, currentThreshNeuronOutput'high, currentThreshNeuronOutput'low) when 4;

	process(clk) begin
		if (rising_edge(clk)) then
		if ( reset = '1' or nnIn_0 /= nnIn_0_latched or nnIn_1 /= nnIn_1_latched ) then
			nnIn_0_latched <= nnIn_0;
			nnIn_1_latched <= nnIn_1;
			clockCount <= 0;
		else
			case clockCount is
				when 0 => 
					activateSig <= (0 => '1', others => '0');
					clockCount <= clockCount + 1;
				when 1 => 
					activateSig <= (0 => '1', others => '0');
					currentNeuronOutput <= neuronOutputs(0);
					threshNeuronOutputs(0) <= currentThreshNeuronOutput;
					clockCount <= clockCount + 1;
				when 2 => 
					activateSig <= (1 => '1', others => '0');
					currentNeuronOutput <= neuronOutputs(1);
					threshNeuronOutputs(1) <= currentThreshNeuronOutput;
					clockCount <= clockCount + 1;
				when 3 => 
					activateSig <= (1 => '1', others => '0');
					currentNeuronOutput <= neuronOutputs(2);
					threshNeuronOutputs(2) <= currentThreshNeuronOutput;
					clockCount <= clockCount + 1;
				when 4 => 
					activateSig <= (1 => '1', others => '0');
					currentNeuronOutput <= neuronOutputs(3);
					output_latch_0 <= threshNeuronOutputs(2);
					output_latch_1 <= currentThreshNeuronOutput;
					clockCount <= 0;
				end case;
			end if;
		end if;
	end process;

	nnOut_0 <= output_latch_0;
	nnOut_1 <= output_latch_1;
	ready <= internalReady;

END ARCHITECTURE;
