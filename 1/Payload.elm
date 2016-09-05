module Main exposing (..)
import Html exposing (Html, div, button, text)
import Html.Events exposing (onClick)
import Html.App

type alias Model =
  Int

init : ( Model, Cmd Msg )
init =
  ( 0, Cmd.none )

type Msg
  = Increment Int
  | Decrement Int

view : Model -> Html Msg
view model =
  div []
    [ button [ onClick (Increment 2) ] [ text "+" ]
    , text (toString model)
    , button [ onClick (Decrement 3)] [ text "-" ]
    ]

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    Increment howMuch ->
      ( model + howMuch, Cmd.none )
    Decrement num ->
      ( model - num, Cmd.none )

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none

main : Program Never
main =
  Html.App.program
  { init = init
  , view = view
  , update = update
  , subscriptions = subscriptions
  }
