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

#IfWinActive ahk_exe FSD-Win64-Shipping.exe
F8::
Send {LWin down}{Space}{LWin up}