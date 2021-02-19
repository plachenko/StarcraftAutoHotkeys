#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetKeyDelay, 0,30

Esc::
    if !Menu
        Menu := true
    else
        Menu := false
return

Esc up::
    if Menu
        Send, {F10}
    else if ( !Menu  && !NoEsc)
        Loop 10 {
            Send, {Esc}
        }
    NoEsc := false
return

$::
    if Menu
        ControlSend, , {F10}, A
        ControlSend, , E, A
        ControlSend, , R, A
        ControlSend, , R, A
        Menu := false
return

Del::
    if Menu
        ControlSend, ,!x, A
        ControlSend, ,x, A
        Menu := false
return

(::
    if Menu
        ControlSend, , {F10}, A
        ControlSend, , S, A
        Loop 100{
            Send, {BackSpace}
        }
        Send, AutoSave
        ControlSend, , !S, A
        ControlSend, , O, A
        Menu := false
return


)::
    if Menu
        ControlSend, , {F10}, A
        ControlSend, , L, A
        ControlSend, , L, A
        Menu := false
return

NumpadEnter up::
Send, {Space}
return

Numpad7::
Send, M
return
Numpad8::
Send, S
return
Numpad9::
Send, A
return

Numpad4::
Send, P
return
Numpad5::
Send, H
return
Numpad6::
Send, C
return

NumpadAdd::
    if Menu
        ControlSend, , S, A
        ControlSend, , O, A
        SetKeyDelay, 0,1000
        ControlSend, , O, A
        SetKeyDelay, -1,100
        ControlSend, , L, A

NumpadMult::
    if Menu
        Send, O
        Menu := false

BackSpace::
    if Menu
        Send, C