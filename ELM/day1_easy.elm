{- Function to find the product of a list of numbers. -}


module Main exposing (..)


product : List number -> number
product list =
    case list of
        head :: tails ->
            head * product tails

        [] ->
            1



{- Function to return all of the x fields from a list of point records. -}


point1 =
    { x = 1, y = 2 }


point2 =
    { x = 2, y = 2 }


point3 =
    { x = 3, y = 2 }


pointyList =
    [ point1, point2, point3 ]


xfields : List { x : number, y : number } -> List number
xfields list =
    case list of
        [] ->
            []

        hd :: tl ->
            hd.x :: xfields tl



{- Use records to describe a person containing name, age, and address.
   You should also express the address as a record.
-}


type alias Person =
    { name : String
    , age : Int
    , address : Address
    }


type alias Address =
    { country : String
    , province : String
    }


person : Person
person =
    { name = "Daniel"
    , age = 37
    , address =
        { country = "Costa Rica"
        , province = "Guanacaste..."
        }
    }
