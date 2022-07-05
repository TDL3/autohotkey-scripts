Requires AutoHotkey v2.0-beta
TraySetIcon("pifmgr.dll", 13)

OnClipboardChange ClipboardChanged

ClipboardChanged(clip_type) {
	ToolTip A_Clipboard
    SetTimer () => ToolTip(), 5000
}
