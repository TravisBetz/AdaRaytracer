
with Ada.Numerics.Long_Elementary_Functions;

package body VEC3 is 

   -- Use types
   use Ada.Numerics.Long_Elementary_Functions;

   -- Constructor function
   function Init_Vec3(X, Y, Z : Long_Float) return VECTOR3 is 
   begin 
      return ( XYZ => (0 => X, 1 => Y, 2 => Z));
   end Init_Vec3;

   -- Functions
   -- Getters
   function Get_X(V: VECTOR3) return Long_Float is 
   begin 
      return V.XYZ(0);
   end Get_X;

   function Get_Y(V: VECTOR3) return Long_Float is
   begin 
      return V.XYZ(1);
   end Get_Y;

   function Get_Z(V: VECTOR3) return Long_Float is 
   begin 
      return V.XYZ(2);
   end Get_Z;

   function Get_Length(V: VECTOR3) return Long_Float is 
   begin 
      return Sqrt(V.XYZ(0) * V.XYZ(0) + 
                  V.XYZ(1) * V.XYZ(1) + 
                  V.XYZ(2) * V.XYZ(2));
   end Get_Length;

   function Get_Unit_Vector(V: VECTOR3) return VECTOR3 is 
      Length : Long_Float;
   begin 
      Length := Get_Length (V);
      return (Init_Vec3 (X => V.XYZ(0) / Length, 
                         Y => V.XYZ(1) / Length, 
                         Z => V.XYZ(2) / Length));
   end Get_Unit_Vector;

   function Get_Unit_Vector(V: VECTOR3; F: Long_Float) return VECTOR3 is 
   begin 
      return (Init_Vec3 (X => V.XYZ(0) / F, 
                         Y => V.XYZ(1) / F, 
                         Z => V.XYZ(2) / F));
   end Get_Unit_Vector;
   -- End of Getters

   -- Basic Operations
   function Plus(V1, V2: VECTOR3) return VECTOR3 is 
   begin 
      return (Init_Vec3 (X => V1.XYZ(0) + V2.XYZ(0), 
                         Y => V1.XYZ(1) + V2.XYZ(1), 
                         Z => V1.XYZ(2) + V2.XYZ(2)));
   end Plus;

   function Minus(V1, V2 : VECTOR3) return VECTOR3 is
   begin 
      return (Init_Vec3 (X => V1.XYZ(0) - V2.XYZ(0), 
                         Y => V1.XYZ(1) - V2.XYZ(1), 
                         Z => V1.XYZ(2) - V2.XYZ(2)));
   end Minus;

   function Dot_Product(V1, V2 : VECTOR3) return Long_Float is 
   begin 
      -- X1X2 + Y1Y2 + Z1Z2
      return (V1.XYZ(0) * V2.XYZ(0) + 
              V1.XYZ(1) * V2.XYZ(1) + 
              V1.XYZ(2) * V2.XYZ(2));
   end Dot_Product;

   function Cross_Product(V1, V2 : VECTOR3) return VECTOR3 is 
   begin 
      --Y1Z2 - Z1Y2, Z1X2 - X1Z2, X1Y2 - Y1X2
      return (Init_Vec3 (X => V1.XYZ(1) * V2.XYZ(2) - V1.XYZ(2) * V2.XYZ(1), 
                         Y => V1.XYZ(2) * V2.XYZ(0) - V1.XYZ(0) * V2.XYZ(2), 
                         Z => V1.XYZ(0) * V2.XYZ(1) - V1.XYZ(1) * V2.XYZ(0)));
   end Cross_Product;

   function Hadamard_Product(V1, V2 : VECTOR3) return VECTOR3 is 
   begin 
      -- X1X2, Y1Y2, Z1Z2
      return (Init_Vec3 (X => V1.XYZ(0) * V2.XYZ(0), 
                         Y => V1.XYZ(1) * V2.XYZ(1), 
                         Z => V1.XYZ(2) * V2.XYZ(2)));
   end Hadamard_Product;
   -- End of Basic Operations
   -- End of functions

   -- Procedures
   
   
end VEC3;