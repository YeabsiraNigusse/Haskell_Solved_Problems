-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)

f1 :: Floating a => a -> a -> a -> a
f1 x y z = x ** (y/z)

f2 :: Floating a => a -> a -> a -> a
f2 x y z = sqrt (x/y - z)


f3 :: Bool -> Bool -> [Bool]
f3 x y = [x == True] ++ [y]


f4 :: Eq a => [a] -> [a] -> [a] -> Bool
f4 x y z = x == (y ++ z)


-- Question 2
-- Why should we define type signatures of functions? How can they help you? How can they help others?

{--
having type signatures of function help us to describe the function

--}

-- Question 3
-- Why should you define type signatures for variables? How can they help you?

--defining type signatures is an important for  writing correct, efficient, and maintainable Haskell code.

-- Question 4
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.
{--
Yes, Here are the few ones
fromIntegral - changes from integer to general
show - changes to string
read - to specidied type

--}

-- Question 5
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?
{--
Yes, in Haskell, a list of lists is represented as a nested 
list where each element of the outer list is itself a list. Here's an example:
[[1,2,3],[4,5,6],[7,8,9]]

to acces inner element of a list we can use like this
let myList = [[1,2,3],[4,5,6],[7,8,9]]
let element = myList !! 1 !! 2
--}