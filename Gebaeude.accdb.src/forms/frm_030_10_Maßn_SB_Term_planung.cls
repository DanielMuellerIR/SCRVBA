Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim itm As Variant
'

Private Sub BS_Akt_Eigenl_Click()
10  DoCmd.OpenForm "frm_030_30_Maßn_SB_Eigenleistungen", , , , , acDialog
End Sub

Private Sub BS_KJ_blocken_Click()

10  If Me.LF_Ums_Jahr.Column(1) = False Then

20      str_SQL_Statement = "UPDATE Kalenderjahre SET Kalenderjahre.TerminPlanung_geblockt = True" _
                          & " WHERE (((Kalenderjahre.Jahr)=F_Variable('lng_Kalk_Jahr')));"


30  Else
40      str_SQL_Statement = "UPDATE Kalenderjahre SET Kalenderjahre.TerminPlanung_geblockt = false" _
                          & " WHERE (((Kalenderjahre.Jahr)=F_Variable('lng_Kalk_Jahr')));"

50  End If

60  DoCmd.SetWarnings False
70  DoCmd.RunSQL str_SQL_Statement
80  DoCmd.SetWarnings True

90  Me!TF_Hinw_Geblockt.Requery
100 Call LF_Ums_Jahr_AfterUpdate

End Sub


Private Sub Form_BeforeUpdate(Cancel As Integer)

10  Call Plaus_Prfg

End Sub

Private Sub Form_Current()

10  lng_ID_Massn = Me!ID

End Sub

Private Sub Form_Open(Cancel As Integer)

10  Me!LF_Ums_Jahr = Year(Date)

20  For Each Ctrl In Me.Controls

30      If Ctrl.Tag = "*Admin*" = True Then

40          If fc_Admin() = True Then
50              Ctrl.Visible = True
60          Else
70              Ctrl.Visible = False
80          End If

90      End If

100 Next Ctrl

110 DoEvents

120 Call LF_Ums_Jahr_AfterUpdate

    ' Textfeld für DAtum Abschluss mit Db nur für Admins sichtbar machen
130 If fc_Admin() = True Then
140     Me!TF_Dat_Abschluss_DB.Visible = True
150 Else
160     Me!OR_SB_Variante.SetFocus
170     Me!TF_Dat_Abschluss_DB.Visible = False

180 End If

190 Call OR_SB_Variante_AfterUpdate


End Sub

Private Sub OR_SB_Variante_AfterUpdate()

10  Select Case Me.OR_SB_Variante

    Case 1  ' Alle SB
20      Me!LF_Sachb.Visible = False
30      lng_ID_SB_Min = 0
40      lng_ID_SB_Max = 2 ^ 31 - 1
50      Me!BS_ArbProg_Bericht.Enabled = True

60  Case 2  ' Ein SB
70      Me!LF_Sachb.Visible = True
80      Me!LF_Sachb = Null
90      lng_ID_SB_Min = 0
100     lng_ID_SB_Max = 0
110     Me!BS_ArbProg_Bericht.Enabled = False

120 End Select

130 Me.Requery

End Sub

Sub LF_Sachb_AfterUpdate()

10  lng_ID_SB_Min = Me!LF_Sachb
20  lng_ID_SB_Max = Me!LF_Sachb
30  Me!BS_ArbProg_Bericht.Enabled = True
40  Me.Requery

End Sub

Private Sub LF_Ums_Jahr_AfterUpdate()

10  lng_Kalk_Jahr = Me!LF_Ums_Jahr

20  On Error Resume Next

30  If Me.LF_Ums_Jahr.Column(1) = True Then
40      Me!TF_Hinw_Geblockt.ForeColor = RGB(255, 0, 0)
50      Me!TF_Hinw_Geblockt.BackColor = RGB(255, 255, 0)
60  Else
70      Me!TF_Hinw_Geblockt.ForeColor = RGB(127, 127, 127)
80      Me!TF_Hinw_Geblockt.BackColor = RGB(251, 251, 251)
90  End If

100 For Each Ctrl In Me.Controls
110     If Ctrl.Tag = "*Datumsfeld*" Then

120         If Me!LF_Ums_Jahr.Column(1) = True Then
130             Ctrl.Enabled = False
140             Ctrl.Locked = True
150         Else
160             Ctrl.Enabled = True
170             Ctrl.Locked = False

180         End If

190     End If
200 Next Ctrl

210 On Error Resume Next
220 DoEvents
230 Me.Requery

End Sub

Private Sub Dat_Grundl_Erm_Ende_AfterUpdate()

10  If IsDate(Me!Dat_Grundl_Erm_Ende) Then
        'Me!Dat_Planung_Start = fct_Erst_d_naechst_Mon(Me!Dat_Grundl_Erm_Ende)
20      Me!Dat_Planung_Start = CDate(Me!Dat_Grundl_Erm_Ende) + 1
30  End If

End Sub

Private Sub Dat_Planung_Ende_AfterUpdate()

10  If IsDate(Me!Dat_Planung_Ende) Then
        'Me!Dat_Ausschr_Start = fct_Erst_d_naechst_Mon(Me!Dat_Planung_Ende)
20      Me!Dat_Ausschr_Start = CDate(Me!Dat_Planung_Ende) + 1
30  End If

End Sub

Private Sub Dat_Ausschr_Ende_AfterUpdate()

10  If IsDate(Me!Dat_Ausschr_Ende) Then
        'Me!Dat_Ausf_Start = fct_Erst_d_naechst_Mon(Me!Dat_Ausschr_Ende)
20      Me!Dat_Ausf_Start = CDate(Me!Dat_Ausschr_Ende) + 1
30  End If

End Sub

Private Sub Dat_Ausf_Ende_AfterUpdate()

10  If IsDate(Me!Dat_Ausf_Ende) Then
        'Me!Dat_Abr_Start = fct_Erst_d_naechst_Mon(Me!Dat_Ausf_Ende)
20      Me!Dat_Abr_Start = CDate(Me!Dat_Ausf_Ende) + 1
30  End If
End Sub

Private Sub BS_ArbProg_Bericht_Click()

10  If Me.Dirty Then
20      DoCmd.RunCommand acCmdSaveRecord
30  End If

40  DoCmd.OpenForm "Filter für Arbeitsprogramm", , , , , acDialog

End Sub

Private Sub BS_Schliessen_Click()

50  DoCmd.Close acForm, Me.Name

End Sub

Sub Plaus_Prfg()

10  On Error GoTo 0

20  lng_ID_Massn = Me!ID
30  bln_Massn_Termine_OK = False

40  Call Plaus_Grundl_Planung
50  If bln_Massn_Termine_OK = False Then
60      Exit Sub
70  End If

80  Call Plaus_Grundl_Ausschr
90  If bln_Massn_Termine_OK = False Then
100     Exit Sub
110 End If

120 Call Plaus_Grundl_Ausf
130 If bln_Massn_Termine_OK = False Then
140     Exit Sub
150 End If

160 Call Plaus_Grundl_Abr
170 If bln_Massn_Termine_OK = False Then
180     Exit Sub
190 End If

200 Call Plaus_Planung_Ausschr
210 If bln_Massn_Termine_OK = False Then
220     Exit Sub
230 End If

240 Call Plaus_Planung_Ausf
250 If bln_Massn_Termine_OK = False Then
260     Exit Sub
270 End If

280 Call Plaus_Planung_Abr
290 If bln_Massn_Termine_OK = False Then
300     Exit Sub
310 End If

320 Call Plaus_Ausschr_Ausf
330 If bln_Massn_Termine_OK = False Then
340     Exit Sub
350 End If

360 Call Plaus_Ausschr_Abr
370 If bln_Massn_Termine_OK = False Then
380     Exit Sub
390 End If

400 Call Plaus_Ausf_Aubr
410 If bln_Massn_Termine_OK = False Then
420     Exit Sub
430 End If

End Sub

Sub Plaus_Grundl_Planung()

10  If Not IsNull(Me!Dat_Planung_Start) And Not IsNull(Me!Dat_Grundl_Erm_Ende) Then

20      If CDate(Me!Dat_Planung_Start) <> CDate((Me!Dat_Grundl_Erm_Ende)) + 1 Then
30          On Error Resume Next

40          If MsgBox("Starttermin der Planung muss 1 Tag nach Endedatum der Grundlagenermittlung liegen!" & vbCrLf & vbCrLf _
                    & "Zur Korrektur in den Datensatz zurückgehen?" & vbCrLf & vbCrLf _
                    & "(Bei " & Chr(34) & "Nein" & Chr(34) & " werden alle gerade gemachten Einträge gelöscht!)", vbYesNo, "Termine nicht schlüssig") = vbNo Then
50              Me.Undo
60          End If

70          Me!TF_ID.Visible = True
80          Me!TF_ID.SetFocus
90          DoCmd.FindRecord lng_ID_Massn
100         Me!Dat_Planung_Start.SetFocus
110         Me!TF_ID.Visible = False
120         On Error GoTo 0
130     Else
140         bln_Massn_Termine_OK = True
150     End If

160 Else
170     bln_Massn_Termine_OK = True
180 End If

End Sub

Sub Plaus_Grundl_Ausschr()

10  If Not IsNull(Me!Dat_Ausschr_Start) And Not IsNull(Me!Dat_Grundl_Erm_Ende) And IsNull(Me!Dat_Planung_Ende) Then

20      If CDate(Me!Dat_Ausschr_Start) <> CDate((Me!Dat_Grundl_Erm_Ende)) + 1 Then
30          On Error Resume Next

40          If MsgBox("Starttermin der Planung muss 1 Tag nach Endedatum der Grundlagenermittlung liegen!" & vbCrLf & vbCrLf _
                    & "Zur Korrektur in den Datensatz zurückgehen?" & vbCrLf & vbCrLf _
                    & "(Bei " & Chr(34) & "Nein" & Chr(34) & " werden alle gerade gemachten Einträge gelöscht!)", vbYesNo, "Termine nicht schlüssig") = vbNo Then

50              Me.Undo
60          End If

70          Me!TF_ID.Visible = True
80          Me!TF_ID.SetFocus
90          DoCmd.FindRecord lng_ID_Massn
100         Me!Dat_Ausschr_Start.SetFocus
110         Me!TF_ID.Visible = False
120         On Error GoTo 0
130     Else
140         bln_Massn_Termine_OK = True
150     End If

160 Else
170     bln_Massn_Termine_OK = True
180 End If

End Sub


Sub Plaus_Grundl_Ausf()

10  If Not IsNull(Me!Dat_Ausf_Start) And Not IsNull(Me!Dat_Grundl_Erm_Ende) And IsNull(Me!Dat_Planung_Ende) Then

20      If CDate(Me!Dat_Ausf_Start) <> CDate((Me!Dat_Grundl_Erm_Ende)) + 1 Then
30          On Error Resume Next

40          If MsgBox("Starttermin der Ausführung muss 1 Tag nach Endedatum der Grundlagenermittlung sein!" & vbCrLf & vbCrLf _
                    & "Zur Korrektur in den Datensatz zurückgehen?" & vbCrLf & vbCrLf _
                    & "(Bei " & Chr(34) & "Nein" & Chr(34) & " werden alle gerade gemachten Einträge gelöscht!)", vbYesNo, "Termine nicht schlüssig") = vbNo Then
50              Me.Undo
60          End If

70          Me!TF_ID.Visible = True
80          Me!TF_ID.SetFocus
90          DoCmd.FindRecord lng_ID_Massn
100         Me!Dat_Ausf_Start.SetFocus
110         Me!TF_ID.Visible = False
120         On Error GoTo 0
130     Else
140         bln_Massn_Termine_OK = True
150     End If

160 Else
170     bln_Massn_Termine_OK = True
180 End If

End Sub


Sub Plaus_Grundl_Abr()

10  If Not IsNull(Me!Dat_Abr_Start) And Not IsNull(Me!Dat_Grundl_Erm_Ende) _
       And IsNull(Me!Dat_Planung_Ende) And IsNull(Me!Dat_Ausschr_Ende) And IsNull(Me!Dat_Ausf_Ende) Then

20      If CDate(Me!Dat_Abr_Start) <> CDate((Me!Dat_Grundl_Erm_Ende)) + 1 Then
30          On Error Resume Next

40          If MsgBox("Starttermin der Abrechnung muss 1 Tag nach Endedatum der Grundlagenermittlung liegen!" & vbCrLf & vbCrLf _
                    & "Zur Korrektur in den Datensatz zurückgehen?" & vbCrLf & vbCrLf _
                    & "(Bei " & Chr(34) & "Nein" & Chr(34) & " werden alle gerade gemachten Einträge gelöscht!)", vbYesNo, "Termine nicht schlüssig") = vbNo Then
50              Me.Undo
60          End If

70          Me!TF_ID.Visible = True
80          Me!TF_ID.SetFocus
90          DoCmd.FindRecord lng_ID_Massn
100         Me!Dat_Abr_Start.SetFocus
110         Me!TF_ID.Visible = False
120         On Error GoTo 0
130     Else
140         bln_Massn_Termine_OK = True
150     End If

160 Else
170     bln_Massn_Termine_OK = True
180 End If

End Sub


Sub Plaus_Planung_Ausschr()

10  If Not IsNull(Me!Dat_Ausschr_Start) And Not IsNull(Me!Dat_Planung_Ende) Then

20      If CDate(Me!Dat_Ausschr_Start) <> CDate((Me!Dat_Planung_Ende)) + 1 Then
30          On Error Resume Next

40          If MsgBox("Starttermin der Ausschreibung muss 1 Tag nach Endedatum der Planung sein!" & vbCrLf & vbCrLf _
                    & "Zur Korrektur in den Datensatz zurückgehen?" & vbCrLf & vbCrLf _
                    & "(Bei " & Chr(34) & "Nein" & Chr(34) & " werden alle gerade gemachten Einträge gelöscht!)", vbYesNo, "Termine nicht schlüssig") = vbNo Then
50              Me.Undo
60          End If

70          Me!TF_ID.Visible = True
80          Me!TF_ID.SetFocus
90          DoCmd.FindRecord lng_ID_Massn
100         Me!Dat_Ausschr_Start.SetFocus
110         Me!TF_ID.Visible = False
120         On Error GoTo 0
130     Else
140         bln_Massn_Termine_OK = True
150     End If

160 Else
170     bln_Massn_Termine_OK = True
180 End If

End Sub

Sub Plaus_Planung_Ausf()

10  If Not IsNull(Me!Dat_Ausf_Start) And Not IsNull(Me!Dat_Planung_Ende) _
       And IsNull(Me!Dat_Ausschr_Ende) Then

20      If CDate(Me!Dat_Ausf_Start) <> CDate((Me!Dat_Planung_Ende)) + 1 Then
30          On Error Resume Next

40          If MsgBox("Starttermin der Ausführung muss 1 Tag nach Endedatum der Planung liegen!" & vbCrLf & vbCrLf _
                    & "Zur Korrektur in den Datensatz zurückgehen?" & vbCrLf & vbCrLf _
                    & "(Bei " & Chr(34) & "Nein" & Chr(34) & " werden alle gerade gemachten Einträge gelöscht!)", vbYesNo, "Termine nicht schlüssig") = vbNo Then
50              Me.Undo
60          End If

70          Me!TF_ID.Visible = True
80          Me!TF_ID.SetFocus
90          DoCmd.FindRecord lng_ID_Massn
100         Me!Dat_Ausf_Start.SetFocus
110         Me!TF_ID.Visible = False
120         On Error GoTo 0
130     Else
140         bln_Massn_Termine_OK = True
150     End If

160 Else
170     bln_Massn_Termine_OK = True
180 End If

End Sub

Sub Plaus_Planung_Abr()

10  If Not IsNull(Me!Dat_Abr_Start) And Not IsNull(Me!Dat_Planung_Ende) _
       And IsNull(Me!Dat_Ausschr_Ende) And IsNull(Me!Dat_Ausf_Ende) Then

20      If CDate(Me!Dat_Abr_Start) <> CDate((Me!Dat_Planung_Ende)) + 1 Then
30          On Error Resume Next

40          If MsgBox("Starttermin der Abrchnung muss 1 Tag nach Endedatum der Planung sein!" & vbCrLf & vbCrLf _
                    & "Zur Korrektur in den Datensatz zurückgehen?" & vbCrLf & vbCrLf _
                    & "(Bei " & Chr(34) & "Nein" & Chr(34) & " werden alle gerade gemachten Einträge gelöscht!)", vbYesNo, "Termine nicht schlüssig") = vbNo Then
50              Me.Undo
60          End If

70          Me!TF_ID.Visible = True
80          Me!TF_ID.SetFocus
90          DoCmd.FindRecord lng_ID_Massn
100         Me!Dat_Ausf_Start.SetFocus
110         Me!TF_ID.Visible = False
120         On Error GoTo 0
130     Else
140         bln_Massn_Termine_OK = True
150     End If

160 Else
170     bln_Massn_Termine_OK = True
180 End If

End Sub


Sub Plaus_Ausschr_Ausf()

10  If Not IsNull(Me!Dat_Ausf_Start) And Not IsNull(Me!Dat_Ausschr_Ende) Then

20      If CDate(Me!Dat_Ausf_Start) <> CDate((Me!Dat_Ausschr_Ende)) + 1 Then
30          On Error Resume Next

40          If MsgBox("Starttermin der Ausführung muss 1 Tag nach Endedatum der Ausschreibung liegen!" & vbCrLf & vbCrLf _
                    & "Zur Korrektur in den Datensatz zurückgehen?" & vbCrLf & vbCrLf _
                    & "(Bei " & Chr(34) & "Nein" & Chr(34) & " werden alle gerade gemachten Einträge gelöscht!)", vbYesNo, "Termine nicht schlüssig") = vbNo Then
60              Me.Undo
70          End If

80          Me!TF_ID.Visible = True
90          Me!TF_ID.SetFocus
100         DoCmd.FindRecord lng_ID_Massn
110         Me!Dat_Ausf_Start.SetFocus
120         Me!TF_ID.Visible = False
130         On Error GoTo 0
140     Else
150         bln_Massn_Termine_OK = True
160     End If

170 Else
180     bln_Massn_Termine_OK = True
190 End If

End Sub


Sub Plaus_Ausschr_Abr()

10  If Not IsNull(Me!Dat_Abr_Start) And Not IsNull(Me!Dat_Ausschr_Ende) _
       And IsNull(Me!Dat_Ausf_Ende) Then

20      If CDate(Me!Dat_Abr_Start) <> CDate((Me!Dat_Ausschr_Ende)) + 1 Then
30          On Error Resume Next

40          If MsgBox("Starttermin der Abrechnung muss 1 Tag nach Endedatum der Ausschreibung sein!" & vbCrLf & vbCrLf _
                    & "Zur Korrektur in den Datensatz zurückgehen?" & vbCrLf & vbCrLf _
                    & "(Bei " & Chr(34) & "Nein" & Chr(34) & " werden alle gerade gemachten Einträge gelöscht!)", vbYesNo, "Termine nicht schlüssig") = vbNo Then
50              Me.Undo
60          End If

70          Me!TF_ID.Visible = True
80          Me!TF_ID.SetFocus
90          DoCmd.FindRecord lng_ID_Massn
100         Me!Dat_Abr_Start.SetFocus
110         Me!TF_ID.Visible = False
120         On Error GoTo 0
130     Else
140         bln_Massn_Termine_OK = True
150     End If

160 Else
170     bln_Massn_Termine_OK = True
180 End If

End Sub


Sub Plaus_Ausf_Aubr()

10  If Not IsNull(Me!Dat_Abr_Start) And Not IsNull(Me!Dat_Ausf_Ende) Then

20      If CDate(Me!Dat_Abr_Start) <> CDate((Me!Dat_Ausf_Ende)) + 1 Then

30          On Error Resume Next

40          If MsgBox("Starttermin der Abrechnung muss 1 Tag nach Endedatum der Ausführung liegen!" & vbCrLf & vbCrLf _
                    & "Zur Korrektur in den Datensatz zurückgehen?" & vbCrLf & vbCrLf _
                    & "(Bei " & Chr(34) & "Nein" & Chr(34) & " werden alle gerade gemachten Einträge gelöscht!)", vbYesNo, "Termine nicht schlüssig") = vbNo Then
50              Me.Undo
60          End If

70          Me!TF_ID.Visible = True
80          Me!TF_ID.SetFocus
90          DoCmd.FindRecord lng_ID_Massn
100         Me!Dat_Abr_Start.SetFocus
110         Me!TF_ID.Visible = False
120         On Error GoTo 0
130     Else
140         bln_Massn_Termine_OK = True
150     End If

160 Else
170     bln_Massn_Termine_OK = True
180 End If

End Sub
