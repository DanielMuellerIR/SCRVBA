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



Private Sub ID_aus_Buchungsstellen_AfterUpdate()
10  Forms![Buchungsanordnung_Historik]![Buchungsanordnung Unterformular 2]![Betrag] = Me![Betrag]
20  Forms![Buchungsanordnung_Historik]![Buchungsanordnung Unterformular 2].SetFocus

30  Me!tf_Sachkonto = Me.[ID aus Buchungsstellen].Column(1)
50  DoCmd.RunCommand acCmdSaveRecord
60  Me.Repaint
70  Me.Betrag.SetFocus

80  SendKeys "{F4}", False

End Sub

Private Sub ID_aus_Buchungsstellen_GotFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me![ID aus Buchungsstellen].BackColor = lngGelb

End Sub

Private Sub ID_aus_Buchungsstellen_LostFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me![ID aus Buchungsstellen].BackColor = lngWeiß

End Sub
