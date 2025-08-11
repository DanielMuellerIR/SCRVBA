Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Report_Open(Cancel As Integer)
10  DoCmd.Maximize


20  If Me.OpenArgs = "Kopie" Then
30      Me.OLE_Kopie_Stempel.Visible = True
40  Else
50      Me.OLE_Kopie_Stempel.Visible = False
60  End If

End Sub
