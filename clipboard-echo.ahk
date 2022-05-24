#NoEnv 
#Warn 
SendMode Input 
SetWorkingDir %A_ScriptDir%
Menu, Tray, Icon, pifmgr.dll, 13

#Persistent
OnClipboardChange("ClipboardChanged")
ClipboardChanged() {
    ToolTip, %Clipboard%
        SetTimer, RemoveToolTip, 1000
    return

    RemoveToolTip:
        ToolTip
    return
}
