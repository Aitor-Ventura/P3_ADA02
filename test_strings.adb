with Ada.Text_IO; use Ada.Text_IO;
with Strings;     use Strings;

procedure Test_Strings is

   procedure Test_1 is
      Str : T_String (80);
   begin
      Put ("Test_1: Empty string .................... ");

      pragma Assert (To_String (Str) = "");
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Str : T_String (80);
   begin
      Put ("Test_2: Init string ..................... ");

      Init (Str, "Hello Ada");

      pragma Assert (To_String (Str) = "Hello Ada");
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Str : T_String (80);
   begin
      Put ("Test_3: Clear string .................... ");

      Init (Str, "Hello Ada");
      Clear (Str);

      pragma Assert (To_String (Str) = "");
      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      Text  : constant String := "Hello Ada";
      Str_1 : T_String (80);
      Str_2 : T_String (30);
   begin
      Put ("Test_4: Are equal (yes) ................. ");

      Init (Str_1, Text);
      Init (Str_2, Text);

      pragma Assert (Are_Equal (Str_1, Str_2));
      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      Text_1 : constant String := "Hello Ada";
      Text_2 : constant String := "Hello ADA";
      Str_1  : T_String (80);
      Str_2  : T_String (30);
   begin
      Put ("Test_5: Are equal (no) .................. ");

      Init (Str_1, Text_1);
      Init (Str_2, Text_2);

      pragma Assert (not Are_Equal (Str_1, Str_2));
      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      Text_1 : constant String := "Hello Ada";
      Text_2 : constant String := "Hello C";
      Str_1  : T_String (80);
      Str_2  : T_String (30);
   begin
      Put ("Test_6: Are equal (no) .................. ");

      Init (Str_1, Text_1);
      Init (Str_2, Text_2);

      pragma Assert (not Are_Equal (Str_1, Str_2));
      Put_Line ("OK");
   end Test_6;

   procedure Test_7 is
      Text : constant String := "Hello Ada";
      Str  : T_String (Text'Length);
      Pos  : Natural;
   begin
      Put ("Test_7: Search character (found) ....... ");

      Init (Str, Text);
      Pos := Search (Str, 'o');

      pragma Assert (Pos = 5);
      Put_Line ("OK");
   end Test_7;

   procedure Test_8 is
      Text : constant String := "Hello Ada";
      Str  : T_String (Text'Length);
      Pos  : Natural;
   begin
      Put ("Test_8: Search character (not found) .... ");

      Init (Str, Text);
      Pos := Search (Str, 'x');

      pragma Assert (Pos = 0);
      Put_Line ("OK");
   end Test_8;

   procedure Test_9 is
      Text : constant String := "Hello Ada";
      Str  : T_String (Text'Length);
      Pos  : Natural;
   begin
      Put ("Test_9: Search string (found) .......... ");

      Init (Str, Text);
      Pos := Search (Str, "Ada");

      pragma Assert (Pos = 7);
      Put_Line ("OK");
   end Test_9;

   procedure Test_10 is
      Text : constant String := "Hello Ada";
      Str  : T_String (Text'Length);
      Pos  : Natural;
   begin
      Put ("Test_10: Search string (not found) ...... ");

      Init (Str, Text);
      Pos := Search (Str, "XXX");

      pragma Assert (Pos = 0);
      Put_Line ("OK");
   end Test_10;

begin
   Put_Line ("********************* Test_Strings");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
   Test_7;
   Test_8;
   Test_9;
   Test_10;
end Test_Strings;
