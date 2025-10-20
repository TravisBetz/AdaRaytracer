with VEC3;

package RAY is

   type RAY is record 
      Origin    : VEC3.VECTOR3;
      Direction : VEC3.VECTOR3;
   end record;

   -- Returns current position along ray.
   function Get_Distance_Along_Ray(Ray : in RAY; 
                                   t   : in Float) return VEC3.VECTOR3;


end RAY;