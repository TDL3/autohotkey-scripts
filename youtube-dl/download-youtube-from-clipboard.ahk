#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
Menu, Tray, Icon, Papirus-Youtube.ico

#Persistent
OnClipboardChange("DownloadVideo")
DownloadVideo() {
    if (InStr(Clipboard, "https://www.youtube.com/watch?v=") || InStr(Clipboard, "https://youtu.be/")) {
        ToolTip , Youtube video found`nDownloading it now
        SetTimer, RemoveTooltip, 1000
        Run , youtube-dl %Clipboard% , , Min
        Return
    }
    RemoveTooltip:
        Tooltip
    Return
}
