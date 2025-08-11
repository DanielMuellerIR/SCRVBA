Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_Ausdruck_Click()

10  Select Case Me.OR_Listenauswahl

    Case 1    ' Herstellkosten
20      DoCmd.OpenReport "rpt_220_10_10_Bew_Bil_HK_Kosten_nach_2009", acViewPreview

30  Case 2    ' Versicherungswerte
40      DoCmd.OpenReport "rpt_220_10_10_Bew_Bil_Verswerte_nach_2009", acViewPreview

50  End Select

End Sub

Private Sub BS_Exc_Export_Click()
    Call ExcelExport_HK_VW   'DM2022-04-21 siehe mdl 180
End Sub

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub


Private Sub OR_Listenauswahl_BeforeUpdate(Cancel As Integer)

10  Me.BS_Ausdruck.Enabled = True
20  Me.BS_Exc_Export.Enabled = True

End Sub
