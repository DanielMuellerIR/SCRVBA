Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_Bericht_Loeschen_Click()
10  DoCmd.SetWarnings False
20  Me.AllowDeletions = True
30  DoCmd.RunCommand acCmdDeleteRecord
40  Me.AllowDeletions = False
50  DoCmd.SetWarnings True
End Sub

Private Sub BS_Bericht_Neu_Click()
10  str_SQL_Statement = "INSERT INTO Maßnahme_Berichte ( [ID aus Maßnahme], [Tag], [Text] )" _
                      & " SELECT [Formulare]![Formular Berichte]![ID aus Maßnahme] AS idm, date() as dt_Heute, 'Neuer Bericht' AS nm;"

20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True
50  Me.Requery
60  DoCmd.GoToRecord , , acLast

End Sub

Private Sub Text12_GotFocus()
    If IsNull(Me![Tag]) Then
        Me![Tag].SetFocus
    End If
End Sub
