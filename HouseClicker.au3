HotKeySet("{ALT}","Quit")
WinActivate("Home - Woonnet Rijnmond","")
ClipPut("")
Local $clipboard=""
Send("{TAB}")
Do
   Send("{F5}")
   Sleep(1000)
   Send("{PGDN}{PGDN}")
   Sleep(300)
   Send("{PGDN}{PGDN}")
   Sleep(500)
   Send("{CTRLDOWN}f{CTRLUP}direct")
   Sleep(300)
   Send("{ESC}{SHIFTDOWN}{RIGHT}{RIGHT}{SHIFTUP}")
   Sleep(300)
   Send("^c")
   Sleep(300)
   $clipboard = ClipGet()
   Sleep(500)
Until StringCompare($clipboard, "Direct k") = 0

Send("{CTRLDOWN}f{CTRLUP}direc")
Sleep(200)
Send("{CTRLDOWN}{ENTER}{CTRLUP}")
Sleep(500)
While StringCompare($clipboard, "Perfect!") <> 0
   Send("{CTRLDOWN}f{CTRLUP}Perfec")
   Sleep(100)
   Send("{ESC}{SHIFTDOWN}{RIGHT}{RIGHT}{SHIFTUP}^c")
   Sleep(100)
   $clipboard = ClipGet()
   Sleep(100)
WEnd
Send("{CTRLDOWN}f{CTRLUP}perfec{CTRLDOWN}{ENTER}{CTRLUP}")
Sleep(500)
While StringCompare($clipboard, "en Plaats reactie") <> 0
   Send("{CTRLDOWN}f{CTRLUP}en Plaats react")
   Sleep(100)
   Send("{ESC}{SHIFTDOWN}{RIGHT}{RIGHT}{SHIFTUP}^c")
   Sleep(100)
   $clipboard = ClipGet()
WEnd
Sleep(100)
Send("{ESCAPE}{TAB}{ENTER}")
ClipPut("")
Func Quit()
    Exit
EndFunc

