;;;;; Includes
;~ #include <WinAPIFiles.au3>
; ---- opts
Opt("MouseClickDelay",0)
Opt("MouseClickDownDelay",0)
Opt("MouseClickDragDelay",0)
Opt("MouseCoordMode",2)
Opt("SendKeyDelay",25)
Opt("SendKeyDownDelay",0)
;;;;var
Local Const $sFilePath = (@ScriptDir & "\autoJoin.ini")
Local $game = IniRead($sFilePath, "game", "name", "Default Value")
Local $count = IniRead($sFilePath, "game", "count", "Default Value")
Local $hWnd = WinGetHandle("Diablo II")
;;wm
Local $WM_MOUSEMOVE     =  0x0200
Local $MK_LBUTTON       =  0x0001
Local $WM_LBUTTONDOWN   =  0x0201
Local $WM_LBUTTONUP     =  0x0202
;;;;ini

;;go
ControlFocus ( $hWnd, "", "" )
ControlClick ( $hWnd, "", "" , "Primary", 1 ,707, 460 )
ControlSend ( $hWnd, "", "", $game&$count )
ControlSend ( $hWnd, "", "", "{ENTER}" )

$count= $count +1
IniWrite($sFilePath, "game", "count", $count)


