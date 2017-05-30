LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.fixed_pkg.all;

ENTITY neuron_layer_0 IS
PORT
(
	nnIn_0 : IN sfixed(4 DOWNTO -4);
	nnIn_1 : IN sfixed(4 DOWNTO -4);
	clk : IN STD_LOGIC;
	activate : IN STD_LOGIC;
	loadEnable : IN STD_LOGIC;
	loadValue : IN sfixed(3 DOWNTO -4);
	loadOffset : IN UNSIGNED(1 DOWNTO 0);
	finalLoad : OUT STD_LOGIC;
	neuronOut : OUT sfixed(3 DOWNTO 4)
);
END neuron_layer_0;

ARCHITECTURE behavorial OF neuron_layer_0 IS 

	SIGNAL w_0 : sfixed(3 DOWNTO -4);
	SIGNAL w_1 : sfixed(3 DOWNTO -4);
	SIGNAL latchOut : sfixed(3 DOWNTO 4);
	SIGNAL currentProduct : sfixed(8 DOWNTO -8);
	SIGNAL currentSum : sfixed(10 DOWNTO -8);
	SIGNAL sum : sfixed(10 DOWNTO -8);
	SIGNAL clockIter : UNSIGNED(1 DOWNTO 0) := "00";

BEGIN

	process(clk) begin
		if (rising_edge(clk)) then
			if (loadEnable = '1') then
				case loadOffset is
					when "00" =>
						w_0 <= loadValue;
						finalLoad <= '0';
					when "01" =>
						w_1 <= loadValue;
						finalLoad <= '1';
					when others => 
						finalLoad <= '0';
				end case;
			end if;
		end if;
	end process;

	process(clk, activate) begin
		if rising_edge(clk) then
			case clockIter is
				when "00" =>
					currentProduct <= nnIn_0 * w_0;
					currentSum <= to_sfixed(0, currentSum);
					clockIter <= to_unsigned(1, clockIter'length);
				when "01" =>
					currentProduct <= nnIn_1 * w_1;
					currentSum <= sum;
					clockIter <= to_unsigned(2, clockIter'length);
				when "10" =>
					currentProduct <= to_sfixed(0, currentProduct);
					currentSum <= sum;
					latchOut <= sum(3 downto 4);
				 when others =>
					null;
			end case;
			if (activate = '1') then
					if (clockIter = to_unsigned(0, clockIter'length)) then
					clockIter <= to_unsigned(1, clockIter'length);
				end if;
			elsif (activate = '0') then
				if (clockIter = to_unsigned(2, clockIter'length)) then
					clockIter <= to_unsigned(0, clockIter'length);
				end if;
			end if;
		end if;
	end process;

	sum <= resize(currentSum + currentProduct, sum);
	neuronOut <= latchOut;

END ARCHITECTURE;