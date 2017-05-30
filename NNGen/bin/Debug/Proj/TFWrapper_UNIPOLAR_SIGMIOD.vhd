LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.fixed_pkg.all;

ENTITY TFWrapper_UNIPOLAR_SIGMIOD IS
PORT
(
	clk : IN STD_LOGIC;
	addr : IN sfixed(4 DOWNTO -4);
	data : OUT sfixed(4 DOWNTO -4)
);
END TFWrapper_UNIPOLAR_SIGMIOD;

ARCHITECTURE behavorial OF TFWrapper_UNIPOLAR_SIGMIOD IS 

COMPONENT TFWrap_Mem_UNIPOLAR_SIGMIOD
PORT
(
	clk : IN STD_LOGIC;
	addr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
);
END COMPONENT;

	SIGNAL inverseAddr : sfixed(4 DOWNTO -4);
	SIGNAL inverseAddrTemp : UNSIGNED(8 DOWNTO 0);
	SIGNAL memAddr : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL memOut : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL memOut_sfixed : sfixed(4 DOWNTO -4);
	SIGNAL oneMinusMemOut_sfixed : sfixed(4 DOWNTO -4);
	SIGNAL outSig : sfixed(4 DOWNTO -4);

BEGIN

	inverseAddrTemp <= not(unsigned(addr)) + 1;
	inverseAddr <= to_sfixed(std_logic_vector(inverseAddrTemp), inverseAddr);

	process(addr) begin
		if (addr >= 0) then
			memAddr <= to_slv(addr(3 downto -4));
		else
			memAddr <= to_slv(inverseAddr(3 downto -4));
		end if;
	end process;

	sm: TFWrap_Mem_UNIPOLAR_SIGMIOD PORT MAP
	(
		addr => memAddr,
		clk => clk,
		data => memOut
	);
	memOut_sfixed <= to_sfixed(memOut, memOut_sfixed);

	oneMinusMemOut_sfixed <= resize(to_sfixed(1, oneMinusMemOut_sfixed) - memOut_sfixed, memOut_sfixed'high, memOut_sfixed'low);

	process(addr) begin
		if (addr > to_sfixed(6, addr)) then
			outSig <= to_sfixed(1, outSig);
		elsif(addr < to_sfixed(6, addr)) then
			outSig <= to_sfixed(-1, outSig);
		elsif ((addr >= to_sfixed(0, addr)) AND (addr < to_sfixed(6, addr))) then
			outSig <= memOut_sfixed;
		else
			outSig <= oneMinusMemOut_sfixed;
		end if;
	end process;

	data <= outSig;
END ARCHITECTURE;
