with VEC3;

package body RAY is 

   function Init_Ray(Orig : in VEC3.VECTOR3;
                     Dir  : in VEC3.VECTOR3) return RAY is 
   begin
      return ((Origin => Orig, 
               Direction => Dir));
   end Init_Ray;

   function Get_Direction(R : in RAY) return VEC3.VECTOR3 is 
   begin 
      return R.Direction;
   end Get_Direction;

   function Get_Origin(R : in RAY) return VEC3.VECTOR3 is 
   begin 
      return R.Origin;
   end Get_Origin;

   function Get_Distance_Along_Ray(R   : in Ray;
                                   t   : in Long_Float) return VEC3.VECTOR3 is
   tD : VEC3.VECTOR3;
   begin 
      tD := VEC3.Scale(R.Direction, t);
      return VEC3.Plus(tD, R.Origin);
   end Get_Distance_Along_Ray;

end RAY;