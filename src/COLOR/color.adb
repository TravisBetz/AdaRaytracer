with Ada.Integer_Text_IO;
with Ada.Text_IO;

package body COLOR is 

   -- Constructor function
   function Init_EIGHT_BIT_COLOR(X, Y, Z : Integer) return EIGHT_BIT_COLOR is 
   begin 
      return ( RGB => (0 => X, 1 => Y, 2 => Z));
   end Init_EIGHT_BIT_COLOR;


   procedure Write_Color(Target : in Ada.Text_Io.File_Type;
                         C      : in EIGHT_BIT_COLOR) is 
   begin 
      Ada.Integer_Text_IO.Put(Target, C.RGB(0));
      Ada.Text_IO.Put(Target, " ");
      Ada.Integer_Text_IO.Put(Target, C.RGB(1));
      Ada.Text_IO.Put(Target, " ");
      Ada.Integer_Text_IO.Put(Target, C.RGB(2));
      Ada.Text_IO.New_Line(Target);
   end Write_Color;

end COLOR;