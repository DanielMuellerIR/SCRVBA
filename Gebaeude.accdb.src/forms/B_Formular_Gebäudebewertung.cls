Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'B_Formular_Gebäudebewertung

Private Sub Befehl35_Click()
On Error GoTo Err_Befehl35_Click
    DoCmd.Close
Exit_Befehl35_Click:
    Exit Sub

Err_Befehl35_Click:
    MsgBox Err.Description
    Resume Exit_Befehl35_Click

End Sub

Private Sub B_Bewert_Bilanzen_Click()

' Bilde (wirklich am besten hier ) ein Recordset zu edn Index-Bezugsjahren
10  Set rst_Indx_BezJahre = CurrentDb.OpenRecordset("qry_200_05_30_Index_Bezugsjahre", dbOpenDynaset)
20  DoCmd.OpenForm "frm_040_010_Bewertungsbilanzen_Verwaltung"

End Sub


Private Sub BS_Ein_GebT_bewerten_Click()

10  If IsNull(DLookup("[Jahr]", "tbl_200_10_05_Indexe", "[Jahr] = " & lng_Kalk_Jahr)) Then
20      MsgBox "Bitte legen Sie vorher zum Jahr " & Year(Date) & " einen Preisindex fest."
30      Exit Sub
40  End If

50  If DLookup("[ID_Gebäudeteil]", "qry_200_05_10_Fehlende_Erstbewertungen", "[Status] = 'Erstbil. zum Geb.teil fehlt' AND [ID_Gebäudeteil] = " & lng_ID_Geb_Teil) = lng_ID_Geb_Teil Then
60      MsgBox "Eine Zwischenbewertung zu diesem Gebäude ist leider nicht möglich," & vbCrLf _
             & "da hierzu noch die Erstbewertung fehlt." & vbCrLf _
             & "Bitte legen Sie in der Maske Bewertungsbilanzen zu diesem Gebäude zunächst eine Erstbewertung an."
70      Exit Sub
80  End If


90  If DCount("[Bewertungsjahr]", "qry_200_10_05_Werterhöhungen_nach_Bewertungsjahr") > 0 Then

100     If MsgBox("Es existieren Werterhöhungen, die (unplausibel) in einem späteren Jahr liegen als das Bewertungsjahr." & vbCrLf _
                & "Deshalb kann eine Bewertung zu " & lng_Kalk_Jahr & " leider nicht durchgeführt werden." & vbCrLf & vbCrLf _
                & "Möchten Sie diese Werterhöhungen nun einsehen?", vbYesNo, "Ungültiges Bewertungsjahr") = vbYes Then

110         DoCmd.OpenForm "frm_040_020_Werterhöhungen_nach_Bewertungsjahr"
120     End If

130     Exit Sub
140 End If

    ' Zur späteren Indexbildung muss nachf. Prozedur einmal vorbereitend gestartet werden

150 lng_Kalk_Jahr = Me!KF_Bew_Jahr
160 Call Indexvorbereitung

    ' Legen zuvor neuen DS an in Tabelle B_Sanierungsstau_Werterhöhung
170 Call HK_Abschr_3_zum_Bew_Jahr(lng_Kalk_Jahr)

180 If Len(str_Hinweis) > 1 Then
190     MsgBox str_Hinweis, vbOKOnly, "Bewertung nicht möglich"
200 Else
210     str_Suchtext = "Bewertungsjahr " & lng_Kalk_Jahr
        '================================================================================
220     lng_ID_Geb_Teil_Min = lng_ID_Geb_Teil
230     lng_ID_Geb_Teil_Max = lng_ID_Geb_Teil

240     Gebauedebewertung lng_Kalk_Jahr, "Eins", 3, "Bewertungsjahr " & lng_Kalk_Jahr
        '================================================================================
250     DoCmd.OpenReport "rpt_200_10_12_Bew_Bilanz_nach_2009", acViewPreview, , , acDialog
260 End If

    ' ====================================================================================================
    ' ACHTUNG: Nachfolgende Zeile vor Auslieferung UNBEDINGT deaktivieren
    ' Exit Sub  ' ggf. zu Testzwecken aktivieren,
    '             um das in den nachf. Zeilen relisierte Löschen des
    '             für den Bericht angelegten TEMPORÄREN Datensatzes zu blockieren,
    '             diese TEMPORÄREN Datensatze müssen nach Abschluss der Testphase wieder händisch gelöscht werden
    ' ====================================================================================================

    ' Nach Schließen des Berichtes lösche sofort wieder diese temporäre  Bewertungsbilanz
270 Call Loesche_Temp_Bew_Bilanzen    ' in Modul mdl_170_Bewertungslauefe

End Sub

Private Sub BS_Alle_Gebt_Bew_Liste_Click()

    Dim dt_Start As Date
    Dim dt_Ende As Date

10  If IsNull(DLookup("[Jahr]", "tbl_200_10_05_Indexe", "[Jahr] = " & lng_Kalk_Jahr)) Then
20      MsgBox "Bitte legen Sie vorher zum Jahr " & Year(Date) & " einen Preisindex fest."
30      Exit Sub
40  End If

50  i = DCount("[ID_Gebäudeteil]", "qry_200_05_10_Fehlende_Erstbewertungen", "[Status] = 'Erstbil. zum Geb.teil fehlt'")
60  If i > 0 Then
70      If MsgBox("Es existieren noch " & i & " Gebäudeteile ohne Erstbewertung." & vbCrLf _
                & "Soll trotzdem eine Liste" & vbCrLf _
                & "(ohne die Gebäudeteile mit fehlenden Erstbewertungen)" & vbCrLf _
                & "angelegt werden?", vbYesNo, "Fehlende Erstbewertungen?") = vbNo Then
80          Exit Sub
90      End If
100 End If

110 If DCount("[Bewertungsjahr]", "qry_200_10_05_Werterhöhungen_nach_Bewertungsjahr") > 0 Then

120     If MsgBox("Es existieren Werterhöhungen, die (unplausibel) in einem späteren Jahr liegen als das Bewertungsjahr." & vbCrLf _
                & "Deshalb kann eine Bewertung zu " & lng_Kalk_Jahr & " leider nicht durchgeführt werden." & vbCrLf & vbCrLf _
                & "Möchten Sie diese Werterhöhungen nun einsehen?", vbYesNo, "Ungültiges Bewertungsjahr") = vbYes Then

130         DoCmd.OpenForm "frm_040_020_Werterhöhungen_nach_Bewertungsjahr"
140     End If

150     Exit Sub
160 End If

170 Me!Objekt = Null
180 Me!BS_Ein_GebT_bewerten.Enabled = False

190 If MsgBox("Die Aufbereitung der Bewertungsdaten zu allen bilanzrelevanten Gebäuden wird ca. 2 .. 3 Minuten dauern.", vbOKCancel, "Bitte Geduld..") = vbCancel Then
200     Exit Sub
210 End If

220 dt_Start = Now

    ' Zur späteren Indexbildung muss nachf. Prozedur einmal vorbereitend gestartet werden
230 Call Indexvorbereitung

240 lng_Kalk_Jahr = Me!KF_Bew_Jahr
250 str_Suchtext = " "

260 str_SQL_Statement = _
    "SELECT tbl_100_20_Gebäudeteile.ID_Gebäudeteil FROM tbl_100_20_Gebäudeteile" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.Bilanz_relevant) = True) And ((tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_seit) Is Null))" _
                      & " ORDER BY tbl_100_20_Gebäudeteile.ID_Gebäudeteil;"
270 Set rst_GebTeile = CurrentDb.OpenRecordset(str_SQL_Statement, dbOpenDynaset)

280 rst_GebTeile.MoveLast
290 rst_GebTeile.MoveFirst

300 While Not rst_GebTeile.EOF
310     lng_ID_Geb_Teil = rst_GebTeile![ID_Gebäudeteil]
320     Call HK_Abschr_3_zum_Bew_Jahr(lng_Kalk_Jahr)
330     DoEvents
340     rst_GebTeile.MoveNext
350 Wend

    ' ================================================================================
360 Gebauedebewertung lng_Kalk_Jahr, "Alle", 3, " "
    ' ================================================================================
370 DoEvents


380 dt_Ende = Now
    '410 Debug.Print "Wartezeit zur Datenaufbereitung: " & fc_Zeit_Min_Sek(dt_Start, dt_Ende)

390 lng_id_Bewert = DMax("[id_Bewert]", "tbl_200_05_10_Bewertungsläufe")
400 lng_ID_Geb_Teil_Min = 0
410 lng_ID_Geb_Teil_Max = 2 ^ 31 - 1

If (False) Then 'DM2022-04-21 Direkt Exportieren, kein Dialog da die Druckfunktion nicht mehr benötigt wird (siehe Formular Auswahl_Gebauede_Bewertung)

    Call ExcelExport_HK_VW 'siehe mdl 180
Else

420 DoCmd.OpenForm "Auswahl_Gebauede_Bewertung", , , , , acDialog

End If

    ' ====================================================================================================
    ' ACHTUNG: Nachfolgende Zeile vor Auslieferung UNBEDINGT deaktivieren
430 ' Exit Sub  ' ggf. zu Testzwecken aktivieren,
    '             um das in den nachf. Zeilen relisierte Löschen des
    '             für den Bericht angelegten TEMPORÄREN Datensatzes zu blockieren,
    '             diese TEMPORÄREN Datensatze müssen nach Abschluss der Testphase wieder händisch gelöscht werden
    ' ====================================================================================================

    ' Nach Schließen des Berichtes lösche sofort wieder diese temporäre  Bewertungsbilanz
440 Call Loesche_Temp_Bew_Bilanzen    ' in Modul mdl_170_Bewertungslauefe

450 Me!Objekt = Null

End Sub

Private Sub BS_GebT_aus_HF_uebern_Click()

10  If lng_ID_Geb_Teil = 0 Then
20      MsgBox "Wenn ich mich nicht sehr irre, ist da kein Gebäude ausgewählt!"
30      Exit Sub
40  End If

50  Me![Objekt] = lng_ID_Geb_Teil
60  Me![BS_Ein_GebT_bewerten].Enabled = True
70  DoEvents

End Sub

Private Sub BS_InventarListe_Click()

    Dim stDocName As String

10  DoCmd.SetWarnings False
20  DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse_A_erstellen", acNormal, acEdit
30  DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse_B_erstellen", acNormal, acEdit
40  DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse_C_erstellen", acNormal, acEdit
50  DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse_D_erstellen", acNormal, acEdit
60  DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse_E_erstellen", acNormal, acEdit
70  DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse_F_erstellen", acNormal, acEdit
80  DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse_G_erstellen", acNormal, acEdit
    '100 DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse", acNormal, acEdit
90  DoCmd.SetWarnings True

100 'Anw_Fenster_Aus False 'DM2022-07-26
110 DoEvents
120 str_SQL_Statement = "Inventurliste"
130 DoCmd.OpenQuery "Inventurliste", acNormal, acEdit

140 DoCmd.OpenForm "frm_001_001_Hintergrund", , , , , acHidden
150 DoCmd.Close acForm, "Startformular"

End Sub

Private Sub BS_ObjAusw_Leeren_Click()

10  Me!Objekt = Null
20  lng_ID_Geb_Teil = 0
30  Me!BS_Ein_GebT_bewerten.Enabled = False

End Sub

Private Sub BS_Plausib_Pruefung_Click()
10  DoCmd.OpenForm "Filter_Unplausible_Gebaeudedaten", acDesign, , , , acDialog
End Sub

Private Sub Kennummer_AfterUpdate()
10  lng_ID_Geb_Teil = Nz(Me!Kennummer, 0) 'DM2022-11-07
20  Me!B_Unterformular_Gebäudedaten.Form.Requery
30  Me!B_Unterformular_Abschreibung.Form.Requery
40  Me!B_Unterformular_Sanierungsbedarf.Form.Requery
50  Me!B_Unterformular_Werterhöhung.Form.Requery
60  DBEngine.Idle
End Sub

Private Sub Befehl40_Click()
On Error GoTo Err_Befehl40_Click


    DoCmd.Close

Exit_Befehl40_Click:
    Exit Sub

Err_Befehl40_Click:
    MsgBox Err.Description
    Resume Exit_Befehl40_Click

End Sub
Private Sub Befehl65_Click()
On Error GoTo Err_Befehl65_Click


    DoCmd.Close

Exit_Befehl65_Click:
    Exit Sub

Err_Befehl65_Click:
    MsgBox Err.Description
    Resume Exit_Befehl65_Click

End Sub

Private Sub Befehl75_Click()
On Error GoTo Err_Befehl75_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl75_Click:
    Exit Sub

Err_Befehl75_Click:
    MsgBox Err.Description
    Resume Exit_Befehl75_Click

End Sub

Private Sub KF_Bew_Jahr_AfterUpdate()

10  lng_Kalk_Jahr = Me!KF_Bew_Jahr
lng_ID_Geb_Teil = Nz(Me!Kennummer, 0) 'DM2022-10-20 alles updaten 'DM2022-11-07 Nz hinzugefügt
Me!B_Unterformular_Gebäudedaten.Form.Requery
Me!B_Unterformular_Abschreibung.Form.Requery
Me!B_Unterformular_Sanierungsbedarf.Form.Requery
Me!B_Unterformular_Werterhöhung.Form.Requery
DBEngine.Idle

End Sub

Private Sub Objekt_AfterUpdate()


10  If IsNull(Me.Objekt) Then
20      Me.BS_Ein_GebT_bewerten.Enabled = False
30  Else
40      lng_ID_Geb_Teil = Me![Objekt]
50      Me!BS_Ein_GebT_bewerten.Enabled = True
60  End If

70  Me!BS_Ein_GebT_bewerten.Enabled = True

End Sub
