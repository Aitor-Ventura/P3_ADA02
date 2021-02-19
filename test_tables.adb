--  Use these unit tests to check your implementation of the
--  routines. When the first 12 test pass you must also modify
--  this file adding tests to the pending routines (see bellow).

with Ada.Text_IO; use Ada.Text_IO;
with Tables;      use Tables;

procedure Test_Tables is

   procedure Test_1 is
      Table : constant T_Table (1 .. 5) := (5, 4, 3, 2, 1);
   begin
      Put ("Test_1: Minimum ......................... ");

      pragma Assert (Minimum (Table) = 1);
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Table : constant T_Table (1 .. 5) := (7, 4, 3, 2, 5);
   begin
      Put ("Test_2: Minimum ......................... ");

      pragma Assert (Minimum (Table) = 2);
      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Table : constant T_Table (1 .. 5) := (5, 4, 9, 8, 3);
   begin
      Put ("Test_3: Minimum ......................... ");

      pragma Assert (Minimum (Table) = 3);
      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      Table : constant T_Table (1 .. 5) := (5, 4, 3, 2, 1);
   begin
      Put ("Test_4: Pos_Minimum ..................... ");

      pragma Assert (Pos_Minimum (Table) = 5);
      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      Table : constant T_Table (1 .. 5) := (1, 4, 3, 2, 5);
   begin
      Put ("Test_5: Pos_Minimum ......................... ");

      pragma Assert (Pos_Minimum (Table) = 1);
      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      Table : constant T_Table (1 .. 5) := (5, 4, 1, 2, 3);
   begin
      Put ("Test_6: Pos_Minimum ......................... ");

      pragma Assert (Pos_Minimum (Table) = 3);
      Put_Line ("OK");
   end Test_6;

   procedure Test_7 is
      Table : constant T_Table (1 .. 5) := (5, 4, 3, 2, 1);
   begin
      Put ("Test_7: Linear search ................... ");

      pragma Assert (Linear_Search (Table, 5) = 1);
      Put_Line ("OK");
   end Test_7;

   procedure Test_8 is
      Table : constant T_Table (1 .. 5) := (5, 4, 3, 2, 1);
   begin
      Put ("Test_8: Linear search ................... ");

      pragma Assert (Linear_Search (Table, 2) = 4);
      Put_Line ("OK");
   end Test_8;

   procedure Test_9 is
      Table : constant T_Table (1 .. 5) := (5, 4, 3, 2, 1);
   begin
      Put ("Test_9: Linear search ................... ");

      pragma Assert (Linear_Search (Table, 1) = 5);
      Put_Line ("OK");
   end Test_9;

   procedure Test_10 is
      Table : constant T_Table (1 .. 5) := (5, 4, 3, 2, 1);
   begin
      Put ("Test_10: Linear search ................... ");

      pragma Assert (Linear_Search (Table, 9) = Integer'First);
      Put_Line ("OK");
   end Test_10;

   procedure Test_11 is
      Table : constant T_Table (1 .. 5) := (11, 12, 13, 14, 15);
   begin
      Put ("Test_11: Binary search ................... ");

      pragma Assert (Binary_Search (Table, 11) = 1);
      Put_Line ("OK");
   end Test_11;

   procedure Test_12 is
      Table : constant T_Table (21 .. 26) := (11, 12, 13, 14, 15, 16);
   begin
      Put ("Test_12: Binary search ................... ");

      pragma Assert (Binary_Search (Table, 11) = 21);
      Put_Line ("OK");
   end Test_12;

   procedure Test_13 is
      Table : constant T_Table (1 .. 5) := (11, 12, 13, 14, 15);
   begin
      Put ("Test_13: Binary search ................... ");

      pragma Assert (Binary_Search (Table, 14) = 4);
      Put_Line ("OK");
   end Test_13;

   procedure Test_14 is
      Table : constant T_Table (21 .. 26) := (11, 12, 13, 14, 15, 16);
   begin
      Put ("Test_14: Binary search ................... ");

      pragma Assert (Binary_Search (Table, 14) = 24);
      Put_Line ("OK");
   end Test_14;

   procedure Test_15 is
      Table : constant T_Table (1 .. 5) := (10, 11, 12, 13, 14);
   begin
      Put ("Test_15: Binary search ................... ");

      pragma Assert (Binary_Search (Table, 14) = 5);
      Put_Line ("OK");
   end Test_15;

   procedure Test_16 is
      Table : constant T_Table (21 .. 26) := (10, 11, 12, 13, 14, 15);
   begin
      Put ("Test_16: Binary search ................... ");

      pragma Assert (Binary_Search (Table, 15) = 26);
      Put_Line ("OK");
   end Test_16;

   procedure Test_17 is
      Table : constant T_Table (21 .. 25) := (11, 12, 13, 14, 15);
   begin
      Put ("Test_17: Binary search .................. ");

      pragma Assert (Binary_Search (Table, 9) = Integer'First);
      Put_Line ("OK");
   end Test_17;

   --  Write here your unit tests to check:
   --    * The two versions of Swap
   --    * All the sorting routines (Bubble_Sort, Selection_Sort,
   --      Insertion_Sort, Shell_Sort, Merge_Sort, Quick_Sort)
   --  ...
   procedure Test_18 is
      A : Integer := 1; B : Integer := 2;
   begin
      Put ("Test_18: Swap .................. ");
      Swap(A, B);
      pragma Assert (A = 2);
      Put_Line ("OK");
   end Test_18;

   procedure Test_19 is
      Table : T_Table(1 .. 5) := (1, 2, 3, 4, 5);
   begin
      Put ("Test_19: Swap .................. ");
      Swap(Table, 1, 5);
      pragma Assert (Table(1) = 5);
      Put_Line ("OK");
   end Test_19;

   procedure Test_20 is
      Table : T_Table(1 .. 5) := (12, 34, 54, 2, 3);
   begin
      Put ("Test_20: Bubble Sort .................. ");
      Bubble_Sort(Table);
      pragma Assert (Table(1) = 2);
      --for i in Table'Range loop
      --   Put(Integer'Image(Table(i)));
      --end loop;
      Put_Line ("OK");
   end Test_20;

   procedure Test_21 is
      Table : T_Table(1 .. 5) := (12, 34, 54, 2, 3);
   begin
      Put ("Test_21: Selection Sort .................. ");
      Selection_Sort(Table);
      pragma Assert (Table(1) = 2);
      Put_Line ("OK");
   end Test_21;

   procedure Test_22 is
      Table : T_Table(1 .. 5) := (12, 34, 54, 2, 3);
   begin
      Put ("Test_22: Insertion Sort .................. ");
      Insertion_Sort(Table);
      pragma Assert (Table(1) = 2);
      Put_Line ("OK");
   end Test_22;

   procedure Test_23 is
      Table : T_Table(1 .. 5) := (12, 34, 54, 2, 3);
   begin
      Put ("Test_23: Shell Sort .................. ");
      Shell_Sort(Table);
      pragma Assert (Table(1) = 2);
      Put_Line ("OK");
   end Test_23;

   procedure Test_24 is
      Table : T_Table(1 .. 5) := (12, 34, 54, 2, 3);
   begin
      Put ("Test_24: Merge Sort .................. ");
      Merge_Sort(Table);
      pragma Assert (Table(1) = 2);
      Put_Line ("OK");
   end Test_24;

  procedure Test_25 is
      Table : T_Table(1 .. 5) := (12, 34, 54, 2, 3);
   begin
      Put ("Test_25: Quick Sort .................. ");
      Quick_Sort(Table);
      pragma Assert (Table(1) = 2);
      Put_Line ("OK");
   end Test_25;



begin
   Put_Line ("********************* Test_Tables");
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
   Test_11;
   Test_12;
   Test_13;
   Test_14;
   Test_15;
   Test_16;
   Test_17;

   --  Add here calls to your new tests
   --  ...
   Test_18;
   Test_19;
   Test_20;
   Test_21;
   Test_22;
   Test_23;
   --Test_24;
   --Test_25;

end Test_Tables;
