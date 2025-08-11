Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Detailbereich_Format(Cancel As Integer, FormatCount As Integer)

10  If Not val(Nz(Me!TF_Kennfarbe)) = 0 Then

20      Me!TF_Kennfarbe.BackColor = val(Me!TF_Kennfarbe)
30      Me!TF_Kennfarbe.ForeColor = val(Me!TF_Kennfarbe)
40  Else
50      Me!TF_Kennfarbe.BackColor = RGB(255, 255, 255)
60      Me!TF_Kennfarbe.ForeColor = RGB(0, 0, 0)
70  End If

End Sub

Private Sub Report_Open(Cancel As Integer)
10  DoCmd.Maximize
End Sub
