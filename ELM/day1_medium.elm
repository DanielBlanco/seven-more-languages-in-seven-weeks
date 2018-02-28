module Main exposing (..)

{-| Multiplies two numbers
-}


multiply : number -> number -> number
multiply x y =
    x * y


{-| Curry multiply by 6
-}
mult6By : number -> number
mult6By =
    multiply 6


mult6By8 : number
mult6By8 =
    mult6By 8



-- Make a list of person records.
-- Write a function to find all of the people in your list older than 16.


type alias Person =
    { name : String
    , age : Int
    }


p1 =
    { name = "A", age = 13 }


p2 =
    { name = "B", age = 15 }


p3 =
    { name = "C", age = 17 }


p4 =
    { name = "D", age = 99 }


people =
    [ p1, p2, p3, p4 ]


olderThan16 : List Person -> List Person
olderThan16 list =
    case list of
        [] ->
            []

        hd :: tl ->
            if hd.age > 16 then
                hd :: olderThan16 tl
            else
                olderThan16 tl
