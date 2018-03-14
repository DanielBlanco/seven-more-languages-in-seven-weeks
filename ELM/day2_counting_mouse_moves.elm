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
    { count : Int }


initialModel : Model
initialModel =
    { count = 0 }


init : ( Model, Cmd a )
init =
    ( initialModel, Cmd.none )



-- Update


type Msg
    = Add1


update : Msg -> Model -> ( Model, Cmd a )
update msg model =
    case msg of
        Add1 ->
            ( { model | count = model.count + 1 }, Cmd.none )



-- Subscriptions


subscriptions : Model -> Sub Msg
subscriptions model =
    Mouse.moves (\{ x, y } -> Add1)



-- View


view : Model -> Html Msg
view model =
    div [] [ text (toString model) ]
