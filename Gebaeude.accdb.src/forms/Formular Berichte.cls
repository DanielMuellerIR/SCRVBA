Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Befehl33_Click()

    DoCmd.Close

End Sub

Private Sub Form_Open(Cancel As Integer)
Me![ID aus Maßnahme].SetFocus
Me![ID aus Maßnahme].Dropdown
End Sub

Private Sub ID_aus_Maßnahme_AfterUpdate()
10  Me!UB_Finanzierung.Requery
20  Me![Formular Berichte Unterformular].Requery
30  DBEngine.Idle
40  Me![Formular Berichte Unterformular].SetFocus
End Sub
