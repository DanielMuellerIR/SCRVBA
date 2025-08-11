Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit


Private Sub KF_Betrieb_AfterUpdate()
10  Me!KF_Bereich.Requery
End Sub

Private Sub BS_Auswerten_Click()

10  If IsNull(Me!KF_HHJ) Then
20      lng_Kalk_Jahr_Min = 0
30      lng_Kalk_Jahr_Max = 2 ^ 31 - 1
40  Else
50      lng_Kalk_Jahr_Min = CLng(Me!KF_HHJ)
60      lng_Kalk_Jahr_Max = CLng(Me!KF_HHJ)
70  End If

80  If IsNull(Me!KF_Betrieb) Then
90      lng_Betr_Nr_Min = 0
100     lng_Betr_Nr_Max = 2 ^ 31 - 1
110 Else
120     lng_Betr_Nr_Min = CLng(Me!KF_Betrieb)
130     lng_Betr_Nr_Max = CLng(Me!KF_Betrieb)
140 End If

150 If IsNull(Me!KF_Bereich) Then
160     lng_Ber_Nr_Min = 0
170     lng_Ber_Nr_Max = 2 ^ 31 - 1
180 Else
190     lng_Ber_Nr_Min = CLng(Me!KF_Bereich)
200     lng_Ber_Nr_Max = CLng(Me!KF_Bereich)
210 End If

220 If IsNull(Me!KF_Kostenart) Then
230     lng_ID_Kostart_Min = 0
240     lng_ID_Kostart_Max = 2 ^ 31 - 1
250 Else
260     lng_ID_Kostart_Min = CLng(Me!KF_Kostenart)
270     lng_ID_Kostart_Max = CLng(Me!KF_Kostenart)
280 End If

290 If IsNull(Me!KF_Kostenstelle) Then
300     lng_ID_Kostst_Max = 0
310     lng_ID_Kostst_Min = 2 ^ 31 - 1
320 Else
330     lng_ID_Kostst_Max = CLng(Me!KF_Kostenstelle)
340     lng_ID_Kostst_Min = CLng(Me!KF_Kostenstelle)
350 End If

360 DoCmd.OpenReport "Zusammenstellung Nebenkosten", acViewPreview, , , acDialog

End Sub

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub
