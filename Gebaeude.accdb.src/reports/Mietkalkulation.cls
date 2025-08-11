Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Report_Load()

10  If InStr(1, str_Open_Args, "*Details*") > 0 Then
20      Me.Section("Gruppenkopf5").Visible = True
30  Else
40      Me.Section("Gruppenkopf5").Visible = False
50  End If

End Sub

Private Sub Report_Open(Cancel As Integer)

10    DoCmd.Maximize

20    If InStr(1, str_Open_Args, "*Aktuell*") > 0 Then
30      Me.RecordSource = "Union_Abfrage_Mietberechnung_mit_Filter_Betr_Summen"
40      Me!BF_Berichtsart.Caption = "Aktueller Datenstand aus Gebäude-DB"
50      Me!TF_Hinweis.Visible = False
60    End If

70    If InStr(1, str_Open_Args, "*Archiv*") > 0 Then
80      Me.RecordSource = "M_Mietberechnung_aus_Archiv_Betr_Summen"
90      Me!BF_Berichtsart.Caption = "Datenstand aus Archiv"
100     Me!TF_Hinweis.Visible = True
110   End If

End Sub
