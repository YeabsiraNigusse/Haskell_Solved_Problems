data TurnstileState = Locked | Unlocked
  deriving (Eq, Show)

data TurnstileOutput = Thank | Open | Tut
  deriving (Eq, Show)

push :: TurnstileState -> (TurnstileOutput, TurnstileState)
push Locked   = (Tut , Locked)
push Unlocked = (Open, Locked)

coin :: TurnstileState -> (TurnstileOutput, TurnstileState)
coin _ = (Thank, Unlocked)


regularPerson :: TurnstileState -> ([TurnstileOutput], TurnstileState)
regularPerson state0 = 
    let (a1, state1) = coin state0
        (a2, state2) = push state1
        (a3, state3) = coin state2
        (a4, state4) = push state3
    in  ([a1, a2, a3, a4], state4)

distructedPerson :: TurnstileState -> ([TurnstileOutput], TurnstileState)
distructedPerson state0 =
    let (a1, state1) = coin state0
        (a2, state2) = coin state1
        (a3, state3) = coin state2
        (a4, state4) = coin state3
    in ([a1,a2,a3,a4], state4)

hastyPerson :: TurnstileState -> ([TurnstileOutput], TurnstileState)
hastyPerson state0 =
        let (a1, state1) = push state0
            (a2, state2) = if a1 == Tut then coin state1 else push state1
            (a3, state3) = if a2 == Tut then coin state2 else push state2
            (a4, state4) = if a3 == Tut then coin state3 else push state3
            (a5, state5) = if a4 == Tut then coin state4 else push state4
        in ([a1,a2,a3,a4,a5], state5)
       
tuesday :: TurnstileState -> ([TurnstileOutput], TurnstileState)
tuesday = undefined
    