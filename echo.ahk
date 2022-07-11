#Requires AutoHotkey v2.0-beta
; This solves some programs don't allow you to copy pasting things(passwords, etc)
^V:: {
	Send A_Clipboard	
}