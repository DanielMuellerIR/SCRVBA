Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Befehl19_Click()
On Error GoTo Err_Befehl19_Click


    DoCmd.GoToRecord , , acFirst

Exit_Befehl19_Click:
    Exit Sub

Err_Befehl19_Click:
    MsgBox Err.Description
    Resume Exit_Befehl19_Click

End Sub


Private Sub Befehl20_Click()
On Error GoTo Err_Befehl20_Click


    DoCmd.Close

Exit_Befehl20_Click:
    Exit Sub

Err_Befehl20_Click:
    MsgBox Err.Description
    Resume Exit_Befehl20_Click

End Sub

Private Sub Befehl21_Click()
On Error GoTo Err_Befehl21_Click


    DoCmd.GoToRecord , , acLast

Exit_Befehl21_Click:
    Exit Sub

Err_Befehl21_Click:
    MsgBox Err.Description
    Resume Exit_Befehl21_Click
End Sub

Private Sub Befehl23_Click()
On Error GoTo Err_Befehl23_Click


    DoCmd.GoToRecord , , acNewRec

Exit_Befehl23_Click:
    Exit Sub

Err_Befehl23_Click:
    MsgBox Err.Description
    Resume Exit_Befehl23_Click

End Sub

Private Sub Befehl24_Click()
On Error GoTo Err_Befehl24_Click


    Screen.PreviousControl.SetFocus
    DoCmd.DoMenuItem acFormBar, acEditMenu, 10, , acMenuVer70

Exit_Befehl24_Click:
    Exit Sub

Err_Befehl24_Click:
    MsgBox Err.Description
    Resume Exit_Befehl24_Click

End Sub

Private Sub Befehl25_Click()
On Error GoTo Err_Befehl25_Click


    DoCmd.GoToRecord , , acLast

Exit_Befehl25_Click:
    Exit Sub

Err_Befehl25_Click:
    MsgBox Err.Description
    Resume Exit_Befehl25_Click
End Sub

Private Sub Befehl30_Click()
On Error GoTo Err_Befehl30_Click


    DoCmd.GoToRecord , , acPrevious

Exit_Befehl30_Click:
    Exit Sub

Err_Befehl30_Click:
    MsgBox Err.Description
    Resume Exit_Befehl30_Click


End Sub

Private Sub BS_BIC_autom_Click()

10  If IsNull(Me.TF_BLZ) Then
20      MsgBox "Bitte vergeben Sie zunächst eine konventionelle BLZ "
30      Exit Sub
40  End If

Me.TF_BIC = fct_BIC(Me!TF_BLZ)

End Sub

Private Sub BS_IBAN_autom_Click()

10  If IsNull(Me.TF_BLZ) Or IsNull(Me.TF_Konto_Nr) Then
20      MsgBox "Bitte vergeben Sie zunächst eine konventionelle BLZ und/oder Konto-Nr."
30      Exit Sub
40  End If

50  Me.TF_IBAN = IBANCalc("DE", Me!TF_BLZ, Me!TF_Konto_Nr)

End Sub
