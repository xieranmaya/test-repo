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
