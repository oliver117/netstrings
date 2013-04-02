with Ada.Strings.Fixed;

package body Netstrings is

   function To_Netstring(Str : in String) return Netstring
   is
	Length : String := Integer'Image(Str'Length);
   begin
	return Netstring (Length (2 .. Length'Last) & ':' & Str & ',');
   end To_Netstring;

   function To_String(NStr : in Netstring) return String
   is
	Colon_Index : Natural := Ada.Strings.Fixed.Index(String(NStr), ":");
   begin
	return String (NStr (Colon_Index + 1 .. NStr'Last - 1));
   end To_String;

end Netstrings;
      
