LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.fixed_pkg.all;

ENTITY weightMemory IS
PORT
(
	clk : IN STD_LOGIC;
	we : IN STD_LOGIC;
	addr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	data : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	q : OUT sfixed(4 DOWNTO -4)
);
END weightMemory;

ARCHITECTURE behavorial OF weightMemory IS 

	type RAM_TYPE is array (0 to 16) of std_logic_vector(4 downto 0);

	constant MEM_INIT : RAM_TYPE := 
	(
		"000000000",
		"000010000",
		"111110000",
		"000000000",
		"000010000",
		"111110000",
		"000010000",
		"000010000",
		"11111111111111111",
		"11111111111111111",
		"11111111111111111",
		"11111111111111111",
		"11111111111111111",
		"11111111111111111",
		"11111111111111111",
		"11111111111111111",
	);
	signal ram : RAM_TYPE := MEM_INIT;
	signal addr_reg : natural range 0 to 15;
begin
	process (clk)
	begin
		if (rising_edge(clk)) then
			if (we = '1') then
			ram(addr) <= data;
			end if;
		end if;
	end process;
	addr_reg <= addr;
	q <= ram(addr_reg);
END ARCHITECTURE;
