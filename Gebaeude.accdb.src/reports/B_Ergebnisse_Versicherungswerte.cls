Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Report_Close()
DoCmd.Close acQuery, "B_Abfrage_alle_Ergebnisse"
End Sub
