Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Form_Open(Cancel As Integer)
10  lng_ID_Gebaeude = 0
20  Me.UF_GebaeudeStamm.Requery
30  Setze_Buttons
End Sub

Private Sub LF_Gebaeude_AfterUpdate()

10  lng_ID_Gebaeude = Me.LF_Gebaeude
20  Me!LF_Zug_Gebaeudeteile.Requery
30  Me!LF_Zug_Gebaeudeteile.Selected(0) = True
40  Me!LF_Zug_Gebaeudeteile = Me!LF_Zug_Gebaeudeteile.Column(0, 0)

50  On Error Resume Next    'ggf. existiert kein einziges Gebädeteil mehr (oder noch nicht)
60  lng_ID_Geb_Teil = Me!LF_Zug_Gebaeudeteile
70  Me!UF_GebaeudeTeil!KF_ID_GebT_Zug_GebT.Requery
80  On Error GoTo 0

90  DoEvents

100 Me!UF_GebaeudeStamm.Requery
110 Me!UF_GebaeudeStamm!KF_ID_Flur.Requery
120 Me!UF_GebaeudeStamm!LF_Flurstuecke.Requery

130 Me!UF_GebaeudeTeil.Requery
140 Me!UF_GebaeudeStamm!KF_Gebteil.Requery

150 On Error Resume Next
160 Me!UF_GebaeudeStamm!KF_Gebteil = DLookup("[ID_Gebäudeteil]", "tbl_100_20_Gebäudeteile", _
                                             "[ID_Gebäude] = " & lng_ID_Gebaeude & " AND LS_Grst_wert_hier_zuordn = true")
170 On Error GoTo 0

180 Setze_Buttons
190 Me.Repaint

End Sub

Private Sub LF_Zug_Gebaeudeteile_AfterUpdate()
10  lng_ID_Geb_Teil = Me.LF_Zug_Gebaeudeteile
20  Me!UF_GebaeudeTeil.Requery
30  Me!UF_GebaeudeTeil!KF_ID_GebT_Zug_GebT.Requery
40  Me!UF_GebaeudeTeil.Form.Aktual_Zug_Gebauedeteil
50  Setze_Buttons

End Sub

Private Sub BS_Gebaeude_Neu_Click()

10  If VBA.MsgBox("Wollen Sie wirklich eine komplett neue Liegenschaft anlegen?", vbYesNo, "Neue Liegenschaft") = vbNo Then
20      Exit Sub
30  End If

40  str_SQL_Statement = "INSERT INTO tbl_100_10_Liegenschaften ( Bezeichnung ) SELECT 'Neue Liegenshaft?' AS bez;"

50  DoCmd.SetWarnings False
60  DoCmd.RunSQL str_SQL_Statement
70  DoCmd.SetWarnings True

80  i = DMax("[ID_Gebäude]", "tbl_100_10_Liegenschaften")
90  Me!LF_Gebaeude.Requery
100 Me!LF_Gebaeude = i
110 Me!UF_GebaeudeStamm.Requery

120 Setze_Buttons

End Sub

Private Sub BS_Gebaeude_loeschen_Click()

10  If DCount("[ID_Gebäudeteil]", "tbl_100_20_Gebäudeteile", "[ID_Gebäude] = " & lng_ID_Gebaeude) > 0 Then
20      MsgBox " Es existieren noch Gebäudeteile zu dieser Liegenschaft." & vbCrLf _
             & " Bitte löschen Sie zunächst diese.", vbOKOnly, "noch Gebäudeteile vorhanden"
30      Exit Sub
40  End If

50  lng_ID_Gebaeude = Me!LF_Gebaeude
60  str_temp_Obj_Name = Me!LF_Gebaeude.Column(1)

70  If VBA.MsgBox("Wollen Sie wirklich die Liegenschaft <<" & str_temp_Obj_Name & ">> löschen?", vbYesNo, "Liegenschaft löschen") = vbNo Then
80      Exit Sub
90  End If

100 Call Liegensch_loeschen(lng_ID_Gebaeude)

110 If Len(str_Hinweis) > 0 Then
120     MsgBox str_Hinweis
130     Exit Sub
140 Else
150     MsgBox str_temp_Obj_Name & " erfolgreich und endgültig aus der Datenbank gelöscht!"
160 End If

180 Me!LF_Gebaeude.Requery
190 Me!UF_GebaeudeStamm.Requery

End Sub

Private Sub UF_GebaeudeStamm_Exit(Cancel As Integer)

10  i = Me!LF_Gebaeude
20  Me!LF_Gebaeude.Requery
30  Me!LF_Gebaeude = i

End Sub

Private Sub BS_Geb_Teil_Neu_Click()

10  str_SQL_Statement = "INSERT INTO tbl_100_20_Gebäudeteile ( ID_Gebäude, Gebäudeteil )" _
                      & " SELECT [Formulare]![frm_010_010_Gebäudeverwaltung]![LF_Gebaeude] AS idg, 'Neues Gebäudeteil' AS gbt;"
20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True

50  i = DMax("[ID_Gebäudeteil]", "tbl_100_20_Gebäudeteile")
60  Me!LF_Zug_Gebaeudeteile.Requery
70  Me!LF_Zug_Gebaeudeteile = i
80  Me.UF_GebaeudeTeil.Requery

End Sub


Private Sub BS_Geb_Teil_Loeschen_Click()

10  lng_ID_Geb_Teil = Me!LF_Zug_Gebaeudeteile
20  str_temp_Obj_Name = Me!LF_Zug_Gebaeudeteile.Column(1)

30  If MsgBox("Mit Löschen des Gebäudeteils <<" & str_temp_Obj_Name & ">>" & vbCrLf _
            & "werden ebenfalls alle Einträge dieses Gebäudeteils zu .." & vbCrLf & vbCrLf _
            & " -   Maßnahmen" & vbCrLf _
            & " -   Bewertung (AUCH ARCHIV!)" & vbCrLf _
            & " -   Mietkalkulation" & vbCrLf _
            & " -   Nebenkosten" & vbCrLf & vbCrLf _
            & " ..  gelöscht! Nun Löschen?", vbYesNo, "Gebäudeteil löschen") = vbNo Then
40      Exit Sub
50  End If

60  Me!LF_Zug_Gebaeudeteile = 0
70  Me!UF_GebaeudeTeil.Requery

    ' =================================
80  Call Geb_Teil_loeschen(lng_ID_Geb_Teil)
    ' =================================
90  DoEvents

100 If Len(str_Hinweis) > 0 Then
110     MsgBox str_Hinweis
120     Exit Sub
130 Else
140     MsgBox str_temp_Obj_Name & " erfolgreich und endgültig aus der Datenbank gelöscht!"
150 End If

160 Me!LF_Zug_Gebaeudeteile.Requery
170 Me!UF_GebaeudeTeil.Requery
180 Setze_Buttons

End Sub

Private Sub UF_GebaeudeTeil_Exit(Cancel As Integer)

10  i = Me!LF_Zug_Gebaeudeteile
20  Me!LF_Zug_Gebaeudeteile.Requery
30  Me!LF_Zug_Gebaeudeteile = i

End Sub

Sub Setze_Buttons()

10  If Me.LF_Gebaeude.ListIndex >= 0 Then
20      Me.BS_Gebaeude_loeschen.Enabled = True
30      Me.BS_Geb_Teil_Neu.Enabled = True
40  Else
50      Me.BS_Gebaeude_loeschen.Enabled = False
60      Me.BS_Geb_Teil_Loeschen.Enabled = False
70      Me.BS_Geb_Teil_Neu.Enabled = False
80  End If

90  If Me.LF_Zug_Gebaeudeteile.ListIndex >= 0 Then
100     Me.BS_Geb_Teil_Loeschen.Enabled = True
110 Else
120     Me.BS_Geb_Teil_Loeschen.Enabled = False
130 End If

End Sub

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub
