Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub bAnlageLoeschen_Click()
    If (Nz(Me!ID, 0) = 0) Then
        MsgBox ("Keine Anlage ausgewählt.")
    Else
        str_SQL_Statement = "DELETE FROM Anlagen WHERE ID = " & Me!ID & ";"
        DoCmd.SetWarnings False
        DoCmd.RunSQL str_SQL_Statement
        DoCmd.SetWarnings True
        Me.Requery
        Me!AnlagenNr.SetFocus
    End If
End Sub

Private Sub bAnlageNeu_Click()
     'DM2025-09-24
    If (Nz(F_Variable("lng_ID_Massn"), 0) = 0) Then
        MsgBox ("Bitte erst eine Liegenschaft, ein Gebäude und eine Maßnahme auswählen.")
    Else
        str_SQL_Statement = "INSERT INTO Anlagen ( ID_Massnahme) VALUES (" & F_Variable("lng_ID_Massn") & ");"
        DoCmd.SetWarnings False
        DoCmd.RunSQL str_SQL_Statement
        DoCmd.SetWarnings True
        Me.Requery
        Me!AnlagenNr.SetFocus
    End If
End Sub
