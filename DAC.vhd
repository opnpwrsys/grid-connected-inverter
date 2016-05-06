----------------------------------------------------------------------------------
-- Company:		Open Power Systems 
-- Engineer:	Jino M. Pattery 
-- 
-- Create Date:		11:38:38 04/23/2016 
-- Design Name:		Grid Connected Invereter 
-- Module Name:    	DAC - Behavioral 
-- Project Name:	Laboratory Scale Micro-Grid 
-- Target Devices:	Minispartan6+ by Scarab Hardware 
-- Tool versions:	ISE Design Suit 14.5, MATLAB 2012a 
-- Description:		Digital to Analog Converter - Sigma Delta 
--
-- Dependencies:	Xilinx System generator 
--
-- Revision:		1.01 
-- Revision 0.01 - File Created

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DAC is
Port ( clk32 : in  STD_LOGIC;
	 data : in  STD_LOGIC_VECTOR (7 downto 0);
	 PulseStream : out  STD_LOGIC);
end DAC;

architecture Behavioral of DAC is

signal sum : STD_LOGIC_VECTOR (8 downto 0);
begin
PulseStream <= sum(8);
	
process (clk32, sum)
begin
if rising_edge(clk32) then
  sum <= ("0" & sum(7 downto 0)) + ("0" &data);
end if;
end process;

end Behavioral;




