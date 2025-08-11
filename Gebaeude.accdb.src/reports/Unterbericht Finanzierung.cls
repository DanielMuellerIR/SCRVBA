Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Gruppenfuß0_Format(Cancel As Integer, FormatCount As Integer)
If Me![Sammelbuchungsstelle] = True Then
Me![Linie46].Visible = True
Me![Linie48].Visible = True
Me![Text12].Visible = False
Else
Me![Linie46].Visible = False
Me![Linie48].Visible = False
Me![Text12].Visible = True
End If
End Sub
