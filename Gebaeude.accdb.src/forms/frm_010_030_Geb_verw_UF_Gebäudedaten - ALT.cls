Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_Flurst_neu_Click()
10    DoCmd.OpenForm "frm_010_020_Alle Flurstücke zu Flur"
End Sub

Private Sub BS_Flurst_weg_Click()
10  str_SQL_Statement = "DELETE tbl_100_05_QV_Liegensch_Flurstuecke.ID_Gebäude," _
                      & " tbl_100_05_QV_Liegensch_Flurstuecke.ID_Flurstueck" _
                      & " FROM tbl_100_05_QV_Liegensch_Flurstuecke" _
                      & " WHERE (((tbl_100_05_QV_Liegensch_Flurstuecke.ID_Gebäude)=F_Variable('lng_id_Gebaeude'))" _
                      & " AND ((tbl_100_05_QV_Liegensch_Flurstuecke.ID_Flurstueck)= " & Me.LF_Flurstuecke & "));"

20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True
50  Me.LF_Flurstuecke.Requery
60  Me!BS_Flurst_neu.SetFocus
70  DoEvents
80  Setze_Buttons

End Sub

Private Sub Form_Open(Cancel As Integer)
10  Setze_Buttons
End Sub

Private Sub KF_Gebteil_AfterUpdate()

' Merke die Gebäudeteil-ID aus Kombifeld
10  k = Me!KF_Gebteil

    ' Lösche ggf. bisherige Zuordnung, zur Sicherheit aus allen GebTeil_DS'en dieser Liegenschaft
20  str_SQL_Statement = "UPDATE tbl_100_20_Gebäudeteile SET tbl_100_20_Gebäudeteile.LS_Grst_wert_hier_zuordn = False" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäude)=F_Variable('lng_ID_Gebaeude')));"
30  DoCmd.SetWarnings False
40  DoCmd.RunSQL str_SQL_Statement
50  DoCmd.SetWarnings True

    ' lege neue Zuordnung fest
60  str_SQL_Statement = "UPDATE tbl_100_20_Gebäudeteile SET tbl_100_20_Gebäudeteile.LS_Grst_wert_hier_zuordn = True" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & k & "))"
70  DoCmd.SetWarnings False
80  DoCmd.RunSQL str_SQL_Statement
90  DoCmd.SetWarnings True

End Sub

Private Sub KF_ID_Gemarkung_AfterUpdate()

10  If Me!KF_ID_Gemarkung.OldValue <> Me!KF_ID_Gemarkung.Value Or IsNull(Me!KF_ID_Gemarkung) Then

20      If MsgBox("Bei Änderung der Germarkung werden die bisherigen Einträge zu Flur UND Flurstücken ausgetragen?" & vbCrLf & vbCrLf _
                & "Fortfahren?", vbYesNo) = vbNo Then
30          Me!KF_ID_Gemarkung = Me!KF_ID_Gemarkung.OldValue
40          Exit Sub
50      Else
60          str_SQL_Statement = "DELETE tbl_100_05_QV_Liegensch_Flurstuecke.ID_Gebäude" _
                              & " FROM tbl_100_05_QV_Liegensch_Flurstuecke" _
                              & " WHERE (((tbl_100_05_QV_Liegensch_Flurstuecke.ID_Gebäude)=F_Variable('lng_ID_Gebaeude')));"
70          DoCmd.SetWarnings False
80          DoCmd.RunSQL str_SQL_Statement
90          DoCmd.SetWarnings True
100         Me!KF_ID_Flur = Null
110     End If

120 End If


130 Me!KF_ID_Flur.Requery
140 Me!LF_Flurstuecke.Requery

150 Setze_Buttons

End Sub

Private Sub KF_ID_Flur_AfterUpdate()

10  If Me!KF_ID_Flur.OldValue <> Me!KF_ID_Flur.Value Or IsNull(Me!KF_ID_Flur) _
       And Me.LF_Flurstuecke.ListCount > 0 Then

20      If MsgBox("Bei Änderung der Flur werden die bisherigen Flurstücke der alten Flur ausgetragen.?" & vbCrLf & vbCrLf _
                & "Fortfahren?", vbYesNo) = vbNo Then
30          Me!KF_ID_Flur = Me!KF_ID_Flur.OldValue
40          Exit Sub
50      Else
60          str_SQL_Statement = "DELETE tbl_100_05_QV_Liegensch_Flurstuecke.ID_Gebäude" _
                              & " FROM tbl_100_05_QV_Liegensch_Flurstuecke" _
                              & " WHERE (((tbl_100_05_QV_Liegensch_Flurstuecke.ID_Gebäude)=F_Variable('lng_ID_Gebaeude')));"
70          DoCmd.SetWarnings False
80          DoCmd.RunSQL str_SQL_Statement
90          DoCmd.SetWarnings True
100     End If

110 End If

120 Me!LF_Flurstuecke.Requery

130 Setze_Buttons

End Sub

Private Sub LF_Flurstuecke_AfterUpdate()
10  Setze_Buttons
End Sub

Public Sub Setze_Buttons()

10  DoEvents
20  On Error Resume Next

30  If IsNull(Me.KF_ID_Flur) = True Then
40      Me!BS_Flurst_neu.Enabled = False
50      Me!BS_Flurst_weg.Enabled = False
60  Else
70      Me!BS_Flurst_neu.Enabled = True
80  End If

90  If Me.LF_Flurstuecke.ListIndex >= 0 Then
100     Me.BS_Flurst_weg.Enabled = True
110 Else
120     Me.BS_Flurst_weg.Enabled = False
130 End If

140 On Error GoTo 0

End Sub
