Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Form_Open(Cancel As Integer)

10  Setze_Buttons
End Sub

Private Sub KF_Haushaltsjahr_AfterUpdate()
10  Setze_Buttons
End Sub

Private Sub BS_Ausw_Bericht_Click()

10  lng_Kalk_Jahr = Me.KF_Haushaltsjahr

20  Select Case Me.OR_Alle_Investiv
    Case 1
30      lng_Fin_quelle = 1
40  Case 2
50      lng_Fin_quelle = 2
60  End Select

70  DoCmd.OpenReport "rpt_300_10_10_Verwaltungsbericht_Massn_Kosten", acViewPreview, , , acDialog

End Sub

Private Sub BS_Ausw_Excel_Exp_Click()
10  lng_Kalk_Jahr = Me!KF_Haushaltsjahr

20  On Error GoTo Abbruch
30  If DCount("[ID_Gebäudeteil]", "qry_rpt_300_10_10_DH_Verwbericht_Massn_Kosten") = 0 Then
40      MsgBox "zu den Maßnahmekosten existieren momentan keine Datensätze." & vbCrLf _
             & "Der Export wird deshalb abgebrochen.", vbOKOnly, "Abbruch"
50      Exit Sub
60  End If

70  DoCmd.OutputTo acOutputQuery, _
                   "qry_rpt_300_10_10_DH_Verwbericht_Massn_Kosten", _
                   "ExcelWorkbook(*.xlsx)", "", False, "", , acExportQualityPrint
80  DoEvents
90  MsgBox "Excelexport erledigt"
100 Exit Sub

Abbruch:
110 MsgBox "Excelexport abgebrochen"
120 On Error GoTo 0

End Sub

Private Sub BS_Resteb_Bericht_Click()
10  lng_Kalk_Jahr = Me!KF_Haushaltsjahr
20  DoCmd.OpenReport "rpt_300_10_20_Verwaltungsbericht_Restebildung", acViewPreview, , , acDialog
End Sub

Private Sub BS_Resteb_Excel_Exp_Click()

10  lng_Kalk_Jahr = Me!KF_Haushaltsjahr

20  On Error GoTo Abbruch
30  If DCount("[Buch_stelle]", "qry_rpt_300_10_20_DH_Verwbericht_Restebildung") = 0 Then
40      MsgBox "zu den Restebildungen existieren momentan keine Datensätze." & vbCrLf _
             & "Der Export wird deshalb abgebrochen.", vbOKOnly, "Abbruch"
50      Exit Sub
60  End If

70  DoCmd.OutputTo acOutputQuery, _
                   "qry_rpt_300_10_20_DH_Verwbericht_Restebildung", _
                   "ExcelWorkbook(*.xlsx)", "", False, "", , acExportQualityPrint
80  DoEvents
90  MsgBox "Excelexport erledigt"
100 Exit Sub

Abbruch:
110 MsgBox "Excelexport abgebrochen"
120 On Error GoTo 0

End Sub


Sub Setze_Buttons()

10  If Me!KF_Haushaltsjahr.ListIndex >= 0 Then
20      Me.BS_Ausw_Bericht.Enabled = True
30      Me.BS_Ausw_Excel_Exp.Enabled = True
40      Me!BS_Resteb_Bericht.Enabled = True
50      Me!BS_Resteb_Excel_Exp.Enabled = True
60  Else
70      Me.BS_Ausw_Bericht.Enabled = False
80      Me.BS_Ausw_Excel_Exp.Enabled = False
90      Me!BS_Resteb_Bericht.Enabled = False
100     Me!BS_Resteb_Excel_Exp.Enabled = False
110 End If

End Sub

Private Sub BS_Schließen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub
