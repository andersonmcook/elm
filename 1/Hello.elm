-- every module must start with a module declaration
-- exposing specifies what function or type this module exports, basically. (..) is everything
module Hello exposing (..)

-- import the modules you want to use explicitly
import Html exposing (text)

-- front end apps start on a function called 'main'
-- main is a function that returns an element to draw on the page
main =
  text "Hello"

-- function signature, optional but recommended
-- takes two integer arguments and returns an integer
add : Int -> Int -> Int
 -- name arg1 arg2 =
  -- arg1 + arg2
add x y =
  x + y

-- call function
result = add 1 2

-- partial application
add2 = add 2
add2 3 -- = 5


divide : Int -> Int -> Int
divide x y =
  x // y -- // is for Int, / is for Float

-- using result of one function as the second argument in another
result 2 = add 1 (divide 9 3)


-- |> pipe operator
2
  |> add2
  |> divide 4
