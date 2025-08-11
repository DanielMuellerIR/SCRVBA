Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Befehl4_Click()
On Error GoTo Err_Befehl4_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl4_Click:
    Exit Sub

Err_Befehl4_Click:
    MsgBox Err.Description
    Resume Exit_Befehl4_Click

End Sub
