Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Befehl12_Click()
On Error GoTo Err_Befehl12_Click


    DoCmd.Close

Exit_Befehl12_Click:
    Exit Sub

Err_Befehl12_Click:
    MsgBox Err.Description
    Resume Exit_Befehl12_Click

End Sub

Private Sub Kombinationsfeld21_AfterUpdate()
Me![B_Unterformular_NHK_Typen_Werte].Requery

End Sub
