Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Skonto_Exit(Cancel As Integer)
DoCmd.GoToControl "Kombinationsfeld18"
SendKeys "{F4}", False
End Sub

Private Sub andere_Fälligkeit_AfterUpdate()
Me![sofort] = 0
End Sub

Private Sub Betrag_Exit(Cancel As Integer)

10  If Me.NewRecord Then
20      Me.Parent!von_.SetFocus
30  End If

End Sub

Private Sub Fälligkeitsdatum_AfterUpdate()
Me![sofort] = 0
End Sub
