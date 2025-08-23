with PPM;
with VEC3;

procedure Main is

   Test : VEC3.VECTOR3;

begin
   --  Generate a PPM for fun if it doesn't exist beforehand
   PPM.PPM_GEN;
   Test := VEC3.Init_Vec3(X => 10.0, Y => 15.6, Z => 21.4);

end Main;
