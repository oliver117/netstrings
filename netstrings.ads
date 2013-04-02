package Netstrings is
   -- ref. http://cr.yp.to/proto/netstrings.txt

   subtype Netstring is String;

   function To_Netstring(Str : in String) return Netstring;

   function To_String(NStr : in Netstring) return String;

end Netstrings;
