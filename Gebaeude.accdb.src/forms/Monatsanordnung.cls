Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub alteID_AfterUpdate()

    Dim stDocName As String

    'tempörären Buchungssatz anlegen
10  stDocName = "Monats_AO_temp_Buchungssatz_löschen"
20  DoCmd.OpenQuery stDocName, acNormal, acEdit
30  stDocName = "Monats_AO_temp_Buchungssatz_anlegen"
40  DoCmd.OpenQuery stDocName, acNormal, acEdit

    'tempörären Buchungsstellensatz anlegen
50  stDocName = "Monats_AO_temp_Buchungssatz_Buchungsstellen_löschen"
60  DoCmd.OpenQuery stDocName, acNormal, acEdit
70  stDocName = "Monats_AO_temp_Buchungssatz_ Buchungsstellen_anlegen"
80  DoCmd.OpenQuery stDocName, acNormal, acEdit

    'tempörären Fälligkeitensatz anlegen
90  stDocName = "Monats_AO_temp_Buchungssatz_Fälligkeiten_löschen"
100 DoCmd.OpenQuery stDocName, acNormal, acEdit
110 stDocName = "Monats_AO_temp_Buchungssatz_Fälligkeiten_anlegen"
120 DoCmd.OpenQuery stDocName, acNormal, acEdit

    'tempörären Kostenstellensatz anlegen
130 stDocName = "Monats_AO_temp_Buchungssatz_Kostenstellen_löschen"
140 DoCmd.OpenQuery stDocName, acNormal, acEdit
150 stDocName = "Monats_AO_temp_Buchungssatz_Kostenstellen_anlegen"
160 DoCmd.OpenQuery stDocName, acNormal, acEdit

    'Unterformulare aktualisieren
170 Me![Monatsanordnung_UF_1].Requery
180 Me![Monatsanordnung_UF_2].Requery
190 Me![Monatsanordnung_UF_3].Requery
200 Me![Monatsanordnung_UF_4].Requery

210 Me![angelegt_neu] = Now()
220 Me![Monatsanordnung_UF_4].SetFocus

230 Forms!Monatsanordnung![Monatsanordnung_UF_4].Form.ID_aus_Kostenstellen_AfterUpdate
240 Forms!Monatsanordnung![Monatsanordnung_UF_4].Form.ID_aus_Kostenträger_AfterUpdate

End Sub

Private Sub alteID_GotFocus()
    Dim lngGelb As Long, lngWeiß As Long
    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)
    Me!alteID.BackColor = lngGelb
End Sub

Private Sub alteID_LostFocus()
    Dim lngGelb As Long, lngWeiß As Long
    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)
    Me!alteID.BackColor = lngWeiß
End Sub

Private Sub Befehl31_Click()
On Error GoTo Err_Befehl31_Click
DoCmd.SetWarnings False

    DoCmd.Close acForm, "Monatsanordnung_UF_5"

    stDocName = "Monats_AO_temp_Buchungssatz_löschen"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

    stDocName = "Monats_AO_temp_Buchungssatz_Buchungsstellen_löschen"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

    stDocName = "Monats_AO_temp_Buchungssatz_Fälligkeiten_löschen"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

    stDocName = "Monats_AO_temp_Buchungssatz_Kostenstellen_löschen"
    DoCmd.OpenQuery stDocName, acNormal, acEdit
    DoCmd.Close

Exit_Befehl31_Click:
    Exit Sub

Err_Befehl31_Click:
    MsgBox Err.Description
    Resume Exit_Befehl31_Click

End Sub



Private Sub Firma_AfterUpdate()

Me![alteID].Requery
Me![alteID].SetFocus
Me![alteID].Dropdown

End Sub

Private Sub Firma_GotFocus()
    Dim lngGelb As Long, lngWeiß As Long
    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)
    Me!Firma.BackColor = lngGelb
End Sub

Private Sub Firma_LostFocus()
    Dim lngGelb As Long, lngWeiß As Long
    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)
    Me!Firma.BackColor = lngWeiß
End Sub

Private Sub Form_Load()
DoCmd.SetWarnings False

Me![Firma].SetFocus
Me![Firma].Dropdown
End Sub


Private Sub Befehl41_Click()
'10  On Error GoTo Err_Befehl41_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

10  Me![Anordnungsbetrag].Requery

    'Daten aus den temp Dateien in Tabellen übernehmen

20  stDocName = "Monats_AO_Buchungssatz_temp_Buchungssatz_übernehmen"
30  DoCmd.OpenQuery stDocName, acNormal, acEdit

40  stDocName = "Monatsanordnung_UF_5"
50  DoCmd.OpenForm stDocName, , , , , acHidden

60  stDocName = "Monats_AO_Buchungssatz_temp_BuSt_uebernehmen"
70  DoCmd.OpenQuery stDocName, acNormal, acEdit

80  stDocName = "Monats_AO_Buchungssatz_temp_Fälligkeiten_übernehmen"
90  DoCmd.OpenQuery stDocName, acNormal, acEdit

100 stDocName = "Monats_AO_Buchungssatz_temp_Kostenstellen_übernehmen"
110 DoCmd.OpenQuery stDocName, acNormal, acEdit


    'Ausdrucken
'120 stDocName = "Buchungsanordnung_Monat"
'130 DoCmd.OpenReport stDocName, acViewPreview, , , acDialog

    ' ab 2020: Export in PDF-Datei
140 str_Dateiname = "Buchungsanordnung_Monat" _
                  & Me!IDSachbearbeiter.Column(1) & "_" _
                  & Format(Now, "yyyy_mm_dd__hh.nn")
150 Export_PDF "Buchungsanordnung_Monat", str_Dateiname

160 DoEvents


    'Temp Dateien löschen

170 DoCmd.Close acForm, "Monatsanordnung_UF_5"

180 stDocName = "Monats_AO_temp_Buchungssatz_löschen"
190 DoCmd.OpenQuery stDocName, acNormal, acEdit

200 stDocName = "Monats_AO_temp_Buchungssatz_Buchungsstellen_löschen"
210 DoCmd.OpenQuery stDocName, acNormal, acEdit

220 stDocName = "Monats_AO_temp_Buchungssatz_Fälligkeiten_löschen"
230 DoCmd.OpenQuery stDocName, acNormal, acEdit

240 stDocName = "Monats_AO_temp_Buchungssatz_Kostenstellen_löschen"
250 DoCmd.OpenQuery stDocName, acNormal, acEdit

260 Me![Firma].SetFocus
270 Me![Firma] = Null
280 Me![alteID] = Null

    'Formular schließen

290 DoCmd.Close

Exit_Befehl41_Click:
300 Exit Sub

Err_Befehl41_Click:
310 MsgBox Err.Description
320 Resume Exit_Befehl41_Click

End Sub

Private Sub Monatsanordnung_UF_4_Exit(Cancel As Integer)

If IsNull(Me!IDSachbearbeiter) Then
Me!IDSachbearbeiter = 22
End If

End Sub

Private Sub Befehl55_Click()
On Error GoTo Err_Befehl55_Click


    DoCmd.Close

Exit_Befehl55_Click:
    Exit Sub

Err_Befehl55_Click:
    MsgBox Err.Description
    Resume Exit_Befehl55_Click

End Sub
