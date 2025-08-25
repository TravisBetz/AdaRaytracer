with Ada.Text_IO;

package COLOR is 


   subtype RGB is Integer range 0 .. 2;
   type EIGHT_BIT_RGB is array (RGB) of Integer;

   type EIGHT_BIT_COLOR is private;

   -- Constructor function
   function Init_EIGHT_BIT_COLOR(X, Y, Z : Integer) return EIGHT_BIT_COLOR;

   procedure Write_Color(Target : in Ada.Text_IO.File_Type;
                         C      : in EIGHT_BIT_COLOR);

   private 
     type EIGHT_BIT_COLOR is record 
         RGB : EIGHT_BIT_RGB := (others => 0);
      end record;

end COLOR;