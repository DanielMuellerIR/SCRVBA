Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Form_Open(Cancel As Integer)

'5   SendKeys "{Enter}"
'7   SendKeys "{NUMLOCK}", True

    Me.Caption = "Auftragsliste VIS (Version " & F_Variable("str_Version") & ")"
    Dim sUsername As String
    sUsername = getUser() 'DM2023-05-12
    lng_User = Nz(DLookup("[ID_User]", "tbl_10_10_User", "[User_Loginname] = '" & sUsername & "'"))

If (lng_User = 0) Then 'DM2023-05-12
    If (sUsername Like "dm0") Then ' Or (Environ$("computername") = Ausnahme_Anw_F_aus_fuer)) Then
        Str_SQL_Statement = "INSERT INTO tbl_10_10_User ( Username, User_Loginname, [Q-Pruefung], nur_lesen) values ('" & sUsername & "', '" & sUsername & "', true, false)" 'DM2023-05-12
        DoCmd.SetWarnings False
        DoCmd.RunSQL Str_SQL_Statement
        DoCmd.SetWarnings True
    Else

        MsgBox ("Aktuellen Benutzer '" & sUsername & "' nicht gefunden. Die Anwendung wird beendet. Bitte den User im Backend anlegen, wenn Zugriff gewährt werden soll.")
        If (Not (Environ$("computername") = Ausnahme_Anw_F_aus_fuer)) Then
            Application.Quit
        End If
    End If

End If

80  If DLookup("[Q-Pruefung]", "tbl_10_10_User", "[User_Loginname] = '" & sUsername & "'") = True Then
90      For Each ctrl In Me.Controls
100         If InStr(1, ctrl.Tag, "*Pruefer*") > 0 Then
110             ctrl.Visible = True
120         End If
130     Next ctrl
140 Else
150     For Each ctrl In Me.Controls
160         If InStr(1, ctrl.Tag, "*Pruefer*") > 0 Then
170             ctrl.Visible = False
180         End If
190     Next ctrl
200 End If
210 Me!TF_Filter_Offene = 0 'DM2022-01-14
220 Call Auftragsliste_Query

230 If DLookup("[nur_lesen]", "tbl_10_10_User", "[User_Loginname] = '" & sUsername & "'") = True Then
240    BS_Neuer_Auftrag.Visible = False
250    BS_AUftr_loeschen.Visible = False
260    BS_Quartal_Neu.Visible = False
270    BS_Quartal_Loeschen.Visible = False
       BS_Auftr_Liste_Export.Visible = False 'DM2021-11-04 beide Buttons für Nur-Lesen nicht sichtbar
       BS_Auftr_Liste_drucken.Visible = False
280    Me!UF_Auftrag.Form.AllowEdits = False
290    Me!UF_Quart_Pruefungen.Form.AllowEdits = False
300 End If

    If (sUsername Like "dm*") Then 'DM2023-05-12
        Forms!frm_10_10_Startformular.ShortcutMenu = True
    End If

End Sub

Private Sub Form_Unload(Cancel As Integer)
    'DM2023-01-30
    If (Not (Environ$("computername") = Ausnahme_Anw_F_aus_fuer)) Then
        Application.Quit
    Else
        Dim lngRetCode As Long
        lngRetCode = ShowWindow(Application.hWndAccessApp, 3)
        CurrentDb.Properties("AllowFullMenus") = True
        Call ShowWindow(hWndAccessApp, SW_MAXIMIZED)
        ZeigNavi True
    End If
End Sub

Private Sub Auftragsliste_Query()
    ' Erzeugt eine an die aktuellen Filter angepasste Version der Abfrage 20_10
    Dim sql As String
    Dim qd As QueryDef

    ' In nachfolgender Zeile können weitere Felder eingefügt werden, wenn diese in den Reports verwendet werden sollen. Damit wird nur die Voraussetzung erfüllt, ein zusätzliches Feld hier hat alleine noch keine Auswirkung!
    sql = "SELECT a.ID_Auftrag, a.Auftragsnr, a.Best_Nr_Infoma, f.Name AS beauftr_Firma, Nz([objekt]) AS Leistungs_Ort, Nz([Produktbezeichnung]) AS Produkt_Bez, a.AS_brutto, a.ID_Fa, f.PersID "

    sql = sql + "FROM tbl_10_40_Firmen as f RIGHT JOIN (tbl_10_30_Objekte as o RIGHT JOIN ([tbl_20_10_Aufträge] as a LEFT JOIN tbl_10_10_User as u ON a.ID_User = u.ID_User) ON o.ID_Obj = a.ID_Obj) ON f.ID_Fa = a.ID_Fa "

    sql = sql + "WHERE ((Nz([objekt])) Like ('*' & '" + Nz(TF_Filter_Ort) + "' & '*')) "

    If (Nz(TF_Filter_ProdBez) <> "") Then
        sql = sql + "AND ((Nz([Produktbezeichnung])) Like ('*' & '" + Nz([TF_Filter_ProdBez]) + "' & '*')) "
    End If

    If (Nz(TF_Filter_Jahr, 0) > 0) Then
        sql = sql + "AND ((Nz(Mid([Auftragsnr],4,4))) Like ('*' & '" + CStr([TF_Filter_Jahr]) + "' & '*')) "
    End If

    If (Nz(TF_Filter_AuftrNr) <> "") Then
        sql = sql + "AND ((Nz(Mid([Auftragsnr],9,4))) Like ('*' & '" + Nz([TF_Filter_AuftrNr]) + "' & '*')) "
    End If

    If (Nz(TF_Filter_Firma) <> "") Then
        sql = sql + "AND ((Nz([Name])) Like ('*' & '" + Nz([TF_Filter_Firma]) + "' & '*')) "
    End If

    If (Nz(TF_Filter_Bearbeiter) <> "") Then
        sql = sql + "AND ((Nz([Username])) Like ('*' & '" + Nz([TF_Filter_Bearbeiter]) + "' & '*')) "
    End If

    If (Nz(TF_Filter_MeldNrInfoma) <> "") Then
        sql = sql + "AND ((Nz([Mel_Nr_Infoma])) Like ('*' & '" + Nz([TF_Filter_MeldNrInfoma]) + "' & '*')) "
    End If

    If (Nz(TF_Filter_BSNr_Infoma) <> "") Then
        sql = sql + "AND ((Nz([Best_Nr_Infoma])) Like ('*' & '" + Nz([TF_Filter_BSNr_Infoma]) + "' & '*')) "
    End If

    If (Nz(TF_Filter_BSNr_Infoma) <> "") Then
        sql = sql + "AND ((Nz([Vergabe_Nr_VIS])) Like ('*' & '" + Nz([TF_Filter_VergN_VIS]) + "' & '*')) "
    End If

    If (TF_Filter_Offene = -1) Then
        sql = sql + "AND (a.SR_bearbeitet_am is null) "
    End If

    sql = sql + "ORDER BY Nz(Mid([Auftragsnr],4,4)) DESC , Nz(Mid([Auftragsnr],9,4));"

    'Debug.Print (sql)


    Set Me!LF_Auftraege.Recordset = CurrentDb.OpenRecordset(sql)
    Set qd = CurrentDb.QueryDefs("qry_20_10_DH_Auftr_Liste") ' ACHTUNG, diese Abfrage wird immmer wieder überschrieben, manuelle Änderungen an dieser Abfrage sind sinnlos!
    qd.sql = sql
End Sub

Private Sub bAufDok_Click()
    If (Me!UF_Auftrag.Form.Recordset.RecordCount = 0) Then
        MsgBox ("Bitte erst einen Auftrag in der Listen oben auswählen")
    Else
        DoCmd.OpenForm "frm_20_50_Auftrag_Dokumente", , , , , acDialog, Me!UF_Auftrag!A_Nr.Value
    End If
End Sub

Private Sub bRE_Click()
    If (Me!UF_Auftrag.Form.Recordset.RecordCount <> 0) Then
        If (IsNull(Me!UF_Auftrag!ID_Fa)) Then
            MsgBox ("Bitte erst eine Firma angeben.")
        Else
            DoCmd.OpenForm "frm_20_40_Auftrag_Rechnung", , , , , acDialog, Me!UF_Auftrag!A_Nr.Value
        End If
    Else
        MsgBox ("Bitte erst einen Auftrag auswählen.")
    End If
End Sub

Private Sub BS_Filter_BEarbeiter_loeschen_Click()
10  Me!TF_Filter_Bearbeiter = Null
20  Call Auftragsliste_Query
End Sub

Private Sub BS_Filter_AUftrNr_loeschen_Click()
10  Me!TF_Filter_AuftrNr = Null
20  Call Auftragsliste_Query
End Sub

Private Sub BS_Filter_Firma_loeschen_Click()
10  Me!TF_Filter_Firma = Null
20  Call Auftragsliste_Query
End Sub

Private Sub BS_Filter_Ort_loeschen_Click()
10  Me!TF_Filter_Ort = Null
20  Call Auftragsliste_Query
End Sub

Private Sub BS_Filter_ProdBez_loeschen_Click()
10  Me!TF_Filter_ProdBez = Null
20  Call Auftragsliste_Query
End Sub
Private Sub BS_Filter_MeldNrInfoma_loeschen_Click()
10  Me!TF_Filter_MeldNrInfoma = Null
20  Call Auftragsliste_Query
End Sub

Private Sub BS_Filter_INfomaNr_loeschen_Click()
10  Me!TF_Filter_BSNr_Infoma = Null
20  Call Auftragsliste_Query
30  Me!UF_Auftrag.Requery
40  Me!UF_Quart_Pruefungen.Requery
End Sub
Private Sub BS_Filter_JAhr_loeschen_Click()
10  Me!TF_Filter_Jahr = Null
20  Call Auftragsliste_Query
30  Me!UF_Auftrag.Requery
40  Me!UF_Quart_Pruefungen.Requery
End Sub

Private Sub BS_AlleFilter_Loeschen_Click()
10  lng_Auftr_Nr = 0
20  Me!TF_Filter_AuftrNr = Null
30  Me!TF_Filter_Firma = Null
40  Call Auftragsliste_Query
50  Me!TF_Filter_Ort = Null
60  Me!TF_Filter_Bearbeiter = Null
70  Me!TF_Filter_ProdBez = Null
80  Me!TF_Filter_MeldNrInfoma = Null
90  Me!TF_Filter_BSNr_Infoma = Null
91  Me!TF_Filter_Offene = 0 'DM2022-01-14
100 Call Auftragsliste_Query

End Sub

Private Sub BS_Filter_VergN_VIS_loeschen_Click()
10  Me.TF_Filter_VergN_VIS = Null
20  Call Auftragsliste_Query
30  Me!UF_Auftrag.Requery
40  Me!UF_Quart_Pruefungen.Requery

End Sub

Private Sub BS_Firmenliste_Click()

10  If Val(Nz(lng_Firma)) = 0 Then
20      lng_Firma = 0
30  End If

40  DoCmd.OpenForm "frm_30_10_Firmen", , , , , acDialog
End Sub

Private Sub BS_Quartals_Pr_drucken_Click()
10  DoCmd.OpenReport "rep_20_30_Quartalspruefungen", acViewPreview
End Sub


Private Sub BS_ZVS_Ausw_drucken_Click()
10  DoCmd.OpenReport "rep_20_20_Auftr_List_ZVS_Ausw", acViewPreview
End Sub

Private Sub BS_ZVS_Ausw_Export_Click()
10  str_Dateiname = DateiSpeichern(str_Excel_Exportpfad & "VIS_ZVS_Auswertung.xlsx", "Excel-Export nach ..", "Excel-Dateien (*.xlsx)", "*.xlsx")

20  If str_Dateiname = "" Then
30      MsgBox "Abbbruch"
40      Exit Sub
50  End If

60  Call Export_Excel("qry_30_17_DH_VIS_VIS_ZVS_ExcelExp", _
                      str_Dateiname, _
                      "VIS_ZVS_Auswertung", _
                      "VIS_ZVS_Auswertung vom " & Date & " (Aufträge mit Schätzkosten netto zwischen 250 und 15.000 Eur)")

End Sub




Private Sub BS_Auftr_Liste_drucken_Click()
10  DoCmd.OpenReport "rep_20_10_Auftragsliste", acViewPreview
End Sub

Private Sub BS_Auftr_Liste_Export_Click()
10  str_Dateiname = DateiSpeichern(str_Excel_Exportpfad & "VIS_Auftragsliste.xlsx", "Excel-Export nach ..", "Excel-Dateien (*.xlsx)", "*.xlsx")

20  If str_Dateiname = "" Then
30      MsgBox "Abbbruch"
40      Exit Sub
50  End If

60  Call Export_Excel("qry_20_17_DH_VIS_Auftr_Liste_ExcelExp", _
                      str_Dateiname, _
                      "VIS-Auftragsliste", _
                      "VIS-Auftragsliste  vom " & Date)
End Sub

Private Sub BS_AUftr_loeschen_Click()

10  If MsgBox("Auftrag " & Me.LF_Auftraege.Column(1) & vbCrLf _
            & "wirklich löschen?", vbYesNo, "Auftrag löschen?") = vbNo Then
20      Exit Sub
30  End If

40  Str_SQL_Statement = _
    "DELETE tbl_20_10_Aufträge.ID_Auftrag, tbl_20_10_Aufträge.ID_Auftrag" _
                      & " FROM tbl_20_10_Aufträge WHERE (((tbl_20_10_Aufträge.ID_Auftrag)=F_Variable('lng_Auftr_Nr')));"

50  DoCmd.SetWarnings False
60  DoCmd.RunSQL Str_SQL_Statement
70  DoCmd.SetWarnings True

80  Call Auftragsliste_Query
90  Me!UF_Auftrag.Requery
100 Me!UF_Quart_Pruefungen.Requery

End Sub

Private Sub BS_Neuer_Auftrag_Click()

 'DM2023-01-30
'10  i = CLng(Nz(DLookup("[Hoechste_Nummer]", "qry_20_50_Hoechste_Auftr_Nr"))) + 1
    Dim Jahr As String
    Jahr = CStr(Nz([TF_Filter_Jahr], Year(Date)))
10  i = CLng(Nz(DLookup("Max(Val(Right([Auftragsnr],4)))", "tbl_20_10_Aufträge", "Mid([Auftragsnr],4,4)=" & Jahr))) + 1 'DM2023-01-30 direktes SQL anstelle der gespeicherten Query

'20  Str_SQL_Statement = _
    "INSERT INTO tbl_20_10_Aufträge ( Auftragsnr, ID_User )" _
                        & " SELECT F_Variable('str_Bereich') & '-' & Year(Date()) & '-' & Right('0000' & Trim(Str(F_Variable('i'))),4) AS an," _
                        & " F_Variable('lng_User') AS idus;"

20  Str_SQL_Statement = _
    "INSERT INTO tbl_20_10_Aufträge ( Auftragsnr, ID_User )" _
                        & " SELECT F_Variable('str_Bereich') & '-" & Jahr & "-' & Right('0000' & Trim(Str(F_Variable('i'))),4) AS an," _
                        & " F_Variable('lng_User') AS idus;" 'DM2023-01-30


30  DoCmd.SetWarnings False 'Verhindert die Frage "Möchten Sie die ausgewählten Datensätze wirklich neu anfügen?"
40  DoCmd.RunSQL Str_SQL_Statement
50  DoCmd.SetWarnings True

60  lng_Firma = 0

70  Call Auftragsliste_Query
80  lng_Auftr_Nr = DMax("[ID_Auftrag]", "tbl_20_10_Aufträge")
90  Me!LF_Auftraege = lng_Auftr_Nr
100 Me!UF_Auftrag.Requery
110 Me!UF_Quart_Pruefungen.Requery

120 Me!UF_Auftrag.SetFocus
130 Me!UF_Auftrag!ID_User.SetFocus

End Sub

Private Sub BS_Quartal_Loeschen_Click()

10  If MsgBox("Quartal wirklich löschen?", vbYesNo, "Quartal löschen?") = vbNo Then
20      Exit Sub
30  End If

40  Str_SQL_Statement = _
    "DELETE tbl_20_30_Q_Prüfung.ID_Q_Pr FROM tbl_20_30_Q_Prüfung" _
                      & " WHERE (((tbl_20_30_Q_Prüfung.ID_Q_Pr)=F_Variable('lng_Q_Pr')));"

50  DoCmd.SetWarnings False
60  DoCmd.RunSQL Str_SQL_Statement
70  DoCmd.SetWarnings True
80  Me!UF_Quart_Pruefungen.Requery
90  Me!UF_Auftrag.Requery

End Sub

Private Sub BS_Quartal_Neu_Click()

10  i = fc_Quartal(Date)

20  Str_SQL_Statement = _
    "INSERT INTO tbl_20_30_Q_Prüfung ( Kalenderjahr, Quartal )" _
                      & " SELECT Year(Date()) AS kj, " & i & " as q;"
30  DoCmd.SetWarnings False
40  DoCmd.RunSQL Str_SQL_Statement
50  DoCmd.SetWarnings True
60  Me!UF_Quart_Pruefungen.Requery


End Sub



Private Sub LF_Auftraege_AfterUpdate()
10  lng_Auftr_Nr = Me!LF_Auftraege
20  lng_Bearbeiter = Me!LF_Auftraege
30  Me!UF_Auftrag.Requery
40  Me!UF_Quart_Pruefungen.Requery
50  lng_Firma = Val(Nz(Me.LF_Auftraege.Column(7)))

End Sub

Private Sub BS_Beenden_Click()
    On Error Resume Next 'DM2021-11-04
10  Me.UF_Auftrag.Form.RecordSource = ""
20  Me.UF_Quart_Pruefungen.Form.RecordSource = ""
    If (getUser() Like "dm*") Then 'DM2021-11-02
        DoCmd.Close acForm, Me.Name
    Else
30      DoCmd.Quit
    End If
    Err.Clear
End Sub


Private Sub TF_Filter_Bearbeiter_AfterUpdate()
10  lng_Auftr_Nr = 0
20  Call Auftragsliste_Query
30  lng_Bearbeiter = 0
40  Me!UF_Auftrag.Requery
End Sub

Private Sub TF_Filter_AuftrNr_AfterUpdate()
10  lng_Auftr_Nr = 0
20  Call Auftragsliste_Query
30  lng_Auftr_Nr = 0
40  Me!UF_Auftrag.Requery
End Sub

Private Sub TF_Filter_Firma_AfterUpdate()
10  lng_Auftr_Nr = 0
20  Call Auftragsliste_Query
30  lng_Auftr_Nr = 0
40  Me!UF_Auftrag.Requery
End Sub

Private Sub TF_Filter_MeldNrInfoma_AfterUpdate()
10  lng_Auftr_Nr = 0
20  Call Auftragsliste_Query
30  lng_Auftr_Nr = 0
40  Me!UF_Auftrag.Requery
End Sub

Private Sub TF_Filter_Offene_AfterUpdate()
    Call Auftragsliste_Query
End Sub

Private Sub TF_Filter_Ort_AfterUpdate()
10  lng_Auftr_Nr = 0
20  Call Auftragsliste_Query
30  lng_Auftr_Nr = 0
40  Me!UF_Auftrag.Requery
End Sub

Private Sub TF_Filter_ProdBez_AfterUpdate()
10  lng_Auftr_Nr = 0
20  Call Auftragsliste_Query
30  lng_Auftr_Nr = 0
40  Me!UF_Auftrag.Requery
End Sub

Private Sub TF_Filter_BSNr_Infoma_AfterUpdate()
10  lng_Auftr_Nr = 0
20  Call Auftragsliste_Query
30  Me!UF_Auftrag.Requery
40  Me!UF_Quart_Pruefungen.Requery
End Sub

Private Sub TF_Filter_Jahr_AfterUpdate()
10  lng_Auftr_Nr = 0
20  Call Auftragsliste_Query
30  Me!UF_Auftrag.Requery
40  Me!UF_Quart_Pruefungen.Requery
End Sub

Private Sub TF_Filter_VergN_VIS_AfterUpdate()
10  lng_Auftr_Nr = 0
20  Call Auftragsliste_Query
30  Me!UF_Auftrag.Requery
40  Me!UF_Quart_Pruefungen.Requery

End Sub

Private Sub UF_Auftrag_Exit(Cancel As Integer)
10  Call Auftragsliste_Query
20  Me!LF_Auftraege = lng_Auftr_Nr
30  Me!LF_Auftraege = lng_Bearbeiter
End Sub
