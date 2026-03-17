Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Form_Current()

10  On Error Resume Next ' ohne diese Anweisung LZ-Fehler beim Beenden / Schließen ?!?
20  lng_Q_Pr = Me.ID_Q_Pr
30  On Error GoTo 0

End Sub
