module Main exposing (..)

import Collage exposing (..)
import Color exposing (..)
import Element exposing (..)


carBottom =
    filled black (rect 160 50)


carTop =
    filled black (rect 100 60)


tire =
    filled red (circle 24)


car =
    collage 300
        300
        [ carBottom
        , carTop |> moveY 30
        , tire |> move ( -40, -28 )
        , tire |> move ( 40, -28 )
        ]


main =
    toHtml car
