
; TraySetIcon("Papirus-Youtube.ico")

; OnClipboardChange("ytdlp")

Hotkey "F3", ytdlp


ytdlp(ThisHotkey) {
ToolTip ' /c wsl yt-dlp "' . A_Clipboard . '"'
	    SetTimer () => ToolTip(), 5000
    if (InStr(A_Clipboard, "https://www.youtube.com/watch?v=") || InStr(A_Clipboard, "https://youtu.be/")) {
		ToolTip "Youtube video found`nDownloading it now"
	    SetTimer () => ToolTip(), 1000
        Run  A_ComSpec ' /c wsl yt-dlp "%A_Clipboard%"  ', ,Min
    }
}
