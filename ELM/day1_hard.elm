-- Write the same function, but allow records where the age field might
-- be nothing. How does Elm support nil values?


module Main exposing (..)


type alias Person =
    { name : String
    , age : Maybe Int
    }


p1 =
    { name = "A", age = Just 13 }


p2 =
    { name = "B", age = Just 15 }


p3 =
    { name = "C", age = Just 17 }


p4 =
    { name = "D", age = Just 99 }


p5 =
    { name = "D", age = Nothing }


people =
    [ p1, p2, p3, p4, p5 ]


olderThan16 : List Person -> List Person
olderThan16 list =
    case list of
        [] ->
            []

        hd :: tl ->
            case hd.age of
                Nothing ->
                    olderThan16 tl

                Just age ->
                    if age > 16 then
                        hd :: olderThan16 tl
                    else
                        olderThan16 tl
