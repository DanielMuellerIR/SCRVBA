Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_Schließen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub

Private Sub BS_Anzeigen_Click()


'10  MsgBox "Diese Auswertung muss noch bei einem späteren update umgebaut werden."
'20  Exit Sub

10  If IsNull(Me!KF_Liegenschaften) Then
20      lng_ID_Geb_Min = 0
30      lng_ID_Geb_Max = 2 ^ 31 - 1
40  Else
50      lng_ID_Geb_Min = CLng(Me.KF_Liegenschaften)
60      lng_ID_Geb_Max = CLng(Me.KF_Liegenschaften)
70  End If

80  Select Case CLng(Nz(Me!KF_Verantwort))

    Case 0
        ' 0 : Alle Verantwortlichen
90      str_Open_Args = 0
100 Case 1
        ' 1 : Objekt-Verantworliche
110     str_Open_Args = 1
120 Case 2
        ' 2 : Grundstücks-Verantwortliche
130     str_Open_Args = 2
140 Case 3
        ' 3 : Fachplaner Elektro
150     str_Open_Args = 3
160 Case 4
        ' 4 :Fachplaner H/L/S
170     str_Open_Args = 4
180 Case 5
        ' 5 :  Vermietungs-Verantwortliche
190     str_Open_Args = 5
200 Case Else
        ' nicht deginiert:
210     str_Open_Args = 1

220 End Select

230 If str_Open_Args > 0 Then

240     DoCmd.OpenReport "Objektverantwortung", acViewPreview, , , acDialog
250 Else
260     DoCmd.OpenReport "Objektverantwortung_Alle", acViewPreview, , , acDialog
270 End If

End Sub
