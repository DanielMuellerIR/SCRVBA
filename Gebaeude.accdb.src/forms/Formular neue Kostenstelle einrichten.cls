Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub BS_Abbrechen_Click()

10  If MsgBox("Soll die neue Kotenstelle " & Me.TF_Kostenstelle & vbCrLf _
            & "mit der Bezeichnung " & Me.TF_Bezeichnung & " verworfen werden?", vbYesNo + vbQuestion, "Kostenstelle verwerfen?") = vbNo Then
        ' Breche ab
20      Exit Sub
30  Else

        ' Neuen Kostenstellen-DS sofort wieder löschen
80      str_SQL_Statement = "DELETE M_Kostenstellen.Kennummer FROM M_Kostenstellen WHERE (((M_Kostenstellen.Kennummer)=F_Variable('lng_Kennummer')));"
90      DoCmd.SetWarnings False
100     DoCmd.RunSQL str_SQL_Statement
110     DoCmd.SetWarnings True

120     lng_Kennummer = 0
130     Debug.Print MsgBox("Kostenstelle wurde wieder gelöscht!", vbOKOnly + vbCritical)

140     DoCmd.Close acForm, Me.Name

150 End If

End Sub

Private Sub BS_Uebernehmen_Click()

10  If Me.Dirty Then
20      DoCmd.RunCommand acCmdSaveRecord
30  End If
40  DoCmd.Close acForm, Me.Name

End Sub
