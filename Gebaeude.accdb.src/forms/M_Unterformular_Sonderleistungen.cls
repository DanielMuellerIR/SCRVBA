Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Kombinationsfeld24_GotFocus()
SendKeys "{F4}", True
End Sub
Private Sub Befehl26_Click()
On Error GoTo Err_Befehl26_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl26_Click:
    Exit Sub

Err_Befehl26_Click:
    MsgBox Err.Description
    Resume Exit_Befehl26_Click

End Sub
