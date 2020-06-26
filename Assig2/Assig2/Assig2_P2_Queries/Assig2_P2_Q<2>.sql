-- 2.  List the pilot names that can fly a A310 plane type

SELECT name
FROM PILOT 
WHERE Plane_model_can_fly = 'A310'