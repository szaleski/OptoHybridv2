library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package types_pkg is
  
    --==================--
    --== Trigger data ==--
    --==================--
    
    subtype sbits_t is std_logic_vector(7 downto 0);
 
    type sbits_array_t is array(integer range <>) of sbits_t;
    
    --===================--
    --== Tracking data ==--
    --===================--
 
    type tk_data_t is record
        valid   : std_logic;
        bc      : std_logic_vector(11 downto 0);
        ec      : std_logic_vector(7 downto 0);
        flags   : std_logic_vector(3 downto 0);
        chip_id : std_logic_vector(11 downto 0);
        strips  : std_logic_vector(127 downto 0);
        crc     : std_logic_vector(15 downto 0);    
    end record;
    
    type tk_data_array_t is array(integer range <>) of tk_data_t;
    
end types_pkg;

package body types_pkg is 
end types_pkg;
