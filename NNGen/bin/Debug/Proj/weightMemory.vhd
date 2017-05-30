LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.fixed_pkg.all;

ENTITY weightMemory IS
PORT
(
	clk : IN STD_LOGIC;
	addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	data : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
);
END weightMemory;

ARCHITECTURE behavorial OF weightMemory IS 

	type RAM_TYPE is array (0 to 7) of std_logic_vector(8 downto 0);

	constant MEM_INIT : RAM_TYPE := 
	(
		"111110000",
		"000010000",
		"000010000",
		"111110000",
		"000001000",
		"111111000",
		"000001000",
		"111111000"
	);
	signal ram : RAM_TYPE := MEM_INIT;
begin
	process (clk)
	begin
		if (rising_edge(clk)) then
			data <= ram(to_integer(unsigned(addr)));
		end if;
	end process;
END ARCHITECTURE;
