Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Befehl0_Click()
On Error GoTo Err_Befehl0_Click

    DoCmd.Close

Exit_Befehl0_Click:
    Exit Sub

Err_Befehl0_Click:
    MsgBox Err.Description
    Resume Exit_Befehl0_Click

End Sub

Private Sub Gesamtpersonalkosten_AfterUpdate()
Me.Refresh
End Sub

Private Sub Jahr_AfterUpdate()
DoCmd.SetWarnings False
DoCmd.RunSQL "UPDATE Kalkulationsjahr SET Kalkulationsjahr.Anfang = [Formulare]![M_Formular_Eingabe_VerwaltungskostenBis2023].[Beginn], Kalkulationsjahr.Ende = [Formulare]![M_Formular_Eingabe_VerwaltungskostenBis2023].[Ende];"
End Sub

Private Sub Jahr_GotFocus()
'SendKeys "{F4}", True
End Sub
