Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Report_Load()

10  If bln_ID_Massn_ausdr = True Then
20      Me.BF_ID_Massn.Visible = True
30      Me.TF_ID_Massn.Visible = True
40  Else
50      Me.BF_ID_Massn.Visible = False
60      Me.TF_ID_Massn.Visible = False
70  End If

End Sub

Private Sub Report_NoData(Cancel As Integer)
10    MsgBox "Die Filtervorgabe liefert keinen einzigen Datensatz!"
End Sub
