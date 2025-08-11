Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Report_NoData(Cancel As Integer)
10  MsgBox "Es exixtieren keine Unstimmigkeiten."
End Sub

Private Sub Report_Open(Cancel As Integer)
10  DoCmd.Maximize
End Sub
