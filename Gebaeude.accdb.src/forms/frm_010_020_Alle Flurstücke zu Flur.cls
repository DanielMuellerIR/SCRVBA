Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub

Private Sub BS_Uebernehme_FS_in_LS_Click()

10  If DLookup("[ID_Flurstueck]", "tbl_100_05_QV_Liegensch_Flurstuecke", _
               "[ID_Gebäude] = " & lng_ID_Gebaeude & " AND ID_Flurstueck = " & Me!LF_Flurst_der_Flur) Then
20      MsgBox "Das Flurstück " _
             & Me.LF_Flurst_der_Flur.Column(1) _
             & " ist der Liegenschaft bereits zugeordnet"
30  Else
40      str_SQL_Statement = "INSERT INTO tbl_100_05_QV_Liegensch_Flurstuecke ( ID_Gebäude, ID_Flurstueck,  Teilweise )" _
                          & " SELECT " & lng_ID_Gebaeude & " AS idg, " & Me.LF_Flurst_der_Flur & "  AS idfs," _
                          & " [Forms]![frm_010_020_Alle Flurstücke zu Flur]![KK_Teilweise] AS Teilw;"

50      DoCmd.SetWarnings False
60      DoCmd.RunSQL str_SQL_Statement
70      DoCmd.SetWarnings True

80      Forms("frm_010_010_Gebäudeverwaltung")!UF_GebaeudeStamm!LF_Flurstuecke.Requery
90      Forms("frm_010_010_Gebäudeverwaltung")!UF_GebaeudeStamm.Form.Repaint
100     Call Forms("frm_010_010_Gebäudeverwaltung").UF_GebaeudeStamm.Form.Setze_Buttons

110 End If


End Sub

Private Sub Form_Open(Cancel As Integer)
10  Me.Caption = "Alle Flurstücke zur Gemarkung " _
               & Forms("frm_010_010_Gebäudeverwaltung")!UF_GebaeudeStamm!KF_ID_Gemarkung.Column(1) _
               & ", Flur " & Forms("frm_010_010_Gebäudeverwaltung")!UF_GebaeudeStamm!KF_ID_Flur.Column(1)

20  Setze_Buttons

End Sub

Private Sub LF_Flurst_der_Flur_AfterUpdate()
10  Setze_Buttons
End Sub

Private Sub LF_Flurst_der_Flur_DblClick(Cancel As Integer)
10  BS_Uebernehme_FS_in_LS_Click
End Sub

Sub Setze_Buttons()

10  If Me!LF_Flurst_der_Flur.ListIndex >= 0 Then
20      Me.BS_Uebernehme_FS_in_LS.Enabled = True
30  Else
40      Me.BS_Uebernehme_FS_in_LS.Enabled = False
50  End If

End Sub
