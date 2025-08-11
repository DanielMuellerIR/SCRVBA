Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Befehl10_Click()
    On Error GoTo Err_Befehl10_Click


    DoCmd.Close

Exit_Befehl10_Click:
    Exit Sub

Err_Befehl10_Click:
    MsgBox Err.Description
    Resume Exit_Befehl10_Click

End Sub
Private Sub Befehl38_Click()
    On Error GoTo Err_Befehl38_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl38_Click:
    Exit Sub

Err_Befehl38_Click:
    MsgBox Err.Description
    Resume Exit_Befehl38_Click

End Sub
Private Sub Befehl39_Click()
    On Error GoTo Err_Befehl39_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl39_Click:
    Exit Sub

Err_Befehl39_Click:
    MsgBox Err.Description
    Resume Exit_Befehl39_Click

End Sub
Private Sub Befehl52_Click()
    On Error GoTo Err_Befehl52_Click


    DoCmd.Close

Exit_Befehl52_Click:
    Exit Sub

Err_Befehl52_Click:
    MsgBox Err.Description
    Resume Exit_Befehl52_Click

End Sub

Private Sub Betrag_GotFocus()
    Me![Betrag].Requery

End Sub

Private Sub Sachbearbeiter_AfterUpdate()
    Me![Empfänger].Requery

End Sub

Private Sub BS_Auswerten_Click()

10  If IsNull(Me!KF_Datengrundlage) Then
20      lng_Kalk_Jahr_Min = 0
30      lng_Kalk_Jahr_Max = 2 ^ 31 - 1
40  Else
50      lng_Kalk_Jahr_Min = CLng(Me!KF_Datengrundlage)
60      lng_Kalk_Jahr_Max = CLng(Me!KF_Datengrundlage)
70  End If


80  If IsNull(Me!KF_Betrieb) Then
90      lng_Betr_Nr_Min = 0
100     lng_Betr_Nr_Max = 2 ^ 31 - 1
110 Else
120     lng_Betr_Nr_Min = CLng(Me!KF_Betrieb)
130     lng_Betr_Nr_Max = CLng(Me!KF_Betrieb)
140 End If

150 If IsNull(Me!KF_Kostenstelle) Then
160     lng_ID_Kostst_Min = 0
170     lng_ID_Kostst_Max = 2 ^ 31 - 1
180 Else
190     lng_ID_Kostst_Min = CLng(Me!KF_Kostenstelle)
200     lng_ID_Kostst_Max = CLng(Me!KF_Kostenstelle)
210 End If

220 If IsNull(Me!KF_Kostenart) Then
230     lng_ID_Kostart_Min = 0
240     lng_ID_Kostart_Max = 2 ^ 31 - 1
250 Else
260     lng_ID_Kostart_Min = CLng(Me!KF_Kostenart)
270     lng_ID_Kostart_Max = CLng(Me!KF_Kostenart)
280 End If

290 If IsNull(Me!KF_Empfänger) Then
300     lng_ID_Empf_Min = 0
310     lng_ID_Empf_Max = 2 ^ 31 - 1
320 Else
330     lng_ID_Empf_Min = CLng(Me!KF_Empfänger)
340     lng_ID_Empf_Max = CLng(Me!KF_Empfänger)
350 End If

360 If IsNull(Me!KF_Zyklus) Then
370     lng_ID_ZahlZykl_Min = 0
380     lng_ID_ZahlZykl_MAx = 2 ^ 31 - 1
390 Else
400     lng_ID_ZahlZykl_Min = CLng(Me!KF_Zyklus)
410     lng_ID_ZahlZykl_MAx = CLng(Me!KF_Zyklus)
420 End If

430 DoCmd.OpenReport "Bericht_Nebenkosten_Kalkulation", acViewPreview, , , acDialog

End Sub

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub
