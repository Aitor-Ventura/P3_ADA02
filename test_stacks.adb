with Ada.Text_IO; use Ada.Text_IO;
with Stacks;      use Stacks;

procedure Test_Stacks is

   procedure Test_1 is
      Stack : Stack_Type;
   begin
      Put ("Test_1: Empty stack ..................... ");
      Clear(Stack);
      pragma Assert (Is_Empty (Stack));
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Stack : Stack_Type;
   begin
      Put ("Test_2: Stack with 1 element ............ ");
      Clear(Stack);
      Push (Stack, 1);

      pragma Assert (not Is_Empty (Stack));
      pragma Assert (Top (Stack) = 1);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Stack : Stack_Type;
      Value : Integer;
   begin
      Put ("Test_3: Stack push & pop ................ ");
      Clear(Stack);
      Push (Stack, 1);
      Pop (Stack, Value);

      pragma Assert (Value = 1);
      pragma Assert (Is_Empty (Stack));
      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      Stack   : Stack_Type;
      Value_1 : Integer;
      Value_2 : Integer;
   begin
      Put ("Test_4: Stack push & pop (2) ............ ");
      Clear(Stack);
      Push (Stack, 1);
      Push (Stack, 2);

      Pop (Stack, Value_2);
      Pop (Stack, Value_1);

      pragma Assert (Value_2 = 2);
      pragma Assert (Value_1 = 1);
      pragma Assert (Is_Empty (Stack));
      Put_Line ("OK");
   end Test_4;

begin
   Put_Line ("********************* Test_Stacks");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
end Test_Stacks;
