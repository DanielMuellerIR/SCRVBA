Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit


Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub


Private Sub Form_Current()
10  Me![LF_Datei].SetFocus
20  Me![LF_Datei].Dropdown
End Sub

Private Sub LF_Datei_AfterUpdate()
10    Setze_Buttons
End Sub

Private Sub LF_Liegensch_AfterUpdate()
10  Me.LF_Gebäudeteile.Requery
20  Setze_Buttons
End Sub

Private Sub BS_Drucken_Click()

10  dt_Fix_Datum = CDate(Me.LF_Datei)

20  If IsNull(Me!LF_Liegensch) Then
30      lng_ID_Geb_Min = 0
40      lng_ID_Geb_Max = 2 ^ 31 - 1
50  Else
60      lng_ID_Geb_Min = CLng(Me!LF_Liegensch)
70      lng_ID_Geb_Max = CLng(Me!LF_Liegensch)
80  End If

90  If IsNull(Me.LF_Gebäudeteile) Then
100     lng_ID_Geb_Teil_Min = 0
110     lng_ID_Geb_Teil_Max = 2 ^ 31 - 1
120 Else
130     lng_ID_Geb_Teil_Min = CLng(Me!LF_Gebäudeteile)
140     lng_ID_Geb_Teil_Max = CLng(Me!LF_Gebäudeteile)
150 End If

160 DoCmd.OpenReport "Gebäudebewertung_Archiv", acViewPreview, , , acDialog

End Sub

Sub Setze_Buttons()

10  If Me!LF_Liegensch.ListIndex >= 0 Then
20      Me!LF_Gebäudeteile.Enabled = True
30  Else
40      Me!LF_Gebäudeteile.Enabled = False
50  End If

60  If Me.LF_Datei.ListIndex >= 0 And Me.LF_Liegensch.ListIndex >= 0 Then
70      Me!BS_Drucken.Enabled = True
80  Else
90      Me!BS_Drucken.Enabled = False
100 End If


End Sub
