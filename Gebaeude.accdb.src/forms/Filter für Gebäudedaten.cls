Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Befehl10_Click()
On Error GoTo Err_Befehl10_Click


    DoCmd.Close

Exit_Befehl10_Click:
    Exit Sub

Err_Befehl10_Click:
    MsgBox Err.Description
    Resume Exit_Befehl10_Click

End Sub
Private Sub Befehl38_Click()
On Error GoTo Err_Befehl38_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl38_Click:
    Exit Sub

Err_Befehl38_Click:
    MsgBox Err.Description
    Resume Exit_Befehl38_Click

End Sub
Private Sub Befehl39_Click()
On Error GoTo Err_Befehl39_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl39_Click:
    Exit Sub

Err_Befehl39_Click:
    MsgBox Err.Description
    Resume Exit_Befehl39_Click

End Sub
Private Sub Befehl52_Click()
On Error GoTo Err_Befehl52_Click


    DoCmd.Close

Exit_Befehl52_Click:
    Exit Sub

Err_Befehl52_Click:
    MsgBox Err.Description
    Resume Exit_Befehl52_Click

End Sub



Private Sub Anschrift_Change()
'DoCmd.GoToControl "Gebäude"
'SendKeys "{F4}", True
End Sub

Private Sub Anschrift_Click()
Me![Gebäude].Requery
End Sub


Private Sub Form_Current()
DoCmd.GoToControl "Anschrift"
SendKeys "{F4}", True

End Sub

Private Sub Gebäude_AfterUpdate()
Me![Pfad].Requery
DoCmd.GoToControl "Pfad"
SendKeys "{F4}", True
SendKeys "{DOWN}", True
End Sub

Private Sub Befehl81_Click()
On Error GoTo Err_Befehl81_Click


    DoCmd.Close

Exit_Befehl81_Click:
    Exit Sub

Err_Befehl81_Click:
    MsgBox Err.Description
    Resume Exit_Befehl81_Click

End Sub




Private Sub Pfad_Change()
SendKeys "^{c}", True

End Sub

Private Sub Starten_Click()
Dim Ergebnis
Ergebnis = Shell("C:\Programme\Microsoft Office\Office11\excel.exe", 1)
SendKeys "%D", False
SendKeys "{Down}", False
SendKeys "{Enter}", False
SendKeys "^{V}", True
SendKeys "{ENTER}", True
SendKeys "{ENTER}", True
End Sub
