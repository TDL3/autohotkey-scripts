#NoEnv
#Warn 
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; This solves some programs don't allow you to copy pasting things(passwords, etc)
^V::
Send %Clipboard%