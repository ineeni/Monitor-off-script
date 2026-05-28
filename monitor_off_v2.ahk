#Requires AutoHotkey v2.0
#SingleInstance Force

; Press F24 to turn off the monitor
F24::
{
    ; Delay for 500ms to allow key release so the monitor doesn't immediately wake up
    Sleep(500)
    
    ; 0x112 is WM_SYSCOMMAND, 0xF170 is SC_MONITORPOWER, 2 is OFF
    SendMessage(0x112, 0xF170, 2,, "Program Manager")
}
