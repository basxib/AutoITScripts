HotKeySet("{ALT}","Quit")
WinActivate("Woonnet Rijnmond","")
ClipPut("")
Local $clipboard=""

While StringCompare($clipboard, "en Plaats reactie") <> 0
   Send("{CTRLDOWN}f{CTRLUP}en Plaats react")
   Send("{ESC}{SHIFTDOWN}{RIGHT}{RIGHT}{SHIFTUP}^c")
   $clipboard = ClipGet()
   Sleep(100)
WEnd

Send("{ESCAPE}")
Send("{TAB}{SPACE}")
ClipPut("")
$clipboard= ""
Func Quit()
    Exit
EndFunc

