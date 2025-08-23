package VEC3 is 

   -- 0=x 1=y 2=z
   subtype Axis is Integer range 0 .. 2; 
   type XYZAxis is array (Axis) of Long_Float;

   type VECTOR3 is private;

   -- Constructor function
   function Init_Vec3(X, Y, Z : Long_Float) return VEC3 is 
   begin 

      return ( E => (0 => X, 1 => Y, 2 => Z));

   end Init_Vec3;

   -- Functions
   -- Getters
   function Get_X(V: VECTOR3) return Long_Float;
   function Get_Y(V: VECTOR3) return Long_Float;
   function Get_Z(V: VECTOR3) return Long_Float;
   function Get_Length(V: VECTOR3) return Long_Float;
   function Get_Unit_Vector(V: VECTOR3) return VECTOR3;
   function Get_Unit_Vector(V: VECTOR3, F: Long_Float) return VECTOR3;

   -- Basic Operators
   function Plus(V1, V2: VECTOR3) return VECTOR3;
   function Minus(V1, V2 : VECTOR3) return VECTOR3;
   function Dot_Product(V1, V2 : VECTOR3) return Long_Float; -- X1X2 + Y1Y2 + Z1Z2
   function Cross_Product(V1, V2 : VECTOR3) return VECTOR3; --Y1Z2 - Z1Y2, Z1X2 - X1Z2, X1Y2 - Y1X2
   function Hadamard_Product(V1, V2 : VECTOR3) return VECTOR3; -- X1X2, Y1Y2, Z1Z2


   -- Procedures
   -- Reflections
   procedure Reflect_Across_Origin(V: VECTOR3);
   procedure Reflect_Across_X_Axis(V: VECTOR3);
   procedure Reflect_Across_Y_Axis(V: VECTOR3);
   procedure Reflect_Across_Z_Axis(V: VECTOR3);
   
   -- Basic Operators
   procedure Plus_Equal_To(V1, V2 : VECTOR3);
   procedure Minus_Equal_To(V1, V2 : VECTOR3);
   procedure Scale_By_Factor(V : VECTOR3; Scalar : Long_Float);

   -- Debugging
   procedure Print_Vector(V: VECTOR3) is separate; -- Fuck my life

   private 
      type VECTOR3 is record 
         V3 : XYZAxis := (others => 0.0);
      end record;


end VEC3;