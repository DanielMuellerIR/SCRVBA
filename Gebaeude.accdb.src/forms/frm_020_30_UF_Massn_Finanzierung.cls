Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Befehl13_Click()
On Error GoTo Err_Befehl13_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl13_Click:
    Exit Sub

Err_Befehl13_Click:
    MsgBox Err.Description
    Resume Exit_Befehl13_Click

End Sub
