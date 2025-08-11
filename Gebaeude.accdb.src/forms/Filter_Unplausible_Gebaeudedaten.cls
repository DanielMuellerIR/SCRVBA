Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_Anzeigen_Click()

20  Select Case Me.OR_Alle_Bil_Rel
    Case 1
30      str_Openargs = "*Alle*"
40  Case 2
50      str_Openargs = "*Bilanzrelevante*"
60  End Select

70  DoCmd.OpenReport "Pausibilitätsprüfung Gebäudebewertung", acViewPreview, , , acDialog

End Sub

Private Sub BS_Schließen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub
