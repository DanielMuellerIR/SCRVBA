Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Skonto_Exit(Cancel As Integer)
DoCmd.GoToControl "Kombinationsfeld18"
SendKeys "{F4}", False
End Sub


Private Sub ID_aus_Kostenstellen_AfterUpdate()
Me![ID aus Kostenträger].SetFocus
SendKeys "{F4}", False

End Sub

Private Sub ID_aus_Kostenstellen_GotFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me![ID aus Kostenstellen].BackColor = lngGelb

End Sub

Private Sub ID_aus_Kostenstellen_LostFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me![ID aus Kostenstellen].BackColor = lngWeiß

End Sub

Private Sub ID_aus_Kostenträger_AfterUpdate()

On Error GoTo Err_Befehl_AfterUpdate

 Forms![Buchungsanordnung_Historik]![Verwendungszweck].SetFocus

Err_Befehl_AfterUpdate:
    Exit Sub

End Sub

Private Sub ID_aus_Kostenträger_GotFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me![ID aus Kostenträger].BackColor = lngGelb

End Sub

Private Sub ID_aus_Kostenträger_LostFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me![ID aus Kostenträger].BackColor = lngWeiß

End Sub
Private Sub Befehl62_Click()
On Error GoTo Err_Befehl62_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl62_Click:
    Exit Sub

Err_Befehl62_Click:
    MsgBox Err.Description
    Resume Exit_Befehl62_Click

End Sub
