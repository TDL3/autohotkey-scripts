#NoEnv
#Warn 
#SingleInstance, Force
SendMode Input
Menu, Tray, Icon, pifmgr.dll, 2

LControl & Tab::AltTab

^Space::
Send {LWin down}{Space}{LWin up}
