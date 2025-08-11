Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Report_Load()
10  Exit Sub

20  If InStr(1, str_Open_Args, "*Details*") > 0 Then
30      Me.Section("Detailbereich").Visible = True
40  Else
50      Me.Section("Detailbereich").Visible = False
60  End If

End Sub

Private Sub Report_Open(Cancel As Integer)
10  DoCmd.Maximize
End Sub
