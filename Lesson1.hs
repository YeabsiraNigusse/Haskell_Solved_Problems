-- Question 1
-- Write a multiline comment below.

{--
This is a multiline comment
you can put your comment here
--}

-- Question 2
-- Define a function that takes a value and multiplies it by 3.

multiplyBy3 :: Integer -> Integer
multiplyBy3 = (*3)

-- Question 3
-- Define a function that calculates the area of a circle.

area :: Floating a => a -> a
area r = pi * r *r
-- Question 4
-- Define a function that calculates the volume of a cylinder by composing the previous function together with the height of the cylinder. 

volume :: Floating a => a -> a -> a
volume h r= area r * h

-- Question 5
-- Define a function that takes the height and radius of a cylinder and checks if the volume is greater than or equal to 42.

volume' :: (Ord a, Floating a) => a -> a -> Ordering
volume' h r = volume h r `compare` 42