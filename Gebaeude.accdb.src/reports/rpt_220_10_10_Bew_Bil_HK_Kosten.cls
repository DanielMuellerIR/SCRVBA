Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Dim bln_Abschr_unbek As Boolean
'

Private Sub Detailbereich_Print(Cancel As Integer, PrintCount As Integer)

10  If Not IsNumeric(Me!TF_Abschr_Jahre) Then
20      bln_Abschr_unbek = True
30  End If

End Sub

Private Sub Berichtsfuß_Print(Cancel As Integer, PrintCount As Integer)

10  If bln_Abschr_unbek = True Then
20      Me!BF_Hinweis_unb_Abschr.Visible = True
30      Me!TF_Kum_Abschr_Sum.ForeColor = RGB(255, 0, 0)
40  End If

End Sub
