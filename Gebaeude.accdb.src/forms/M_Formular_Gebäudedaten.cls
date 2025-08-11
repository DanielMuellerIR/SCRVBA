Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Form_Activate()
DoCmd.Maximize
End Sub



Private Sub Unterformular_Maßnahmeplanung_Enter()
DoCmd.GoToRecord , , acFirst
End Sub
Private Sub Befehl33_Click()
On Error GoTo Err_Befehl33_Click


    DoCmd.Close

Exit_Befehl33_Click:
    Exit Sub

Err_Befehl33_Click:
    MsgBox Err.Description
    Resume Exit_Befehl33_Click

End Sub
Private Sub Befehl44_Click()
On Error GoTo Err_Befehl44_Click


    DoCmd.GoToRecord , , acNext

Exit_Befehl44_Click:
    Exit Sub

Err_Befehl44_Click:
    MsgBox Err.Description
    Resume Exit_Befehl44_Click

End Sub




Private Sub Mietkalkulation_Click()
Me!Forms!M_Formular_Gebäudedaten.Refresh
End Sub

Private Sub Union_Abfrage_Mietberechnung_Unterformular_Enter()
Forms!M_Formular_Gebäudedaten.Refresh
End Sub
Private Sub Befehl65_Click()
On Error GoTo Err_Befehl65_Click

    Dim stDocName As String

    stDocName = "M_Übernahme_Nebenkosten_aus_Vorjahr_für_Kalkulation"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

    stDocName = "Flag_setzen_in_Kalkulation_übernommen"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

    Me.Requery
    SendKeys "{Enter}", False


Exit_Befehl65_Click:
    Exit Sub

Err_Befehl65_Click:
    MsgBox Err.Description
    Resume Exit_Befehl65_Click

End Sub
Private Sub Befehl66_Click()
On Error GoTo Err_Befehl66_Click

    Dim stDocName As String

    stDocName = "M_Übernahme_Sonderleistungen_aus_Vorjahr_für_Kalkulation"
    DoCmd.OpenQuery stDocName, acNormal, acEdit



    Me.Requery

    SendKeys "{Enter}", False
    'Me.[M_Unterformular_Sonderleistungen_Kalkulation_für_Budget].SetFocus

Exit_Befehl66_Click:
    Exit Sub

Err_Befehl66_Click:
    MsgBox Err.Description
    Resume Exit_Befehl66_Click

End Sub

Private Sub KF_Gebäudeauswahl_AfterUpdate()

10  Me.UF_Fremdmieten.Form.Requery
20  Me.UF_Sonderleistungen.Form.Requery
30  Me.UF_Kalk_Sonderl.Form.Requery
40  Me.UF_Memos.Form.Requery

End Sub
