LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.fixed_pkg.all;

ENTITY TFWrapper_LINEAR IS
PORT
(
	clk : IN STD_LOGIC;
	addr : IN sfixed(4 DOWNTO -4);
	data : OUT sfixed(4 DOWNTO -4)
);
END TFWrapper_LINEAR;

ARCHITECTURE behavorial OF TFWrapper_LINEAR IS 


BEGIN

addr <= data;
END ARCHITECTURE;
