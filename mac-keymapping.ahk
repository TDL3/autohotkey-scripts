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


; Universal shotcuts
$!x::Send "^x"
$!c::Send "^c"
$!v::Send "^v"
$!s::Send "^s"
$!a::Send "^a"
$!z::Send "^z"
$!+z::Send "^y"
$!w::Send "^w"
$!f::Send "^f"
$!n::Send "^n"
$!t::Send "^t"
$!k::Send "^k"
$!q::Send "!{f4}"
$!r::Send "^{f5}"
$!m::Send "{LWin Down}{Down}{LWin Up}"
$!`::Send "{Alt Down}{Shift Down}{Tab}{Shift Up}"

; Quick Switch Tab shotcuts
$!1::Send "^1"
$!2::Send "^2"
$!3::Send "^3"
$!4::Send "^4"
$!5::Send "^5"
$!6::Send "^6"
$!7::Send "^7"
$!8::Send "^8"
$!9::Send "^9"
$!0::Send "^0"

; navigation, selection, delete a word/till end

$!Left::Send "{Home}"
$!Right::Send "{End}"
$!Up::Send "{Lctrl down}{Home}{Lctrl up}"
$!Down::Send "{Lctrl down}{End}{Lctrl up}"

$#+Left::Send "{ctrl down}{shift down}{Left}{shift up}{ctrl up}"
$#+Right::Send "{ctrl down}{shift down}{Right}{shift up}{ctrl up}"

$!+Left::Send "{shift down}{Home}{shift up}"
$!+Right::Send "{shift down}{End}{shift up}"
$!+Up::Send "{Ctrl Down}{shift down}{Home}{shift up}{Ctrl Up}"
$!+Down::Send "{Ctrl Down}{shift down}{End}{shift up}{Ctrl Up}"

!BS::Send "{LShift down}{Home}{LShift Up}{Del}"
#BS::Send "{LCtrl down}{BS}{LCtrl up}"

$#Space::Send "{Ctrl Down}{LWin Down}{Space}{LWin Up}{Ctrl Up}"