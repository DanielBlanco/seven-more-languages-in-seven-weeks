module Main exposing (..)

import Html exposing (Html, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import String


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }



-- Model


type alias Model =
    { content : String }


initialModel : Model
initialModel =
    { content = "" }


init =
    ( initialModel, Cmd.none )



-- Update


type Msg
    = Change String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Change c ->
            ( { model | content = c }, Cmd.none )



-- View


shout text =
    String.toUpper text


whisper text =
    String.toLower text


echo text =
    shout text ++ " " ++ whisper text


myStyle =
    style [ ( "width", "100%" ) ]


view : Model -> Html Msg
view model =
    div []
        [ input
            [ placeholder "Say something"
            , onInput Change
            , myStyle
            ]
            []
        , div [ myStyle ] [ text (echo (toString model.content)) ]
        ]
