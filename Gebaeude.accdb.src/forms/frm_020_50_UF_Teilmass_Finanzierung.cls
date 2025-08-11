Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_DS_loeschen_Click()

10  If Me.RecordsetClone.RecordCount = 1 Then

20      If MsgBox("Ein Eintrag muss zur geplanten Finanzierung verbleiben!" & vbCrLf _
                & " Datenfelder leeren?", vbYesNo, "Felder leeren?") = vbNo Then
30          Exit Sub
40      Else
50          Me!KF_KJ = Null
60          Me!Betrag = Null
70          Me!KF_Mittelart = Null
80          Me!KF_Mittelherk = Null
90          Me!KK_Sammel_BS = False
100         Me!Erledigt = Null
110         Me!Bemerkung = Null
120         DoCmd.RunCommand acCmdSaveRecord
130         Me.Repaint
140         Exit Sub
150     End If

160 End If

170 If MsgBox("Wollen Sie wiklich den markierten Eintrag zur geplanten Finanzierung löschen", vbYesNo, "wirklich löschen?") = vbNo Then
180     Exit Sub
190 End If

200 DoCmd.SetWarnings False
210 DoCmd.RunCommand acCmdDeleteRecord
220 DoCmd.SetWarnings True

End Sub

Sub BS_DS_Neu_Click()

10  str_SQL_Statement = "INSERT INTO [geplante Finanzierung] ( ID_Massnahme )" _
                      & " SELECT F_Variable('lng_ID_Massn') AS idm;"

20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True

50  lng_ID_Gepl_Finanz = DMax("[ID]", "geplante Finanzierung")
60  Me.Requery

70  DoEvents
80  DoCmd.SearchForRecord , , , "[ID] = " & lng_ID_Gepl_Finanz
End Sub
