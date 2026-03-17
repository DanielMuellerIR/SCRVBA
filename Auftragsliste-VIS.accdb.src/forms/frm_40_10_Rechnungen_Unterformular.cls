Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

'Private Sub Form_AfterUpdate()  'DM2022-01-14 soll nicht mehr automatisch geupdatet werden
'    If (IsNull(Me.Recordset("ID")) = False) Then
'        Me.Recordset.Edit
'        Me.Recordset("Bearbeitet_Am") = Now
'        Me.Recordset.Update
'    End If
'    Me.Recordset.Requery
'End Sub

Private Sub Bemerkung_DblClick(Cancel As Integer)
    Call RE_OeffnenDClick
End Sub

Private Sub Brutto_DblClick(Cancel As Integer)
    Call RE_OeffnenDClick
End Sub

Private Sub Datum_DblClick(Cancel As Integer)
    Call RE_OeffnenDClick
End Sub

Private Sub Detailbereich_DblClick(Cancel As Integer)
    Call RE_OeffnenDClick
End Sub

Private Sub LfdNr_DblClick(Cancel As Integer)
    Call RE_OeffnenDClick
End Sub

Private Sub MwSt_DblClick(Cancel As Integer)
    Call RE_OeffnenDClick
End Sub

Private Sub Netto_DblClick(Cancel As Integer)
    Call RE_OeffnenDClick
End Sub

Private Sub RENr_DblClick(Cancel As Integer)
    Call RE_OeffnenDClick
End Sub

Public Sub RE_OeffnenDClick()
    Dim rsre As Recordset
    Set rsre = Me.Recordset
    If IsNull(rsre("ID")) Then
        MsgBox ("Keine Rechnung ausgewählt.")
        Exit Sub
    End If
    If IsNull(rsre("Pfad")) Then
        MsgBox ("Für diese Rechnung ist noch kein Dokument vorhanden.")
    Else
        DateiOeffnen (rsre("Pfad"))
    End If
End Sub
