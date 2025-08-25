with PPM;
with VEC3;
with COLOR;

procedure Main is

   Test : VEC3.VECTOR3;
   Test_Color : COLOR.EIGHT_BIT_COLOR;

begin
   --  Generate a PPM for fun if it doesn't exist beforehand
   PPM.PPM_GEN;

   -- Create a test vector and print it
   Test := VEC3.Init_Vec3(X => 10.0, Y => 15.6, Z => 21.4);
   --VEC3.Print_Vector(Test);

   -- Test color
   Test_Color := COLOR.Init_EIGHT_BIT_COLOR (X => 1, Y => 2, Z => 3);

end Main;
