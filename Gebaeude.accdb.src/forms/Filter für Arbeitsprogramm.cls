Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_Drucken_Click()

10  Lege_Kriterien_fest
90  DoCmd.OpenReport "rpt_020_10_10_Arbeitsprogramm", acViewPreview, , , acDialog

End Sub

Private Sub BS_Auswertung_Click()
10    Lege_Kriterien_fest
20    DoCmd.OpenReport "rpt_030_20_50_Maßn_Summen_Alle", acViewPreview, , , acDialog
End Sub

Private Sub BS_Schließen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub

Private Sub BS_Unstimm_Drucken_Click()

10  lng_Kalk_Jahr = CLng(Me!KF_Kalenderjahre)

20  If IsNull(Me!KF_SB) Then
30      lng_ID_SB_Min = 0
40      lng_ID_SB_Max = 2 ^ 31 - 1
50  Else
60      lng_ID_SB_Min = CLng(Me!KF_SB)
70      lng_ID_SB_Max = CLng(Me!KF_SB)
80  End If

90  If Me.OR_SB_Alle_EIner = 3 Then     ' nur SBs nicht festgelegt
100     lng_ID_SB_Min = 0
110     lng_ID_SB_Max = 0
120     bln_SB_nicht_festg = True
130 Else
140     bln_SB_nicht_festg = False
150 End If

160 DoCmd.OpenReport "rpt_020_10_20_Umstimmigk_TeilmKosten_Finanzg", acViewPreview, , , acDialog

End Sub

Private Sub BS_Unstimm_Tats_Gepl_Click()

10  lng_Kalk_Jahr = CLng(Me!KF_Kalenderjahre)

20  If IsNull(Me!KF_SB) Then
30      lng_ID_SB_Min = 0
40      lng_ID_SB_Max = 2 ^ 31 - 1
50  Else
60      lng_ID_SB_Min = CLng(Me!KF_SB)
70      lng_ID_SB_Max = CLng(Me!KF_SB)
80  End If

90  If Me.OR_SB_Alle_EIner = 3 Then     ' nur SBs nicht festgelegt
100     lng_ID_SB_Min = 0
110     lng_ID_SB_Max = 0
120     bln_SB_nicht_festg = True
130 Else
140     bln_SB_nicht_festg = False
150 End If

160 DoCmd.OpenReport "rpt_020_10_30_Umstimmigk_Tats_Gepl_Finanzg", acViewPreview, , , acDialog

End Sub

Private Sub Form_Open(Cancel As Integer)

10  If fc_Recht() = "*Admin*" Or fc_Recht() = "*Speziell_A*" Then
20      Me!BS_Unstimm_Drucken.Visible = True
30      Me!BS_Unstimm_Tats_Gepl.Visible = True
40      Me!BS_Auswertung.Visible = True
50  Else
60      Me!BS_Unstimm_Drucken.Visible = False
70      Me!BS_Unstimm_Tats_Gepl.Visible = False
80      Me!BS_Auswertung.Visible = False
90  End If

100 Me!KF_Kalenderjahre = Year(Date)
110 lng_Kalk_Jahr = Year(Date)
120 lng_ID_SB_Min = 0
130 lng_ID_SB_Max = 2 ^ 31 - 1

End Sub

Private Sub KF_Kalenderjahre_AfterUpdate()
10  lng_Kalk_Jahr = Me!KF_Kalenderjahre
20  Setze_Buttons
End Sub

Private Sub KF_SB_AfterUpdate()

10  lng_ID_SB_Min = Me!KF_SB
20  lng_ID_SB_Max = Me!KF_SB
30  Setze_Buttons

End Sub

Private Sub OR_SB_Alle_EIner_AfterUpdate()

10  Select Case Me.OR_SB_Alle_EIner
    Case 1, 3
        ' Alle
20      Me!KF_SB = Null
30      Me!KF_SB.Visible = False

40  Case 2
        ' Einer
50      Me!KF_SB.Visible = True
60      Me!KF_SB.SetFocus

70  End Select

80  Setze_Buttons

End Sub

Sub Setze_Buttons()

10  If IsNull(Me.KF_Kalenderjahre) Then
20      Me!BS_Drucken.Enabled = False
30      Exit Sub
40  Else
50      Me!BS_Drucken.Enabled = True
60  End If

70  If Me!OR_SB_Alle_EIner = 1 Or Me!OR_SB_Alle_EIner = 3 Then
80      Me.BS_Drucken.Enabled = True
90      Exit Sub
100 End If

110 If Me.OR_SB_Alle_EIner = 2 And IsNull(Me!KF_SB) Then
120     Me!BS_Drucken.Enabled = False
130     Exit Sub
140 Else
150     Me!BS_Drucken.Enabled = True
160 End If

End Sub

Sub Lege_Kriterien_fest()

10  lng_Kalk_Jahr = CLng(Me!KF_Kalenderjahre)

20  If IsNull(Me!KF_SB) Then
30      lng_ID_SB_Min = 0
40      lng_ID_SB_Max = 2 ^ 31 - 1
50  Else
60      lng_ID_SB_Min = CLng(Me!KF_SB)
70      lng_ID_SB_Max = CLng(Me!KF_SB)
80  End If

90  If Me.OR_SB_Alle_EIner = 3 Then     ' nur SBs nicht festgelegt
100     lng_ID_SB_Min = 0
110     lng_ID_SB_Max = 0
120     bln_SB_nicht_festg = True
130 Else
140     bln_SB_nicht_festg = False

150 End If

160 str_Openargs = ""
170 If Me!OR_SB_Alle_EIner = 3 Then
180     str_Openargs = str_Openargs & "*SB_nicht_festg*"
190 End If

200 If Me.KK_Mit_Heute_L = True And lng_Kalk_Jahr = Year(Date) Then
210     str_Openargs = str_Openargs & "*Heute*"
220 End If

End Sub
