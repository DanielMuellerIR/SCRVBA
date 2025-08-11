Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Skonto_Exit(Cancel As Integer)
    DoCmd.GoToControl "Kombinationsfeld18"
    'SendKeys "{F4}", False
End Sub

Private Sub Betrag_AfterUpdate()
10  DoCmd.RunCommand acCmdSaveRecord
20  Me.AllowAdditions = False

End Sub

Private Sub Betrag_Exit(Cancel As Integer)
10  On Error Resume Next
20  Forms("Buchungsanordnung")![Buchungsanordnung Unterformular 2].SetFocus
30  Forms("Buchungsanordnung")![Buchungsanordnung Unterformular 2]![ID aus Kostenstellen].SetFocus
40  On Error GoTo 0
End Sub


Private Sub KF_ID_Buchst_Dopik_AfterUpdate()
10  Me!tf_Sachkonto = Me.KF_ID_Buchst_Dopik.Column(1)

20  DoCmd.RunCommand acCmdSaveRecord
30  Me.Repaint
40  Me.Betrag.SetFocus
End Sub
