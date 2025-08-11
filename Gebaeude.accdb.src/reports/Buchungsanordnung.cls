Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Detailbereich_Format(Cancel As Integer, FormatCount As Integer)

10  On Error Resume Next
20  If Me![TF_Betrag] < 0 Then
30      Me!BF_Anordnungsart.Caption = "Auszahlungsabsetzungsanordnung"
40  Else
50      Me!BF_Anordnungsart.Caption = "Auszahlungsanordnung"
60  End If
70  On Error GoTo 0

End Sub


Private Sub Report_Open(Cancel As Integer)
10  DoCmd.Maximize

80  If Me.OpenArgs = "Kopie" Then
90      Me.OLE_Kopie_Stempel.Visible = True
100 Else
110     Me.OLE_Kopie_Stempel.Visible = False
120 End If

End Sub
