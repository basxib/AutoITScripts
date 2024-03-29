#region --- Au3Recorder generated code Start (v3.3.9.5 KeyboardLayout=00000409)  ---

#region --- Internal functions Au3Recorder Start ---
Func _Au3RecordSetup()
Opt('WinWaitDelay',100)
Opt('WinDetectHiddenText',1)
Opt('MouseCoordMode',0)
Local $aResult = DllCall('User32.dll', 'int', 'GetKeyboardLayoutNameW', 'wstr', '')
If $aResult[1] <> '00000409' Then
  MsgBox(64, 'Warning', 'Recording has been done under a different Keyboard layout' & @CRLF & '(00000409->' & $aResult[1] & ')')
EndIf

EndFunc

Func _WinWaitActivate($title,$text,$timeout=0)
	WinWait($title,$text,$timeout)
	If Not WinActive($title,$text) Then WinActivate($title,$text)
	WinWaitActive($title,$text,$timeout)
EndFunc

_AU3RecordSetup()
#endregion --- Internal functions Au3Recorder End ---

Opt("WinTitleMatchMode",2)
Opt("SendKeyDelay",500)

#Include <Misc.au3> ; for _IsPressed()
Global $xPos
Global $yPos
Global $Paused
Global $skip = false
Global $first_run = true
HotKeySet("{PAUSE}", "TogglePause")
HotKeySet("{ESC}", "Terminate")
HotKeySet("{SPACE}", "Skip")

GetPos()
While 1
_WinWaitActivate("Google Chrome","")
#MouseMove(1400,500)
Send("{PGUP}{PGUP}")
If $first_run=  false Then
MouseClick("left",$xPos,$yPos)
Sleep(50)
Endif
$first_run = false
#MouseClick("left",1176,633,1)
MouseClick("left",1259,691,1)
Sleep(500)
MouseClick("left",1064,689,1)
Send("{CTRLDOWN}{TAB}{CTRLUP}")
WEnd

Func TogglePause()
    $Paused = NOT $Paused
    While $Paused
        sleep(100)
        ToolTip('Script is "Paused = SCRIPT IS NOT RUNNING = you wont get another message if you dont unpause it"',0,0)
    WEnd
    ToolTip("")
EndFunc

Func Terminate()
    Exit 0
EndFunc

Func GetPos()
    While 1
        ToolTip("Click on the facebook mini menu button")
        Sleep(100)
        If _IsPressed("01") Then ExitLoop
    WEnd
    ToolTip("")
    $pos = MouseGetPos()
    $xPos= $pos[0]
    $yPos=$pos[1]
EndFunc
#endregion --- Au3Recorder generated code End ---
