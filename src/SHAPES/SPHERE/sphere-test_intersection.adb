separate (SPHERE)

-- Intersection logic
overriding
function Test_Intersection(S : in SPHERE;
                           R : in RAY.RAY) return boolean is
begin 
   return false; -- I am lazy
end Test_Intersection;