Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit



Private Sub Betrag_AfterUpdate()
Me![Buchungsanordnung Unterformular 1].SetFocus
Me![Buchungsanordnung Unterformular 1]![Betrag] = Me![Betrag]
Me![Buchungsanordnung Unterformular 1]![ID aus Buchungsstellen].SetFocus
SendKeys "{F4}", True
End Sub

Private Sub Buchungsanordnung_Unterformular_1_Exit(Cancel As Integer)
Me![KontrolleKoSt].Requery
Me![KontrolleBuSt].Requery
End Sub

Private Sub Buchungsanordnung_Unterformular_2_Exit(Cancel As Integer)
Me![KontrolleKoSt].Requery
Me![KontrolleBuSt].Requery
End Sub

Private Sub Form_Current()
DoCmd.Maximize
End Sub



Private Sub Form_Load()
DoCmd.Maximize
End Sub

Private Sub ID_Empfänger_AfterUpdate()
'Me![Buchungsanordnung Unterformular 4].SetFocus
'Me![Buchungsanordnung Unterformular 4]![sofort] = -1
End Sub


Private Sub ID_Empfänger_LostFocus()
Me![Buchungsanordnung Unterformular 4].SetFocus
Me![Buchungsanordnung Unterformular 4]![sofort] = -1

End Sub

Private Sub ID_Nebenkostenart_AfterUpdate()
Me![Betrag].SetFocus
End Sub

Private Sub Kombinationsfeld3_AfterUpdate()
Me![ID Nebenkostenart].SetFocus
SendKeys "{F4}", False

End Sub


Private Sub Befehl67_Click()
On Error GoTo Err_Befehl67_Click

Me![Verwendungszweck].SetFocus

If Me![Betrag] <> Me![KontrolleBuSt] Then
MsgBox "Aufteilung stimmt nicht!"
Exit Sub
End If

If Me![Betrag] <> Me![KontrolleKoSt] Then
MsgBox "Aufteilung stimmt nicht!"
Exit Sub
End If



    Dim stDocName As String

    stDocName = "Buchungsanordnung_Historik"
    DoCmd.OpenReport stDocName, acNormal

    stDocName = "Buchungsanordnung_Kopie_Historik"
    DoCmd.OpenReport stDocName, acNormal

Exit_Befehl67_Click:
    Exit Sub

Err_Befehl67_Click:
    MsgBox Err.Description
    Resume Exit_Befehl67_Click

End Sub
Private Sub Befehl68_Click()
On Error GoTo Err_Befehl68_Click


    DoCmd.GoToRecord , , acNewRec

Exit_Befehl68_Click:
    Exit Sub

Err_Befehl68_Click:
    MsgBox Err.Description
    Resume Exit_Befehl68_Click

End Sub
Private Sub Befehl69_Click()
On Error GoTo Err_Befehl69_Click

    DoCmd.Close acForm, "Filter für Buchungen_Historik"
    DoCmd.Close



Exit_Befehl69_Click:
    Exit Sub

Err_Befehl69_Click:
    MsgBox Err.Description
    Resume Exit_Befehl69_Click

End Sub
Private Sub Befehl71_Click()
On Error GoTo Err_Befehl71_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "A_Empfänger"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl71_Click:
    Exit Sub

Err_Befehl71_Click:
    MsgBox Err.Description
    Resume Exit_Befehl71_Click

End Sub

Private Sub Verwendungszweck_AfterUpdate()
Me![ID Empfänger].SetFocus
SendKeys "{F4}", True
End Sub
Private Sub Befehl75_Click()
On Error GoTo Err_Befehl75_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

    DoCmd.Close acForm, "Filter für Buchungen_Historik"
    DoCmd.Close

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Buchungsanordnung"
    DoCmd.OpenForm stDocName, , , stLinkCriteria



Exit_Befehl75_Click:
    Exit Sub

Err_Befehl75_Click:
    MsgBox Err.Description
    Resume Exit_Befehl75_Click

End Sub
Private Sub Befehl76_Click()
On Error GoTo Err_Befehl76_Click

Me![Verwendungszweck].SetFocus

If Me![Betrag] <> Me![KontrolleBuSt] Then
MsgBox "Aufteilung stimmt nicht!"
End If

If Me![Betrag] <> Me![KontrolleKoSt] Then
MsgBox "Aufteilung stimmt nicht!"
End If

    Dim stDocName As String

    stDocName = "Buchungsanordnung_Historik"
    DoCmd.OpenReport stDocName, acPreview

Exit_Befehl76_Click:
    Exit Sub

Err_Befehl76_Click:
    MsgBox Err.Description
    Resume Exit_Befehl76_Click

End Sub
Private Sub Befehl78_Click()
On Error GoTo Err_Befehl78_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 2, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 5, , acMenuVer70 'Paste Append

Exit_Befehl78_Click:
    Exit Sub

Err_Befehl78_Click:
    MsgBox Err.Description
    Resume Exit_Befehl78_Click

End Sub
