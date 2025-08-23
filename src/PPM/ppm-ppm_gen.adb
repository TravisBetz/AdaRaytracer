with Ada.Integer_Text_IO;
with Ada.Text_IO;

separate (PPM)
procedure PPM_GEN is 

   -- Local constants
   ImageWidth  : INTEGER := 256;
   ImageHeight : INTEGER := 256;
   Blue        : INTEGER := 0;
   OutputFile  : Ada.Text_IO.FILE_TYPE;
   FileName    : constant STRING := "test.ppm";

   -- Local variables
   Red         : INTEGER := 0;
   Green       : INTEGER := 0;

   -- Use types
   use Ada.Text_IO;

begin

   -- Rendering a PPM is funny. Just print to a *.PPM file and voila
   CREATE(OutputFile, OUT_FILE, FileName);
   PUT_LINE(OutputFile, "P3");
   Ada.Integer_Text_IO.PUT(OutputFile, ImageHeight);
   Ada.Text_IO.Put(OutputFile, " ");
   Ada.Integer_Text_IO.PUT(OutputFile, ImageWidth);
   Ada.Text_IO.New_Line(OutputFile);
   Ada.Text_IO.Put(OutputFile, "255");
   Ada.Text_IO.New_Line(OutputFile);

   for Index in 0..ImageHeight
   loop 

      Ada.Text_IO.Put(Standard_Output, "There are ");
      Ada.Integer_Text_IO.PUT(Standard_Output, (ImageHeight - Index));
      Ada.Text_IO.Put(Standard_Output, " lines remaining");
      Ada.Text_IO.New_Line(Standard_Output);

      for Jndex in 0..ImageWidth
      loop

         Red := (255 * (Index) / (ImageWidth - 1));
         Green := (255 * (Jndex) / (ImageHeight - 1));

         Ada.Integer_Text_IO.Put(OutputFile, (Red));
         Ada.Text_IO.Put(OutputFile, " ");
         Ada.Integer_Text_IO.Put(OutputFile, (Green));
         Ada.Text_IO.Put(OutputFile, " ");
         Ada.Integer_Text_IO.Put(OutputFile, (Blue));
         Ada.Text_IO.New_Line(OutputFile);

      end loop;

   end loop;

   null;
end PPM_GEN;