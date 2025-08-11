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

Private Sub BS_DS_loeschen_Click()
10  DoCmd.RunCommand acCmdDeleteRecord
End Sub

Private Sub BS_DS_Neu_Click()
10  str_SQL_Statement = "INSERT INTO Zuordnung_Abschreibung ( ID_Gebäudeteil, Anteil )" _
                      & " SELECT F_Variable('lng_ID_Geb_Teil') AS idgbt, 1 AS Ant;"

20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True
50  Me.Requery
60  DoEvents
70  DBEngine.Idle
80  lng_ID_Zuordn = DMax("[ID_Zuordn]", "Zuordnung_Abschreibung")
90  Me.TF_ID_Zuordn.Visible = True
100 Me.Repaint
110 DoEvents
120 Me.TF_ID_Zuordn.SetFocus
130 DoCmd.FindRecord lng_ID_Zuordn
140 Me!TF_ID_Mietpartei.SetFocus
150 Me!TF_ID_Zuordn.Visible = False

End Sub
