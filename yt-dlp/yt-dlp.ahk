#NoEnv
#Warn 
SendMode Input
SetWorkingDir, %A_ScriptDir%
Menu, Tray, Icon, Papirus-Youtube.ico

#Persistent
; OnClipboardChange("DownloadVideo")
F3::
DownloadVideo() {
    if (InStr(Clipboard, "https://www.youtube.com/watch?v=") || InStr(Clipboard, "https://youtu.be/")) {
        ToolTip , Youtube video found`nDownloading it now
        SetTimer, RemoveTooltip, 1000
        Run , %ComSpec% /c wsl yt-dlp "%Clipboard%" , , Min
        Return
    }
    RemoveTooltip:
        Tooltip
    Return
}
