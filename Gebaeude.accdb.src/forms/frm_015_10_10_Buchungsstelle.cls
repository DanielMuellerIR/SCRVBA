Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BF_BS_Uebenehmen_Click()

10  If Me.Dirty Then
20      DoCmd.RunCommand acCmdSaveRecord
30  End If

40  DoCmd.Close acForm, Me.Name

End Sub

Private Sub BS_Verwerfen_Click()

10  str_SQL_Statement = "DELETE Buchungsstellen.ID FROM Buchungsstellen WHERE (((Buchungsstellen.ID)=F_Variable('lng_ID_Buchung')));"

20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True

50  DoCmd.Close acForm, Me.Name

End Sub
