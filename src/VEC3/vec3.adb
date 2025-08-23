with Ada.Numerics;

package body VEC3 is 

   -- Use types
   use Ada.Numerics;

   -- Constructor function
   function Init_Vec3(X, Y, Z : Long_Float) return VECTOR3 is 
   begin 
      return ( E => (0 => X, 1 => Y, 2 => Z));
   end Init_Vec3;

   -- Functions
   -- Getters
   function Get_X(V: VECTOR3) return Long_Float is 
   begin 
      return V.X;
   end Get_X;

   function Get_Y(V: VECTOR3) return Long_Float is
   begin 
      return V.Y;
   end Get_Y;

   function Get_Z(V: VECTOR3) return Long_Float is 
   begin 
      return V.Z;
   end Get_Z;

   function Get_Length(V: VECTOR3) return Long_Float is 
   begin 
      return Sqrt(V.X * V.X + V.Y * V.Y + V.Z * V.Z);
   end Get_Length;

   function Get_Unit_Vector(V: VECTOR3) return VECTOR3 is 
      Length : Long_Float;
   begin 
      Length := Get_Length (V);
      return (Init_Vec3 (X => V.X / Length, Y => V.Y / Length, Z => V.Z / Length));
   end Get_Unit_Vector;

   function Get_Unit_Vector(V: VECTOR3; F: Long_Float) return VECTOR3 is 
   begin 
      return (Init_Vec3 (X => V.X / F, Y => V.Y / F, Z => V.Z / F));
   end Get_Unit_Vector;



end VEC3;