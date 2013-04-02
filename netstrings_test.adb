with Netstrings;
with Ada.Text_IO;

procedure Netstrings_Test is
   Test_String : String := "Hello, world!";
   Test_Netstring : Netstrings.Netstring := "13:Hello, world!,";
begin
   Ada.Text_IO.Put_Line (Test_String & " -> " &
                         Netstrings.To_Netstring (Test_String));
   Ada.Text_IO.Put_Line (Test_Netstring & " -> " &
                         Netstrings.To_String (Test_Netstring));
end Netstrings_Test;
