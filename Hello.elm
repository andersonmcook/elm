-- every module must start with a module declaration
-- exposing specifies what function or type this module exports, basically. (..) is everything
module Hello exposing (..)

-- import the modules you want to use explicitly
import Html exposing (text)

-- front end apps start on a function called 'main'
-- main is a function that returns an element to draw on the page
main =
  text "Hello"
