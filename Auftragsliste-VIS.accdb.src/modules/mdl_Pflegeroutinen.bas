Attribute VB_Name = "mdl_Pflegeroutinen"
Option Compare Database
Option Explicit

Public Sub Pflege_RE_erzeugen()
    Dim rs As Recordset
    Set rs = CurrentDb.OpenRecordset("SELECT * from [tbl_20_10_Aufträge] WHERE (((tbl_20_10_Aufträge.SR_bearbeitet_am)<>0));")
    Dim rsre As Recordset
    Dim anz As Long
    anz = 0
    rs.MoveLast
    rs.MoveFirst
    For i = 1 To rs.RecordCount
        Set rsre = CurrentDb.OpenRecordset("SELECT * from [tbl_40_10_Rechnungen] where ID_Auftrag = " & rs("ID_Auftrag"))
        If (rsre.RecordCount = 0) Then
            Set rsre = CurrentDb.OpenRecordset("tbl_40_10_Rechnungen")
            rsre.AddNew
            rsre("LfdNr") = 1
            rsre("MwSt") = 19
            rsre("Bemerkung") = "Automatisch erzeugt"
            rsre("ID_Auftrag") = rs("ID_Auftrag")
            rsre("Brutto") = rs("SR_brutto")
            'rsre("Netto") = rs("SR_Summe") 'Netto ist ein berechnetes Feld
            rsre("SR") = True
            rsre("Datum") = rs("SR_bearbeitet_am")
            rsre.Update
            anz = anz + 1
        End If
        rsre.Close
        rs.MoveNext
    Next
    MsgBox "Fertig. Es wurden " + CStr(anz) + " Rechnungen erzeugt." & vbNewLine & "Zur Funktionsweise: Es werden nur Rechnungen für Aufträge mit gesetztem 'SR_bearbeitet_am'-Datum erzeugt und auch nur, wenn noch keine Rechnung zum Auftrag existiert."
End Sub
