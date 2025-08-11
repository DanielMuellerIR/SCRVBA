Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_Bewert_drucken_Click()

' Zur späteren Indexbildung muss nachf. Prozedur einmal vorbereitend gestartet werden
10  Call Indexvorbereitung

20  lng_ID_Geb_Teil_Min = lng_ID_Geb_Teil
30  lng_ID_Geb_Teil_Max = lng_ID_Geb_Teil

40  If Me.LF_Bew_Lauefe.Column(6) = True Then
        ' Ursprüngliche Erst-Bewertung aus 2009 noch in alter Form
50      DoCmd.OpenReport "rpt_200_10_10_Bewertungsbilanz", acViewPreview, , , acDialog
60  Else
        ' Neuere Erst- / Folgebilanzen in neuer Form
70      DoCmd.OpenReport "rpt_200_10_12_Bew_Bilanz_nach_2009", acViewPreview, , , acDialog
80  End If

End Sub

Private Sub BS_Bewt_drucken_Alle_Click()

' Zur späteren Indexbildung muss nachf. Prozedur einmal vorbereitend gestartet werden
10  Call Indexvorbereitung

20  lng_ID_Geb_Teil_Min = 0
30  lng_ID_Geb_Teil_Max = 2 ^ 31 - 1

40  If Me.LF_Bew_Lauefe.Column(6) = True Then
        ' Ursprüngliche Erst-Bewertung aus 2009 noch in alter Form
50      DoCmd.OpenReport "rpt_200_10_10_Bewertungsbilanz", acViewPreview, , , acDialog
60  Else
        ' Neuere Erst- / Folgebilanzen in neuer Form
70      DoCmd.OpenReport "rpt_200_10_12_Bew_Bilanz_nach_2009", acViewPreview, , , acDialog
80  End If

End Sub

Private Sub BS_Erstbew_anlegen_Click()


10  If IsNull(DLookup("[Jahr]", "tbl_200_10_05_Indexe", "[Jahr] = " & lng_Kalk_Jahr)) Then
20      MsgBox "Bitte legen Sie vorher zum Jahr " & Year(Date) & " einen Preisindex fest."
30      Exit Sub
40  End If

60  Do
70      SendKeys "{Right}"
80      str_Suchtext = InputBox("Erläuterungstext: ", "Erläuterungstext", "Erstbewertung " & Me.LF_Gebaeudeteile.Column(1) & " erstellt " & Date)

90      If Len(str_Suchtext) = 0 Then

100         If MsgBox("Bitte geben Sie irgendeinen Text ein oder klicken [Abbrechen]", vbOKCancel, "Abbruch oder Neuversuch") = vbCancel Then
110             Exit Sub
120         End If

130     Else
140         Exit Do
150     End If

160 Loop

    ' Step 0: Regeneriere zum Gebäudeteil dessen "1. Zeile in Exceldatei" neu
    ' Ersetze DS in B_Sanierungsstau_Werterhöhung zum Geb.Teil mit DS_typ = 3 durch eienen neuen
    ' Grund : ggf. anderes Bewertngsjahr als bisher

170 lng_ID_Geb_Teil = Me!LF_Gebaeudeteile

    ' Step 1): Lege EINen neuen DS in Tabelle tbl_200_05_10_Bewertungsläufe an
180 str_SQL_Statement = "INSERT INTO tbl_200_05_10_Bewertungsläufe ( Erst_Folgebilanz, Bewertungsjahr, Erläuterung, Zeitpunkt )" _
                      & " SELECT 1 AS E_F_Bil, F_Variable('lng_Kalk_Jahr') AS Bew_Jahr, F_Variable('str_Suchtext') AS Erl, Now() AS zp;"

190 DoCmd.SetWarnings False
200 DoCmd.RunSQL str_SQL_Statement
210 DoCmd.SetWarnings True
220 lng_id_Bewert = DMax("[id_Bewert]", "tbl_200_05_10_Bewertungsläufe")


    ' Step 2): Erzeuge zum aktuellen Datenstand des Gebäudeteils  Excelmatrix zur Abschreibung (1: Baujahr, 2: ggf. Werterhöhung)
230 DoCmd.SetWarnings False
240 Call HK_Abschr_1_zum_Baujahr
250 DoEvents
260 Call HK_Abschr_2_Werterhoehung
270 DoEvents
280 Call HK_Abschr_3_zum_Bew_Jahr(lng_Kalk_Jahr)
290 DoEvents
300 DoCmd.SetWarnings True

    ' Step 3):  Lege zum markierten Gebäudeteil Einen neuen DS in Tabelle tbl_200_10_10_Bewertungsbilanzen an
310 lng_id_Bewert = DMax("[id_Bewert]", "tbl_200_05_10_Bewertungsläufe")
320 lng_ID_Geb_Teil_Min = lng_ID_Geb_Teil
330 lng_ID_Geb_Teil_Max = lng_ID_Geb_Teil
340 DoCmd.SetWarnings False
350 DoCmd.SetWarnings False
    'DoCmd.OpenQuery "qry_200_10_10_Erstelle_Bewertungsbilanz"
360 DoCmd.OpenQuery "qry_200_10_07_Erstelle_Erst_Bewertungsbilanz"
370 DoEvents
380 DoCmd.SetWarnings True

    ' Step 4): Lege neue DSe an in Tabelle tbl_200_30_10_Bew_Bilanz_Sanierungsstau
390 DoCmd.SetWarnings False
400 DoCmd.OpenQuery "qry_200_30_10_Erst_Bew_bil_Sanierungsstau"
410 DoEvents
420 DoCmd.SetWarnings True

    ' Step 5): Lege neue DSe an in Tabelle tbl_200_30_20_Bew_Bilanz_Werterhoehungen
430 DoCmd.SetWarnings False
440 DoCmd.OpenQuery "qry_200_30_20_Erst_Bew_bil_Werterhoehung"
450 DoEvents
460 DoCmd.SetWarnings True

470 Me!LF_Bew_Lauefe.Requery
480 Me!LF_Bew_Lauefe = lng_id_Bewert

490 DoEvents

    ' Stelle das rechte Listenfeld um auf " o: mit Erstbewertung"
500 Me.OR_LF_Gebteile_DH = 1
510 Call OR_LF_Gebteile_DH_Click

End Sub

Private Sub BS_Folgeb_anlegen_Click()

10  If IsNull(DLookup("[Jahr]", "tbl_200_10_05_Indexe", "[Jahr] = " & lng_Kalk_Jahr)) Then
20      MsgBox "Bitte legen Sie vorher zum Jahr " & Year(Date) & " einen Preisindex fest."
30      Exit Sub
40  End If

50  lng_ID_Geb_Teil_Min = 0
60  lng_ID_Geb_Teil_Max = 2 ^ 31 - 1

70  If DCount("[Bewertungsjahr]", "qry_200_10_05_Werterhöhungen_nach_Bewertungsjahr") > 0 Then

80      If MsgBox("Es existieren Werterhöhungen, die (unplausibel) in einem späteren Jahr liegen als das Bewertungsjahr." & vbCrLf _
                & "Deshalb kann eine Bewertungsbilanz zu " & lng_Kalk_Jahr & " leider nicht durchgeführt werden." & vbCrLf & vbCrLf _
                & "Möchten Sie diese Werterhöhungen nun einsehen?", vbYesNo, "Ungültiges Bewertungsjahr") = vbYes Then

90          DoCmd.OpenForm "frm_040_020_Werterhöhungen_nach_Bewertungsjahr"

100     End If

110     Exit Sub
120 End If


130 If MsgBox("Das Anlgen der neuen Bewertungsbilanz zu allen bilanzrelevanten Gebäuden wird etwas dauern.", vbOKCancel, "Bitte Geduld ..") = vbCancel Then
140     Exit Sub
150 End If

160 If MsgBox("Es wird für alle bilanzrelevanten Gebäude" & vbCrLf _
            & "zum Bewertungsjahr " & Me.LF_Bew_Jahr & " eine neue Folgebewertung angelegt." & vbCrLf & vbCrLf _
            & "Soll diese jetzt durchgeführt werden?", vbYesNo, "Neue Folgebewertung anlegen?") = vbNo Then
170     Exit Sub
180 End If

190 i = DCount("[ID_Gebäudeteil]", "qry_200_05_10_Fehlende_Erstbewertungen")
200 If i > 0 Then

210     If MsgBox("Es existieren noch " & i & " Gebäudeteile ohne Erstbewertung." & vbCrLf & vbCrLf _
                & "Soll trotzdem zu allen Gebäudeteilen eine Folgebewertung angelegt werden?", vbYesNo, "es fehlen Erstbewertunegn") = vbNo Then
220         Exit Sub
230     End If

240 End If


250 Do
260     SendKeys "{Right}"
270     str_Suchtext = InputBox("Erläuterungstext: ", "Erläuterungstext", "Folgebewertungsbilanz erstellt " & Date)

280     If Len(str_Suchtext) = 0 Then

290         If MsgBox("Bitte geben Sie irgendeinen Text ein oder klicken [Abbrechen]", vbOKCancel, "Abbruch oder Neuversuch") = vbCancel Then
300             Exit Sub
310         End If

320     Else
330         Exit Do
340     End If

350 Loop

    'Step 0: Regeneriere zum Bewertungsjahr "die letzte Zeile der Exceldatei" zu allen Gebäudeteilen neu:
    ' in Tabelle B_Sanierungsstau_Werterhöhung zu jedem Gebäudeteil Austausch des alten DS mit DS_Typ 3 duche ienn neuen,
    ' Grund: Ggf. ein anderes Bewertungsjahr als noch zuvor
360 str_SQL_Statement = _
    "SELECT tbl_100_20_Gebäudeteile.ID_Gebäudeteil FROM tbl_100_20_Gebäudeteile" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.Bilanz_relevant) = True) And ((tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_seit) Is Null))" _
                      & " ORDER BY tbl_100_20_Gebäudeteile.ID_Gebäudeteil;"
370 Set rst_GebTeile = CurrentDb.OpenRecordset(str_SQL_Statement, dbOpenDynaset)

380 While Not rst_GebTeile.EOF
390     lng_ID_Geb_Teil = rst_GebTeile![ID_Gebäudeteil]
400     Call HK_Abschr_3_zum_Bew_Jahr(lng_Kalk_Jahr)
410     rst_GebTeile.MoveNext
420 Wend


    ' Step 1: Lege EINen neuen DS in Tabelle tbl_200_05_10_Bewertungsläufe an
430 str_SQL_Statement = "INSERT INTO tbl_200_05_10_Bewertungsläufe ( Erst_Folgebilanz, Bewertungsjahr, Erläuterung, Zeitpunkt )" _
                      & " SELECT 2 AS FolgBil, F_Variable('lng_Kalk_Jahr') AS Bew_Jahr, F_Variable('str_Suchtext') AS Erl, Now() AS zp;"
440 DoCmd.SetWarnings False
450 DoCmd.RunSQL str_SQL_Statement
460 DoCmd.SetWarnings True
470 lng_id_Bewert = DMax("[id_Bewert]", "tbl_200_05_10_Bewertungsläufe")

    ' Step 2 Lege neue DSe in Tabelle tbl_200_10_10_Bewertungsbilanzen an
480 lng_ID_Geb_Teil_Min = 0
490 lng_ID_Geb_Teil_Max = 2 ^ 31 - 1

500 DoCmd.SetWarnings False
510 DoCmd.OpenQuery "qry_200_10_10_Erstelle_Bewertungsbilanz"
520 DoCmd.SetWarnings True
530 DoEvents

540 str_SQL_Statement = _
    "SELECT tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil, tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil, tbl_200_10_10_Bewertungsbilanzen.Id_Bewert" _
                      & " FROM tbl_200_10_10_Bewertungsbilanzen" _
                      & " WHERE (((tbl_200_10_10_Bewertungsbilanzen.Id_Bewert)=F_Variable('lng_id_Bewert')));"
550 Set rst = CurrentDb.OpenRecordset(str_SQL_Statement, dbOpenDynaset)

560 rst.MoveLast
570 rst.MoveFirst
580 While Not rst.EOF

590     lng_ID_Bew_Bil = DMax("[id_Bewert]", "tbl_200_10_10_Bewertungsbilanzen")
600     lng_ID_Geb_Teil = rst!ID_Gebäudeteil
610     DoCmd.SetWarnings False

        ' Step 3): Lege neue DSe an in Tabelle tbl_200_30_10_Bew_Bilanz_Sanierungsstau
620     DoCmd.SetWarnings False
630     DoCmd.OpenQuery "qry_200_30_10_Erst_Bew_bil_Sanierungsstau"
640     DoEvents
650     DoCmd.SetWarnings True


        ' Step 4): Lege neue DSe an in Tabelle tbl_200_30_20_Bew_Bilanz_Werterhoehungen
660     DoCmd.SetWarnings False
670     DoCmd.OpenQuery "qry_200_30_20_Erst_Bew_bil_Werterhoehung"
680     DoEvents
690     DoCmd.SetWarnings True

700     rst.MoveNext
710 Wend


720 Me!LF_Bew_Lauefe.Requery
730 Me!LF_Bew_Lauefe = lng_id_Bewert

End Sub


Private Sub BS_Folgeb_loeschen_Click()

10  Select Case Me.LF_Bew_Lauefe.Column(1)
    Case 1
        ' Erstbewertung
20      str_Suchtext = "Wollen Sie die Erstbewertung " & vbCrLf _
                     & "<< " & Me.LF_Bew_Lauefe.Column(5) & " >> " & vbCrLf _
                     & "wirklich löschen?"
30  Case 2
        ' Folgebewertung
40      str_Suchtext = "Wollen Sie die Folgebewertung " & vbCrLf _
                     & "<< " & Me.LF_Bew_Lauefe.Column(5) & " >> " & vbCrLf _
                     & "wirklich löschen?"
50  End Select

60  If MsgBox(str_Suchtext, vbYesNo, "Bewertungslauf löschen?") = vbNo Then
70      Exit Sub
80  End If

    ' Step 1: Lösche zugehörige DS'e in Unter-Unter-Tabelle tbl_200_30_10_Bew_Bilanz_Sanierungsstau
90  str_SQL_Statement = _
    "DELETE tbl_200_05_10_Bewertungsläufe.id_Bewert, tbl_200_30_10_Bew_Bilanz_Sanierungsstau.*" _
                      & " FROM (tbl_200_05_10_Bewertungsläufe INNER JOIN tbl_200_10_10_Bewertungsbilanzen" _
                      & " ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert) INNER JOIN tbl_200_30_10_Bew_Bilanz_Sanierungsstau" _
                      & " ON tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil = tbl_200_30_10_Bew_Bilanz_Sanierungsstau.ID_Bew_Bil" _
                      & " WHERE (((tbl_200_05_10_Bewertungsläufe.id_Bewert)=F_Variable('lng_id_Bewert')));"
100 DoCmd.SetWarnings False
110 DoCmd.RunSQL str_SQL_Statement
120 DoCmd.SetWarnings True
130 DoEvents

    ' Step 2: Lösche zugehörige DS'e in Unter-Unter-Tabelle tbl_200_30_20_Bew_Bilanz_Werterhoehungen
140 str_SQL_Statement = _
    "DELETE tbl_200_05_10_Bewertungsläufe.id_Bewert, tbl_200_30_20_Bew_Bilanz_Werterhoehungen.*" _
                      & " FROM (tbl_200_05_10_Bewertungsläufe INNER JOIN tbl_200_10_10_Bewertungsbilanzen" _
                      & " ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert) INNER JOIN tbl_200_30_20_Bew_Bilanz_Werterhoehungen" _
                      & " ON tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil = tbl_200_30_20_Bew_Bilanz_Werterhoehungen.ID_Bew_Bil" _
                      & " WHERE (((tbl_200_05_10_Bewertungsläufe.id_Bewert)=F_Variable('lng_id_Bewert')));"
150 DoCmd.SetWarnings False
160 DoCmd.RunSQL str_SQL_Statement
170 DoCmd.SetWarnings True
180 DoEvents

    ' Step 3: Lösche zugehörige DS'e in Unter-Tabelle tbl_200_10_10_Bewertungsbilanzen
190 str_SQL_Statement = "DELETE tbl_200_05_10_Bewertungsläufe.id_Bewert, tbl_200_10_10_Bewertungsbilanzen.*" _
                      & " FROM tbl_200_05_10_Bewertungsläufe INNER JOIN tbl_200_10_10_Bewertungsbilanzen" _
                      & " ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert" _
                      & " WHERE (((tbl_200_05_10_Bewertungsläufe.id_Bewert)=F_Variable('lng_id_Bewert')));"
200 DoCmd.SetWarnings False
210 DoCmd.RunSQL str_SQL_Statement
220 DoCmd.SetWarnings True
230 DoEvents


    ' Step 4: Lösche zugehörigen DS in Tabelle tbl_200_05_10_Bewertungsläufe
240 str_SQL_Statement = "DELETE tbl_200_05_10_Bewertungsläufe.id_Bewert" _
                      & " FROM tbl_200_05_10_Bewertungsläufe" _
                      & " WHERE (((tbl_200_05_10_Bewertungsläufe.id_Bewert)=F_Variable('lng_id_Bewert')));"
250 DoCmd.SetWarnings False
260 DoCmd.RunSQL str_SQL_Statement
270 DoCmd.SetWarnings True
280 DoEvents

290 lng_id_Bewert = 0
300 Me!LF_Bew_Lauefe.Requery
310 lng_ID_Geb_Teil = 0
320 Me!LF_Gebaeudeteile.Requery

330 Setze_Buttons

End Sub

Private Sub BS_HK_Kosten_Click()

' Zur späteren Indexbildung muss nachf. Prozedur einmal vorbereitend gestartet werden
10  Call Indexvorbereitung

20  lng_id_Bewert = Me!LF_Bew_Lauefe
30  lng_ID_Geb_Teil_Min = 0
40  lng_ID_Geb_Teil_Max = 2 ^ 31 - 1

    If (IsNull(Forms!frm_040_010_Bewertungsbilanzen_Verwaltung!LF_Bew_Jahr)) Then 'DM2022-10-19
        Forms!frm_040_010_Bewertungsbilanzen_Verwaltung!LF_Bew_Jahr = (Year(Date) - 1)
    End If

50  If Me.LF_Bew_Lauefe.Column(6) = True Then
        ' Ursprüngliche Erst-Bewertung aus 2009 noch in alter Form
60      DoCmd.OpenReport "rpt_220_10_10_Bew_Bil_HK_Kosten", acViewPreview, , , acDialog
70  Else
        ' Neuere Erst- / Folgebolanzen in neuer Form
80      DoCmd.OpenReport "rpt_220_10_10_Bew_Bil_HK_Kosten_nach_2009", acViewPreview, , , acDialog
90  End If

End Sub

Private Sub BS_Versich_werte_Click()

10  lng_id_Bewert = Me!LF_Bew_Lauefe
20  lng_ID_Geb_Teil_Min = 0
30  lng_ID_Geb_Teil_Max = 2 ^ 31 - 1
    '40  DoCmd.OpenReport "rpt_220_10_10_Bew_Bil_Versicherungswerte", acViewPreview, , , acDialog

    If (IsNull(Forms!frm_040_010_Bewertungsbilanzen_Verwaltung!LF_Bew_Jahr)) Then 'DM2022-07-26
        Forms!frm_040_010_Bewertungsbilanzen_Verwaltung!LF_Bew_Jahr = (Year(Date) - 1)
    End If

40  If True Then 'Me.LF_Bew_Lauefe.Column(6) = True Then   'DM2022-07-26 nur noch diesen Report verwenden, der _nach_2009 ist in mehrerlei Hinsicht falsch
        ' Ursprüngliche Erst-Bewertung aus 2009 noch in alter Form
50      DoCmd.OpenReport "rpt_220_10_10_Bew_Bil_Versicherungswerte", acViewPreview, , , acDialog
60  Else
        ' Neuere Erst- / Folgebolanzen in neuer Form
70      DoCmd.OpenReport "rpt_220_10_10_Bew_Bil_Verswerte_nach_2009", acViewPreview, , , acDialog
80  End If



End Sub

Private Sub Form_Load()

10  lng_id_Bewert = 0
20  lng_ID_Geb_Teil = 0
30  Me!LF_Gebaeudeteile = 0
40  str_LF_Rowsource_1 = Me!LF_Gebaeudeteile.RowSource

50  Me!LF_Bew_Lauefe.Requery
60  Me!LF_Gebaeudeteile.Requery
70  Setze_Buttons

End Sub

Private Sub Form_Open(Cancel As Integer)

10  If lng_ID_Geb_Teil > 0 Then
20      Me!LF_Gebaeudeteile = lng_ID_Geb_Teil
30      LF_Gebaeudeteile_AfterUpdate
40  End If

End Sub


Private Sub BS_Schließen_Click()

10  DoCmd.Close acForm, Me.Name

End Sub

Private Sub LF_Bew_Jahr_AfterUpdate()

10  lng_Kalk_Jahr = Me!LF_Bew_Jahr
20  Setze_Buttons

End Sub

Private Sub LF_Bew_Lauefe_AfterUpdate()

10  lng_id_Bewert = Me!LF_Bew_Lauefe
20  Me!LF_Gebaeudeteile.Requery
30  Setze_Buttons

End Sub



Private Sub LF_Gebaeudeteile_AfterUpdate()

10  lng_ID_Geb_Teil = Me!LF_Gebaeudeteile
20  Setze_Buttons

End Sub



Private Sub OR_LF_Gebteile_DH_Click()

10  Select Case Me.OR_LF_Gebteile_DH

    Case 1  ' Gebäudeteile mit Erstbewertung
20      Me.LF_Gebaeudeteile.RowSource = str_LF_Rowsource_1
30      Me!LF_Gebaeudeteile.Requery
40      Me!LF_Gebaeudeteile.ForeColor = RGB(16, 37, 63)
50      Me!LF_Gebaeudeteile.ColumnCount = 2
60      Me!LF_Gebaeudeteile.ColumnWidths = "0cm"
70      Me!LF_Gebaeudeteile.FontName = "Arial"


80  Case 2  ' Gebäudeteile ohne Erstbewertung
90      Me!LF_Gebaeudeteile.RowSource = "qry_200_05_10_Fehlende_Erstbewertungen"
100     Me!LF_Gebaeudeteile.Requery
110     Me!LF_Gebaeudeteile.ForeColor = RGB(128, 0, 0)
120     Me!LF_Gebaeudeteile.ColumnCount = 4
130     Me!LF_Gebaeudeteile.ColumnWidths = "0cm;12,5cm;;0cm"
140     Me!LF_Gebaeudeteile.FontName = "Arial Narrow"


150 Case 3  ' Gebäudeteile ohne Zuständigkeit B60
160     Me!LF_Gebaeudeteile.RowSource = "qry_200_05_12_Gebaeude_ohne_Zus_B60"
170     Me!LF_Gebaeudeteile.Requery
180     Me!LF_Gebaeudeteile.ForeColor = RGB(128, 0, 0)
190     Me!LF_Gebaeudeteile.ColumnCount = 2
200     Me!LF_Gebaeudeteile.ColumnWidths = "0cm"
210     Me!LF_Gebaeudeteile.FontName = "Arial"
220 End Select


230 Setze_Buttons

End Sub

Sub Setze_Buttons()

    If Me!OR_LF_Gebteile_DH = 1 Then 'DM2022-10-28
        Me!BS_Folgeb_loeschen.Enabled = True
        Me!BS_HK_Kosten.Enabled = True
        Me!BS_Versich_werte.Enabled = True
        Me!BS_Bewert_drucken.Enabled = True
        Me!BS_Bewt_drucken_Alle.Enabled = True
        Me!LF_Bew_Lauefe.Enabled = True
    End If

10  If Me!LF_Bew_Jahr.ListIndex >= 0 Then
20      Me!BS_Folgeb_anlegen.Enabled = True
30  Else
40      Me!BS_Folgeb_anlegen.Enabled = False
50  End If


60  If Me!LF_Bew_Lauefe.ListIndex >= 0 Then

70      If Me!LF_Gebaeudeteile.ListIndex >= 0 Then
80          Me!BS_Bewert_drucken.Enabled = True
90      Else
100         Me!BS_Bewert_drucken.Enabled = False
110     End If

120     Me!BS_Bewt_drucken_Alle.Enabled = True
130     Me!BS_HK_Kosten.Enabled = True
140     Me!BS_Versich_werte.Enabled = True

150 Else
160     Me!BS_Bewert_drucken.Enabled = False
170     Me!BS_Bewt_drucken_Alle.Enabled = False
180     Me!BS_HK_Kosten.Enabled = False
190     Me!BS_Versich_werte.Enabled = False
200 End If


210 If Me!LF_Bew_Lauefe.ListIndex >= 0 Then
        ' Wenn was markiert ist
220     If Me!LF_Bew_Lauefe.Column(1) = 1 Then
            ' Erstbewertung
230         If fc_Admin() = True Then
                ' Nur Admins dürfen löschen
240             Me!BS_Folgeb_loeschen.Enabled = True
250         Else
260             Me!BS_Folgeb_loeschen.Enabled = False
270         End If
280     Else
290         If Me!LF_Bew_Lauefe.Column(1) = 2 Then
                ' Folgebewertung --> Jeder darf löschen
300             Me!BS_Folgeb_loeschen.Enabled = True
310         End If
320     End If
330 Else
        ' Nix markiert
340     Me!BS_Folgeb_loeschen.Enabled = False
350 End If

360 If Me!OR_LF_Gebteile_DH = 2 _
       And Me.LF_Gebaeudeteile.ListIndex >= 0 _
       And Me!LF_Gebaeudeteile.Column(3) = True Then
370     Me!BS_Erstbew_anlegen.Enabled = True
380 Else
390     Me!BS_Erstbew_anlegen.Enabled = False
400 End If

    If Me!OR_LF_Gebteile_DH >= 2 Then 'DM2022-10-28
        Me!BS_Folgeb_loeschen.Enabled = False
        Me!BS_HK_Kosten.Enabled = False
        Me!BS_Versich_werte.Enabled = False
        Me!BS_Bewert_drucken.Enabled = False
        Me!BS_Bewt_drucken_Alle.Enabled = False
        For i = 0 To Me!LF_Bew_Lauefe.ListCount - 1
            Me!LF_Bew_Lauefe.Selected(i) = False
        Next i
        Me!LF_Bew_Lauefe.Enabled = False
        Me!BS_Folgeb_anlegen.Enabled = False 'DM2022-11-02
    End If

End Sub
