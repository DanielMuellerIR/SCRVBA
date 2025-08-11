Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Befehl20_Click()
    On Error GoTo Err_Befehl20_Click


    DoCmd.GoToRecord , , acFirst

Exit_Befehl20_Click:
    Exit Sub

Err_Befehl20_Click:
    MsgBox Err.Description
    Resume Exit_Befehl20_Click

End Sub
Private Sub Befehl21_Click()
    On Error GoTo Err_Befehl21_Click


    DoCmd.GoToRecord , , acPrevious

Exit_Befehl21_Click:
    Exit Sub

Err_Befehl21_Click:
    MsgBox Err.Description
    Resume Exit_Befehl21_Click

End Sub
Private Sub Befehl22_Click()
    On Error GoTo Err_Befehl22_Click


    DoCmd.GoToRecord , , acNext

Exit_Befehl22_Click:
    Exit Sub

Err_Befehl22_Click:
    MsgBox Err.Description
    Resume Exit_Befehl22_Click

End Sub
Private Sub Befehl23_Click()
    On Error GoTo Err_Befehl23_Click


    DoCmd.GoToRecord , , acLast

Exit_Befehl23_Click:
    Exit Sub

Err_Befehl23_Click:
    MsgBox Err.Description
    Resume Exit_Befehl23_Click

End Sub
Private Sub Befehl24_Click()
    On Error GoTo Err_Befehl24_Click


    DoCmd.GoToRecord , , acNewRec

Exit_Befehl24_Click:
    Exit Sub

Err_Befehl24_Click:
    MsgBox Err.Description
    Resume Exit_Befehl24_Click

End Sub
Private Sub Befehl25_Click()
    On Error GoTo Err_Befehl25_Click


    DoCmd.Close

Exit_Befehl25_Click:
    Exit Sub

Err_Befehl25_Click:
    MsgBox Err.Description
    Resume Exit_Befehl25_Click

End Sub
Private Sub Befehl56_Click()
    On Error GoTo Err_Befehl56_Click

    Dim stDocName As String
    Dim MyForm As Form

    stDocName = "Formular Maßnahmen planen"
    Set MyForm = Screen.ActiveForm
    DoCmd.SelectObject acForm, stDocName, True
    DoCmd.PrintOut
    DoCmd.SelectObject acForm, MyForm.Name, False

Exit_Befehl56_Click:
    Exit Sub

Err_Befehl56_Click:
    MsgBox Err.Description
    Resume Exit_Befehl56_Click

End Sub

Private Sub Form_Current()
10  KK_Aktiv_Eigenl_Click
End Sub

Private Sub KK_Aktiv_Eigenl_Click()

10  If Me!KK_Aktiv_Eigenl = False Then
20      Me!TF_Aktiv_Eigenl_Bem = Null
30      Me!TF_Aktiv_Eigenl_Bem.Enabled = False

40  Else
50      Me!TF_Aktiv_Eigenl_Bem.Enabled = True
60  End If

End Sub
