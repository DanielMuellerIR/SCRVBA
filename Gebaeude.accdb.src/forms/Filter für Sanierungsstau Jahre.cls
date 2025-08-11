Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_Alle_DAten_Click()


10  If IsNull(Me!KF_Liegenschaften) Then
20      lng_ID_Geb_Min = 0
30      lng_ID_Geb_Max = 2 ^ 31 - 1
40  Else
50      lng_ID_Geb_Min = val(Me!KF_Liegenschaften)
60      lng_ID_Geb_Max = val(Me!KF_Liegenschaften)
70  End If

80  If IsNull(Me!KF_Gebteile) Then
90      lng_ID_Geb_Teil_Min = 0
100     lng_ID_Geb_Teil_Max = 2 ^ 31 - 1
110 Else
120     lng_ID_Geb_Teil_Min = CLng(Me!KF_Gebteile)
130     lng_ID_Geb_Teil_Max = CLng(Me!KF_Gebteile)
140 End If

150 Select Case Me!OR_Massn_einz_kum
    Case 1
160     bln_MN_Einz_Mitt_Art = True
170 Case 2
180     bln_MN_Einz_Mitt_Art = False
190 End Select

200 Select Case Me.KF_Sortierart
    Case "nach Jahren -> Objekten -> Maßnahmen"
210     DoCmd.OpenReport "Sanierungsstau Finanzplanung Jahre", acViewPreview, , , , "*JaObMa*"
220 Case "nach Objekten -> Jahren -> Maßnahmen"
230     DoCmd.OpenReport "Sanierungsstau Finanzplanung Jahre", acViewPreview, , , , "*ObJaMa*"
240 End Select


End Sub

Private Sub BS_Schließen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub

Private Sub KF_Liegenschaften_AfterUpdate()
10  Me!KF_Gebteile.Requery
End Sub
