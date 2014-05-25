#IfWinActive ahk_class CabinetWClass ; for use in explorer.
#s::								;^!h::
ClipSaved := ClipboardAll
Send !d
Sleep 10
Send ^c
Run, cmd /K "cd `"%clipboard%`""
Clipboard := ClipSaved
ClipSaved =
return
#IfWinActive


; src: http://lifehacker.com/5306401/open-a-new-command-prompt-from-explorer-with-a-hotkey