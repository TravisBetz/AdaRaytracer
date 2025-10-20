
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

   function Get_Unit_Vector(V: VECTOR3; Length: Long_Float) return VECTOR3 is 
   begin 
      return (Init_Vec3 (X => V.XYZ(0) / Length, 
                         Y => V.XYZ(1) / Length, 
                         Z => V.XYZ(2) / Length));
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
   procedure Reflect_Across_Origin(V: in out VECTOR3) is 
   begin 
      V.XYZ(0) := V.XYZ(0) * (Long_Float((-1)));
      V.XYZ(1) := V.XYZ(1) * (Long_Float((-1)));
      V.XYZ(2) := V.XYZ(2) * (Long_Float((-1)));
   end Reflect_Across_Origin;

   procedure Reflect_Across_X_Axis(V: in out VECTOR3) is 
   begin 
      V.XYZ(1) := V.XYZ(1) * (Long_Float((-1)));
   end Reflect_Across_X_Axis;

   procedure Reflect_Across_Y_Axis(V: in out VECTOR3) is 
   begin 
      V.XYZ(0) := V.XYZ(0) * (Long_Float((-1)));
   end Reflect_Across_Y_Axis;

   procedure Reflect_Across_Z_Axis(V: in out VECTOR3) is 
   begin 
      V.XYZ(2) := V.XYZ(2);
   end Reflect_Across_Z_Axis;

   -- Basic Operators
   procedure Plus_Equal_To(V1 : in out VECTOR3; 
                           V2 : VECTOR3) is 
   begin 
      V1.XYZ(0) := V1.XYZ(0) + V2.XYZ(0);
      V1.XYZ(1) := V1.XYZ(1) + V2.XYZ(1);
      V1.XYZ(2) := V1.XYZ(2) + V2.XYZ(2);
   end Plus_Equal_To;

   procedure Minus_Equal_To(V1 : in out VECTOR3; 
                            V2 : VECTOR3) is
   begin 
      V1.XYZ(0) := V1.XYZ(0) - V2.XYZ(0);
      V1.XYZ(1) := V1.XYZ(1) - V2.XYZ(1);
      V1.XYZ(2) := V1.XYZ(2) - V2.XYZ(2);
   end Minus_Equal_To;
   
   procedure Scale_By_Factor(V      : in out VECTOR3; 
                             Scalar : in Long_Float) is 
   begin 
      V.XYZ(0) := V.XYZ(0) * Scalar;
      V.XYZ(1) := V.XYZ(1) * Scalar;
      V.XYZ(2) := V.XYZ(2) * Scalar;
   end Scale_By_Factor;
   
end VEC3;