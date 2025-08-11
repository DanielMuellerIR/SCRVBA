Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Kombinationsfeld18_GotFocus()
SendKeys "{F4}", True
End Sub
Private Sub Befehl24_Click()
On Error GoTo Err_Befehl24_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl24_Click:
    Exit Sub

Err_Befehl24_Click:
    MsgBox Err.Description
    Resume Exit_Befehl24_Click

End Sub
Private Sub Befehl25_Click()
On Error GoTo Err_Befehl25_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl25_Click:
    Exit Sub

Err_Befehl25_Click:
    MsgBox Err.Description
    Resume Exit_Befehl25_Click

End Sub
