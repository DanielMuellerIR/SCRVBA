Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Skonto_Exit(Cancel As Integer)
    DoCmd.GoToControl "Kombinationsfeld18"
    SendKeys "{F4}", False
End Sub

Private Sub Betrag_Exit(Cancel As Integer)
20  Forms![Buchungsanordnung]![Verwendungszweck].SetFocus
End Sub


Private Sub Form_LostFocus()
10  DoCmd.GoToRecord , , acFirst

End Sub


Private Sub Befehl62_Click()
    On Error GoTo Err_Befehl62_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl62_Click:
    Exit Sub

Err_Befehl62_Click:
    MsgBox Err.Description
    Resume Exit_Befehl62_Click

End Sub

Private Sub KF_ID_Kostenst_AfterUpdate()
10  Me!TF_Kostenstelle_Infoma = Format(Me!KF_ID_Kostenst.Column(2), "00000")
20  Me![ID aus Kostenträger].SetFocus

End Sub

Private Sub ID_aus_Kostenträger_AfterUpdate()
10  Me!Betrag.SetFocus
End Sub

Private Sub KF_ID_Kostenst_Change()

10  If Me.NewRecord And Me.RecordsetClone.RecordCount = 0 Then
20      Me!Betrag = Me.Parent!Betrag
30  End If

End Sub
