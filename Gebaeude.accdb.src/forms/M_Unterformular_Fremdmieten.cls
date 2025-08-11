Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Kombinationsfeld24_GotFocus()
SendKeys "{F4}", True
End Sub
Private Sub Befehl26_Click()
10  On Error GoTo Err_Befehl26_Click

20  Me.AllowDeletions = True
30  DoEvents
40  DoCmd.RunCommand acCmdDeleteRecord
50  DoEvents
60  Me.AllowDeletions = False

Exit_Befehl26_Click:
70  Exit Sub

Err_Befehl26_Click:
80  MsgBox Err.Description
90  Resume Exit_Befehl26_Click

End Sub
