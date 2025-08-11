Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit


Private Sub KF_Gebaeude_Asw_AfterUpdate()
10  lng_ID_Gebaeude = Me.KF_Gebaeude_Ausw
End Sub

Private Sub Form_Load()
10  lng_ID_Gebaeude = 0
20  bln_ID_Massn_ausdr = False
End Sub

Private Sub KF_Gebaeude_Ausw_AfterUpdate()
10  lng_ID_Geb_Teil = Me!KF_Gebaeude_Ausw
End Sub

Private Sub KF_LS_Auswahl_AfterUpdate()
10  lng_ID_Gebaeude = Me!KF_LS_Auswahl
End Sub

Private Sub OR_Gebaeude_AfterUpdate()


10  Select Case Me.OR_Gebaeude
    Case 1
20      Me!KF_LS_Auswahl.Visible = False
30      Me!KF_Gebaeude_Ausw.Visible = False

40  Case 2
50      Me!KF_LS_Auswahl.Visible = True
60      Me!KF_Gebaeude_Ausw.Visible = False
70      Me!KF_Gebaeude_Ausw = Null


80  Case 3
90      Me!KF_LS_Auswahl.Visible = False
100     Me!KF_LS_Auswahl = Null
110     Me!KF_Gebaeude_Ausw.Visible = True
120 End Select



End Sub

Private Sub OR_Prioritaeten_AfterUpdate()

10  If Me.OR_Prioritaeten > 0 Then
20      Me.BS_Ausdruck.Enabled = True
30  Else
40      Me.BS_Ausdruck.Enabled = False
50  End If

End Sub

Private Sub BS_Ausdruck_Click()

10  Select Case Me.OR_Gebaeude
    Case 1  ' Alle LS mit allen Gebäuden
20      lng_ID_Geb_Min = 0
30      lng_ID_Geb_Max = 2 ^ 31 - 1
40      lng_ID_Geb_Teil_Min = 0
50      lng_ID_Geb_Teil_Max = 2 ^ 31 - 1

60  Case 2  ' Eine LS mit allen ihren Gebäudfeteilen
70      lng_ID_Geb_Min = Me!KF_LS_Auswahl
80      lng_ID_Geb_Max = Me!KF_LS_Auswahl
90      lng_ID_Geb_Teil_Min = 0
100     lng_ID_Geb_Teil_Max = 2 ^ 31 - 1

110 Case 3  ' Ein Gebäudeteil
120     lng_ID_Geb_Min = 0
130     lng_ID_Geb_Max = 2 ^ 31 - 1
140     lng_ID_Geb_Teil_Min = Me!KF_Gebaeude_Ausw
150     lng_ID_Geb_Teil_Max = Me!KF_Gebaeude_Ausw
160 End Select

    'Exit Sub

170 Select Case Me.OR_Prioritaeten

    Case 1    ' Ausdruck nach sachlichen Prioritäten
180     DoCmd.OpenReport "Sanierungsstau Prioritäten", acViewPreview, , , acDialog

190 Case 2    ' Ausdruck nach zeitlichen Prioritäten
200     DoCmd.OpenReport "Sanierungsstau Prioritäten zeitlich", acViewPreview, , , acDialog

210 Case 3    ' Ausdruck nach Art der Mittel
220     DoCmd.OpenReport "Sanierungsstau Prioritäten nach Mitteln", acViewPreview, , , acDialog

230 Case 4    ' Ausdruck nach SB UND Art der Mittel
240     DoCmd.OpenReport "Sanierungsstau Prioritäten nach SB und Mitteln", acViewPreview, , , acDialog

250 Case 5    ' Ausdruck nach SB UND Art der Mittel
260     DoCmd.OpenReport "Sanierungsstau Prioritäten nach Herkunft", acViewPreview, , , acDialog


270 End Select

End Sub

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub
