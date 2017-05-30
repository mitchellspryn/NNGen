LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.fixed_pkg.all;

ENTITY aa IS
PORT
(
	clk : IN STD_LOGIC;
	addr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	data : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
);
END aa;

ARCHITECTURE behavorial OF aa IS 

	type RAM_TYPE_aa is array (0 to 7) of std_logic_vector(2 downto 0);

	constant MEM_INIT_aa : RAM_TYPE_aa := 
	(
		"001",
		"000",
		"000",
		"000",
		"001",
		"001",
		"001",
		"001"
	);

	SIGNAL ram = RAM_TYPE_aa := MEM_INIT_aa;

BEGIN

	process(clk)
	begin
		if (rising_edge(clk)) then
			data <= ram(to_integer(unsigned(addr)));
		end if;
	end process;
END ARCHITECTURE;
