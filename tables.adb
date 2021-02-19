package body Tables is

   function Minimum
     (Table : T_Table) return Integer is
      -- Asignamos el primer valor de la tabla a la variable MIN
      MIN: Integer := Table(1);
   begin
      -- Recorrer tabla
      for I in Table'Range loop
         -- Encontramos un valor más chiquito que MIN, por tanto lo asignamos
         if MIN >= Table(I) then
            MIN := Table(I);
         end if;
      end loop;
      -- Retornamos el valor mínimo
      return MIN;
   end Minimum;

   function Pos_Minimum
     (Table : T_Table) return Natural is
      -- Asignamos dos variables, una que controle la posición de index
      -- Otra que controle el valor mínimo del array
      MIN: Natural;
      VALUE: Integer := Table(1);
   begin
      -- Recorremos la tabla
      for I in Table'Range loop
         -- Asignamos el mínimo index
         if VALUE >= Table(I) then
            VALUE := Table(I);
            MIN := I;
         end if;
      end loop;
      -- Retornamos el index
      return MIN;
   end Pos_Minimum;

   function Linear_Search
     (Table : T_Table;
      Value : Integer) return Integer is

   begin
      -- Recorremos la tabla
      for I in Table'Range loop
         -- Si ecnontramos en la tabla Value
         if Table(I) = Value then
            -- Devolvemos index
            return I;
         end if;
      end loop;
      -- Si no encuentra el valor, retornamos Integer'First
      return Integer'First;
   end Linear_Search;

   function Binary_Search
     (Table : T_Table;
      Value : Integer) return Integer is
      -- Declaramos el medio
      MEDIO : Integer;
   begin
      -- Encontramos el valor medio de la tabla
      MEDIO := (Table'First + Table'Last) / 2;
      -- Si no se encuentra el valor, retornar Integer'First
      if Table'Length = 0 then
         return Integer'First;
         -- Si encontramos el valor, lo retornamos
      elsif Table(MEDIO) = Value then
         return MEDIO;
         -- SI estamos en la parte inferior, llamamos recursivamente
      elsif Table(MEDIO) > Value then
         return Binary_Search(Table(Table'First .. MEDIO-1), Value);
         -- Si estamos en la parte superior, llamamos recursivamente
      else
         return Binary_Search(Table(MEDIO+1 .. Table'Last), Value);
      end if;
   end Binary_Search;
-------------------------------------------------------------------------------
   procedure Swap
     (A : in out Integer;
      B : in out Integer) is
      -- Declaramos una variable temporal
      TEMP: Integer;
   begin
      -- Intercambiamos valores
      TEMP := A;
      A := B;
      B := TEMP;
   end Swap;

   procedure Swap
     (Table : in out T_Table;
      Pos_1 : in     Natural;
      Pos_2 : in     Natural) is
      -- Declaramos una variable temporal
      TEMP: Integer;
   begin
      -- Intercambiamos valores
      TEMP := Table(Pos_1);
      Table(Pos_1) := Table(Pos_2);
      Table(Pos_2) := TEMP;
   end Swap;

   -- Forma de optimizarlo, utilizar Swap
   procedure Bubble_Sort (Table : in out T_Table) is
      TEMP : Integer;
   begin
      for I in reverse Table'Range loop
         for J in Table'First .. I loop
            if Table(I) < Table(J) then
               TEMP     := Table(J);
               Table(J) := Table(I);
               Table(I) := Temp;
            end if;
         end loop;
      end loop;
   end Bubble_Sort;

   -- Forma de optimizarlo, utilizar Swap
   procedure Selection_Sort (Table : in out T_Table) is
      MIN : Natural;
      TEMP: Integer;
   begin
      for  i in Table'Range loop
         min := i;
         for j in i+1 .. Table'Last loop
            if Table(j) < Table(min) then
               min := j;
            end if;
         end loop;
         if min /= i then
            temp := Table(min);
            Table(min) := Table(i);
            Table(i) := temp;
         end if;
      end loop;
   end Selection_Sort;

   procedure Insertion_Sort (Table : in out T_Table) is
      First: Natural := Table'First;
      Last : Natural := Table'Last;
      Value : Integer;
      J : Integer;
   begin
      for i in (First + 1) .. Last loop
         Value := Table(i);
         J := i - 1;
         while J in Table'Range and then Table(J) > Value loop
            Table(J + 1) := Table(J);
            J := J - 1;
         end loop;
         Table(J + 1) := Value;
      end loop;
   end Insertion_Sort;

   procedure Shell_Sort (Table : in out T_Table) is
      increment : Natural := Table'Last / 2;
      j : Natural;
      temp : Integer;
   begin
      while increment > 0 loop
         for i in increment .. Table'Last loop
            j := i;
            temp := Table(i);
            while j > increment and then table(j-increment) > temp loop
               table(j) := table(j - increment);
               j := j - increment;
            end loop;
            table(j) := temp;
         end loop;
         if increment = 2 then
            increment := 1;
         else
            increment := increment * 5 / 11;
         end if;
      end loop;
   end Shell_Sort;
-------------------------------------------------------------------------------
   procedure Merge_Sort (Table : in out T_Table) is
   begin
      null;
   end Merge_Sort;

   procedure Quick_Sort (Table : in out T_Table) is
   begin
      null;
   end Quick_Sort;

end Tables;
