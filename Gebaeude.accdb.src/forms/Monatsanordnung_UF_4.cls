Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Befehl63_Click()
On Error GoTo Err_Befehl63_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl63_Click:
    Exit Sub

Err_Befehl63_Click:
    MsgBox Err.Description
    Resume Exit_Befehl63_Click

End Sub
Private Sub Befehl64_Click()
On Error GoTo Err_Befehl64_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl64_Click:
    Exit Sub

Err_Befehl64_Click:
    MsgBox Err.Description
    Resume Exit_Befehl64_Click

End Sub

Private Sub Betrag_GotFocus()
    Dim lngGelb As Long, lngWeiß As Long
    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)
    Me!Betrag.BackColor = lngGelb
End Sub

Private Sub Betrag_LostFocus()
    Dim lngGelb As Long, lngWeiß As Long
    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)
    Me!Betrag.BackColor = lngWeiß
End Sub


Public Sub ID_aus_Kostenstellen_AfterUpdate()

10  If Not IsNull(Me![ID aus Kostenstellen]) Then
20      Me!TF_Kostenstelle_Infoma = Format(Me![ID aus Kostenstellen].Column(1), "00000")
30  Else
40      Me!TF_Kostenstelle_Infoma = ""
50  End If

End Sub

Public Sub ID_aus_Kostenträger_AfterUpdate()

10  If Not IsNull(Me![ID aus Kostenträger]) Then
20      Me.TF_Prod_Nr = Me![ID aus Kostenträger].Column(1)
30  Else
40      Me!TF_Prod_Nr = ""
50  End If

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
