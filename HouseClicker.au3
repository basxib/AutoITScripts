HotKeySet("{ALT}","Quit")
WinActivate("Woonnet Rijnmond","")
ClipPut("")
Local $clipboard=""

While StringCompare($clipboard, "Perfect!") <> 0
   Send("{CTRLDOWN}f{CTRLUP}Perfec")
   Send("{ESC}{SHIFTDOWN}{RIGHT}{RIGHT}{SHIFTUP}^c")
   $clipboard = ClipGet()
   Sleep(100)
WEnd
Send("{CTRLDOWN}f{CTRLUP}perfec{CTRLDOWN}{ENTER}{CTRLUP}")
ClipPut("")
$clipboard = ""
Sleep(500)
While StringCompare($clipboard, "Plaats reactie") <> 0
   Send("{CTRLDOWN}f{CTRLUP}Plaats react")
   Send("{ESC}{SHIFTDOWN}{RIGHT}{RIGHT}{SHIFTUP}^c")
   $clipboard = ClipGet()
   Sleep(100)
WEnd
Send("{ESCAPE}{ENTER}")
ClipPut("")
$clipboard= ""

Func Quit()
    Exit
EndFunc

