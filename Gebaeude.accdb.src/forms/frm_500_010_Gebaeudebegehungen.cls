Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit


Private Sub BS_Liste_drucken_Click()
10  DoCmd.OpenReport "rpt_500_10_10_Objektbegehungen", acViewPreview, , , acDialog

20  If Me!UF_Beg_Termine.Form.Dirty Then
30      Me!UF_Beg_Termine.SetFocus
40      DoCmd.RunCommand acCmdSaveRecord
50      Me.SetFocus
60  End If

End Sub

Private Sub BS_Neues_Beg_Jahr_Click()

10  lng_Kalk_Jahr = CLng(Nz(DMax("[Begehungsjahr]", "tbl_500_10_Begehungen") + 1))

20  If lng_Kalk_Jahr = 0 Then   ' nur für den Urknall = zu Beginn kein einziger vorhanden
30      lng_Kalk_Jahr = Year(Date)
40  End If

50  If MsgBox("Soll nun ein neuer Begehungen-Datensatzblock" & vbCrLf _
            & vbTab & "zu Begehungsjahr " & lng_Kalk_Jahr & vbCrLf _
            & "angelegt werden?", vbYesNo, "Neuer Atenblock zu " & lng_Kalk_Jahr & "?") = vbNo Then
60      Exit Sub
70  End If

80  str_SQL_Statement = "INSERT INTO tbl_500_10_Begehungen ( Begehungsjahr, ID_Gebäudeteil, ID_SB )" _
                      & " SELECT F_Variable('lng_Kalk_Jahr') AS BGJ, tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_10_Liegenschaften.ID_SB" _
                      & " FROM tbl_100_10_Liegenschaften" _
                      & " INNER JOIN tbl_100_20_Gebäudeteile ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.Beg_erf) = True))" _
                      & " ORDER BY tbl_100_10_Liegenschaften.Bezeichnung, tbl_100_20_Gebäudeteile.Gebäudeteil;"
90  DoCmd.SetWarnings False
100 DoCmd.RunSQL str_SQL_Statement
110 DoCmd.SetWarnings True

120 str_SQL_Statement = "INSERT INTO tbl_500_10_Begehungen ( Begehungsjahr, ID_Gebäudeteil, ID_SB_Fachpl_Elek )" _
                      & " SELECT F_Variable('lng_Kalk_Jahr') AS BGJ, tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_10_Liegenschaften.ID_SB_Fachpl_Elek" _
                      & " FROM tbl_100_10_Liegenschaften" _
                      & " INNER JOIN tbl_100_20_Gebäudeteile ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.Beg_erf) = True))" _
                      & " ORDER BY tbl_100_10_Liegenschaften.Bezeichnung, tbl_100_20_Gebäudeteile.Gebäudeteil;"
130 DoCmd.SetWarnings False
140 DoCmd.RunSQL str_SQL_Statement
150 DoCmd.SetWarnings True

160 str_SQL_Statement = "INSERT INTO tbl_500_10_Begehungen ( Begehungsjahr, ID_Gebäudeteil, ID_SB_Fachpl_HLS )" _
                      & " SELECT F_Variable('lng_Kalk_Jahr') AS BGJ, tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_10_Liegenschaften.ID_SB_Fachpl_HLS" _
                      & " FROM tbl_100_10_Liegenschaften" _
                      & " INNER JOIN tbl_100_20_Gebäudeteile ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.Beg_erf) = True))" _
                      & " ORDER BY tbl_100_10_Liegenschaften.Bezeichnung, tbl_100_20_Gebäudeteile.Gebäudeteil;"
170 DoCmd.SetWarnings False
180 DoCmd.RunSQL str_SQL_Statement
190 DoCmd.SetWarnings True


200 lng_Beg_Jahr = lng_Kalk_Jahr
210 Me!LF_Geb_Begehungsjahre.Requery
220 Me!LF_Geb_Begehungsjahre = lng_Beg_Jahr
230 Me!UF_Beg_Termine.Requery

End Sub

Private Sub BS_Beg_Jahr_Aktual_Click()

' Step 1: Lösche im Begehungs-Datensatz alle DS'e, zu denen in der Tabelle Gebäudeteile dr Schalter Beg_erf "wieder " ausgeknipst wurde
10  i = DCount("[ID_Begehung]", "tbl_500_10_Begehungen", "[Begehungsjahr] = " & lng_Beg_Jahr)
20  str_SQL_Statement = "DELETE tbl_500_10_Begehungen.*, tbl_500_10_Begehungen.Begehungsjahr, tbl_100_20_Gebäudeteile.Beg_erf" _
                      & " FROM tbl_100_20_Gebäudeteile INNER JOIN tbl_500_10_Begehungen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_500_10_Begehungen.ID_Gebäudeteil" _
                      & " WHERE (((tbl_500_10_Begehungen.Begehungsjahr)=F_VAriable('lng_Beg_JAhr')) AND ((tbl_100_20_Gebäudeteile.Beg_erf)=False));"

30  DoCmd.SetWarnings False
40  DoCmd.RunSQL str_SQL_Statement
50  DoCmd.SetWarnings True
60  DoEvents
70  j = DCount("[ID_Begehung]", "tbl_500_10_Begehungen", "[Begehungsjahr] = " & lng_Beg_Jahr)
80  k = i - j

    ' Step 2: Ergänze im Begehungs-Datensatz alle DS'e, zu denen in der TAbelle Gebäudeteile dr Schalter Beg_erf nachträglich  angeknipst wurde
90  i = DCount("[ID_Begehung]", "tbl_500_10_Begehungen", "[Begehungsjahr] = " & lng_Beg_Jahr)

    ' Objektverantw.
100 str_SQL_Statement = "INSERT INTO tbl_500_10_Begehungen ( Begehungsjahr, ID_Gebäudeteil, ID_SB )" _
                      & " SELECT F_Variable('lng_Beg_JAhr') AS BGJ, tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_10_Liegenschaften.ID_SB" _
                      & " FROM tbl_100_10_Liegenschaften INNER JOIN (tbl_100_20_Gebäudeteile LEFT JOIN tbl_500_10_Begehungen" _
                      & " ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_500_10_Begehungen.ID_Gebäudeteil)" _
                      & " ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.Beg_erf)=True)" _
                      & " AND ((fc_Begehung_ber_vorhanden([tbl_100_20_Gebäudeteile].[ID_Gebäudeteil],F_Variable('lng_Beg_JAhr')))=False))" _
                      & " ORDER BY tbl_100_10_Liegenschaften.Bezeichnung, tbl_100_20_Gebäudeteile.Gebäudeteil;"
110 DoCmd.SetWarnings False
120 DoCmd.RunSQL str_SQL_Statement
130 DoCmd.SetWarnings True

    ' Fachpl. Elektro
140 str_SQL_Statement = "INSERT INTO tbl_500_10_Begehungen ( Begehungsjahr, ID_Gebäudeteil, ID_SB_Fachpl_Elek )" _
                      & " SELECT F_Variable('lng_Beg_JAhr') AS BGJ, tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_10_Liegenschaften.ID_SB_Fachpl_Elek" _
                      & " FROM tbl_100_10_Liegenschaften INNER JOIN (tbl_100_20_Gebäudeteile LEFT JOIN tbl_500_10_Begehungen" _
                      & " ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_500_10_Begehungen.ID_Gebäudeteil)" _
                      & " ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.Beg_erf)=True)" _
                      & " AND ((fc_Begehung_ber_vorhanden([tbl_100_20_Gebäudeteile].[ID_Gebäudeteil],F_Variable('lng_Beg_JAhr')))=False))" _
                      & " ORDER BY tbl_100_10_Liegenschaften.Bezeichnung, tbl_100_20_Gebäudeteile.Gebäudeteil;"
150 DoCmd.SetWarnings False
160 DoCmd.RunSQL str_SQL_Statement
170 DoCmd.SetWarnings True

    ' Fachpl. HLS
180 str_SQL_Statement = "INSERT INTO tbl_500_10_Begehungen ( Begehungsjahr, ID_Gebäudeteil, ID_SB_Fachpl_HLS )" _
                      & " SELECT F_Variable('lng_Beg_JAhr') AS BGJ, tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_10_Liegenschaften.ID_SB_Fachpl_HLS" _
                      & " FROM tbl_100_10_Liegenschaften INNER JOIN (tbl_100_20_Gebäudeteile LEFT JOIN tbl_500_10_Begehungen" _
                      & " ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_500_10_Begehungen.ID_Gebäudeteil)" _
                      & " ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude" _
                      & " WHERE (((tbl_100_20_Gebäudeteile.Beg_erf)=True)" _
                      & " AND ((fc_Begehung_ber_vorhanden([tbl_100_20_Gebäudeteile].[ID_Gebäudeteil],F_Variable('lng_Beg_JAhr')))=False))" _
                      & " ORDER BY tbl_100_10_Liegenschaften.Bezeichnung, tbl_100_20_Gebäudeteile.Gebäudeteil;"
190 DoCmd.SetWarnings False
200 DoCmd.RunSQL str_SQL_Statement
210 DoCmd.SetWarnings True




    ' Step 3 : Übernehme neue Zuständigkeiten aus LS-Stammdaten zum  Begehungsjahr in die Begehungsdaten

220 str_SQL_Statement = "SELECT tbl_100_10_Liegenschaften.Bezeichnung, tbl_100_20_Gebäudeteile.Gebäudeteil," _
                      & " tbl_500_10_Begehungen.ID_SB, tbl_100_10_Liegenschaften.ID_SB" _
                      & " FROM tbl_100_10_Liegenschaften" _
                      & " INNER JOIN (tbl_100_20_Gebäudeteile INNER JOIN tbl_500_10_Begehungen" _
                      & " ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_500_10_Begehungen.ID_Gebäudeteil)" _
                      & " ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude" _
                      & " WHERE (((tbl_100_10_Liegenschaften.ID_SB)<>[tbl_500_10_Begehungen].[ID_SB])" _
                      & " AND ((tbl_500_10_Begehungen.Begehungsjahr)=F_Variable('lng_Beg_JAhr')));"
230 Set rst = CurrentDb.OpenRecordset(str_SQL_Statement, dbOpenDynaset)

240 If rst.EOF Then
250     m = 0
260 Else
270     rst.MoveLast
280     m = rst.RecordCount    ' Anzahl DS'e, bei denen de Objektverantwortliche geändert wurde
290 End If

300 str_SQL_Statement = "SELECT tbl_100_10_Liegenschaften.Bezeichnung, tbl_100_20_Gebäudeteile.Gebäudeteil," _
                      & " tbl_500_10_Begehungen.ID_SB_Fachpl_Elek, tbl_100_10_Liegenschaften.ID_SB_Fachpl_Elek" _
                      & " FROM tbl_100_10_Liegenschaften" _
                      & " INNER JOIN (tbl_100_20_Gebäudeteile INNER JOIN tbl_500_10_Begehungen" _
                      & " ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_500_10_Begehungen.ID_Gebäudeteil)" _
                      & " ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude" _
                      & " WHERE (((tbl_100_10_Liegenschaften.ID_SB_Fachpl_Elek)<>[tbl_500_10_Begehungen].[ID_SB_Fachpl_Elek])" _
                      & " AND ((tbl_500_10_Begehungen.Begehungsjahr)=F_Variable('lng_Beg_JAhr')));"

310 Set rst = CurrentDb.OpenRecordset(str_SQL_Statement, dbOpenDynaset)

320 If rst.EOF Then
330     n = 0
340 Else
350     rst.MoveLast
360     n = rst.RecordCount    ' Anzahl DS'e, bei denen der Fachplaner Elektro geändert wurde
370 End If

380 str_SQL_Statement = "SELECT tbl_100_10_Liegenschaften.Bezeichnung, tbl_100_20_Gebäudeteile.Gebäudeteil," _
                      & " tbl_500_10_Begehungen.ID_SB_Fachpl_HLS, tbl_100_10_Liegenschaften.ID_SB_Fachpl_HLS" _
                      & " FROM tbl_100_10_Liegenschaften" _
                      & " INNER JOIN (tbl_100_20_Gebäudeteile INNER JOIN tbl_500_10_Begehungen" _
                      & " ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_500_10_Begehungen.ID_Gebäudeteil)" _
                      & " ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude" _
                      & " WHERE (((tbl_100_10_Liegenschaften.ID_SB_Fachpl_HLS)<>[tbl_500_10_Begehungen].[ID_SB_Fachpl_HLS])" _
                      & " AND ((tbl_500_10_Begehungen.Begehungsjahr)=F_Variable('lng_Beg_JAhr')));"

390 Set rst = CurrentDb.OpenRecordset(str_SQL_Statement, dbOpenDynaset)

400 If rst.EOF Then
410     o = 0
420 Else
430     rst.MoveLast
440     o = rst.RecordCount    ' Anzahl DS'e, bei denen der Fachplaner HLS geändert wurde
450 End If

460 str_SQL_Statement = "UPDATE tbl_100_10_Liegenschaften INNER JOIN (tbl_100_20_Gebäudeteile" _
                      & " INNER JOIN tbl_500_10_Begehungen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_500_10_Begehungen.ID_Gebäudeteil)" _
                      & " ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude" _
                      & " SET tbl_500_10_Begehungen.ID_SB = [tbl_100_10_Liegenschaften].[ID_SB]" _
                      & " WHERE (((tbl_100_10_Liegenschaften.ID_SB)<>[tbl_500_10_Begehungen].[ID_SB])" _
                      & " AND ((tbl_500_10_Begehungen.Begehungsjahr)=F_Variable('lng_Beg_JAhr')));"

470 DoCmd.SetWarnings False
480 DoCmd.RunSQL str_SQL_Statement
490 DoCmd.SetWarnings True

500 str_SQL_Statement = "UPDATE tbl_100_10_Liegenschaften INNER JOIN (tbl_100_20_Gebäudeteile" _
                      & " INNER JOIN tbl_500_10_Begehungen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_500_10_Begehungen.ID_Gebäudeteil)" _
                      & " ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude" _
                      & " SET tbl_500_10_Begehungen.ID_SB_Fachpl_Elek = [tbl_100_10_Liegenschaften].[ID_SB_Fachpl_Elek]" _
                      & " WHERE (((tbl_100_10_Liegenschaften.ID_SB_Fachpl_Elek)<>[tbl_500_10_Begehungen].[ID_SB_Fachpl_Elek])" _
                      & " AND ((tbl_500_10_Begehungen.Begehungsjahr)=F_Variable('lng_Beg_JAhr')));"

510 DoCmd.SetWarnings False
520 DoCmd.RunSQL str_SQL_Statement
530 DoCmd.SetWarnings True

540 str_SQL_Statement = "UPDATE tbl_100_10_Liegenschaften INNER JOIN (tbl_100_20_Gebäudeteile" _
                      & " INNER JOIN tbl_500_10_Begehungen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_500_10_Begehungen.ID_Gebäudeteil)" _
                      & " ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude" _
                      & " SET tbl_500_10_Begehungen.ID_SB_Fachpl_HLS = [tbl_100_10_Liegenschaften].[ID_SB_Fachpl_HLS]" _
                      & " WHERE (((tbl_100_10_Liegenschaften.ID_SB_Fachpl_HLS)<>[tbl_500_10_Begehungen].[ID_SB_Fachpl_HLS])" _
                      & " AND ((tbl_500_10_Begehungen.Begehungsjahr)=F_Variable('lng_Beg_JAhr')));"

550 DoCmd.SetWarnings False
560 DoCmd.RunSQL str_SQL_Statement
570 DoCmd.SetWarnings True


580 DoEvents
590 j = DCount("[ID_Begehung]", "tbl_500_10_Begehungen", "[Begehungsjahr] = " & lng_Beg_Jahr)
600 l = j - i

610 Me!UF_Beg_Termine.Requery

620 MsgBox "Aktualisierung erledigt:" & vbCrLf _
         & k & " Gebäude in Begehungsliste zu " & lng_Beg_Jahr & " gelöscht," & vbCrLf _
         & l & " Gebäude in Begehungsliste zu " & lng_Beg_Jahr & " neu nachgetragen," & vbCrLf _
         & " zu " & m & " Gebäudeteilen im Jahr " & lng_Beg_Jahr & " den Obj.verantwortl. geändert," & vbCrLf _
         & " zu " & n & " Gebäudeteilen im Jahr " & lng_Beg_Jahr & " den Fachplaner Elektro geändert," & vbCrLf _
         & " zu " & o & " Gebäudeteilen im Jahr " & lng_Beg_Jahr & " den Fachplaner HLS geändert,", vbOKOnly, "Aktualisierungsprotokoll"
End Sub

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub

Private Sub Form_Open(Cancel As Integer)

10  Me!LF_Geb_Begehungsjahre = lng_Beg_Jahr
20  Me!KF_Verantw_SB = lng_ID_SB
30  KF_Verantw_SB_AfterUpdate

    ' Blockiere diverse für Nicht-Admins
40  If fc_Admin() Then
50      Me!BS_Neues_Beg_JAhr.Visible = True
60      Me!BS_Beg_Jahr_Aktual.Visible = True
70      Me!UF_Beg_Termine.Form.AllowEdits = True
80  Else
90      Me!BS_Neues_Beg_JAhr.Visible = False
100     Me!BS_Beg_Jahr_Aktual.Visible = False
110     Me!UF_Beg_Termine.Form.AllowEdits = False
120 End If

End Sub

Private Sub KF_Verantw_SB_AfterUpdate()

10  lng_ID_SB = CLng(Nz(Me.KF_Verantw_SB))
20  Me!UF_Beg_Termine.Form.Requery
30  Me!UF_Beg_Termine.SetFocus

    '30  If fc_Admin = True Then

    '40      If Val(Nz(Me!KF_Verantw_SB.Column(2))) <= 1 Then
    ' Hochbau ausgewählt
    '50          Me!UF_Beg_Termine.Form.AllowEdits = True
    '60          Me!BF_Hinweis.Visible = False
    '70      Else
    ' Elektro / HLS ausgesucht
    '80          Me!UF_Beg_Termine.Form.AllowEdits = False
    '90          Me!BF_Hinweis.Visible = True
    '100     End If

    '110 End If

End Sub

Private Sub LF_Geb_Begehungsjahre_AfterUpdate()
10  lng_Beg_Jahr = Me!LF_Geb_Begehungsjahre
20  Me!UF_Beg_Termine.Form.Requery
End Sub

Private Sub OR_VerantwortlicherSB_AfterUpdate()

    Dim sSql As String
    Dim sWhere As String
    Dim sOrder As String

    sSql = "SELECT Sachbearbeiter.ID, '(' & IIf([Objektverantwortlicher]=True,'Hochbau',IIf([Fachplaner_Elektro],'Elektro','H/L/S')) & ') ' & [Name] AS SB, IIf([Objektverantwortlicher]=True,1,IIf([Fachplaner_Elektro],2,3)) AS sort, Sachbearbeiter.Gebaeudebegehungen FROM Sachbearbeiter "
    sWhere = "WHERE ([Name] & '( ' & IIf([Objektverantwortlicher]=True,'Hochbau',IIf([Fachplaner_Elektro],'Elektro','H/L/S')) & ')')<>'Alle' AND (Sachbearbeiter.Gebaeudebegehungen)=True "
    sOrder = "ORDER BY IIf([Objektverantwortlicher]=True,1,IIf([Fachplaner_Elektro],2,3)), [Name] & '( ' & IIf([Objektverantwortlicher]=True,'Hochbau',IIf([Fachplaner_Elektro],'Elektro','H/L/S')) & ')';"

    Select Case Me!OR_VerantwortlicherSB
    Case 1    ' zeige Nur Aktive
        sWhere = sWhere & " AND (((Sachbearbeiter.ausgeschieden)= False) or ((Sachbearbeiter.ausgesch_Jahr) Is Null)) "

    Case 2    ' zeige Alle
    End Select

    Me!KF_Verantw_SB.RowSource = sSql & sWhere & sOrder
    Me!KF_Verantw_SB.Requery
    Me.Requery
    Me.Repaint
    Me.Recalc

End Sub
