
with Ada.Numerics.Long_Elementary_Functions;

package body VEC3 is 

   -- Use types
   use Ada.Numerics.Long_Elementary_Functions;

   -- Constructor function
   function Init_Vec3(X, Y, Z : Long_Float) return VECTOR3 is 
   begin 
      return ( V3 => (0 => X, 1 => Y, 2 => Z));
   end Init_Vec3;

   -- Functions
   -- Getters
   function Get_X(V: VECTOR3) return Long_Float is 
   begin 
      return V.V3(0);
   end Get_X;

   function Get_Y(V: VECTOR3) return Long_Float is
   begin 
      return V.V3(1);
   end Get_Y;

   function Get_Z(V: VECTOR3) return Long_Float is 
   begin 
      return V.V3(2);
   end Get_Z;

   function Get_Length(V: VECTOR3) return Long_Float is 
   begin 
      return Sqrt(V.V3(0) * V.V3(0) + V.V3(1) * V.V3(1) + V.V3(2) * V.V3(2));
   end Get_Length;

   function Get_Unit_Vector(V: VECTOR3) return VECTOR3 is 
      Length : Long_Float;
   begin 
      Length := Get_Length (V);
      return (Init_Vec3 (X => V.V3(0) / Length, Y => V.V3(1) / Length, Z => V.V3(2) / Length));
   end Get_Unit_Vector;

   function Get_Unit_Vector(V: VECTOR3; F: Long_Float) return VECTOR3 is 
   begin 
      return (Init_Vec3 (X => V.V3(0) / F, Y => V.V3(1) / F, Z => V.V3(2) / F));
   end Get_Unit_Vector;



end VEC3;