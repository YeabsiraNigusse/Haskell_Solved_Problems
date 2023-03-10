-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

consumption :: Int -> Int -> Int -> String
consumption cons hr maxvalue
             | tot == maxvalue = "equal to allowed value"
             | tot > maxvalue = "Greater than allowed value"
             | tot < maxvalue = "Less than allowed value"
             where tot = 30 * hr * cons


-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.

showConsumption :: Int -> Int -> Int -> String
showConsumption cons hr maxvalue 
                    | tot == maxvalue = show 0 ++ " kilowat saved"
                    | tot > maxvalue = show (tot - maxvalue) ++ " kilowat used in excess"
                    | tot < maxvalue = show (maxvalue - tot) ++ " kilowat saved"
                    where tot = cons * hr * 30


-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.


-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  

func :: Double -> Double -> String
func n m 
    | (n < 0) && (m < 0) = if n > m then show (n/m) else show (m/n)
    | m > n = if m == 0 then show m ++ " greater than " ++ show n ++ " But cant devide by zero" else show (n/m)
    | m < n = if n == 0 then show m ++ " less than " ++ show n ++ " But cant be devided by zero" else show (m/n)
    

-- Question 5
-- Write a function that takes in two numbers and calculates the sum of squares for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block. 

letwithwhere :: Double -> Double -> Double
letwithwhere a b = let sqrtprod = sqrt abprod where abprod = a * b
                   in sqrtprod + sqrtQuo
                   where sqrtQuo = let quo = a/b in sqrt quo