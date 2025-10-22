with VEC3;
with SHAPES;

package body SPHERE is 

   --Init Functions
   function Init_Sphere(C : in VEC3.VECTOR3;
                        R : in Long_Float) return SPHERE is
   begin 
      return (Center => C,
              Radius => R);
   end Init_Sphere;

   -- Getters
   function Get_Center(S : in SPHERE) return VEC3.VECTOR3 is
   begin 
      return S.Center;
   end Get_Center;

   function Get_Radius(S : in SPHERE) return Long_Float is 
   begin 
      return S.Radius;
   end Get_Radius;

   -- Intersection Math
   overriding
   function Test_Intersection(S : in SPHERE;
                              R : in RAY.RAY) return boolean
                              is separate;

end SPHERE;