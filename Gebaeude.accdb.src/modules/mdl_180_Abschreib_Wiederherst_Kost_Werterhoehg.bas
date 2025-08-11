Attribute VB_Name = "mdl_180_Abschreib_Wiederherst_Kost_Werterhoehg"
Option Compare Database
Option Explicit

Function IsFrmOpen(sFrmName As String) As Boolean
    On Error GoTo Error_Handler

    IsFrmOpen = Application.CurrentProject.AllForms(sFrmName).IsLoaded

Error_Handler_Exit:
    On Error Resume Next
    Exit Function

Error_Handler:
    MsgBox "The following error has occurred" & vbCrLf & vbCrLf & _
           "Error Number: " & Err.Number & vbCrLf & _
           "Error Source: IsFrmOpen" & vbCrLf & _
           "Error Description: " & Err.Description & _
           Switch(Erl = 0, "", Erl <> 0, vbCrLf & "Line No: " & Erl) _
           , vbOKOnly + vbCritical, "An Error has Occurred!"
    Resume Error_Handler_Exit
End Function

Public Function HK_Berechnen_2022(ID_Gebteil As Variant) As Double
    'DM2022-09-14
    HK_Berechnen_2022 = Nz(DLookup("HK_fuer_WBW", "qry_DM_HK", "ID_Gebäudeteil = " & CStr(ID_Gebteil)), 0)
End Function

Public Function WBW_BerechnenNurWerterh(ID_Gebteil As Variant, Optional WBW_Jahr As Long, Optional ID_Werterh As Long) As Double
    'DM2022-09-14
    Dim HK As Double
    Dim BewJahr As Long
    BewJahr = IIf(WBW_Jahr > 0, WBW_Jahr, Year(Date) - 1) 'Wenn nicht per Parameter übergeben wird das letzte Jahr verwendet
    Dim IndexBewJahr As Double
    IndexBewJahr = Nz(DLookup("Index", "tbl_200_10_05_Indexe", "Jahr = " & CStr(BewJahr)))
    Dim IndexBauJahr As Double
    'IndexBauJahr = DLookup("Index", "tbl_200_10_05_Indexe", "Jahr = 2009")
    'WBW_Berechnen_2022 = Round(HK, 2) * IndexBewJahr / IndexBauJahr
    Dim rst_wbw As Recordset
    Dim str_SQL_Statement As String
    If (ID_Werterh > 0) Then
        str_SQL_Statement = "SELECT B_Sanierungsstau_Werterhöhung.* FROM B_Sanierungsstau_Werterhöhung WHERE (B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil) = " & CStr(ID_Gebteil) _
        & " AND (B_Sanierungsstau_Werterhöhung.ID_Werterh)=" & CStr(ID_Werterh) & " AND (B_Sanierungsstau_Werterhöhung.DS_Typ)=2 AND (B_Sanierungsstau_Werterhöhung.Beruecks_Wiederbesch_Wert)=True ORDER BY B_Sanierungsstau_Werterhöhung.DS_Typ;"
    Else
        str_SQL_Statement = "SELECT B_Sanierungsstau_Werterhöhung.* FROM B_Sanierungsstau_Werterhöhung WHERE (B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil) = " & CStr(ID_Gebteil) _
        & " AND (B_Sanierungsstau_Werterhöhung.DS_Typ)=2 AND (B_Sanierungsstau_Werterhöhung.Beruecks_Wiederbesch_Wert)=True ORDER BY B_Sanierungsstau_Werterhöhung.DS_Typ;"
    End If
    Set rst_wbw = CurrentDb.OpenRecordset(str_SQL_Statement)
    If (rst_wbw.EOF = False) Then
        rst_wbw.MoveLast
        rst_wbw.MoveFirst
        While Not rst_wbw.EOF
            If (rst_wbw!DS_Typ = 1) Then ' Das eigentliche Gebäude
                HK = Round(rst_wbw![Herstellkosten], 2)
                If (Year(rst_wbw![Aktivierungs_Datum]) < 2000) Then ' Gebäude wurde vor 2000 gebaut: Index für 2009 verwenden, da alle Gebäude vor 2000 auf 2009 hochgerechnet wurden
                    IndexBauJahr = DLookup("Index", "tbl_200_10_05_Indexe", "Jahr = 2009")
                Else ' jünger als 2000: Das Aktivierungsdatum verwenden
                    IndexBauJahr = DLookup("Index", "tbl_200_10_05_Indexe", "Jahr = " & CStr(Year(rst_wbw![Aktivierungs_Datum])))
                End If
            Else ' die Werterhöhenden Bauteile
                HK = Round(rst_wbw![Mehrwert], 2)
                IndexBauJahr = DLookup("Index", "tbl_200_10_05_Indexe", "Jahr = " & CStr(Year(rst_wbw![Aktivierungs_Datum])))
            End If
            WBW_BerechnenNurWerterh = WBW_BerechnenNurWerterh + Round(HK * IndexBewJahr / IndexBauJahr, 2)
            rst_wbw.MoveNext
        Wend
    End If
    WBW_BerechnenNurWerterh = Round(WBW_BerechnenNurWerterh, 2)
    Debug.Print ("mdl 180 WBW_Berechnen_2022: ID_Gebteil = " & CStr(ID_Gebteil) & " HK: " & CStr(HK) & " WBW: " & CStr(Round(WBW_BerechnenNurWerterh, 2)))
End Function


Public Function WBW_Berechnen_2022(ID_Gebteil As Variant, Optional WBW_Jahr As Long) As Double
    'DM2022-07-21 bis DM2022-07-26 siehe auch frm_040_010_Bewertungsbilanzen_Verwaltung
    ' Wird verwendet vom Report rpt_220_10_10_Bew_Bil_Versicherungswerte -> qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten_DM mit diesem Aufruf: ZDouble(WBW_Berechnen_2022([qry_rpt_200_10_10_Datenherk_Bewertungsbilanz].[ID_Gebäudeteil]))
    Dim HK As Double
    Dim BewJahr As Long

    If (Nz(WBW_Jahr) > 0) Then
        BewJahr = WBW_Jahr
    Else
        If (IsFrmOpen("frm_040_010_Bewertungsbilanzen_Verwaltung")) Then
            If (IsNull(Forms!frm_040_010_Bewertungsbilanzen_Verwaltung!LF_Bew_Jahr)) Then
                BewJahr = IIf(WBW_Jahr > 0, WBW_Jahr, Year(Date) - 1) 'Wenn nicht per Parameter übergeben wird das letzte Jahr verwendet
            Else
                BewJahr = CInt(Forms!frm_040_010_Bewertungsbilanzen_Verwaltung!LF_Bew_Jahr)
            End If
        Else
            BewJahr = IIf(WBW_Jahr > 0, WBW_Jahr, Year(Date) - 1)
        End If
    End If
    Dim IndexBewJahr As Double
    IndexBewJahr = Nz(DLookup("Index", "tbl_200_10_05_Indexe", "Jahr = " & CStr(BewJahr)), 0)
    Dim IndexBauJahr As Double
    'IndexBauJahr = DLookup("Index", "tbl_200_10_05_Indexe", "Jahr = 2009")
    'WBW_Berechnen_2022 = Round(HK, 2) * IndexBewJahr / IndexBauJahr
    Dim rst_wbw As Recordset
    Dim str_SQL_Statement As String
    str_SQL_Statement = "SELECT B_Sanierungsstau_Werterhöhung.* FROM B_Sanierungsstau_Werterhöhung WHERE ((B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil) = " & CStr(ID_Gebteil) _
    & " AND ( " _
    & " ((B_Sanierungsstau_Werterhöhung.DS_Typ)=2 AND (B_Sanierungsstau_Werterhöhung.Beruecks_Wiederbesch_Wert)=True) " _
    & "  OR ((B_Sanierungsstau_Werterhöhung.DS_Typ)=1)))" _
    & " ORDER BY B_Sanierungsstau_Werterhöhung.DS_Typ;"
    Set rst_wbw = CurrentDb.OpenRecordset(str_SQL_Statement)
    If (rst_wbw.EOF = False) Then
        rst_wbw.MoveLast
        rst_wbw.MoveFirst
        While Not rst_wbw.EOF
            If (rst_wbw!DS_Typ = 1) Then ' Das eigentliche Gebäude
                HK = Round(rst_wbw![Herstellkosten], 2)
                If (Year(rst_wbw![Aktivierungs_Datum]) < 2000) Then ' Gebäude wurde vor 2000 gebaut: Index für 2009 verwenden, da alle Gebäude vor 2000 auf 2009 hochgerechnet wurden
                    IndexBauJahr = Nz(DLookup("Index", "tbl_200_10_05_Indexe", "Jahr = 2009"))
                Else ' jünger als 2000: Das Aktivierungsdatum verwenden
                    IndexBauJahr = Nz(DLookup("Index", "tbl_200_10_05_Indexe", "Jahr = " & CStr(Year(rst_wbw![Aktivierungs_Datum]))))
                End If
            Else ' die Werterhöhenden Bauteile
                HK = Round(rst_wbw![Mehrwert], 2)
                IndexBauJahr = DLookup("Index", "tbl_200_10_05_Indexe", "Jahr = " & CStr(Year(rst_wbw![Aktivierungs_Datum])))
            End If
            WBW_Berechnen_2022 = WBW_Berechnen_2022 + Round(HK * IndexBewJahr / IndexBauJahr, 2)
            rst_wbw.MoveNext
        Wend
    End If
    WBW_Berechnen_2022 = Round(WBW_Berechnen_2022, 2)
    Debug.Print ("mdl 180 WBW_Berechnen_2022: ID_Gebteil = " & CStr(ID_Gebteil) & " HK: " & CStr(HK) & " WBW: " & CStr(Round(WBW_Berechnen_2022, 2)))
End Function


Public Function HK_fuer_GebTeil_2022(ID_Gebteil As Variant) As Double
    'DM2022-07-26 siehe auch frm_040_010_Bewertungsbilanzen_Verwaltung
    ' Wird verwendet vom Report rpt_220_10_10_Bew_Bil_Versicherungswerte -> qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten_DM mit diesem Aufruf: ZDouble(WBW_Berechnen_2022([qry_rpt_200_10_10_Datenherk_Bewertungsbilanz].[ID_Gebäudeteil]))
    HK_fuer_GebTeil_2022 = Nz(DLookup("Herstellkosten", "B_Sanierungsstau_Werterhöhung", "[ID_Gebäudeteil] = " & CStr(ID_Gebteil)), 0)
    Debug.Print ("mdl 180 HK_fuer_GebTeil_2022: ID_Gebteil = " & CStr(ID_Gebteil) & " HK: " & CStr(HK_fuer_GebTeil_2022))
End Function


Sub HK_Abschr_1_zum_Baujahr()

If (lng_ID_Geb_Teil = 906) Then

    Debug.Print vbNewLine & vbNewLine & vbNewLine & vbNewLine & vbNewLine & vbNewLine & vbNewLine & vbNewLine & vbNewLine
End If

Debug.Print ("--- HK_Abschr_1_zum_Baujahr Start " & Time())

' berechnet zum Gebäudeteil die Matrix der HKs / Abschreinbungen / Werterhöhungen / Restwerte hier nur den Part 1 = <DS zum Baujahr> neu

' ----------------------------------------------------------------------------------------------------------------------------
' 1) Lösche ggf. vorhandenen ALt-DS zum Baujahr
10  str_SQL_Statement = "DELETE B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil, B_Sanierungsstau_Werterhöhung.DS_Typ" _
                      & " FROM B_Sanierungsstau_Werterhöhung" _
                      & " WHERE (((B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil)=F_Variable('lng_Id_Geb_Teil')) AND ((B_Sanierungsstau_Werterhöhung.DS_Typ)=1));"
    Debug.Print vbNewLine & "mdl 180 HK_Abschr_1_zum_Baujahr lng_Id_Geb_Teil = " & lng_ID_Geb_Teil & vbNewLine & str_SQL_Statement & vbNewLine 'DM2022-06-30
20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True
    ' ----------------------------------------------------------------------------------------------------------------------------


    ' ----------------------------------------------------------------------------------------------------------------------------
    ' 2) Lege neuen Erst-DS an zu den Baujahr-Daten
    ' Belege Hilfvariablen mit Daten
50  dt_Akt_Datum = DLookup("iif(not isnull([Baujahr_mod]),[Baujahr_mod],[Baujahr_real])", "tbl_100_20_Gebäudeteile", "[ID_Gebäudeteil] = " & lng_ID_Geb_Teil)

    ' Excel-Zelle D8
    ' Telefonische Vereinbarung mit H. Kania am 29.09.2017:
    ' Falls das betreffende Gebäude bereits in der Eröffnungsbilanz 2009 dbei war, so muss zwingend
    ' als Einstiegs-HK in der 1. Zeile der Exdel-Matrix der damlige HK_2009 eingegeben sein;
60  If Geb_2009_Bereits_Erstbew(lng_ID_Geb_Teil) = True Then
70      lng_id_Bewert = 1
80      lng_ID_Geb_Teil_Min = lng_ID_Geb_Teil
90      lng_ID_Geb_Teil_Max = lng_ID_Geb_Teil
100     cur_HK = Nz(DLookup("[Herstellkosten]", "qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten", "[ID_Gebäudeteil] = " & lng_ID_Geb_Teil), 0) 'DM2022-07-27
        Debug.Print (vbNewLine & "Geb_2009_Bereits_Erstbew(lng_ID_Geb_Teil) = True" & vbNewLine & "cur_HK = DLookup([Herstellkosten], qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten, [ID_Gebäudeteil] =  & lng_ID_Geb_Teil) = " & cur_HK) 'DM2022-06-30

        ' Ansonsten Neubauwert_ab_2000 oder nach NHK berechnet
110 Else
120     cur_HK = CCur(Nz(DLookup("[Neubauwert_ab_2000]", "tbl_100_20_Gebäudeteile", "[ID_Gebäudeteil] = " & lng_ID_Geb_Teil)))
        Debug.Print (vbNewLine & "Geb_2009_Bereits_Erstbew(lng_ID_Geb_Teil) = False" & vbNewLine & "cur_HK = CCur(Nz(DLookup([Neubauwert_ab_2000], tbl_100_20_Gebäudeteile, [ID_Gebäudeteil] =  & lng_ID_Geb_Teil))) = " & cur_HK) 'DM2022-06-30

        ' Falls es zu Gebäuden vor Baujahr 2000 keinen Eintarg in [Neubauwert_ab_2000] gibt, wird über NHK-Ausstattungsmerkmale
        ' ein "fiktiver NK" berechnet

130     If cur_HK = 0 Then
            ' In nachfolgendr Formel ist die Konstruktion VAl(nz(..)) bzw. ccur(nz( ..)) deshalb notwendig,
            ' da hier einige Felder [BGF] in tbl_100_20_Gebäudeteile als auch [Euro je BGF] in qry_200_10_20_Bewertung_fehlender_NBW_ab_2000
            ' zum Zeitpunt 09.07.2017 noch leer sind.

            ' Ermittle den BGF-Wert aus der Summe aller diesem Gebäude zugeordneten Gebäudeteile,
            ' falls das Grundstück diesem Gbeäudeteil zugeordnet ist (Telefonat H. Kania undW. Budde a, 06.10.2017)
140         If DLookup("[Bilanz_relevant]", "tbl_100_20_Gebäudeteile", "[ID_Gebäudeteil] = " & lng_ID_Geb_Teil) = True Then
150             dbl_BGF = Nz(DSum("[BGF]", "tbl_100_20_Gebäudeteile", "[ID_GebT_Zug_GebT] = " & lng_ID_Geb_Teil & " or ID_Gebäudeteil = " & lng_ID_Geb_Teil), 0) 'DM2022-04-20 Hier kam es zu unzulässiger Zuweisung von Null
160         Else
170             dbl_BGF = 0    ' hier dürfte der Code zur LZ eigentlich nue hinspringen, da ..
180         End If

            ' Ermittle den Betrag pro Eur/BGF_m²
190         cur_Wert_1 = dbl_BGF * CCur(Nz(DLookup("[Euro je BGF]", "qry_200_10_20_Bewertung_fehlender_NBW_ab_2000")))

            ' Im Falle der HK-Berechnung bei alten Gebäuden vor 2000 ist der Index von 2000 auf 2009 immer 1,1641,
            ' da dieser bei den Erstbewertungen mal so festgesetzt war und in Zukunft alle weiteren Folgebewertungen
            ' immer auf dieser Baiss aufgesetzt werden müssen; ODER es wird der manuelle Index übernommen
200         dbl_Index = CDbl(Nz(DLookup("[Index_manuell]", "tbl_100_20_Gebäudeteile", "[ID_Gebäudeteil] = " & lng_ID_Geb_Teil)))

210         If dbl_Index = 0 Then
220             dbl_Index = 1.1641
230         Else
240             dbl_Index = 1 + (dbl_Index / 100)
250         End If

260         cur_Wert_2 = dbl_Index * cur_Wert_1

270         cur_BNK = CCur(val(Nz(DLookup("[Baunebenkosten]", "qry_200_10_20_Bewertung_fehlender_NBW_ab_2000", "[ID_Gebäudeteil] = " & lng_ID_Geb_Teil))) / 100 * cur_Wert_2)
280         cur_Wert_3 = cur_Wert_2 + cur_BNK
290         cur_Auss_Anl = cur_Wert_3 * 0.04
300         cur_HK = cur_Wert_3 + cur_Auss_Anl
            Debug.Print (vbNewLine & "cur_HK = 0 daher:" & vbNewLine & "dbl_BGF = " & dbl_BGF & vbNewLine & "cur_Wert_1 = dbl_BGF * CCur(Nz(DLookup([Euro je BGF], qry_200_10_20_Bewertung_fehlender_NBW_ab_2000))) = " & cur_Wert_1)
            Debug.Print ("dbl_Index = " & dbl_Index & vbNewLine & "cur_Wert_2 = dbl_Index * cur_Wert_1 = " & cur_Wert_2 & vbNewLine & "cur_BNK = " & cur_BNK & vbNewLine & " cur_Wert_3 = cur_Wert_2 + cur_BNK =" & cur_Wert_3)
            Debug.Print ("cur_Auss_Anl = cur_Wert_3 * 0.04 = " & cur_Auss_Anl & vbNewLine & "cur_HK = cur_Wert_3 + cur_Auss_Anl = " & cur_HK)

310     End If

320 End If

    ' Excel-Zelle E8
330 cur_Wiederb_wert = cur_HK
Debug.Print (vbNewLine & "cur_Wiederb_wert = cur_HK = " & cur_Wiederb_wert) 'DM2022-06-30

    ' Excel Zelle G8: Nutzungsdauer in Monaten (F8: Jahre, aber für nachf. Berechnungen braucht's Monate)
340 If IsNull(DLookup("[geschätze Nutzungsdauer]", "tbl_100_20_Gebäudeteile", "[ID_Gebäudeteil] = " & lng_ID_Geb_Teil)) Then
350     lng_Nutzd_Monate = val(Nz(DLookup("[gewöhnliche Nutzungsdauer]", "tbl_100_20_Gebäudeteile", "[ID_Gebäudeteil] = " & lng_ID_Geb_Teil) * 12))
360 Else
370     lng_Nutzd_Monate = val(Nz(DLookup("[geschätze Nutzungsdauer]", "tbl_100_20_Gebäudeteile", "[ID_Gebäudeteil] = " & lng_ID_Geb_Teil) * 12))
380 End If
390 lng_Nutzd_Monate = IIf(lng_Nutzd_Monate = 0, 12, lng_Nutzd_Monate)


    ' Excel-Zelle H8
400 cur_Abschr_pro_Monat = cur_Wiederb_wert / lng_Nutzd_Monate

    ' Excel-Zelle I8
410 lng_Abschr_Monate = 0

    ' Excel-Zelle J8
420 cur_Abschr_bis_Hier = 0

    ' Excel-Zelle K8
430 cur_Restwert_vor_WE = cur_Wiederb_wert

    ' Excel-Zelle L8
440 cur_Werterh = 0

    ' Excel-Zelle M8
450 lng_Nutzd_Verl = 0

    ' Excel-Zelle N8
460 bln_Berueck_WBW = False

    ' Excel-Zelle O8
470 cur_Restwert_nach_WE = cur_Wiederb_wert


    'Testzeilen ----------------------------------------------
    Const bln_Test As Boolean = True 'DM2022-06-30 auf true gesetzt und aktuelles modul und methode ausgeben
480 If bln_Test = True Then
        Debug.Print vbNewLine & "mdl 180 HK_Abschr_1_zum_Baujahr lng_ID_Geb_Teil = " & lng_ID_Geb_Teil
490     Debug.Print "dt_Akt_Datum : " & dt_Akt_Datum
500     Debug.Print "cur_Wert_1 : " & cur_Wert_1
510     Debug.Print "dbl_Index : " & dbl_Index
520     Debug.Print "cur_Wert_2 : " & cur_Wert_2
530     Debug.Print "cur_Wert_3 : " & cur_Wert_3
540     Debug.Print "cur_Auss_Anl : " & cur_Auss_Anl
550     Debug.Print "cur_Wiederb_wert : " & cur_Wiederb_wert
560     Debug.Print "cur_Abschr_pro_Monat : " & cur_Abschr_pro_Monat
570     Debug.Print "lng_Abschr_Monate : " & lng_Abschr_Monate
580     Debug.Print "cur_Abschr_bis_Hier : " & cur_Abschr_bis_Hier
590     Debug.Print "cur_Restwert_vor_WE : " & cur_Restwert_vor_WE
600     Debug.Print "cur_Werterh : " & cur_Werterh
610     Debug.Print "lng_Nutzd_Verl : " & lng_Nutzd_Verl
620     Debug.Print "bln_Berueck_WBW : " & bln_Berueck_WBW
630     Debug.Print "cur_Restwert_nach_WE : " & cur_Restwert_nach_WE
640 End If
    ' Testzeilen Ende ------------------------------------------

    'Lege meuen DS an
650 str_SQL_Statement = _
    "INSERT INTO B_Sanierungsstau_Werterhöhung ( ID_Gebäudeteil, DS_Typ, Aktivierungs_Datum, Index_Vor_DS_bis_jetzt, Herstellkosten, Wiederbesch_Wert, Nutzungs_Monate_ab_jetzt, Abschr_pro_Mon_Vor_DS_bis_jetzt, Abschr_Monate_Vor_DS_bis_jetzt, Abschr_Vor_DS_bis_Jetzt, Restwert_vor_Werterh, Mehrwert, Nutz_dauer_Jahre_Verl, Beruecks_Wiederbesch_Wert, Restwert_nach_Werterh )" _
                      & " SELECT F_Variable('lng_Id_Geb_Teil') AS idgt, 1 AS dst, F_Variable('dt_Akt_Datum') AS aktdt, F_Variable('dbl_Index') AS Idx_bis_jetzt, F_Variable('cur_HK') AS HK, F_Variable('cur_Wiederb_wert') AS WBW, F_Variable('lng_Nutzd_Monate') AS ntz_Dauer, F_Variable('cur_Abschr_pro_Monat') AS abs_bis_j_pr_Mn, 0 AS abs_Monate, F_Variable('cur_Abschr_bis_Hier') AS abs_Vor_DS_bis_j, F_Variable('cur_Restwert_vor_WE') AS rw_vor_we, F_Variable('cur_Werterh') AS we, F_Variable('lng_Nutzd_Verl') AS ntz_Dau_Verl, F_Variable('bln_Berueck_WBW') AS brs_WB_Wert, F_Variable('cur_Restwert_nach_WE') AS rw_n_WE;"


660 DoCmd.SetWarnings False
670 DoCmd.RunSQL str_SQL_Statement
680 DoCmd.SetWarnings True
    ' ----------------------------------------------------------------------------------------------------------------------------

Debug.Print ("--- HK_Abschr_1_zum_Baujahr Ende " & Time() & vbNewLine)

End Sub

Sub HK_Abschr_2_Werterhoehung()

' berechnet zum Gebäudeteil die Matrix der HKs / Abschreinbungen / Werterhöhungen / Restwerte
' hier Part 2 = DS'e zu sämtlichen echten Werterhöhungen

' Überprüfe, ob es überhaupt einen WE-DS-gibt;
' Falls nicht, hier sofortiger Abbruch
' Der Erst-DS mit DS-Typ = 1 zum Baujahr kann ja ruhig verbleiben,
' wenn später doch wieder ein WE-DS angelegt wird, ist der Erst-DS mit DS-Typ = 1 zum Baujahr dann doch wieder notwendig und direkt vorhanden

Debug.Print ("--- HK_Abschr_2_Werterhoehung Start " & Time())

10  If DCount("[ID_Werterh]", "B_Sanierungsstau_Werterhöhung", "[ID_Gebäudeteil] = " & lng_ID_Geb_Teil & " AND [DS_Typ] = 2") = 0 Then
20      Exit Sub
30  End If

    ' --------------------------------------------------------------------
    ' Bilde Recordset für Echte Werterhöhung
40  str_SQL_Statement = "SELECT B_Sanierungsstau_Werterhöhung.*" _
                      & " FROM B_Sanierungsstau_Werterhöhung" _
                      & " WHERE (((B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil)=F_Variable('lng_id_Geb_Teil')) AND ((B_Sanierungsstau_Werterhöhung.DS_Typ)=2))" _
                      & " ORDER BY B_Sanierungsstau_Werterhöhung.Aktivierungs_Datum;"
50  Set rst = CurrentDb.OpenRecordset(str_SQL_Statement)
Debug.Print (vbNewLine & "Bilde Recordset für Echte Werterhöhung: lng_id_Geb_Teil = " & lng_ID_Geb_Teil & vbNewLine & str_SQL_Statement & " -> " & rst.RecordCount & " records")   'DM2022-06-30

    ' Bilde Recordset für Erst-DS (Baujahr)
60  str_SQL_Statement = "SELECT B_Sanierungsstau_Werterhöhung.*" _
                      & " FROM B_Sanierungsstau_Werterhöhung" _
                      & " WHERE (((B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil)=F_Variable('lng_id_Geb_Teil')) AND ((B_Sanierungsstau_Werterhöhung.DS_Typ)=1));"
70  Set rst_2 = CurrentDb.OpenRecordset(str_SQL_Statement)
Debug.Print ("Bilde Recordset für Erst-DS (Baujahr): lng_id_Geb_Teil = " & lng_ID_Geb_Teil & vbNewLine & str_SQL_Statement & " -> " & rst_2.RecordCount & " records")  'DM2022-06-30
    ' --------------------------------------------------------------------


    ' --------------------------------------------------------------------
    ' Schleife pro WE-DS
80  rst.MoveLast
90  rst.MoveFirst
    Debug.Print ("Schleife über alle " & rst.RecordCount & " records bzgl. echter Werterhöhung (Tabelle B_Sanierungsstau_Werterhöhung)") 'DM2022-06-30
100 While Not rst.EOF
110     lng_ID_Werterh = rst![ID_Werterh]
        Debug.Print ("Schleifendurchlauf: lng_ID_Werterh = B_Sanierungsstau_Werterhöhung.ID_Werterh =" & lng_ID_Werterh & " Bauteil: " & rst![Bauteil]) 'DM2022-06-30
120     If rst.AbsolutePosition = 0 Then    ' Erster echter WE-DS
            Debug.Print ("Erster Schleifendurchlauf ist abweichend:") 'DM2022-06-30
            ' Hole alle notwendigen DS'e ab aus dem bereits existierenden (Erst-)DS mit DS-Typ 1 (Baujahr-DS)
            ' Neue Regelung am 14.08.2018
            ' Telefonat mit H. Kania 14.08.2018:
            ' nach Rücksprache mit Kämmerei anders:
            ' wenn Aktiv.datum der 01., dann Vormonat,
            ' wenn Aktiv.datum der letzte, dann der eigene
130         If Day(rst_2![Aktivierungs_Datum]) <= 14 Then
140             dt_Akt_Datum_VorDS = Erst_des_VorMonats(rst_2![Aktivierungs_Datum])
150         Else
160             dt_Akt_Datum_VorDS = rst_2![Aktivierungs_Datum]
170         End If

            ' Excel-Zelle C8
180         dbl_Index_VorDS = 0    '  erst im akt. DS bei Belegung der Hilfsvariablen wird dann berechnet
            ' Excel-Zelle D8
190         cur_HK_VorDS = rst_2![Herstellkosten]
            Debug.Print ("cur_HK_VorDS = rst_2![Herstellkosten] = " & cur_HK_VorDS) 'DM2022-06-30
            ' Excel-Zelle E8
200         cur_Wiederb_wert_VorDS = rst_2![Wiederbesch_Wert]
            Debug.Print ("cur_Wiederb_wert_VorDS = rst_2![Wiederbesch_Wert] = " & cur_Wiederb_wert_VorDS) 'DM2022-06-30
            ' Excel-Zelle G8
210         lng_Nutzd_Monate_VorDS = rst_2![Nutzungs_Monate_ab_jetzt]
            ' Excel-Zelle H8
220         cur_Abschr_pro_Monat_VorDS = rst_2![Abschr_pro_Mon_Vor_DS_bis_jetzt]
            ' Excel-Zelle I8
230         lng_Abschr_Monate_VorDS = rst_2![Abschr_Monate_Vor_DS_bis_jetzt]
            ' Excel-Zelle J8
240         cur_Abschr_bis_Hier_VorDS = rst_2![Abschr_Vor_DS_bis_Jetzt]
            ' Excel-Zelle K8
250         cur_Restwert_vor_WE_VorDS = rst_2![Restwert_vor_Werterh]
            ' Excel-Zelle L8
260         cur_Werterh_VorDS = rst_2![Mehrwert]  ' obsolet, da in BAujahr-DS noch keineWerterhöhung stattfand
            ' Excel-Zelle M8
270         lng_Nutzd_Verl_VorDS = rst_2![Nutz_dauer_Jahre_Verl]
            ' Excel-Zelle N8
280         bln_Berueck_WBW_VorDS = rst_2![Beruecks_Wiederbesch_Wert]
            ' Excel-Zelle O8
290         cur_Restwert_nach_WE_VorDS = rst_2![Restwert_nach_Werterh]

300     Else    ' Folge-DS WE
            Debug.Print ("Weiterer Schleifendurchlauf:") 'DM2022-06-30
            ' Gehe zum vorherigen WE-DS
310         rst.MovePrevious
            ' Hole alle notwendigen DS'e ab aus dem Vor-DS mit DS-Typ 2

            ' Excel-Zelle B10 ff
320         dt_Akt_Datum_VorDS = rst![Aktivierungs_Datum]
            ' Excel-Zelle C10 ff
330         dbl_Index_VorDS = 0    ' im akt. DS erst wird dann berechnet
            ' Excel-Zelle D10 ff
340         cur_HK_VorDS = rst![Herstellkosten]
            ' Excel-Zelle E10 ff
350         cur_Wiederb_wert_VorDS = rst![Wiederbesch_Wert]
            Debug.Print ("cur_Wiederb_wert_VorDS = rst![Wiederbesch_Wert] = " & cur_Wiederb_wert_VorDS) 'DM2022-06-30
            ' Excel-Zelle G10 ff
360         lng_Nutzd_Monate_VorDS = rst![Nutzungs_Monate_ab_jetzt]
            ' Excel-Zelle H10 ff
370         cur_Abschr_pro_Monat_VorDS = rst![Abschr_pro_Mon_Vor_DS_bis_jetzt]
            ' Excel-Zelle I10 ff
380         lng_Abschr_Monate_VorDS = rst![Abschr_Monate_Vor_DS_bis_jetzt]
            ' Excel-Zelle J10 ff
390         cur_Abschr_bis_Hier_VorDS = rst![Abschr_Vor_DS_bis_Jetzt]
            ' Excel-Zelle K10 ff
400         cur_Restwert_vor_WE_VorDS = rst![Restwert_vor_Werterh]
            ' Excel-Zelle L10 ff
410         cur_Werterh_VorDS = rst![Mehrwert]
            ' Excel-Zelle M10 ff
420         lng_Nutzd_Verl_VorDS = val(Nz(rst![Nutz_dauer_Jahre_Verl]))
            ' Excel-Zelle N10 ff
430         bln_Berueck_WBW_VorDS = rst![Beruecks_Wiederbesch_Wert]
            ' Excel-Zelle O10 ff
440         cur_Restwert_nach_WE_VorDS = rst![Restwert_nach_Werterh]
            ' Gehe wieder zum aktuellen WE-DS
450         rst.MoveNext
460     End If


        ' ========================================================================================
        ' Belege Hilfsvariablen neu zur Aktualisierung des aktuellem DS'es in RST
        ' Excel-Zelle B11
470     If Day(rst![Aktivierungs_Datum]) <= 14 Then
480         dt_Akt_Datum = Erst_des_VorMonats(rst![Aktivierungs_Datum])
490     Else
500         dt_Akt_Datum = rst![Aktivierungs_Datum]
510     End If

        ' Excel-Zelle C11
        Dim indexVar As Variant 'DM2022-04-20
        Debug.Print ("dbl_Index = fc_Index(fc_Max(Year(dt_Akt_Datum_VorDS), 2000), Year(dt_Akt_Datum))")
        indexVar = fc_Index(fc_Max(Year(dt_Akt_Datum_VorDS), 2000), Year(dt_Akt_Datum))
        If (VarType(indexVar) = vbString) Then
                dbl_Index = 0
        Else
520         dbl_Index = indexVar
        End If
        ' Excel-Zelle   D11

        Debug.Print (vbNewLine & "mdl 180 HK_Abschr_2_Werterhoehung lng_id_Geb_Teil= " & lng_ID_Geb_Teil & " lng_ID_Werterh = " & lng_ID_Werterh & vbNewLine & "cur_HK = cur_HK_VorDS + cur_Werterh_VorDS")  'DM2022-06-30
        Debug.Print (cur_HK_VorDS & " + " & cur_Werterh_VorDS & " = " & (cur_HK_VorDS + cur_Werterh_VorDS))
530     cur_HK = cur_HK_VorDS + cur_Werterh_VorDS
        ' Excel-Zelle   E11
        Debug.Print ("mdl 180 HK_Abschr_2_Werterhoehung: lng_id_Geb_Teil = " & lng_ID_Geb_Teil & vbNewLine & "cur_Wiederb_wert = (cur_Wiederb_wert_VorDS + IIf(bln_Berueck_WBW_VorDS = False, 0, cur_Werterh_VorDS)) * dbl_Index")    'DM2022-06-30

540     cur_Wiederb_wert = (cur_Wiederb_wert_VorDS + IIf(bln_Berueck_WBW_VorDS = False, 0, cur_Werterh_VorDS)) * dbl_Index
        Debug.Print (cur_Wiederb_wert_VorDS & " + " & (IIf(bln_Berueck_WBW_VorDS = False, 0, cur_Werterh_VorDS)) & " * " & dbl_Index & "  = " & cur_Wiederb_wert)
        ' Excel-Zelle I10 (erst Abschr-Monate, erst danach Nutzungsmonate,
        ' da Abschr-monate dort richtig einflißen müssen
550     lng_Abschr_Monate = fc_Zeitsp_Mon(dt_Akt_Datum_VorDS, dt_Akt_Datum)
        ' Excel-Zelle G11
560     lng_Nutzd_Monate = lng_Nutzd_Monate_VorDS - lng_Abschr_Monate + (lng_Nutzd_Verl_VorDS * 12)
        ' Excel-Zelle H11
570     cur_Abschr_pro_Monat = IIf(cur_Werterh_VorDS = 0, cur_Abschr_pro_Monat_VorDS, cur_Restwert_nach_WE_VorDS / lng_Nutzd_Monate)

        ' Excel-Zelle J11
580     If cur_Abschr_pro_Monat * lng_Abschr_Monate >= cur_HK_VorDS Then
590         cur_Abschr_bis_Hier = cur_HK_VorDS - 1
600     Else
610         cur_Abschr_bis_Hier = cur_Abschr_pro_Monat * lng_Abschr_Monate
620     End If

        ' Excel-Zelle K11
630     cur_Restwert_vor_WE = cur_Restwert_nach_WE_VorDS - cur_Abschr_bis_Hier
        ' Excel-Zelle L11
640     cur_Werterh = rst![Mehrwert]
        ' Excel-Zelle M11 ff
650     lng_Nutzd_Verl = val(Nz(rst![Nutz_dauer_Jahre_Verl]))
        ' Excel-Zelle N11
660     bln_Berueck_WBW = rst![Beruecks_Wiederbesch_Wert]
        ' Excel-Zelle O11
670     cur_Restwert_nach_WE = cur_Restwert_vor_WE + cur_Werterh

    'Testzeilen ---------------------------------------------- 'DM2022-06-30 Block hier eingefügt
     Debug.Print vbNewLine
     Debug.Print "dt_Akt_Datum : " & dt_Akt_Datum
     Debug.Print "cur_Wert_1 : " & cur_Wert_1
     Debug.Print "dbl_Index : " & dbl_Index
     Debug.Print "cur_Wert_2 : " & cur_Wert_2
     Debug.Print "cur_Wert_3 : " & cur_Wert_3
     Debug.Print "cur_Auss_Anl : " & cur_Auss_Anl
     Debug.Print "cur_Wiederb_wert : " & cur_Wiederb_wert
     Debug.Print "cur_Abschr_pro_Monat : " & cur_Abschr_pro_Monat
     Debug.Print "lng_Abschr_Monate : " & lng_Abschr_Monate
     Debug.Print "cur_Abschr_bis_Hier : " & cur_Abschr_bis_Hier
     Debug.Print "cur_Restwert_vor_WE : " & cur_Restwert_vor_WE
     Debug.Print "cur_Werterh : " & cur_Werterh
     Debug.Print "lng_Nutzd_Verl : " & lng_Nutzd_Verl
     Debug.Print "bln_Berueck_WBW : " & bln_Berueck_WBW
     Debug.Print "cur_Restwert_nach_WE : " & cur_Restwert_nach_WE
    ' Testzeilen Ende ------------------------------------------

        'Aktualisiere im aktuellen WE-DS die Datenfelder
680         str_SQL_Statement = _
        "UPDATE B_Sanierungsstau_Werterhöhung" _
                          & " SET B_Sanierungsstau_Werterhöhung.DS_Typ = 2," _
                          & " B_Sanierungsstau_Werterhöhung.Index_Vor_DS_bis_jetzt = F_Variable('dbl_Index')," _
                          & " B_Sanierungsstau_Werterhöhung.Herstellkosten = F_Variable('cur_HK')," _
                          & " B_Sanierungsstau_Werterhöhung.Wiederbesch_Wert = F_Variable('cur_Wiederb_wert')," _
                          & " B_Sanierungsstau_Werterhöhung.Nutzungs_Monate_ab_jetzt = F_Variable('lng_Nutzd_Monate')," _
                          & " B_Sanierungsstau_Werterhöhung.Abschr_pro_Mon_Vor_DS_bis_jetzt = F_Variable('cur_Abschr_pro_Monat')," _
                          & " B_Sanierungsstau_Werterhöhung.Abschr_Monate_Vor_DS_bis_jetzt = F_Variable('lng_Abschr_Monate')," _
                          & " B_Sanierungsstau_Werterhöhung.Abschr_Vor_DS_bis_Jetzt = F_Variable('cur_Abschr_bis_Hier')," _
                          & " B_Sanierungsstau_Werterhöhung.Restwert_vor_Werterh = F_Variable('cur_Restwert_vor_WE')," _
                          & " B_Sanierungsstau_Werterhöhung.Restwert_nach_Werterh = F_Variable('cur_Restwert_nach_WE')" _
                          & " WHERE (((B_Sanierungsstau_Werterhöhung.ID_Werterh)=F_Variable('lng_ID_Werterh')));"

690     DoCmd.SetWarnings False
700     DoCmd.RunSQL str_SQL_Statement
710     DoCmd.SetWarnings True
        ' ----------------------------------------------------------------------------------------------------------------------------
720     rst.MoveNext

730 Wend

Debug.Print ("--- HK_Abschr_2_Werterhoehung Ende " & Time() & vbNewLine)
End Sub


Sub HK_Abschr_3_zum_Bew_Jahr(bew_jahr)

' berechnet zum Gebäudeteil die Matrix der HKs / Abschreinbungen / Werterhöhungen / Restwerte
' hier Part 3 = Letzter DS zum Bewertungsjahr

Debug.Print ("--- HK_Abschr_3_zum_Bew_Jahr Start " & Time())

10  str_Hinweis = ""

    ' ----------------------------------------------------------------------------------------------------------------------------
    ' 1) Lösche ggf. vorhandenen ALt-DS zum Baujahr
20  str_SQL_Statement = "DELETE B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil, B_Sanierungsstau_Werterhöhung.DS_Typ" _
                      & " FROM B_Sanierungsstau_Werterhöhung" _
                      & " WHERE (((B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil)=F_Variable('lng_Id_Geb_Teil')) AND ((B_Sanierungsstau_Werterhöhung.DS_Typ)=3));"
30  DoCmd.SetWarnings False
40  DoCmd.RunSQL str_SQL_Statement
50  DoCmd.SetWarnings True
    ' ----------------------------------------------------------------------------------------------------------------------------


    ' ----------------------------------------------------------------------------------------------------------------------------
    ' 2) Lege neuen Erst_2-DS an zu den Bewertungsjahr-Daten

60  str_SQL_Statement = "SELECT B_Sanierungsstau_Werterhöhung.*" _
                      & " FROM B_Sanierungsstau_Werterhöhung" _
                      & " WHERE (((B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil)=F_Variable('lng_id_Geb_Teil')) AND ((B_Sanierungsstau_Werterhöhung.DS_Typ)=2))" _
                      & " ORDER BY B_Sanierungsstau_Werterhöhung.Aktivierungs_Datum;"
    Debug.Print vbNewLine & Time()
70  Set rst = CurrentDb.OpenRecordset(str_SQL_Statement)
    Debug.Print ("HK_Abschr_3_zum_Bew_Jahr: lng_id_Geb_Teil = " & lng_ID_Geb_Teil & vbNewLine & str_SQL_Statement & " -> " & rst.RecordCount) 'DM2022-06-30

    'Falls es keinen einzigen WE-DS gibt (meistens der Fall, dann hole die Vor-DS-DAten aus dem DS mit DS-Typ 1 (= Baujahr-DS))
80  If rst.EOF Then
90      str_SQL_Statement = "SELECT B_Sanierungsstau_Werterhöhung.*" _
                          & " FROM B_Sanierungsstau_Werterhöhung" _
                          & " WHERE (((B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil)=F_Variable('lng_id_Geb_Teil')) AND ((B_Sanierungsstau_Werterhöhung.DS_Typ)=1))" _
                          & " ORDER BY B_Sanierungsstau_Werterhöhung.Aktivierungs_Datum;"

100     Set rst_2 = CurrentDb.OpenRecordset(str_SQL_Statement)
        Debug.Print ("Da es keinen einzigen WE-DS gibt: lng_id_Geb_Teil = " & lng_ID_Geb_Teil & vbNewLine & str_SQL_Statement) 'DM2022-06-30
110 End If


    ' Hole alle notwendigen DS'e ab aus dem LETZTEN DS mit DS-Typ 2 (oder dem Baujahr-DS)
120 If rst.EOF Then    ' Es existieren keine Werterhöhungen, nur der Erst-DS zum Baujahr
        ' Hole alle notwendigen DS'e ab aus dem bereits existierenden (Erst-)DS mit DS-Typ 1 (Baujahr-DS)

        ' Excel-Zelle B8 bzw. B11
        ' 130     dt_Akt_Datum_VorDS = rst_2![Aktivierungs_Datum] ' stillgesetzt am 13.08.2018
        ' Achtung: Emailverkehr mit H. Kania August 2018:
        ' Wenn das Gebäude bereits in Eröffnungsbilanz 2009 enthalten war, dann Aktivierungsdatum 1. des Vormonats zum Baujahr-Monat
        ' Aber nur hier im If-Teil, im Else-Teil nicht, da dann eine echte Werterehöhung vorliegt
        ' und die Korektur  bereits vollzogen wurde, siehe Proz. HK_Abschr_2_Werterhoehung, Zeile 130 ff)
        ' Nein, Neue Regelung am 14.08.2018:
        ' 130 If Geb_2009_Bereits_Erstbew(lng_ID_Geb_Teil) = True Then
        ' Telefonat mit H. Kania 14.08.2018:
        ' Nein, nach Rücksprache mit Kämmerei anders:
        ' wenn Aktiv.datum der 01., dann Vormonat,
        ' wenn Aktiv.datum der letzte, dann der eigene
130     If (rst_2.EOF) Then 'DM2022-04-20
            Debug.Print "Kein Datensatz in B_Sanierungsstau_Werterhöhung gefunden mit ID_Gebäudeteil=" & CStr(lng_ID_Geb_Teil)
        Else
            If Day(rst_2![Aktivierungs_Datum]) <= 14 Then
140             dt_Akt_Datum_VorDS = Erst_des_VorMonats(rst_2![Aktivierungs_Datum])
150         Else
160             dt_Akt_Datum_VorDS = rst_2![Aktivierungs_Datum]
170         End If

            ' Excel-Zelle 8
180         dbl_Index_VorDS = 0    '  erst im akt. DS bei Belegung der Hilfsvariablen wird dann berechnet
            ' Excel-Zelle D8
190         cur_HK_VorDS = rst_2![Herstellkosten]
            ' Excel-Zelle E8
200         cur_Wiederb_wert_VorDS = rst_2![Wiederbesch_Wert]
            ' Excel-Zelle G8
210         lng_Nutzd_Monate_VorDS = rst_2![Nutzungs_Monate_ab_jetzt]
            ' Excel-Zelle H8
220         cur_Abschr_pro_Monat_VorDS = rst_2![Abschr_pro_Mon_Vor_DS_bis_jetzt]
            ' Excel-Zelle I8
230         lng_Abschr_Monate_VorDS = rst_2![Abschr_Monate_Vor_DS_bis_jetzt]
            ' Excel-Zelle J8
240         cur_Abschr_bis_Hier_VorDS = rst_2![Abschr_Vor_DS_bis_Jetzt]
            ' Excel-Zelle K8
250         cur_Restwert_vor_WE_VorDS = rst_2![Restwert_vor_Werterh]
            ' Excel-Zelle L8
260         cur_Werterh_VorDS = rst_2![Mehrwert]
            ' Excel-Zelle M8
270         lng_Nutzd_Verl_VorDS = rst_2![Nutz_dauer_Jahre_Verl]

            ' Excel-Zelle N8
280         bln_Berueck_WBW_VorDS = rst_2![Beruecks_Wiederbesch_Wert]
            ' Excel-Zelle O8
290         cur_Restwert_nach_WE_VorDS = rst_2![Restwert_nach_Werterh]
        End If

300 Else    ' Es existiert mindestens 1 Vor-DS als Echte Werterhöhung

        ' Gehe zum letzten WE-DS
310     rst.MoveLast
        ' Hole alle notwendigen DS'e ab aus dem Vor-DS mit DSD-Typ 2
        ' Excel-Zelle B11
320     dt_Akt_Datum_VorDS = rst![Aktivierungs_Datum]
        ' Excel-Zelle C11
330     dbl_Index_VorDS = 0    ' im akt. DS erst wird dann berechnet
        ' Excel-Zelle D11
340     cur_HK_VorDS = rst![Herstellkosten]
        ' Excel-Zelle E11
350     cur_Wiederb_wert_VorDS = rst![Wiederbesch_Wert]
        ' Excel-Zelle G11
360     lng_Nutzd_Monate_VorDS = rst![Nutzungs_Monate_ab_jetzt]
        ' Excel-Zelle H11
370     cur_Abschr_pro_Monat_VorDS = rst![Abschr_pro_Mon_Vor_DS_bis_jetzt]
        ' Excel-Zelle I11
380     lng_Abschr_Monate_VorDS = rst![Abschr_Monate_Vor_DS_bis_jetzt]
        ' Excel-Zelle J11
390     cur_Abschr_bis_Hier_VorDS = rst![Abschr_Vor_DS_bis_Jetzt]
        ' Excel-Zelle K11
400     cur_Restwert_vor_WE_VorDS = rst![Restwert_vor_Werterh]
        ' Excel-Zelle L11
410     cur_Werterh_VorDS = rst![Mehrwert]
        ' Excel-Zelle M11
420     lng_Nutzd_Verl_VorDS = val(Nz(rst![Nutz_dauer_Jahre_Verl]))
        ' Excel-Zelle N11
430     bln_Berueck_WBW_VorDS = rst![Beruecks_Wiederbesch_Wert]
        ' Excel-Zelle O11
440     cur_Restwert_nach_WE_VorDS = rst![Restwert_nach_Werterh]
        ' Gehe wieder zum aktuellen WE-DS

450 End If

    ' Belege Hilfsvariablen neu

    ' Excel-Zelle B12
460 dt_Akt_Datum = CDate("31.12." & bew_jahr)

    ' Excel-Zelle C12
    ' Falls Bewertungsjahr vor dem Baujahr, kontrolliertes Abfangen
470 On Error GoTo Fehler_Bew_Jahr_zufrueh
    Debug.Print (vbNewLine & "dbl_Index = fc_Index(fc_Max(Year(dt_Akt_Datum_VorDS), 2000), Year(dt_Akt_Datum))" & vbNewLine & "dbl_Index = fc_Index(" & fc_Max(Year(dt_Akt_Datum_VorDS), 2000) & ", " & Year(dt_Akt_Datum) & ")")
480 dbl_Index = fc_Index(fc_Max(Year(dt_Akt_Datum_VorDS), 2000), Year(dt_Akt_Datum))
    Debug.Print ("dbl_Index = " & dbl_Index)
490 On Error GoTo 0

    ' Excel-Zelle   D12
Debug.Print (vbNewLine & "cur_HK = cur_HK_VorDS + cur_Werterh_VorDS")
500 cur_HK = cur_HK_VorDS + cur_Werterh_VorDS
Debug.Print (cur_HK_VorDS & " + " & cur_Werterh_VorDS & " = " & cur_HK)
    ' Excel-Zelle   E12
Debug.Print ("cur_Wiederb_wert = (cur_Wiederb_wert_VorDS + IIf(bln_Berueck_WBW_VorDS = False, 0, cur_Werterh_VorDS)) * dbl_Index")
510 cur_Wiederb_wert = (cur_Wiederb_wert_VorDS + IIf(bln_Berueck_WBW_VorDS = False, 0, cur_Werterh_VorDS)) * dbl_Index
Debug.Print (cur_Wiederb_wert_VorDS & " + " & (IIf(bln_Berueck_WBW_VorDS = False, 0, cur_Werterh_VorDS)) & " * " & dbl_Index & " = " & cur_Wiederb_wert)

    ' Excel-Zelle I12 (erst Abschr-Monate, erst danach Nutzungsmonate,
    ' da Abschr-monate dort richtig einflißen müssen
    ' Excel-Zelle I12
520 lng_Abschr_Monate = fc_Zeitsp_Mon(dt_Akt_Datum_VorDS, dt_Akt_Datum)

    ' Excel-Zelle G12
530 lng_Nutzd_Monate = lng_Nutzd_Monate_VorDS - lng_Abschr_Monate + (lng_Nutzd_Verl_VorDS * 12)

    ' Excel-Zelle H12
    '510 cur_Abschr_pro_Monat = IIf(cur_Werterh_VorDS = 0, cur_Abschr_pro_Monat_VorDS, cur_Restwert_nach_WE_VorDS / lng_Nutzd_Monate)
540 cur_Abschr_pro_Monat = IIf(cur_Werterh_VorDS = 0, cur_Abschr_pro_Monat_VorDS, cur_Restwert_nach_WE_VorDS / lng_Nutzd_Monate_VorDS)

    ' Excel-Zelle J12
550 If cur_Abschr_pro_Monat * lng_Abschr_Monate >= cur_HK_VorDS Then
560     cur_Abschr_bis_Hier = fc_Max((cur_HK_VorDS - 1), 1)    ' minimal 1 Eur Rest-Buchwert
570 Else
580     cur_Abschr_bis_Hier = cur_Abschr_pro_Monat * lng_Abschr_Monate
590 End If
    ' Excel-Zelle K12
600 cur_Restwert_vor_WE = cur_Restwert_nach_WE_VorDS - cur_Abschr_bis_Hier
    ' Excel-Zelle L12
610 cur_Werterh = 0
    ' Excel-Zelle M12
620 lng_Nutzd_Verl = 0
    ' Excel-Zelle N12
630 bln_Berueck_WBW = False
    ' Excel-Zelle O12
640 cur_Restwert_nach_WE = cur_Restwert_vor_WE + cur_Werterh  ' obsolet, da im Bewetungsjahr keine Werterhöhung stattfindet


    Const bln_Test As Boolean = True 'DM2022-06-30 auf true gesetzt und modul und methode nennen
650 If bln_Test = True Then
660     Debug.Print vbNewLine & "mdl 180 HK_Abschr_3_zum_Bew_Jahr: lng_id_Geb_Teil = " & lng_ID_Geb_Teil
670     Debug.Print "HK Vor-DS: ", , cur_HK_VorDS
680     Debug.Print "Werterh. Vor-DS: ", cur_Werterh_VorDS
690     Debug.Print "Bewertungsjahr: ", bew_jahr
700     Debug.Print "Akt. Datum: ", , dt_Akt_Datum
710     Debug.Print "Index: ", , dbl_Index
720     Debug.Print "HK: ", , cur_HK
730     Debug.Print "Wied-besch.wert: ", cur_Wiederb_wert
740     Debug.Print "Abschr.-Monate: ", lng_Abschr_Monate
750     Debug.Print "Nutzngsdauer Monate: ", lng_Nutzd_Monate
760     Debug.Print "Abschr. pro Monat: ", cur_Abschr_pro_Monat
770     Debug.Print "Abschr. bis hier: ", cur_Abschr_bis_Hier
780     Debug.Print "Restwert vor WE: ", cur_Restwert_vor_WE
790     Debug.Print "Werterh.: ", , cur_Werterh
800     Debug.Print "Verl. Nutzdauer: ", lng_Nutzd_Verl
810     Debug.Print "We zu berücks. bei WBV: ", bln_Berueck_WBW
820     Debug.Print "Restwert nach WE: ", cur_Restwert_nach_WE
830     Debug.Print

840 End If

    'Lege neuen DS an
850 str_SQL_Statement = _
    "INSERT INTO B_Sanierungsstau_Werterhöhung ( ID_Gebäudeteil, DS_Typ, Aktivierungs_Datum, Index_Vor_DS_bis_jetzt, Herstellkosten, Wiederbesch_Wert, Nutzungs_Monate_ab_jetzt, Abschr_pro_Mon_Vor_DS_bis_jetzt, Abschr_Monate_Vor_DS_bis_jetzt, Abschr_Vor_DS_bis_Jetzt, Restwert_vor_Werterh, Mehrwert, Nutz_dauer_Jahre_Verl, Beruecks_Wiederbesch_Wert, Restwert_nach_Werterh )" _
                      & " SELECT F_Variable('lng_Id_Geb_Teil') AS idgt, 3 AS dst, F_Variable('dt_Akt_Datum') AS aktdt, F_Variable('dbl_Index') AS Idx_bis_jetzt, F_Variable('cur_HK') AS HK, F_Variable('cur_Wiederb_wert') AS WBV, F_Variable('lng_Nutzd_Monate') AS ntz_Dauer, F_Variable('cur_Abschr_pro_Monat') AS abs_bis_j_pr_Mn, F_Variable('lng_Abschr_Monate') AS abs_Monate, F_Variable('cur_Abschr_bis_Hier') AS abs_Vor_DS_bis_j, F_Variable('cur_Restwert_vor_WE') AS rw_vor_we, F_Variable('cur_Werterh') AS we, F_Variable('lng_Nutzd_Verl') AS ntz_Dau_Verl, F_Variable('bln_Berueck_WBW') AS brs_WB_Wert, F_Variable('cur_Restwert_nach_WE') AS rw_n_WE;"

860 DoCmd.SetWarnings False
870 DoCmd.RunSQL str_SQL_Statement
880 DoCmd.SetWarnings True

Debug.Print ("--- HK_Abschr_3_zum_Bew_Jahr Ende " & Time() & vbNewLine)

890 Exit Sub

Fehler_Bew_Jahr_zufrueh:
900 On Error GoTo 0
910 str_Hinweis = "Unplausibilität bei Errmittlung des Indexes"

End Sub

Function fc_Jahre_Monate(Optional Monate) As String

    Dim lng_Ganz_Jahre As Long
    Dim lng_Monate As Long

10  If IsNull(Monate) Then
20      fc_Jahre_Monate = "? J./? M."
30      Exit Function
40  End If

50  If IsMissing(Monate) Then
60      fc_Jahre_Monate = "? J./? M."
70      Exit Function
80  End If

90  If Not IsNumeric(Monate) Then
100     fc_Jahre_Monate = "? J./? M."
110     Exit Function
120 End If

130 If Monate < 0 Then
140     fc_Jahre_Monate = "0 J./0 M."
150     Exit Function
160 End If

170 lng_Ganz_Jahre = Int(Monate / 12)
180 lng_Monate = Monate Mod 12

190 fc_Jahre_Monate = lng_Ganz_Jahre & " J./" & lng_Monate & " M."

End Function


Function fc_Typus(Optional DS_Typ) As String

10  If IsNull(DS_Typ) Then
20      fc_Typus = "??"
30      Exit Function
40  End If

50  If IsMissing(DS_Typ) Then
60      fc_Typus = "??"
70      Exit Function
80  End If

90  If Not IsNumeric(DS_Typ) Then
100     fc_Typus = "??"
110     Exit Function
120 End If

130 Select Case DS_Typ
    Case 1
140     fc_Typus = "Baujahr"
150 Case 2
160     fc_Typus = "Werterhöhung."
170 Case 3
180     fc_Typus = "Bewertungsjahr"
190 Case Else
200     fc_Typus = "??"
210 End Select

End Function

Sub Bilde_Abschr_Matrix_Neu()

    Dim dt_Start As Date
    Dim dt_Ende As Date

10  If MsgBox("Die Neuberechnung der Abschreibung aller Gebäudeteile" & vbCrLf _
            & " kann ein paar Sekunden in Anspruch nehmen." & vbCrLf & vbCrLf _
            & " Trotzdem starten [OK] oder Abbrechen?", vbOKCancel, "Berechnung nun starten?") = vbCancel Then
20      Exit Sub
30  End If


40  dt_Start = Now

    ' Lösche zunächst alle "alten" DS'e in Tabelle B_Sanierungsstau_Werterhöhung
    ' mit DS_Typ 1 (Baujahr-Daten) oder 3 (ggf. verwaiste Bewertungsjahr-Daten)
    '
50  str_SQL_Statement = "DELETE B_Sanierungsstau_Werterhöhung.DS_Typ" _
                      & " FROM B_Sanierungsstau_Werterhöhung" _
                      & " WHERE (((B_Sanierungsstau_Werterhöhung.DS_Typ)=1 Or (B_Sanierungsstau_Werterhöhung.DS_Typ)=3));"
60  DoCmd.SetWarnings False
70  DoCmd.RunSQL str_SQL_Statement
80  DoCmd.SetWarnings True
90  DoEvents

    ' Lege per Recordset alle DS'e der Tabelle tbl_100_20_Gebäudeteile ab,
    ' welche Bilanzrelevant sind und noch in Betrieb sind
100 str_SQL_Statement = "SELECT tbl_100_20_Gebäudeteile.ID_Gebäudeteil" _
                      & " FROM tbl_100_20_Gebäudeteile" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.Bilanz_relevant) = True) And ((tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_seit) Is Null))" _
                      & " ORDER BY tbl_100_20_Gebäudeteile.ID_Gebäudeteil;" _

110   Set rst_GebTeile = CurrentDb.OpenRecordset(str_SQL_Statement, dbOpenDynaset)

120 rst_GebTeile.MoveLast
130 rst_GebTeile.MoveFirst

140 While Not rst_GebTeile.EOF
150     lng_ID_Geb_Teil = rst_GebTeile![ID_Gebäudeteil]

        '==============================
160     Call HK_Abschr_1_zum_Baujahr
170     DoEvents
180     Call HK_Abschr_2_Werterhoehung
190     DoEvents
        '==============================

200     rst_GebTeile.MoveNext
210 Wend

220 dt_Ende = Now
230 MsgBox "Neuberechnung erfolgreich durchgeführt," & vbCrLf _
         & "benötigte Zeit: " & fc_Zeit_Min_Sek(dt_Start, dt_Ende)

End Sub

Function fc_Nutzdauer_ges(ID_Gebteil, IDBewBil)

10  fc_Nutzdauer_ges = _
    (Nutzdauer_relevant(Nutzdauer_relevant(val(Nz(DLookup("[gewöhnliche Nutzungsdauer]", "tbl_100_20_Gebäudeteile", "[ID_Gebäudeteil] = " & ID_Gebteil)))), _
                        val(Nz(DLookup("[geschätze Nutzungsdauer]", "tbl_100_20_Gebäudeteile", "[ID_Gebäudeteil] = " & ID_Gebteil)))) _
                      + DSum("[Nutz_dauer_Jahre_Verl]", "tbl_200_30_20_Bew_Bilanz_Werterhoehungen", "[ID_Bew_Bil] = " & IDBewBil)) _
                      * 12
End Function

Function fc_Zeitsp_Mon(Startdatum, Endedatum, Optional ErstB_2009)

' Ermittelt die Zeitspanne zwischen 2 Terminen:
' Siehe hierzu auch Telefonnotiz vom 24.07.2017

10  If IsMissing(ErstB_2009) Then
20      ErstB_2009 = False
30  End If

40  fc_Zeitsp_Mon = DateDiff("m", "01." & Month(Startdatum) & "." & Year(Startdatum), "28." & Month(Endedatum) & "." & Year(Endedatum))

50  If ErstB_2009 = True Then
60      fc_Zeitsp_Mon = fc_Zeitsp_Mon + 1
70  End If

End Function

Function Geb_2009_Bereits_Erstbew(ID_Gebteil)

' Ermittelt, ob zu es zu einbem Gebäude bereits eine Erstbewertung in 2009 gab

10  If Not IsNull(DLookup("[ID_Gebäudeteil]", "qry_200_30_30_Geb_Teile_2009_bereits_erstbewertet", "[ID_Gebäudeteil] = " & ID_Gebteil)) Then
20      Geb_2009_Bereits_Erstbew = True
30  Else
40      Geb_2009_Bereits_Erstbew = False
50  End If

End Function

Function fc_Idx_2000_2009(ID_Gebteil)

' Hole explizit den Index aus der ehemaligen festgeschriebenen Erstbewertung 2009 ( ==> ID_Bewert = 1)
10  fc_Idx_2000_2009 = Nz(DLookup("[Index_manuell]", "tbl_200_10_10_Bewertungsbilanzen", "[ID_Gebäudeteil] = " & ID_Gebteil & " AND [Id_Bewert] = 1"))

    ' Manueller Index fehlt, dann nehme den Index_2000
20  If fc_Idx_2000_2009 = "" Then

30      fc_Idx_2000_2009 = CDbl(Nz(DLookup("[index ab 2000]", "tbl_200_10_10_Bewertungsbilanzen", "[ID_Gebäudeteil] = " & ID_Gebteil & " AND [Id_Bewert] = 1")))

40      If fc_Idx_2000_2009 = 0 Then
50          fc_Idx_2000_2009 = 16.41
60      End If

70  End If

80  fc_Idx_2000_2009 = CDbl(1 + (fc_Idx_2000_2009 / 100))

End Function


Public Sub ExcelExport_HK_VW()
'DM2022-04-21 aus Formular Auswahl_Debaude_Bewertung extrahiert

  If DCount("[ID_Gebäudeteil]", "qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten_nach_2009") = 0 Then
      MsgBox "Es existieren zur Vorauswahl momentan keine Datensätze." & vbCrLf _
           & "Der Export wird deshalb abgebrochen.", vbOKOnly, "Abbruch"
      Exit Sub
  End If
  str_Dateiname = DateiSpeichern("S:\a60\Datenbank\Excel-Exporte\Herstellkosten_und_Versicherungwerte " & lng_Kalk_Jahr & ".xlsx", "Excel-Export nach", "Excel-Dateien (*.xlsx)", "*.xlsx")

  If str_Dateiname = "" Then
      MsgBox "Abbruch"
      Exit Sub
  End If

  Call Export_Excel("qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten_nach_2009", _
                     str_Dateiname, _
                      "Herstell_Vers_kosten " & lng_Kalk_Jahr, _
                      "Herstell- und Versicherumgskosten " & lng_Kalk_Jahr)


End Sub
