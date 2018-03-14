module Main exposing (main)

import Html exposing (Html, div, text)
import Mouse


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- Model


type alias Model =
    { x : Int, y : Int }


initialModel : Model
initialModel =
    { x = 0, y = 0 }


init : ( Model, Cmd a )
init =
    ( initialModel, Cmd.none )



-- Update


type Msg
    = Position Int Int


update : Msg -> Model -> ( Model, Cmd a )
update msg model =
    case msg of
        Position x y ->
            ( { model | x = x, y = y }, Cmd.none )



-- Subscriptions


subscriptions : Model -> Sub Msg
subscriptions model =
    Mouse.clicks (\{ x, y } -> Position x y)



-- View


view : Model -> Html Msg
view model =
    div [] [ text (toString model) ]
