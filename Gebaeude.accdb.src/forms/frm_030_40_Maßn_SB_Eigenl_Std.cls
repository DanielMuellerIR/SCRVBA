Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub BS_DS_loeschen_Click()

10  If lng_ID_SB = 0 Then
20      MsgBox "Bitte zunächst zum aktuell eingeloggten User in der Tabelle tbl_010_20_01_User" & vbCrLf _
             & "seinen Usernamen und seine SB-Zuordnung eintragen."
30      Exit Sub
40  End If

50  If MsgBox("Stunden-Eintrag zu :" & String(2, vbCrLf) _
            & "Sachbearb.: " & Me!TF_ID_SB.Column(1) & vbCrLf _
            & "Datum: " & Me.TF_Eigenl_Datum & vbCrLf _
            & "Stunden: " & Me.TF_Stunden & String(2, vbCrLf) _
            & "wirklich löschen?", vbYesNo + vbQuestion, "Eintrag löschen?") = vbNo Then
60      Exit Sub
70  End If

80  lng_ID_Eigenl = Me!ID_Eigenl
90  str_SQL_Statement = _
    "DELETE Maßnahmen_Eigenl_Stunden.ID_Eigenl FROM Maßnahmen_Eigenl_Stunden" _
                      & " WHERE (((Maßnahmen_Eigenl_Stunden.ID_Eigenl)=F_VAriable('lng_ID_Eigenl')));"
100 DoCmd.SetWarnings False
110 DoCmd.RunSQL str_SQL_Statement
120 DoCmd.SetWarnings True
130 DoEvents
140 Me.Requery
150 Setze_Buttions


End Sub

Private Sub BS_DS_Neu_Click()

10  lng_ID_SB = CDbl(Nz(DLookup("[ID_SB]", "tbl_010_20_01_User", "[User_Loginname] = '" & getUser() & "'")))

20  If lng_ID_SB = 0 Then
30      MsgBox "Bitte zunächst zum aktuell eingeloggten User in der Tabelle tbl_010_20_01_User" & vbCrLf _
             & "seinen Usernamen und seine SB-Zuordnung eintragen."
40      Exit Sub
50  End If

60  str_SQL_Statement = _
    "INSERT INTO Maßnahmen_Eigenl_Stunden ( ID_Teil_Massn, ID_SB, Eigenl_Datum, Stunden )" _
                      & " SELECT F_Variable('lng_ID_Teil_Massn') AS idtm, F_variable('lng_ID_SB') AS idsb, Date() AS dt_Heute, 1/24 AS Std;"
70  DoCmd.SetWarnings False
80  DoCmd.RunSQL str_SQL_Statement
90  DoCmd.SetWarnings True
100 Me.Requery
110 Setze_Buttions


End Sub

Sub Setze_Buttions()

10  If Me.RecordsetClone.RecordCount = 0 Then
20      Me!BS_DS_Neu.SetFocus
30      Me!BS_DS_loeschen.Enabled = False
40  Else
50      Me!BS_DS_loeschen.Enabled = True
60  End If

End Sub

Private Sub Form_Open(Cancel As Integer)
10  Me.BF_Datums_Hinweis.Caption = "Zulässige Datumseingaben: " & Dt_Std_Eing_Datum_min() & " bis " & Dt_Std_Eing_Datum_max()
End Sub

Private Sub TF_Stunden_AfterUpdate()
10  If Me.Dirty Then
20      DoCmd.RunCommand acCmdSaveRecord
30      TF_Summe_TAge.Requery
40  End If
End Sub
