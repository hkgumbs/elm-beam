module Main exposing (..)

import Basics exposing (..)
import Platform


type Session
    = Session Int


main : Platform.Program () () Session
main =
    Platform.server
        { init = Session 1
        , handleCall = handleCall
        }


handleCall : Session -> Session
handleCall (Session i) =
    if i >= 7 then
        Session 0
    else
        Session (i + 1)
