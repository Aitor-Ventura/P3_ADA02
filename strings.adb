package body Strings is

   procedure Clear (Str : in out T_String) is
   begin
      Str.Buffer(1 .. Str.Length) := (others => ' ');
      Str.Length := 0;
   end Clear;

   procedure Init (Str : in out T_String; Value : String) is
   begin
      Str.Length := Value'Length;
      for i in Value'Range loop
         Str.Buffer(i) := Value(i);
      end loop;
   end Init;

   function To_String (Str : T_String) return String is
   begin
      if Str.Buffer(1) = ' ' then
         return "";
      end if;
      return Str.Buffer(1 .. Str.Length);
   end To_String;

   function Are_Equal
     (S1 : T_String;
      S2 : T_String) return Boolean
   is
   begin
      if S1.Buffer'Length>S2.Buffer'Length then
         for i in 1..S2.Max loop
            if S1.Buffer(i)/=S2.Buffer(i) then
               return False;
            end if;
         end loop;
            return True;
      else
         for i in 1..s1.Max loop
            if S1.Buffer(i)/=S2.Buffer(i) then
               return False;
            end if;
         end loop;
         return True;
      end if;
   end Are_Equal;

   function Search
     (Str   : T_String;
      Value : Character) return Natural
   is
   begin
      for i in 1 .. Str.Max loop
         if Str.Buffer(i) = Value then
            return i;
         end if;
      end loop;
      return 0;
   end Search;

function Search
     (Str   : T_String; Value : String) return Natural is
      flag : Boolean := False;
      pos : Natural;
      aux : Natural;
   begin
      for I in 1 .. Str.Max loop
         for J in 1 .. Value'Last loop
            if (Str.Buffer(I) = Value(J)) then
               flag := True;
               pos := I;
               aux := I;
               for K in 1 .. Value'Last loop
                  if (Str.Buffer(aux) = Value(K)) then
                     flag := True;
                     aux := aux + 1;
                  else
                     flag := False;
                  end if;
               end loop;
            elsif (flag and aux = 10) then
                   return pos;
            else
               flag := False;
            end if;
         end loop;
      end loop;
      if (flag) then
            return pos;
         else
            return 0;
      end if;

   end Search;

end Strings;
