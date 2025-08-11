Attribute VB_Name = "mdl_300_Gebaeude_verwalten"
Option Compare Database
Option Explicit

Sub Liegensch_loeschen(Optional Id_LS)

10  str_Hinweis = ""

20  If IsNull(Id_LS) Then
30      str_Hinweis = "Löschen dert Liegenschaft schlug fehhl." & vbCrLf _
                    & " ID ID_Gebäude war NULL."
40      Exit Sub
50  End If

60  If IsMissing(Id_LS) Then
70      str_Hinweis = "Löschen des Gebäudeteils schlug fehhl." & vbCrLf _
                    & " ID ID_Gebäude wurde gar nicht an Löschroutine übergeben."
80      Exit Sub
90  End If

    ' ============================================================================================================
    ' Lösch-Abfragen als SQL-Statements zu sämtlichen untergeordneten Tabellen der TAbelle tbl_100_10_Liegenschaften
    ' ============================================================================================================

100 DoCmd.SetWarnings False

    'tbl_100_05_QV_Liegensch_Flurstuecke
110 str_SQL_Statement = "DELETE tbl_100_10_Liegenschaften.ID_Gebäude, tbl_100_05_QV_Liegensch_Flurstuecke.*" _
                      & " FROM tbl_100_10_Liegenschaften INNER JOIN tbl_100_05_QV_Liegensch_Flurstuecke ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_05_QV_Liegensch_Flurstuecke.ID_Gebäude" _
                      & " WHERE (((tbl_100_10_Liegenschaften.ID_Gebäude)= " & Id_LS & "));"
120 DoCmd.RunSQL str_SQL_Statement
130 DoEvents

    ' tbl_100_10_Liegenschaften (S in Muttertabelle selbst)
140 str_SQL_Statement = "DELETE tbl_100_10_Liegenschaften.ID_Gebäude" _
                      & " FROM tbl_100_10_Liegenschaften" _
                      & " WHERE (((tbl_100_10_Liegenschaften.ID_Gebäude)= " & Id_LS & "));"
150 DoCmd.RunSQL str_SQL_Statement
160 DoEvents

170 DoCmd.SetWarnings True

End Sub

Sub Geb_Teil_loeschen(Optional ID_Gebteil)

10  str_Hinweis = ""

20  If IsNull(ID_Gebteil) Then
30      str_Hinweis = "Löschen des Gebäudeteils schlug fehhl." & vbCrLf _
                    & " ID Gebäudeteil war NULL."
40      Exit Sub
50  End If

60  If IsMissing(ID_Gebteil) Then
70      str_Hinweis = "Löschen des Gebäudeteils schlug fehhl." & vbCrLf _
                    & " ID Gebäudeteil wurde gar nicht an Löschroutine übergeben."
80      Exit Sub
90  End If

    ' ============================================================================================================
    ' Lösch-Abfragen als SQL-Statements zu sämtlichen untergeordneten Tabellen der TAbelle tbl_100_20_Gebäudeteile
    ' ============================================================================================================

100 DoCmd.SetWarnings False

    'Haushaltsdaten
110 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, Haushaltsdaten.*" _
                      & " FROM tbl_100_20_Gebäudeteile INNER JOIN (Maßnahmen INNER JOIN Haushaltsdaten ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
120 DoCmd.RunSQL str_SQL_Statement
130 DoEvents

    'Geplante Finanzierung
140 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, [Geplante Finanzierung].*" _
                      & " FROM (tbl_100_20_Gebäudeteile INNER JOIN Maßnahmen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil) INNER JOIN [Geplante Finanzierung] ON Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
150 DoCmd.RunSQL str_SQL_Statement
160 DoEvents

    'Teile der Maßnahmen
170 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, [Teile der Maßnahmen].*" _
                      & " FROM (tbl_100_20_Gebäudeteile INNER JOIN Maßnahmen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil) INNER JOIN [Teile der Maßnahmen] ON Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
180 DoCmd.RunSQL str_SQL_Statement
190 DoEvents

    'Aufträge
200 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, Aufträge.*" _
                      & " FROM (tbl_100_20_Gebäudeteile INNER JOIN Maßnahmen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil) INNER JOIN Aufträge ON Maßnahmen.ID = Aufträge.ID_Maßnahme" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
210 DoCmd.RunSQL str_SQL_Statement
220 DoEvents

    'Maßnahmen
230 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, Maßnahmen.*" _
                      & " FROM tbl_100_20_Gebäudeteile INNER JOIN Maßnahmen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
240 DoCmd.RunSQL str_SQL_Statement
250 DoEvents

    'tbl_200_30_20_Bew_Bilanz_Werterhoehungen (in Archiv)
260 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_200_30_20_Bew_Bilanz_Werterhoehungen.*" _
                      & " FROM tbl_100_20_Gebäudeteile INNER JOIN (tbl_200_10_10_Bewertungsbilanzen INNER JOIN tbl_200_30_20_Bew_Bilanz_Werterhoehungen ON tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil = tbl_200_30_20_Bew_Bilanz_Werterhoehungen.ID_Bew_Bil) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
270 DoCmd.RunSQL str_SQL_Statement

    'tbl_200_30_10_Bew_Bilanz_Sanierungsstau (in Archiv)
280 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_200_30_10_Bew_Bilanz_Sanierungsstau.*" _
                      & " FROM (tbl_100_20_Gebäudeteile INNER JOIN tbl_200_10_10_Bewertungsbilanzen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil) INNER JOIN tbl_200_30_10_Bew_Bilanz_Sanierungsstau ON tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil = tbl_200_30_10_Bew_Bilanz_Sanierungsstau.ID_Bew_Bil" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
290 DoCmd.RunSQL str_SQL_Statement
300 DoEvents

    'tbl_200_10_10_Bewertungsbilanzen (in Archiv)
310 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_200_10_10_Bewertungsbilanzen.*" _
                      & " FROM tbl_100_20_Gebäudeteile INNER JOIN tbl_200_10_10_Bewertungsbilanzen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
320 DoCmd.RunSQL str_SQL_Statement
330 DoEvents

    ' tbl_200_05_10_Bewertungsläufe (in Archiv)
340 str_SQL_Statement = "DELETE DISTINCTROW tbl_200_05_10_Bewertungsläufe.*, tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil" _
                      & " FROM tbl_200_05_10_Bewertungsläufe LEFT JOIN tbl_200_10_10_Bewertungsbilanzen ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert" _
                      & " WHERE (((tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil) Is Null));"
350 DoCmd.RunSQL str_SQL_Statement
360 DoEvents

    'B_Sanierungsstau_Werterhöhung
370 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, B_Sanierungsstau_Werterhöhung.*" _
                      & " FROM tbl_100_20_Gebäudeteile INNER JOIN B_Sanierungsstau_Werterhöhung ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
380 DoCmd.RunSQL str_SQL_Statement
390 DoEvents

    'M_Sonderleistungen
400 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, M_Sonderleistungen.*" _
                      & " FROM tbl_100_20_Gebäudeteile INNER JOIN M_Sonderleistungen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = M_Sonderleistungen.ID_Gebäudeteil" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
410 DoCmd.RunSQL str_SQL_Statement
420 DoEvents

    'M_Sonderleistungen_Kalkulation_für_Budget
430 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, M_Sonderleistungen_Kalkulation_für_Budget.*" _
                      & " FROM tbl_100_20_Gebäudeteile INNER JOIN M_Sonderleistungen_Kalkulation_für_Budget ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = M_Sonderleistungen_Kalkulation_für_Budget.ID_Gebäudeteil" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
440 DoCmd.RunSQL str_SQL_Statement
450 DoEvents

    'M_Nebenkosten
460 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, M_Nebenkosten.*" _
                      & " FROM tbl_100_20_Gebäudeteile INNER JOIN M_Nebenkosten ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = M_Nebenkosten.ID_Gebäudeteil" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
470 DoCmd.RunSQL str_SQL_Statement
480 DoEvents

    'Zuordnung_Abschreibung
490 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, Zuordnung_Abschreibung.*" _
                      & " FROM tbl_100_20_Gebäudeteile INNER JOIN Zuordnung_Abschreibung ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Zuordnung_Abschreibung.ID_Gebäudeteil" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
500 DoCmd.RunSQL str_SQL_Statement
510 DoEvents

    'M_Fremdmieten
520 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, M_Fremdmieten.*" _
                      & " FROM tbl_100_20_Gebäudeteile INNER JOIN M_Fremdmieten ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = M_Fremdmieten.ID_Gebäudeteil" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
530 DoCmd.RunSQL str_SQL_Statement
540 DoEvents

    'M_Nebenkosten_Kalkulation_für_Budget
550 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, M_Nebenkosten_Kalkulation_für_Budget.*" _
                      & " FROM tbl_100_20_Gebäudeteile INNER JOIN M_Nebenkosten_Kalkulation_für_Budget ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = M_Nebenkosten_Kalkulation_für_Budget.ID_Gebäudeteil" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
560 DoCmd.RunSQL str_SQL_Statement
570 DoEvents

    'A_Buchungen_Aufteilung_auf_Kostenstellen
580 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, A_Buchungen_Aufteilung_auf_Kostenstellen.*" _
                      & " FROM tbl_100_20_Gebäudeteile INNER JOIN A_Buchungen_Aufteilung_auf_Kostenstellen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = A_Buchungen_Aufteilung_auf_Kostenstellen.ID_Gebäudeteil" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
590 DoCmd.RunSQL str_SQL_Statement
600 DoEvents

    'tbl_100_40_Zuordn_Gebteile_Koststellen
610 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_40_Zuordn_Gebteile_Koststellen.*" _
                      & " FROM tbl_100_20_Gebäudeteile INNER JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
620 DoCmd.RunSQL str_SQL_Statement
630 DoEvents

    ' tbl_100_20_Gebäudeteile (DS in Muttertabelle selbst!!)
640 str_SQL_Statement = "DELETE tbl_100_20_Gebäudeteile.ID_Gebäudeteil" _
                      & " FROM tbl_100_20_Gebäudeteile" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)= " & ID_Gebteil & "));"
650 DoCmd.RunSQL str_SQL_Statement

660 DoCmd.SetWarnings True

End Sub
