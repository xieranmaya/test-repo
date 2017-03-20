; Mouse Wheel Tab Scroll 4 Chrome
; -------------------------------
; Scroll though Chrome tabs with your mouse wheel when hovering over the tab bar.
; If the Chrome window is inactive when starting to scroll, it will be activated.

#NoEnv	; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn	; Enable warnings to assist with detecting common errors.
#SingleInstance force	; Determines whether a script is allowed to run again when it is already running.
#UseHook Off	; Using the keyboard hook is usually preferred for hotkeys - but here we only need the mouse hook.
#InstallMouseHook
#MaxHotkeysPerInterval 500	; Avoids warning messages for high speed wheel users.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
Menu, Tray, Tip, Mousewheel tab scroll for Chrome (1.0.3)

WheelUp::
WheelDown::
	MouseGetPos,, ypos, id
	WinGetClass, class, ahk_id %id%
	If (ypos < 45 and ( InStr(class,"Chrome_WidgetWin") or InStr(class,"MozillaWindowClass") or InStr(class,"IEFrame") or InStr(class,"ApplicationFrameWindow") or InStr(class,"{1C03B488-D53B-4a81-97F8-754559640193}") ) )
	{
		IfWinNotActive ahk_id %id%
			WinActivate ahk_id %id%
		If A_ThisHotkey = WheelUp
			Send ^+{Tab}
		Else
			Send ^{Tab}
	}
	Else
	{
		If A_ThisHotkey = WheelUp
			Send {WheelUp}
		Else
			Send {WheelDown}
	}
	Return
