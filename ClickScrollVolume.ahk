﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; Concept: Implement RButton as a modifier for other hotkeys. SOURCE: https://autohotkey.com/board/topic/80118-issue-with-rbutton/ & https://autohotkey.com/board/topic/72662-disable-context-menu-combo-hotkey-with-rbutton/
; https://autohotkey.com/board/topic/40719-cannot-stop-right-click-menu-from-displaying/

; Requires:
;   - AutoHotkey (any version should be fine)
;   - A mouse with a wheel
;   - Two or more fingers (optional but recommended)


; Tray icons
TrayTip:="RightClick+ScrollUp or ScrollDown to adjust volume"
TrayIconFile:=A_WinDir . "\System32\DDORes.dll" ; get tray icon from DDORes.dll
TrayIconNum:="-3021" ; use headphones as tray icon (icon 2032 in DDORes)
Menu,Tray,Tip,%TrayTip%
Menu,Tray,Icon,%TrayIconFile%,%TrayIconNum%

RButton & WheelUp::
	Send {Volume_up}
return
RButton::RButton

RButton & WheelDown::
	Send {Volume_down}
return
LButton::LButton
