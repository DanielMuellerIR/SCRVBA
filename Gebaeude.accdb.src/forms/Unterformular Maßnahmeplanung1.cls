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



Private Sub BS_Massn_Loeschen_Click()


10  DoCmd.SetWarnings False
20  On Error GoTo MN_Loeschen_Fehler

30  If MsgBox("Maßnahme " & Me![Maßnahme] & vbCrLf & vbCrLf _
            & "wirklich löschen?", vbYesNo + vbCritical, "Maßnahme löschen?") = vbNo Then
40      Exit Sub
50  End If

60  DoCmd.RunCommand acCmdDeleteRecord
70  Me.Requery
80  On Error GoTo 0
90  DoCmd.SetWarnings True

100 Call Forms("Formular Maßnahmen ändern").Setze_Buttons

110 Exit Sub

MN_Loeschen_Fehler:
120 If Err.Number = 3200 Then
130     MsgBox ("Diese Maßnahme kann nicht gelöscht werden, andere Datensätzen (siehe unten) sind noch mit ihr verknüpft!")
140 Else
150     MsgBox Err.Description
160 End If

170 On Error GoTo 0

End Sub
