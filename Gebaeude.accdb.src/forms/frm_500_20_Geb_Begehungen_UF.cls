Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Function FctNr()
' Herzlichen Dank an Karl Donaubauer: http://www.donkarl.com/
' FAQ 4.39
'gibt eine laufende Nummer im Formular zurück
'Anzeige im Formular durch ein Feld mit Steuerelementinhalt: =FctNr()

  On Error GoTo FctNr_Error

  Me.RecordsetClone.Bookmark = Me.Bookmark
  FctNr = Me.RecordsetClone.AbsolutePosition + 1

FctNr_Exit:
  Exit Function

FctNr_Error:
  If Err.Number = 3021 Then FctNr = 0   'bei neuem DS
  Resume FctNr_Exit

End Function
