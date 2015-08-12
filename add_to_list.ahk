;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^q::

InputBox, Index, Enter Index

Loop, Read, list.txt
{
WinActivate, Boolean Review
Send !t
Sleep 100
Send a
Sleep 250
Send %Index%
Sleep 100
Send %A_LoopReadLine%
Send {ENTER}
Sleep 2000
WinGetActiveTitle, Title
if (RegExMatch(Title, %A_LoopReadLine%) == 0) {
	Break
}
Send !u
Sleep 500
}

Escape::
ExitApp
Return
