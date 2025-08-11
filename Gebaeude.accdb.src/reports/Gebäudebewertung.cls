Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Report_Open(Cancel As Integer)
10  DoCmd.Maximize
End Sub

Private Sub Detailbereich_Format(Cancel As Integer, FormatCount As Integer)

10  If Me![Ablaufzeit] = "Nutzungsdauer abgelaufen!" Then
20      Me![Ablaufzeit].FontBold = True
30  End If

End Sub

Private Sub Gruppenfuß2_Format(Cancel As Integer, FormatCount As Integer)
10  Me![Ablaufzeit].FontBold = False
End Sub
