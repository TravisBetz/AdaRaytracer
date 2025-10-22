with VEC3;
with RAY;

package SHAPES is

   type SHAPE is interface;

   function Test_Intersection(S : in SHAPE;
                              R : in RAY.Ray) return boolean
      is abstract;
   

end SHAPES;