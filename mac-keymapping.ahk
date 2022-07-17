#Requires AutoHotkey v2.0-beta
TraySetIcon("pifmgr.dll", 32)

LControl & Tab::AltTab

GroupAdd "MyGroup", "ahk_exe FSD-Win64-Shipping.exe"
GroupAdd "MyGroup", "ahk_exe csgo.exe"

#HotIf WinActive("ahk_group MyGroup")
^+space::Send "{LWin down}{Space}{LWin up}"

#HotIf not WinActive("ahk_group MyGroup")
^space::Send "{LWin down}{Space}{LWin up}"
