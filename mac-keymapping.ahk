#Requires AutoHotkey v2.0-beta
TraySetIcon("pifmgr.dll", 32)

GroupAdd "MyGroup", "ahk_exe FSD-Win64-Shipping.exe"
GroupAdd "MyGroup", "ahk_exe csgo.exe"

#HotIf WinActive("ahk_group MyGroup")
^+space::Send "{LWin down}{Space}{LWin up}"

#HotIf not WinActive("ahk_group MyGroup")
^space::Send "{LWin down}{Space}{LWin up}"

#HotIf WinActive("ahk_exe godot.windows.opt.tools.64.exe")
^[::NumpadHome
^]::NumpadEnd
