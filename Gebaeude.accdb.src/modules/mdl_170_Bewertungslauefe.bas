Attribute VB_Name = "mdl_170_Bewertungslauefe"
Option Compare Database
Option Explicit

Sub Gebauedebewertung(Bewert_Jahr, Alle_Eins, Bil_Art, Erl_Text)

10  lng_Kalk_Jahr = Bewert_Jahr
20  str_Suchtext = Erl_Text

30  Select Case Bil_Art
    Case 1
40      lng_Bil_art = 1
50  Case 2
60      lng_Bil_art = 2
70  Case 3
80      lng_Bil_art = 3
90  End Select

100 Select Case Alle_Eins
    Case "Alle"
110     lng_ID_Geb_Teil_Min = DMin("[ID_Gebäudeteil]", "tbl_100_20_Gebäudeteile")
120     lng_ID_Geb_Teil_Max = DMax("[ID_Gebäudeteil]", "tbl_100_20_Gebäudeteile")
130 Case "Eins"
140     lng_ID_Geb_Teil_Min = lng_ID_Geb_Teil
150     lng_ID_Geb_Teil_Max = lng_ID_Geb_Teil
160 End Select

    ' Step 1: Lege EINen neuen DS in Tabelle tbl_200_05_10_Bewertungsläufe an
    ' Feld [Erst_Folgebilanz] wird mit einer 3 beschrieben als Kennung
    ' für eine temporäre (sofort nach dem Schließen des Berichts wieder zu löschende) Bewertungsbilanz

170 str_SQL_Statement = "INSERT INTO tbl_200_05_10_Bewertungsläufe ( Erst_Folgebilanz, Bewertungsjahr, Erläuterung, Zeitpunkt )" _
                      & " SELECT F_Variable('lng_Bil_art')  AS FolgBil, F_Variable('lng_Kalk_Jahr') AS Bew_Jahr, F_Variable('str_Suchtext') AS Erl, Now() AS zp;"
180 DoCmd.SetWarnings False
190 DoCmd.RunSQL str_SQL_Statement
200 DoEvents
210 lng_id_Bewert = DMax("[id_Bewert]", "tbl_200_05_10_Bewertungsläufe")

    ' Step 2 Lege zum markierten Gebäudeteil Einen neuen DS in Tabelle tbl_200_10_10_Bewertungsbilanzen an
    ' Revision am 05.04.2018: Die Anfügeabfrage qry_200_10_10_Erstelle_Bewertungsbilanz sachlöießt solche aus, bei denen eine Erstbewertung noch fehlt!!
220 DoCmd.OpenQuery "qry_200_10_10_Erstelle_Bewertungsbilanz"
230 DoEvents

    ' Step 3): Lege pro Gebäudeteil neue DSe an in Tabelle tbl_200_30_10_Bew_Bilanz_Sanierungsstau
240 For i = lng_ID_Geb_Teil_Min To lng_ID_Geb_Teil_Max
250     lng_ID_Geb_Teil = i

        'If Not DLookup("[ID_Gebäudeteil]", "qry_200_05_10_Fehlende_Erstbewertungen", "[Status] = 'Erstbil. zum Geb.teil fehlt'") = lng_ID_Geb_Teil Then
260     DoCmd.OpenQuery "qry_200_30_10_Erst_Bew_bil_Sanierungsstau"
        'End If

270 Next i
280 DoEvents

    ' Step 4): Lege pro Gebäudeteil neue DSe an in Tabelle tbl_200_30_20_Bew_Bilanz_Werterhoehungen
290 For i = lng_ID_Geb_Teil_Min To lng_ID_Geb_Teil_Max
300     lng_ID_Geb_Teil = i

        'If Not DLookup("[ID_Gebäudeteil]", "qry_200_05_10_Fehlende_Erstbewertungen", "[Status] = 'Erstbil. zum Geb.teil fehlt'") = lng_ID_Geb_Teil Then
310     DoCmd.OpenQuery "qry_200_30_20_Erst_Bew_bil_Werterhoehung"
        'End If

320     DoEvents
330 Next i


340 DoCmd.SetWarnings True


End Sub


Sub Loesche_Temp_Bew_Bilanzen()

' Lösche temporäre Datensätze in Tabelle tbl_200_30_10_Bew_Bilanz_Sanierungsstau
10  str_SQL_Statement = "DELETE tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz, tbl_200_30_10_Bew_Bilanz_Sanierungsstau.*" _
                      & " FROM (tbl_200_05_10_Bewertungsläufe" _
                      & " INNER JOIN tbl_200_10_10_Bewertungsbilanzen ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert)" _
                      & " INNER JOIN tbl_200_30_10_Bew_Bilanz_Sanierungsstau ON tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil = tbl_200_30_10_Bew_Bilanz_Sanierungsstau.ID_Bew_Bil" _
                      & " WHERE (((tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz)=3));"
20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True
50  DoEvents

    ' Lösche temporäre Datensätze in Tabelle tbl_200_30_20_Bew_Bilanz_Werterhoehungen
60  str_SQL_Statement = "DELETE tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz, tbl_200_30_20_Bew_Bilanz_Werterhoehungen.*" _
                      & " FROM (tbl_200_05_10_Bewertungsläufe" _
                      & " INNER JOIN tbl_200_10_10_Bewertungsbilanzen ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert)" _
                      & " INNER JOIN tbl_200_30_20_Bew_Bilanz_Werterhoehungen ON tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil = tbl_200_30_20_Bew_Bilanz_Werterhoehungen.ID_Bew_Bil" _
                      & " WHERE (((tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz)=3));"
70  DoCmd.SetWarnings False
80  DoCmd.RunSQL str_SQL_Statement
90  DoCmd.SetWarnings True
100 DoEvents

    ' Lösche temporäre Datensätze in Tabelle tbl_200_10_10_Bewertungsbilanzen
110 str_SQL_Statement = "DELETE tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz, tbl_200_10_10_Bewertungsbilanzen.*" _
                      & " FROM tbl_200_05_10_Bewertungsläufe INNER JOIN tbl_200_10_10_Bewertungsbilanzen ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert" _
                      & " WHERE (((tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz)=3));"
120 DoCmd.SetWarnings False
130 DoCmd.RunSQL str_SQL_Statement
140 DoCmd.SetWarnings True
150 DoEvents

    ' Lösche temporäre Datensätze in Tabelle tbl_200_10_10_Bewertungsbilanzen
160 str_SQL_Statement = "DELETE tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz" _
                      & " FROM tbl_200_05_10_Bewertungsläufe" _
                      & " WHERE (((tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz)=3));"
170 DoCmd.SetWarnings False
180 DoCmd.RunSQL str_SQL_Statement
190 DoCmd.SetWarnings True
200 DoEvents

End Sub

Function fc_ID_WE_Vor_DS(id_WE)

10  If IsNull(id_WE) Then
20      fc_ID_WE_Vor_DS = 0
30      Exit Function
40  End If

50  i = DLookup("[ID_Gebäudeteil]", "B_Sanierungsstau_Werterhöhung  ", "[ID_Werterh] = " & id_WE)
60  dt_Fix_Datum = DLookup("[Aktivierungs_Datum]", "B_Sanierungsstau_Werterhöhung  ", "[ID_Werterh] = " & id_WE)
70  fc_ID_WE_Vor_DS = _
    CLng(Nz(DMax("[ID_Werterh]", "B_Sanierungsstau_Werterhöhung", "[ID_Gebäudeteil] = " & i & " AND clng([Aktivierungs_Datum]) < " & CLng(dt_Fix_Datum))))

End Function
