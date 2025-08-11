Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Kennnummer_aus_B_Gebäudegruppen_AfterUpdate()
Forms![B_Formular_Gebäudebewertung]![Eingebettet36].SetFocus
End Sub

Private Sub Kennnummer_aus_B_Gebäudegruppen_LostFocus()
Forms![B_Formular_Gebäudebewertung]![Eingebettet36].SetFocus
End Sub
