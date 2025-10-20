with VEC3;

package RAY is 

   function Get_Distance_Along_Ray(Ray : in Ray;
                                   t   : in Float) is
   tD : VEC3;
   begin 
      tD := VEC3.Scale_By_Factor (Ray.Direction, t);
      return VEC3.Plus (tD, Ray.Origin);
   end Get_Distance_Along_Ray;

end RAY;