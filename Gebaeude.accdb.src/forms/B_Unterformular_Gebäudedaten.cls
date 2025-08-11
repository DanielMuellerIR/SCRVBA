Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Nutzungsdauer_aus_Daten_Change()
Me![gewöhnliche Nutzungsdauer].SetFocus
Me![gewöhnliche Nutzungsdauer] = Me![Nutzungsdauer_aus_Daten]
Me![BGF].SetFocus
End Sub

Private Sub Typ_aus_NHK_Typen_AfterUpdate()
Me![Nutzungsdauer_aus_Daten].Requery
Me![Nutzungsdauer_aus_Daten].SetFocus
SendKeys "{f4}", False
SendKeys "{down}", False
End Sub
