Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_Exp_Excel_Click()

10  str_Dateiname = DateiSpeichern("S:\a60\Datenbank\Excel-Exporte\Bewertungen_nach Werterhöhungen.xlsx", "Excel-Export nach ..", "Excel-Dateien (*.xlsx)", "*.xlsx")

20  If str_Dateiname = "" Then
30      MsgBox "ABbruch"
40      Exit Sub
50  End If

60  Call Export_Excel("qry_200_10_05_Werterhöhungen_nach_Bewertungsjahr", str_Dateiname, "Bewert_nach_Werterhöhung", "Folgende Gebäude haben nach dem Bewertungsjahr Werterhöhungen:")

End Sub

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub
