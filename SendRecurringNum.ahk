#HotkeyInterval 1000
#SingleInstance Force
#Include <Hotstring>

Hotstring("(\d)\<(\d+)<", "typeout",3)
Hotstring("<(\d+)\<(\d+)<", "typeout",3)
Return

typeout:
    Max_Iterations := 40
    Iterations := $.Value(2)
    Num := "" $.Value(1)
    CombinedNum := ""

    if (!iterations || Iterations > Max_Iterations) {
        return
    }

    Loop, %Iterations% {
        CombinedNum = %CombinedNum%%Num%
    }

    old_clipboard := clipboard
    clipboard := ""
    clipboard := CombinedNum
    ClipWait
    Send {Ctrl Down} {v Down}
    Sleep 1
    Send {Ctrl Up}
    Sleep 1 ; Without this sleep a space will be sent after insert.
    Send {v Up}

    Sleep 20
    clipboard := old_clipboard
    old_clipboard := "" ; trash collection? unsure if this helps
Return
