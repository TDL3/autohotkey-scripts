#Requires AutoHotkey v2.0-beta
TraySetIcon("pifmgr.dll", 32)

#HotIf WinActive("ahk_exe chrome.exe")
LControl & Tab::Return
#Hotif WinActive("ahk_exe vmware.exe")
LControl & Tab::Return
#HotIf
LControl & Tab::AltTab

HotIfWinNotActive "ahk_exe FSD-Win64-Shipping.exe"
Hotkey "^space", ChangeIME

HotIfWinActive "ahk_exe FSD-Win64-Shipping.exe"
Hotkey "^+space", ChangeIME

ChangeIME(ThisHotKey) {
	; MsgBox ThisHotKey
	Send "{LWin down}{Space}{LWin up}"
}

