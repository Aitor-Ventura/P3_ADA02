package body Stacks is

   procedure Clear (Stack : out Stack_Type) is
   begin
      for i in Stack.Contents'Range loop
         Stack.Contents(i) := 0;
      end loop;
      Stack.Length := 0;
   end Clear;

   function Is_Empty (Stack : Stack_Type) return Boolean is
   begin
      return Stack.Length = 0;
   end Is_Empty;

   function Is_Full  (Stack : Stack_Type) return Boolean is
   begin
      return Stack.Length = Stack.Contents'Last;
   end Is_Full;

   procedure Push (Stack : in out Stack_Type;
                   Item  : in     Integer) is
   begin
      if Is_Full(Stack) then raise Stack_Full;
      else
         Stack.Length := Stack.Length + 1;
         Stack.Contents(Stack.Length) := Item;
      end if;
   end Push;

   procedure Pop (Stack : in out Stack_Type;
                  Item  :    out Integer) is
   begin
      if Is_Empty(Stack) then raise Stack_Empty;
      else
         Item := Stack.Contents(Stack.Length);
         Stack.Length := Stack.Length - 1;
      end if;
   end Pop;

   function Top (Stack : Stack_Type) return Integer is
   begin
      return Stack.Length;
   end Top;

end Stacks;
