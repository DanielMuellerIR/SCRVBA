Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_DS_loeschen_Click()

10  If MsgBox("Werterehöhungs-Eintrag zu <" & Me.TF_Bauteil & "> wirklich löschen?", vbYesNo, "Werterhöhung löschen?") = vbNo Then
20      Exit Sub
30  End If

40  str_SQL_Statement = "DELETE B_Sanierungsstau_Werterhöhung.ID_Werterh" _
                      & " FROM B_Sanierungsstau_Werterhöhung" _
                      & " WHERE (((B_Sanierungsstau_Werterhöhung.ID_Werterh)=F_Variable('lng_ID_Werterh')));"
50  DoCmd.SetWarnings False
60  DoCmd.RunSQL str_SQL_Statement
70  DoCmd.SetWarnings True

80  Me.Requery
90  DoEvents
100 Call Berechne_Matrix_Neu


End Sub

Private Sub BS_DS_Neu_Click()

10  str_SQL_Statement = "INSERT INTO B_Sanierungsstau_Werterhöhung ( ID_Gebäudeteil, DS_Typ, Bauteil, Mehrwert, Aktivierungs_Datum )" _
                      & " SELECT F_Variable('lng_Id_Geb_Teil') AS idgt, 2 AS dst, 'Welches Bauteil?' AS bt, 1 AS werterh, CDate('01.' & Month(Date()) & '.' & Year(Date())) AS akt_dt;"

20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True

50  Me.Requery
60  DoEvents
70  DBEngine.Idle
80  lng_ID_Werterh = DMax("[ID_Werterh]", "B_Sanierungsstau_Werterhöhung")
90  Me!TF_ID_Werterh.Visible = True
100 Me.Repaint
110 DoEvents
120 Me.TF_ID_Werterh.SetFocus
130 DoCmd.FindRecord lng_ID_Werterh
140 Me!TF_Bauteil.SetFocus
150 Me!TF_ID_Werterh.Visible = False

160 Call Berechne_Matrix_Neu

End Sub

Function Berechne_Matrix_Neu()

10  On Error Resume Next
20  DoCmd.RunCommand acCmdSaveRecord
30  On Error GoTo 0
40  DoEvents

50  If Me.RecordsetClone.RecordCount = 0 Then
60      Exit Function
70  End If

80  X = Me!TF_ID_Werterh
90  Set Ctrl = Me.ActiveControl
100 Call HK_Abschr_2_Werterhoehung  ' die gesamte MAtrix zu echten Werterhöhungen wird dort neu berechnet
110 DoEvents
    '50  Me.Requery
120 Me!TF_ID_Werterh.Visible = True
130 Me!TF_ID_Werterh.SetFocus
140 DoCmd.SearchForRecord acActiveDataObject, , acFirst, "ID_Werterh = x"
150 DoEvents
160 Me(Ctrl.Name).SetFocus
170 DoEvents
180 Me!TF_ID_Werterh.Visible = False
190 SendKeys "{TAB}"

End Function

Private Sub Form_Current()

10  lng_ID_Werterh = Me.TF_ID_Werterh

End Sub
