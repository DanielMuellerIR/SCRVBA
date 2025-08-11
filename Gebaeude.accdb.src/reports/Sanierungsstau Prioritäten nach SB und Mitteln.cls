Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Binary
Option Explicit

Private Sub Report_NoData(Cancel As Integer)
10    MsgBox "Die Filtervorgabe liefert keinen einzigen Datensatz!"
End Sub

Private Sub Report_Open(Cancel As Integer)
10  DoCmd.Maximize
20    Blende_MN_IDs_ein_aus Me
End Sub
