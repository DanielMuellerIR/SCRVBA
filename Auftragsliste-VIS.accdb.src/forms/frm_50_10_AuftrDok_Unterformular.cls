Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Bearbeitet_am_DblClick(Cancel As Integer)
    Call Dok_OeffnenDClick
End Sub

Private Sub Bemerkung_DblClick(Cancel As Integer)
    Call Dok_OeffnenDClick
End Sub

Private Sub Dateiname_DblClick(Cancel As Integer)
    Call Dok_OeffnenDClick
End Sub

Private Sub Detailbereich_DblClick(Cancel As Integer)
    Call Dok_OeffnenDClick
End Sub

Private Sub ID_Bearbeiter_DblClick(Cancel As Integer)
    Call Dok_OeffnenDClick
End Sub


Public Sub Dok_OeffnenDClick()
    Dim rsre As Recordset
    Set rsre = Me.Recordset
    If IsNull(rsre("ID")) Then
        MsgBox ("Kein Dokument ausgewählt.")
        Exit Sub
    End If
    If IsNull(rsre("Pfad")) Then
        MsgBox ("Für dieses Dokument ist keine Datei vorhanden.")
    Else
        DateiOeffnen (rsre("Pfad"))
    End If
End Sub
