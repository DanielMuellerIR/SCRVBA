Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Kennnummer_aus_B_Gebäudegruppen_AfterUpdate()
Forms![B_Formular_Gebäudebewertung]![Eingebettet36].SetFocus
End Sub

Private Sub Kennnummer_aus_B_Gebäudegruppen_LostFocus()
Forms![B_Formular_Gebäudebewertung]![Eingebettet36].SetFocus
End Sub
Private Sub Befehl57_Click()
On Error GoTo Err_Befehl57_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl57_Click:
    Exit Sub

Err_Befehl57_Click:
    MsgBox Err.Description
    Resume Exit_Befehl57_Click

End Sub
