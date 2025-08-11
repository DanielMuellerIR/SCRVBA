Attribute VB_Name = "mdl_071_Budde_Mausoperationen"
Option Compare Database
Option Explicit

Private Declare PtrSafe Sub mouse_event Lib "user32" ( _
  ByVal dwFlags As Long, _
  ByVal dx As Long, _
  ByVal dy As Long, _
  ByVal cButtons As Long, _
  ByVal dwExtraInfo As Long)

Private Const MOUSEEVENTF_ABSOLUTE = &H8000
Private Const MOUSEEVENTF_LEFTDOWN = &H2
Private Const MOUSEEVENTF_LEFTUP = &H4
Private Const MOUSEEVENTF_MIDDLEDOWN = &H20
Private Const MOUSEEVENTF_MIDDLEUP = &H40
Private Const MOUSEEVENTF_MOVE = &H1
Private Const MOUSEEVENTF_RIGHTDOWN = &H8
Private Const MOUSEEVENTF_RIGHTUP = &H10
'


' Mausklick simulieren
' Quelle: http://www.vbarchiv.net/tipps/tipp_223-maus-positionieren-und-klick-simulieren.html
' modifiziert  ( = zurückgebaut auf MAusklicks ohne Vorgabe der Position)
'
Public Sub Mausklick(str_Button As String)

10  Select Case str_Button
        ' linke Maustaste
    Case "L"
20      mouse_event MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0
30      mouse_event MOUSEEVENTF_LEFTUP, 0, 0, 0, 0

        ' rechte Maustaste
40  Case "R"
50      mouse_event MOUSEEVENTF_RIGHTDOWN, 0, 0, 0, 0
60      mouse_event MOUSEEVENTF_RIGHTUP, 0, 0, 0, 0
70  End Select

End Sub
