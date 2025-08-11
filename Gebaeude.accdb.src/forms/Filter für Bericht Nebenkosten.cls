Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_Auswertung_Click()

10  If IsNull(Me!KF_HHJ) Then
20      lng_Kalk_Jahr_Min = 0
30      lng_Kalk_Jahr_Max = 2 ^ 31 - 1
40  Else
50      lng_Kalk_Jahr_Min = CLng(Me!KF_HHJ)
60      lng_Kalk_Jahr_Max = CLng(Me!KF_HHJ)
70  End If

80  If IsNull(Me!KF_RE_Datum_bis) Then
90      dt_RE_Bis = CDate("31.12.9999")
100 Else
110     dt_RE_Bis = CDate(Me!KF_RE_Datum_bis)
120 End If

130 If IsNull(Me!KF_Betrieb) Then
140     lng_Betr_Nr_Min = 0
150     lng_Betr_Nr_Max = 2 ^ 31 - 1
160 Else
170     lng_Betr_Nr_Min = CLng(Me!KF_Betrieb)
180     lng_Betr_Nr_Max = CLng(Me!KF_Betrieb)
190 End If

200 If IsNull(Me!KF_Bereich) Then
210     lng_Ber_Nr_Min = 0
220     lng_Ber_Nr_Max = 2 ^ 31 - 1
230 Else
240     lng_Ber_Nr_Min = CLng(Me!KF_Bereich)
250     lng_Ber_Nr_Max = CLng(Me!KF_Bereich)
260 End If

270 If IsNull(Me!KF_Kostenstelle) Then
280     lng_ID_Kostst_Min = 0
290     lng_ID_Kostst_Max = 2 ^ 31 - 1
300 Else
310     lng_ID_Kostst_Min = CLng(Me!KF_Kostenstelle)
320     lng_ID_Kostst_Max = CLng(Me!KF_Kostenstelle)
330 End If

340 If IsNull(Me!KF_Kostenart) Then
350     lng_ID_Kostart_Min = 0
360     lng_ID_Kostart_Max = 2 ^ 31 - 1
370 Else
380     lng_ID_Kostart_Min = CLng(Me!KF_Kostenart)
390     lng_ID_Kostart_Max = CLng(Me!KF_Kostenart)
400 End If

410 If IsNull(Me!KF_Empfänger) Then
420     lng_ID_Empf_Min = 0
430     lng_ID_Empf_Max = 2 ^ 31 - 1
440 Else
450     lng_ID_Empf_Min = CLng(Me!KF_Empfänger)
460     lng_ID_Empf_Max = CLng(Me!KF_Empfänger)
470 End If

480 If IsNull(Me!KF_Zyklus) Then
490     lng_ID_ZahlZykl_Min = 0
500     lng_ID_ZahlZykl_MAx = 2 ^ 31 - 1
510 Else
520     lng_ID_ZahlZykl_Min = CLng(Me!KF_Zyklus)
530     lng_ID_ZahlZykl_MAx = CLng(Me!KF_Zyklus)
540 End If

550 DoCmd.OpenReport "Bericht_Nebenkosten", acViewPreview, , , acDialog

End Sub

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub

Private Sub KF_Betrieb_AfterUpdate()
10  Me!KF_Bereich.Requery
End Sub
