with VEC3;

package RAY is

   type RAY is record 
      Origin    : VEC3.VECTOR3;
      Direction : VEC3.VECTOR3;
   end record;

   function Init_Ray(Orig : in VEC3.VECTOR3;
                     Dir  : in VEC3.VECTOR3) return RAY;

   function Get_Direction(R : in RAY) return VEC3.VECTOR3;

   function Get_Origin(R : in RAY) return VEC3.VECTOR3;

   -- Returns current position along ray.
   function Get_Distance_Along_Ray(R   : in RAY; 
                                   t   : in Long_Float) return VEC3.VECTOR3;


end RAY;