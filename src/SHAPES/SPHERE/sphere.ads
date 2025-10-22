with VEC3;
with RAY;
with SHAPES;

package SPHERE is

   type SPHERE is new SHAPES.SHAPE with record
      Center : VEC3.VECTOR3;
      Radius : Long_Float;
   end record;

   -- Init functions
   function Init_Sphere(C : in VEC3.VECTOR3;
                        R : in Long_Float) return SPHERE;

   -- Getters
   function Get_Center(S : in SPHERE) return VEC3.VECTOR3;

   function Get_Radius(S : in SPHERE) return Long_Float;
   
   -- Intersection Math
   overriding
   function Test_Intersection(S : in SPHERE;
                              R : in RAY.RAY) return boolean;

end SPHERE;