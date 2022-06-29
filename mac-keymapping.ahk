#NoEnv
#Warn 
#SingleInstance, Force
SendMode Input
Menu, Tray, Icon, pifmgr.dll, 2

LControl & Tab::AltTab

; Win up is mandatory, otherwish windows key would stuck on down state, and causes all sorts of headaches
#IfWinNotActive ahk_exe FSD-Win64-Shipping.exe
^Space::
Send {LWin down}{Space}{LWin up}
Return

; ctrl shift space if deep rock galactic is in focus
#IfWinActive ahk_exe FSD-Win64-Shipping.exe
<^<+Space::
Send {LWin down}{Space}{LWin up}
Return

; Rectangle key mapping
#IfWinNotActive ahk_exe FSD-Win64-Shipping.exe
<^<!Right::
Send {LWin down}{Right}{LWin up}
Return

#IfWinNotActive ahk_exe FSD-Win64-Shipping.exe
<^<!Left::
Send {LWin down}{Left}{LWin up}
Return

#IfWinNotActive ahk_exe FSD-Win64-Shipping.exe
<^<!Enter::
Send {LWin down}{Up}{LWin up}
Return

#IfWinNotActive ahk_exe FSD-Win64-Shipping.exe
<^<!Backspace::
Send {LWin down}{Down}{LWin up}
Return
