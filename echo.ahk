#Requires AutoHotkey v2.0-beta
; workaround for some programs disable pating from clipboard
^V:: {
	Send A_Clipboard	
}
