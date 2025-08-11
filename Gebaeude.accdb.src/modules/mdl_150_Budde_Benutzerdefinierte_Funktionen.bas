Attribute VB_Name = "mdl_150_Budde_Benutzerdefinierte_Funktionen"
Option Compare Database
Option Explicit

Function NochNichtZugeordnet(idm As Long) As Currency
10  NochNichtZugeordnet = val(Nz(DLookup("[Voraussichtliche Kosten gesamt]", "Bericht Sanierungsstau nach Finanzplanung", "ID = " & idm) _
                               - DSum("[Betrag]", "Bericht Sanierungsstau nach Finanzplanung", "[ID] = " & idm)))
End Function

Public Function PosHsNrInStrasse(Strasse As String) As Integer
    Dim Zaehler As Integer
    Dim Laenge As Integer
    Dim X As String
    Dim Ergebnis As String

    Laenge = Len(Strasse)
    PosHsNrInStrasse = 0
    'von rechts nach links durch Strassennamen gehen
    'bis auf die 3 linken Zeichen damit Strassen, die mit Zahl beginnen
    '(z.B. 3. Terwestenweg) nicht als Hausnummer erkannt werden
    For Zaehler = Laenge To 3 Step -1
        X = Mid(Strasse, Zaehler, 1)             'aktuell zu prüfendes Zeichen
        If IsNumeric(X) Then                 'prüfen, ob Zeichen eine Zahl ist
            PosHsNrInStrasse = InStr(Strasse, X)            'Position der Zahl
        End If
    Next
End Function

Public Function HsNr(Strasse As String) As String
    Dim pos As Integer
    Dim Laenge As Integer

    pos = PosHsNrInStrasse(Strasse)
    Laenge = Len(Strasse)
    If pos > 0 Then
        HsNr = Right(Strasse, Laenge - pos + 1)
    Else
        HsNr = ""
    End If

End Function

Public Function strName(Strasse As String) As String
    Dim pos As Integer
    Dim Laenge As Integer

    pos = PosHsNrInStrasse(Strasse)
    Laenge = Len(Strasse)
    If pos > 0 Then
        'Trim: führende und nachgestellte Leerzeichen entfernen
        strName = Trim(Left(Strasse, pos - 1))
    Else
        strName = Strasse
    End If

End Function

Public Function fc_Flurstuecke(Optional ID_Geb) As String

10  If IsMissing(ID_Geb) Then
20      fc_Flurstuecke = ""
30      Exit Function
40  End If

50  str_SQL_Statement = "SELECT tbl_100_05_QV_Liegensch_Flurstuecke.ID_Gebäude," _
                      & " tbl_050_10_Gemarkungen.Gemark_Abk, tbl_070_10_Flure.Flur, tbl_090_10_Flurstuecke.Flurstueck, tbl_100_05_QV_Liegensch_Flurstuecke.Teilweise, tbl_090_10_Flurstuecke.Erbpacht" _
                      & " FROM ((tbl_050_10_Gemarkungen" _
                      & " INNER JOIN tbl_070_10_Flure ON tbl_050_10_Gemarkungen.ID_Gemarkung = tbl_070_10_Flure.ID_Gemarkung)" _
                      & " INNER JOIN tbl_090_10_Flurstuecke ON tbl_070_10_Flure.ID_Flur = tbl_090_10_Flurstuecke.ID_Flur)" _
                      & " INNER JOIN tbl_100_05_QV_Liegensch_Flurstuecke ON tbl_090_10_Flurstuecke.ID_Flurstueck = tbl_100_05_QV_Liegensch_Flurstuecke.ID_Flurstueck" _
                      & " WHERE ((tbl_100_05_QV_Liegensch_Flurstuecke.ID_Gebäude)= " & ID_Geb & ")" _
                      & " ORDER BY tbl_090_10_Flurstuecke.Flurstueck;"

60  Set rst = CurrentDb.OpenRecordset(str_SQL_Statement, dbOpenDynaset)

70  If rst.EOF Then
80      fc_Flurstuecke = ""
90      Exit Function
100 End If

110 rst.MoveLast
120 rst.MoveFirst

130 While Not rst.EOF
140     fc_Flurstuecke = fc_Flurstuecke & ", " & rst![Flurstueck] _
                       & IIf(rst![Teilweise] = True, "(teilw.)", "") _
                       & IIf(rst![Erbpacht] = True, "(Erbp.)", "")
150     rst.MoveNext
160 Wend

170 fc_Flurstuecke = Mid(fc_Flurstuecke, 3)
180 rst.Close
190 Set rst = Nothing

End Function

Public Function fc_Grundst_zu_Geb(Optional ID_Geb)

10  If IsMissing(ID_Geb) Then
20      fc_Grundst_zu_Geb = ""
30      Exit Function
40  End If

50  If ID_Geb = 0 Then
60      fc_Grundst_zu_Geb = ""
70      Exit Function
80  End If

90  i = CLng(Nz(DLookup("[ID_Gemarkung]", "tbl_100_10_Liegenschaften", "[ID_Gebäude] = " & ID_Geb)))
100 If i = 0 Then
110     fc_Grundst_zu_Geb = ""
120 End If

130 fc_Grundst_zu_Geb = "Gem. " & DLookup("[Gemarkung]", "tbl_050_10_Gemarkungen", "[ID_Gemarkung] = " & i) 'DM2022-10-19

140 i = Nz(DLookup("[ID_Flur]", "tbl_100_10_Liegenschaften", "[ID_Gebäude] = " & ID_Geb), 0)
150 fc_Grundst_zu_Geb = fc_Grundst_zu_Geb & " / Flur " & Nz(DLookup("[Flur]", "tbl_070_10_Flure", "[ID_Flur] = " & i), "") 'DM2022-10-19

160 fc_Grundst_zu_Geb = fc_Grundst_zu_Geb & " / Flurst. " & fc_Flurstuecke(ID_Geb)

End Function

Public Function fc_Grundst_zu_GebT(Optional ID_GebT)

10  j = CLng(Nz(DLookup("[ID_Gebäude]", "tbl_100_20_Gebäudeteile", "[ID_Gebäudeteil] = " & ID_GebT)))
20  fc_Grundst_zu_GebT = fc_Grundst_zu_Geb(j)

End Function

Function Tabelle_geoeffnet(strName As String) As Boolean
10  Tabelle_geoeffnet = SysCmd(SYSCMD_GETOBJECTSTATE, acTable, strName)
End Function

Function Abfrage_geoeffnet(strName As String) As Boolean
10  Abfrage_geoeffnet = SysCmd(SYSCMD_GETOBJECTSTATE, acQuery, strName)
End Function


'Public Sub Anw_Fenster_Aus(Schalter As Boolean) 'DM2022-07-26 siehe mdl 010
'
'    Dim hWindow As Long
'    Dim nResult As Long
'    'Dim nCmdShow As Long
'
'10  hWindow = Application.hWndAccessApp
'20  If Schalter = True Then
'22      nResult = ShowWindow(ByVal hWindow, ByVal 0)
'40  Else
'50      nResult = ShowWindow(ByVal hWindow, ByVal 1)
'60  End If
'
'End Sub

Function Verantwort(Gruppen_KZ)

10  Select Case Gruppen_KZ

    Case 0
20      Verantwort = "Alle"
30  Case 1
40      Verantwort = "Objekt-Verantwortliche"
50  Case 2
60      Verantwort = "Grundstücks-Verantwortliche"
70  Case 3
80      Verantwort = "Fachplaner Elektro"
90  Case 4
100     Verantwort = "Fachplaner H/L/S"
110 Case 5
120     Verantwort = "Vermietungs-Verantwortliche"

130 End Select

End Function

Public Sub Blende_MN_IDs_ein_aus(rep As Report)

10  If bln_MN_ID_sichtb = True Then
20      rep!BF_MN_ID.Visible = True
30      rep!TF_MN_ID.Visible = True
40  Else
50      rep!BF_MN_ID.Visible = False
60      rep!TF_MN_ID.Visible = False
70  End If

End Sub

Function fc_Akt_Kostenst(ID_Gebteil)

10  On Error GoTo Keine_KS
20  fc_Akt_Kostenst = _
    DLookup("Format([Kostenstelle_Infoma],'00000') & "": "" & [Bezeichnung]", "M_Kostenstellen", "[Kennummer] = " _
                                                                                               & DLookup("[Kenn_Kostst]", "tbl_100_40_Zuordn_Gebteile_Koststellen", _
                                                                                                           "ID_Gebäudeteil = " & ID_Gebteil & " and Date() between [Datum_von] and [Datum_bis]"))

30  fc_Akt_Kostenst = Format(fc_Akt_Kostenst, "00000")
40  Exit Function

Keine_KS:
50  fc_Akt_Kostenst = "(noch nicht zugeordnet)"

End Function


Function fc_Sort_Text(Optional sort_)

10  If IsMissing(sort_) Then
20      fc_Sort_Text = ""
30      Exit Function
40  End If

50  If IsNull(sort_) Then
60      fc_Sort_Text = ""
70      Exit Function
80  End If

90  Select Case sort_
    Case "B"
100     fc_Sort_Text = "Miete"
110 Case "C"
120     fc_Sort_Text = "Nebenkosten"
130 Case "D"
140     fc_Sort_Text = "Sonstige Kosten"
150 Case Else
160     fc_Sort_Text = ""
170 End Select

End Function


Function fc_GebT_Status(Bil_Rel, id_Zug_GebT, Erst_Folg_Bil, idgt)


10  If Bil_Rel = False And IsNull(id_Zug_GebT) = True And (IsNull(Erst_Folg_Bil) = True Or Erst_Folg_Bil <> 1) Then
20      fc_GebT_Status = "Stammd.Geb.teil nicht stimmig"
30      Exit Function
40  End If

50  If Bil_Rel = False And IsNull(id_Zug_GebT) = True And Erst_Folg_Bil = 1 Then
60      fc_GebT_Status = "Bilanz_relev. Geb.teil bitte ankl."
70      Exit Function
80  End If

90  If Bil_Rel = False And Not IsNull(id_Zug_GebT) = True And Erst_Folg_Bil = 1 Then
100     fc_GebT_Status = "Bilanz_relev. Geb.teil bitte ankl."
110     Exit Function
120 End If

130 If Bil_Rel = True And IsNull(id_Zug_GebT) = True And (IsNull(Erst_Folg_Bil) = True Or Erst_Folg_Bil <> 1) Then
140     fc_GebT_Status = "Erstbil. zum Geb.teil fehlt"
150     Exit Function
160 End If

170 If Bil_Rel = True And Not IsNull(id_Zug_GebT) = True And Erst_Folg_Bil = 1 Then
180     fc_GebT_Status = "Verweis zug. Gebäude bitte entf."
190     Exit Function
200 End If

End Function


Function fc_Erstbewert_zulaessig(Bil_Rel, id_Zug_GebT, Erst_Folg_Bil) As Boolean

10  fc_Erstbewert_zulaessig = False

20  If Bil_Rel = True And IsNull(id_Zug_GebT) = True And (IsNull(Erst_Folg_Bil) = True Or Erst_Folg_Bil <> 1) Then
30      fc_Erstbewert_zulaessig = True
40      Exit Function
50  End If

End Function


Function fc_PrioSort(Optional Priotext)

10  If IsNull(Priotext) Then
20      fc_PrioSort = 99
30      Exit Function
40  End If

50  If IsMissing(Priotext) Then
60      fc_PrioSort = 99
70      Exit Function
80  End If

90  Select Case Priotext

    Case "Kurzfristig"
100     fc_PrioSort = 10
110 Case "Mittelfristig"
120     fc_PrioSort = 20
130 Case "Langfristig"
140     fc_PrioSort = 30
150 Case "zeitl. Prioroität noch nicht festgel."
160     fc_PrioSort = 90
170 Case Else
180     fc_PrioSort = 99

190 End Select

End Function


Function fc_FinHerk_Sort(ID_Massn, FinHerkunft)

20  If IsNull(ID_Massn) Then
30      fc_FinHerk_Sort = "Z"
40      Exit Function
50  End If

60  If IsNull(FinHerkunft) Then
70      fc_FinHerk_Sort = "Z"
80      Exit Function
90  End If

110 If InStr(1, FinHerkunft, "noch nicht") > 0 Then
120     fc_FinHerk_Sort = "Z"
130     Exit Function
140 End If

    ' FAlls Funktion bis hier hin nicht vorzeitig abgebrochen wurde:
150 fc_FinHerk_Sort = "A"


End Function

Function fc_Buchst_der_Massn(ID_MN As Long)

    Dim str_F_Qu As String, str_F_Herk As String

10  str_SQL_Statement = _
    "SELECT Buchungsstellen.Buchungsstelle, Haushaltsdaten.Inv_Nr, Haushaltsdaten.Anlagen_Nr, Haushaltsdaten.Kostentraeger, Finanzquellen.Finanzquelle, Finanzherkunft.Finanzherkunft, IIf([Jahr]=Year(Now())-1 And [HHR]>0,[HHR],IIf([Jahr]=Year(Now()) And [Ansatz]>0,[Ansatz],IIf([Jahr]=Year(Now()) And [VE]>0,[VE],0))) AS zufVfg" _
                      & " FROM Finanzherkunft RIGHT JOIN (Finanzquellen RIGHT JOIN (Maßnahmen INNER JOIN (Buchungsstellen INNER JOIN Haushaltsdaten ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]) ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]) ON Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu)" _
                      & " ON Finanzherkunft.ID_Fin_Her = Haushaltsdaten.ID_Fin_Her WHERE (((Maßnahmen.ID)=1428) AND ((Haushaltsdaten.Jahr)=F_Variable('lng_Kalk_Jahr')));"

20  Set rst = CurrentDb.OpenRecordset(str_SQL_Statement, dbOpenDynaset)

30  If rst.RecordCount = 0 Then
40      fc_Buchst_der_Massn = ""
50      Exit Function
60  End If

70  rst.MoveLast
80  rst.MoveFirst
90  cur_Betrag = 0
100 cur_Betr_Summe = 0
110 fc_Buchst_der_Massn = ""
120 k = 0
130 While Not rst.EOF
140     k = k + 1
150     str_F_Qu = IIf(IsNull(rst![Finanzquelle]), "N.N.", rst![Finanzquelle])
160     str_F_Herk = IIf(IsNull(rst![Finanzherkunft]), "N.N.", rst![Finanzherkunft])
170     cur_Betrag = CCur(Nz(rst![zufVfg]))
180     cur_Betr_Summe = cur_Betr_Summe + cur_Betrag

190     If fc_Buchst_der_Massn = "" Then
200         fc_Buchst_der_Massn = fc_Buchst_der_Massn & rst![Buchungsstelle] & " (" & str_F_Qu & " / " & str_F_Herk & " / " & Format(cur_Betrag, "#,##0.00 €") & ")"
210     Else
220         fc_Buchst_der_Massn = fc_Buchst_der_Massn & vbCrLf & rst![Buchungsstelle] & " (" & str_F_Qu & " / " & str_F_Herk & " / " & Format(cur_Betrag, "#,##0.00 €") & ")"
230     End If

240     rst.MoveNext
250 Wend

260 If cur_Betr_Summe > cur_Betrag Then
270     fc_Buchst_der_Massn = fc_Buchst_der_Massn & " |  Summe: " & Format(cur_Betr_Summe, "#,##0.00 €")
280 End If

End Function

Function fc_KontNr_der_Massn(ID_MN As Long)

    Dim str_F_Qu As String, str_F_Herk As String

10  str_SQL_Statement = _
    "SELECT Buchungsstellen.Buchungsstelle, Haushaltsdaten.Inv_Nr, Haushaltsdaten.Anlagen_Nr, Haushaltsdaten.Kostentraeger, Finanzquellen.Finanzquelle, Finanzherkunft.Finanzherkunft, IIf([Jahr]=Year(Now())-1 And [HHR]>0,[HHR],IIf([Jahr]=Year(Now()) And [Ansatz]>0,[Ansatz],IIf([Jahr]=Year(Now()) And [VE]>0,[VE],0))) AS zufVfg" _
                      & " FROM Finanzherkunft RIGHT JOIN (Finanzquellen RIGHT JOIN (Maßnahmen INNER JOIN (Buchungsstellen INNER JOIN Haushaltsdaten ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]) ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]) ON Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu) ON Finanzherkunft.ID_Fin_Her = Haushaltsdaten.ID_Fin_Her" _
                      & " WHERE (((Maßnahmen.ID)=" & ID_MN & ") AND ((Haushaltsdaten.Jahr)=F_Variable('lng_Kalk_Jahr')));"



20  Set rst = CurrentDb.OpenRecordset(str_SQL_Statement, dbOpenDynaset)

30  If rst.RecordCount = 0 Then
40      fc_KontNr_der_Massn = ""
50      Exit Function
60  End If

70  rst.MoveLast
80  rst.MoveFirst
90  cur_Betrag = 0
100 cur_Betr_Summe = 0
110 fc_KontNr_der_Massn = ""
120 k = 0
130 While Not rst.EOF
140     k = k + 1
150     str_F_Qu = IIf(IsNull(rst![Finanzquelle]), "N.N.", rst![Finanzquelle])
160     str_F_Herk = IIf(IsNull(rst![Finanzherkunft]), "N.N.", rst![Finanzherkunft])
170     cur_Betrag = CCur(Nz(rst![zufVfg]))
180     cur_Betr_Summe = cur_Betr_Summe + cur_Betrag

190     If fc_KontNr_der_Massn = "" Then
200         fc_KontNr_der_Massn = fc_KontNr_der_Massn & rst![Kostentraeger] & " (" & str_F_Qu & " / " & str_F_Herk & " / " & Format(cur_Betrag, "#,##0.00 €") & ")"
210     Else
220         fc_KontNr_der_Massn = fc_KontNr_der_Massn & vbCrLf & rst![Kostentraeger] & " (" & str_F_Qu & " / " & str_F_Herk & " / " & Format(cur_Betrag, "#,##0.00 €") & ")"
230     End If

240     rst.MoveNext
250 Wend

260 If cur_Betr_Summe > cur_Betrag Then
270     fc_KontNr_der_Massn = fc_KontNr_der_Massn & " |  Summe: " & Format(cur_Betr_Summe, "#,##0.00 €")
280 End If

End Function


Function fc_Sachk_K_St_der_Massn(ID_MN As Long)

    Dim str_F_Qu As String, str_F_Herk As String

10  str_SQL_Statement = _
    "SELECT Buchungsstellen.Sachkonto, M_Kostenstellen.Kostenstelle_Infoma, Haushaltsdaten.Kostentraeger, Haushaltsdaten.Inv_Nr, Haushaltsdaten.Anlagen_Nr, Haushaltsdaten.FP_Nr" _
                      & " FROM (tbl_100_20_Gebäudeteile INNER JOIN (Finanzherkunft RIGHT JOIN (Finanzquellen RIGHT JOIN (Maßnahmen INNER JOIN (Buchungsstellen INNER JOIN Haushaltsdaten ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]) ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]) ON Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu) ON Finanzherkunft.ID_Fin_Her = Haushaltsdaten.ID_Fin_Her) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil) INNER JOIN (M_Kostenstellen INNER JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil" _
                      & " WHERE (((Year([Datum_von]))<=F_Variable('lng_Kalk_Jahr')) AND ((Year([Datum_bis]))>=F_Variable('lng_Kalk_Jahr')) AND ((Maßnahmen.ID)=1258) AND ((Haushaltsdaten.Jahr)=F_Variable('lng_Kalk_Jahr')));"

20  Set rst = CurrentDb.OpenRecordset(str_SQL_Statement, dbOpenDynaset)

30  If rst.RecordCount = 0 Then
40      fc_Sachk_K_St_der_Massn = ""
50      Exit Function
60  End If

70  rst.MoveLast
80  rst.MoveFirst
90  cur_Betrag = 0
100 cur_Betr_Summe = 0
110 fc_Sachk_K_St_der_Massn = ""
120 k = 0
130 While Not rst.EOF
140     k = k + 1
150     str_F_Qu = IIf(IsNull(rst![Finanzquelle]), "N.N.", rst![Finanzquelle])
160     str_F_Herk = IIf(IsNull(rst![Finanzherkunft]), "N.N.", rst![Finanzherkunft])
170     cur_Betrag = CCur(Nz(rst![zufVfg]))
180     cur_Betr_Summe = cur_Betr_Summe + cur_Betrag

190     If fc_Sachk_K_St_der_Massn = "" Then
200         fc_Sachk_K_St_der_Massn = fc_Sachk_K_St_der_Massn & rst![Kontierungs_Nr] & " (" & str_F_Qu & " / " & str_F_Herk & " / " & Format(cur_Betrag, "#,##0.00 €") & ")"
210     Else
220         fc_Sachk_K_St_der_Massn = fc_Sachk_K_St_der_Massn & vbCrLf & rst![Kontierungs_Nr] & " (" & str_F_Qu & " / " & str_F_Herk & " / " & Format(cur_Betrag, "#,##0.00 €") & ")"
230     End If

240     rst.MoveNext
250 Wend

260 If cur_Betr_Summe > cur_Betrag Then
270     fc_Sachk_K_St_der_Massn = fc_Sachk_K_St_der_Massn & " |  Summe: " & Format(cur_Betr_Summe, "#,##0.00 €")
280 End If

End Function

Function fc_Bewert_Art(Bew_Index)

10      Select Case Bew_Index
    Case 1
20      fc_Bewert_Art = "Erstbewertung"
30  Case 2
40      fc_Bewert_Art = "Folgebewertung"
50  Case 3
60      fc_Bewert_Art = "Zwischenbewertung"
70  End Select

End Function

Function Abschreibungszeit(Optional bew_jahr, Optional Bauj_real, Optional Nutz_Dauer)

10  If IsNull(bew_jahr) Or IsMissing(bew_jahr) Then
20      Abschreibungszeit = "Bewertungsjahr fehlt!"
30      Exit Function
40  End If

50  If IsNull(Bauj_real) Or IsMissing(Bauj_real) Then
60      Abschreibungszeit = "Baujahr fehlt!"
70      Exit Function
80  End If

90  If IsNull(Nutz_Dauer) Or IsMissing(Nutz_Dauer) Then
100     Abschreibungszeit = "Nutzungsdauer fehlt!"
110     Exit Function
120 End If

130 If bew_jahr < Year(Bauj_real) Then
140     Abschreibungszeit = "Bewertungsjahr jünger als Baujahr?!"
150     Exit Function
160 End If

170 If bew_jahr = Year(Bauj_real) Then
180     Abschreibungszeit = 0
190     Exit Function
200 End If

210 Abschreibungszeit = Round(CDbl(bew_jahr - (Year(Bauj_real) + 1) + ((12 - (Month(CDate(Bauj_real)) - 1)) / 12)), 3)

220 If Abschreibungszeit > Nutz_Dauer Then
230     Abschreibungszeit = Nutz_Dauer
240 End If

End Function


Function Nutzdauer_relevant(Optional Nutzd_gew, Optional Nutzd_gesch) As Long


10  If IsNull(Nutzd_gew) And IsNull(Nutzd_gesch) Then
20      Nutzdauer_relevant = 80
30      Exit Function
40  End If

50  If IsNull(Nutzd_gew) Then
60      Nutzdauer_relevant = Nutzd_gesch
70      Exit Function
80  End If

90  If IsNull(Nutzd_gesch) Then
100     Nutzdauer_relevant = Nutzd_gew
110     Exit Function
120 End If

130 If IsMissing(Nutzd_gew) And IsMissing(Nutzd_gesch) Then
140     Nutzdauer_relevant = 80
150     Exit Function
160 End If

170 If IsMissing(Nutzd_gew) Then
180     Nutzdauer_relevant = Nutzd_gesch
190     Exit Function
200 End If

210 If IsMissing(Nutzd_gesch) Then
220     Nutzdauer_relevant = Nutzd_gew
230     Exit Function
240 End If

250 If Nutzd_gew = 0 Then
260     Nutzdauer_relevant = Nutzd_gesch
270     Exit Function
280 End If

290 If Nutzd_gesch = 0 Then
300     Nutzdauer_relevant = Nutzd_gew
310     Exit Function
320 End If

330 Nutzdauer_relevant = fc_Max(Nutzd_gew, Nutzd_gesch)

End Function

Function Erst_des_VorMonats(Optional dt_Datum)

10  If IsNull(dt_Datum) Then
20      Erst_des_VorMonats = ""
30      Exit Function
40  End If

50  If IsMissing(dt_Datum) Then
60      Erst_des_VorMonats = ""
70      Exit Function
80  End If

90  If Not IsDate(dt_Datum) Then
100     Erst_des_VorMonats = ""
110     Exit Function
120 End If

130 If Month(dt_Datum) = 1 Then
140     Erst_des_VorMonats = CDate("01.12." & Year(dt_Datum) - 1)
150     Exit Function
160 End If

170 Erst_des_VorMonats = CDate("01." & Month(dt_Datum) - 1 & "." & Year(dt_Datum))


End Function

Function fc_Max(Optional Wert1, Optional Wert2)

10  If IsMissing(Wert1) Then
20      fc_Max = Wert2
30      Exit Function
40  End If

50  If IsMissing(Wert2) Then
60      fc_Max = Wert1
70      Exit Function
80  End If

90  If Wert1 > Wert2 Then
100     fc_Max = Wert1
110 Else
120     fc_Max = Wert2
130 End If

End Function

Function fc_Zeit_Min_Sek(ZP_Start, ZP_Ende)

    Dim Stunden As Double, Minuten As Double, Sekunden As Long

10  Stunden = (ZP_Ende - ZP_Start) * 24
20  Minuten = (Stunden - Int(Stunden)) * 60
30  Sekunden = (Minuten - Int(Minuten)) * 60

40  If Int(Stunden) = 0 Then

50      If Int(Minuten) = 0 Then
60          fc_Zeit_Min_Sek = Sekunden & " Sek."
70      Else
80          fc_Zeit_Min_Sek = Int(Minuten) & " Min. / " & Sekunden & " Sek."
90      End If

100 Else
110     fc_Zeit_Min_Sek = Int(Stunden) & " Std. / " & Int(Minuten) & " Min. / " & Sekunden & " Sek."
120 End If

End Function


Function fc_Fin_Herk(ID_Massn)

' Diese Funktion wird eingesetzt in den Abfragen
' qry_400_10_10_DH_rpt_Vergabevorlagen und
' qry_400_10_20_DH_rpt_Vergabevorl_Castroper_Firmen

10  lng_Fin_Herk = val(Nz(DLookup("[ID_Fin_Her]", "Haushaltsdaten", "[ID aus Maßnahmen] = " & ID_Massn)))

20  If lng_Fin_Herk > 0 Then
30      fc_Fin_Herk = DLookup("[Finanzherkunft]", "Finanzherkunft", "ID_Fin_Her = " & lng_Fin_Herk)
40      Exit Function
50  Else
60      lng_Fin_Herk = val(Nz(DLookup("[ID_Fin_Her]", "Geplante Finanzierung", "[ID_Massnahme] = " & ID_Massn)))
70      fc_Fin_Herk = DLookup("[Finanzherkunft]", "Geplante Finanzierung", "ID_Fin_Her = " & lng_Fin_Herk)

80      If lng_Fin_Herk > 0 Then
90          fc_Fin_Herk = DLookup("[Finanzherkunft]", "Finanzherkunft", "ID_Fin_Her = " & lng_Fin_Herk)
100         Exit Function
110     Else
120         fc_Fin_Herk = "Mittelherkunft noch nicht festgelegt"
130     End If

140 End If

End Function


Function Dat_Eing_01_letzter(DAt_)

10  If IsNull(DAt_) Then
20      Dat_Eing_01_letzter = True
30      Exit Function
40  End If

50  If Day(DAt_) = 1 Then
60      Dat_Eing_01_letzter = True
70      Exit Function
80  End If

90  If Day(DAt_ + 1) = 1 Then
100     Dat_Eing_01_letzter = True
110     Exit Function
120 End If

130 Dat_Eing_01_letzter = False

End Function


Function Dt_Std_Eing_Datum_min()
10  Select Case Month(Date)
    Case 1
20      Dt_Std_Eing_Datum_min = CDate("01.01." & Year(Date) - 1)
30  Case Else
40      Dt_Std_Eing_Datum_min = CDate("01.01." & Year(Date))
50  End Select
End Function

Function Dt_Std_Eing_Datum_max()
10  Dt_Std_Eing_Datum_max = CDate("31.12." & Year(Date))
End Function


Function fc_Std_Summe(Stunden_ As Double) As String
    Dim Minuten_ As Double

10  fc_Std_Summe = Int(Stunden_ * 24)
20  Minuten_ = (Stunden_ * 24) - fc_Std_Summe
30  Minuten_ = Round(Minuten_ * 60, 0)

40  If Minuten_ >= 60 Then
50      Minuten_ = 0
60      fc_Std_Summe = fc_Std_Summe + 1
70  End If

80  fc_Std_Summe = fc_Std_Summe & ":" & Right("00" & Minuten_, 2)

End Function

Function fc_Begehung_ber_vorhanden(idgt As Long, begjahr As Long) As Boolean

10  If Nz(DLookup("[ID_Begehung]", "tbl_500_10_Begehungen", "[ID_Gebäudeteil] = " & idgt & " AND [Begehungsjahr]  = " & begjahr)) = 0 Then
20      fc_Begehung_ber_vorhanden = False
30  Else
40      fc_Begehung_ber_vorhanden = True
50  End If

End Function


Function fc_Round(Optional varNr, Optional varPl As Integer = 2) As Double

' Quelle: http://www.access-im-unternehmen.de/215
' Vielen Dank an André Minhorst (ich (Werner Budde) bin 2..3 Male bei seinem Access-Stammtisch in Duisburg dabei gewesen)

10  If IsMissing(varNr) Or Not IsNumeric(varNr) Then Exit Function
20  fc_Round = Fix("" & varNr * (10 ^ varPl) + Sgn(varNr) * 0.5) / (10 ^ varPl)

End Function
