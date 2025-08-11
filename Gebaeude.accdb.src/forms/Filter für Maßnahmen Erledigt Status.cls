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

150 Select Case Me.KF_Sortierart

    Case "nach Erledigt-Status -> Objekten"
160     str_Openargs = "Erl-Obj"
170 Case "nach Objekten -> Erledigt-Status"
180     str_Openargs = "Obj-Erl"
190 End Select

200 If IsNull(Me!KF_Ab_Jahr) Then
210     lng_Kalk_Jahr_Min = 2000
220 Else
230     lng_Kalk_Jahr_Min = CLng(Me!KF_Ab_Jahr)
240 End If

250 DoCmd.OpenReport "Sanierungsstau Finanzplanung Erledigt_Status", acViewPreview, , , acDialog

End Sub

Private Sub BS_Jahr_Loeschen_Click()
10  Me.KF_Ab_Jahr = Null
End Sub

Private Sub BS_Schließen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub

Private Sub KF_Liegenschaften_AfterUpdate()
10  Me!KF_Gebteile.Requery
End Sub
