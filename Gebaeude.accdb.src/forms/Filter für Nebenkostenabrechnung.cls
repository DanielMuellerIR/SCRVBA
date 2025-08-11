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


Private Sub BS_Auswerten_Click()


10  dt_Fix_Datum = CDate(Me!Datei)

20  If IsNull(Me!KF_HHJ) Then
30      lng_Kalk_Jahr_Min = 0
40      lng_Kalk_Jahr_Max = 2 ^ 31 - 1
50  Else
60      lng_Kalk_Jahr_Min = CLng(Me!KF_HHJ)
70      lng_Kalk_Jahr_Max = CLng(Me!KF_HHJ)
80  End If

90  If IsNull(Me!KF_Betrieb) Then
100     lng_Betr_Nr_Min = 0
110     lng_Betr_Nr_Max = 2 ^ 31 - 1
120 Else
130     lng_Betr_Nr_Min = CLng(Me!KF_Betrieb)
140     lng_Betr_Nr_Max = CLng(Me!KF_Betrieb)
150 End If

160 If IsNull(Me!KF_Bereich) Then
170     lng_Ber_Nr_Min = 0
180     lng_Ber_Nr_Max = 2 ^ 31 - 1
190 Else
200     lng_Ber_Nr_Min = CLng(Me!KF_Bereich)
210     lng_Ber_Nr_Max = CLng(Me!KF_Bereich)
220 End If

230 If IsNull(Me!KF_Objekt) Then
240     lng_ID_Geb_Teil_Min = 0
250     lng_ID_Geb_Teil_Max = 2 ^ 31 - 1
260 Else
270     lng_ID_Geb_Teil_Min = CLng(Me!KF_Objekt)
280     lng_ID_Geb_Teil_Max = CLng(Me!KF_Objekt)
290 End If

300 DoCmd.OpenReport "Nebenkostenabrechnung", acViewPreview, , , acDialog

End Sub

Private Sub BS_Schließen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub

Private Sub Datei_AfterUpdate()
10  Setze_Buttons
End Sub

Private Sub Datei_GotFocus()
    Dim lngGelb As Long, lngWeiß As Long

10  lngGelb = RGB(255, 255, 0)
20  lngWeiß = RGB(192, 192, 192)
30  Me![Datei].BackColor = lngGelb
40  Me![Datei].Dropdown

End Sub

Private Sub Datei_LostFocus()
    Dim lngGelb As Long, lngWeiß As Long
10  lngGelb = RGB(255, 255, 0)
20  lngWeiß = RGB(192, 192, 192)
30  Me![Datei].BackColor = lngWeiß

End Sub

Private Sub Form_Activate()
10  DoCmd.GoToControl "Datei"
20  Me![Datei].Dropdown
End Sub


Private Sub KF_Bereich_AfterUpdate()
10  Me!KF_Objekt.Requery
End Sub

Private Sub KF_Betrieb_AfterUpdate()
10  Me.KF_Bereich.Requery
End Sub

Sub Setze_Buttons()

10  If IsNull(Me!Datei) Then
20      Me.BS_Auswerten.Enabled = False
30  Else
40      Me.BS_Auswerten.Enabled = True
50  End If

End Sub
