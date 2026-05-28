#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%

; Press F24 to turn off the monitor
F24::
Sleep, 500
SendMessage, 0x112, 0xF170, 2,, Program Manager
return
