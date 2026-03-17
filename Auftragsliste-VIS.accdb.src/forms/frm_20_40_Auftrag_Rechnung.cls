Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public BearbeiterID As Long
Private Sub Form_Open(Cancel As Integer)

210 If DLookup("[nur_lesen]", "tbl_10_10_User", "[User_Loginname] = '" & getUser() & "'") = True Then
220    bRE_Hinzu.Visible = False
230    bRE_Loeschen.Visible = False
240    bDokHinzu.Visible = False
250    bDokLoeschen.Visible = False
260    Bezeichnungsfeld35.Visible = False
270    Me!frm_40_10_Rechnungen_Unterformular.Form.AllowEdits = False
280 End If

End Sub

Private Sub Form_Load()
    Dim strargs
    strargs = Nz(Forms!frm_20_40_Auftrag_Rechnung.OpenArgs)
    'test = DLookup("ID_Auftrag", "tbl_20_10_Aufträge", "[Auftragsnr]='" & strargs & "'")
    Set Me.Recordset = CurrentDb.OpenRecordset("SELECT TOP 1 * from [tbl_20_10_Aufträge] WHERE Auftragsnr = '" & strargs & "';")
    If Me.Recordset.RecordCount < 1 Then
        If MsgBox("Auftrag nicht gefunden, Formular schließen?", vbOKCancel + vbQuestion, "Hinweis") = vbOK Then
            DoCmd.Close acForm, Me.Name
        Else
            Set Me.Recordset = CurrentDb.OpenRecordset("SELECT TOP 1 * FROM [tbl_20_10_Aufträge] ORDER BY ID_Auftrag DESC ;")
        End If
    End If
    Me.Recordset.MoveFirst
    Dim rs As Recordset
    Set rs = Me.Recordset
    Me!AuftragID.Value = rs("ID_Auftrag")
    BearbeiterID = DLookup("[ID_User]", "tbl_10_10_User", "[User_Loginname] = '" & getUser & "'")
    If (IsNull(rs("ID_Fa"))) Then
        Me!tFirma.Value = ""
    Else
        Me!tFirma.Value = DLookup("Name", "tbl_10_40_Firmen", "ID_Fa = " & rs("ID_Fa"))
    End If
    If (IsNull(rs("ID_Obj"))) Then
        Me!tLeistungsort.Value = ""
    Else
        Me!tLeistungsort.Value = DLookup("Objekt", "tbl_10_30_Objekte", "ID_Obj = " & rs("ID_Obj"))
    End If
    Set Me!frm_40_10_Rechnungen_Unterformular.Form.Recordset = CurrentDb.OpenRecordset("SELECT * from [tbl_40_10_Rechnungen] WHERE ID_Auftrag = " & Me!AuftragID.Value & " ORDER BY LfdNr ASC")
End Sub

Private Sub RemoveDirIfEmpty()
    'DM2022-01-21
    Dim s As String
    If (Auftragsnr.Value <> "") Then
        s = str_AuftrREPFad & Mid(Me!Auftragsnr.Value, 4, 4) & "\" + Me!Auftragsnr.Value & "\"
        If (Dir(s) = "") Then
            RmDir (s)
        End If
    End If
End Sub

Private Sub bSchliessen_Click()
    Me.Recordset.Edit
    Me.Recordset("SR_Summe") = DSum("Netto", "tbl_40_10_Rechnungen", "ID_Auftrag = " & Me!AuftragID.Value)
    Me.Recordset("SR_brutto") = DSum("Brutto", "tbl_40_10_Rechnungen", "ID_Auftrag = " & Me!AuftragID.Value)
    Me.Recordset("SR_bearbeitet_am") = DLookup("Bearbeitet_am", "tbl_40_10_Rechnungen", "SR=true and ID_Auftrag = " & Me!AuftragID.Value)
    Me.Recordset.Update
    Forms!frm_10_10_Startformular!LF_Auftraege.Recordset.Requery
    Forms!frm_10_10_Startformular!UF_Auftrag.Form.Requery
    DoCmd.Close acForm, Me.Name
End Sub

Private Sub bRE_Hinzu_Click()
    Call NeueRechnung
End Sub

Private Sub bRE_Loeschen_Click()
    Dim rsre As Recordset
    Set rsre = Me!frm_40_10_Rechnungen_Unterformular.Form.Recordset
    If (rsre.RecordCount = 0) Then
        MsgBox ("Es sind noch keine Rechnungen zu diesem Auftrag vorhanden.")
    Else
        If (IsNull(rsre("ID"))) Then
            MsgBox ("Bitte erst eine Rechnung auswählen.")
            Exit Sub
        End If
        If (MsgBox("Wirklich die Rechnung mit der LfdNr. " + CStr(rsre("LfdNr")) + " löschen?", vbYesNo) = vbYes) Then
            If (Not (IsNull(rsre("Pfad")))) Then  'DM2022-01-22 Fix
                If (FileExists(rsre("Pfad"))) Then
                    On Error Resume Next
                    Kill rsre("Pfad")
                    Err.Clear
                End If
            End If
            rsre.Delete
            rsre.Close
            Set Me!frm_40_10_Rechnungen_Unterformular.Form.Recordset = CurrentDb.OpenRecordset("SELECT * from [tbl_40_10_Rechnungen] WHERE ID_Auftrag = " & Me!AuftragID.Value & " ORDER BY LfdNr ASC")
            Call RemoveDirIfEmpty 'DM2022-01-21
        End If
    End If
End Sub

Private Sub bDokOeffnen_Click()
    Dim rsre As Recordset
    Set rsre = Me!frm_40_10_Rechnungen_Unterformular.Form.Recordset
    If (rsre.RecordCount = 0) Then
        MsgBox ("Es gibt noch keine Rechnungen.")
    Else
        If (IsNull(rsre("Pfad"))) Then
            MsgBox ("Für diese Rechnung ist noch kein Dokument vorhanden.")
        Else
            If (FileExists(rsre("Pfad"))) Then
                DateiOeffnen (rsre("Pfad"))
            Else
                MsgBox ("Die Datei '" + rsre("Dateiname") + "' wurde nicht gefunden. Pfad: " + rsre("Pfad"))
            End If
        End If
    End If
End Sub

Private Sub bDokLoeschen_Click()
    Dim rsre As Recordset
    Set rsre = Me!frm_40_10_Rechnungen_Unterformular.Form.Recordset
    If (rsre.RecordCount = 0) Then
        MsgBox ("Es sind noch keine Rechnungen zu diesem Auftrag vorhanden.")
    Else
        If (IsNull(rsre("ID"))) Then
            MsgBox ("Bitte erst eine Rechnung auswählen.")
            Exit Sub
        End If
        If (IsNull(rsre("Pfad"))) Then
            MsgBox ("Diese Rechnung hat noch kein hinterlegtes Dokument.")
            Exit Sub
        End If
        If (FileExists(rsre("Pfad")) = False) Then
            MsgBox ("Die Datei '" + rsre("Dateiname") + "' wurde nicht gefunden. Pfad: " + rsre("Pfad"))
        Else
            If (MsgBox("Wirklich die Datei '" + rsre("Dateiname") + "' löschen?", vbYesNo) = vbYes) Then
                On Error Resume Next
                Kill rsre("Pfad")
                Err.Clear
                If (FileExists(rsre("Pfad"))) Then
                    MsgBox ("Die Datei konnte nicht gelöscht werden.")
                Else
                    rsre.Edit
                    rsre("Pfad") = ""
                    rsre("Dateiname") = ""
                    rsre("Dateigröße") = 0
                    rsre.Update
                    MsgBox ("Die Datei wurde gelöscht.")
                End If
            End If
        End If
        Call RemoveDirIfEmpty 'DM2022-01-21
    End If
End Sub


Private Sub bDokHinzu_Click()
    Call NeuesDokument
End Sub


Private Sub NeueRechnung()
    Dim rs As Recordset
    Dim auftrNr As String
    Dim lng_lfdnr As Long

    auftrNr = Me!Auftragsnr.Value
    Set rs = CurrentDb.OpenRecordset("SELECT * from [tbl_40_10_Rechnungen] WHERE ID_Auftrag = " & Me!AuftragID.Value & " ORDER BY LfdNr ASC")

    If rs.RecordCount > 0 Then
        rs.MoveLast
        lng_lfdnr = rs("LfdNr")
    Else
        lng_lfdnr = 0
    End If

    rs.AddNew
    rs("ID_Auftrag") = ID_Auftrag
    rs("LfdNr") = lng_lfdnr + 1
    rs("ID_Bearbeiter") = BearbeiterID
    rs.Update
    rs.Close

    Set Me!frm_40_10_Rechnungen_Unterformular.Form.Recordset = CurrentDb.OpenRecordset("SELECT * from [tbl_40_10_Rechnungen] WHERE ID_Auftrag = " & Me!AuftragID.Value & " ORDER BY LfdNr ASC")
    Me!frm_40_10_Rechnungen_Unterformular.Form.Recordset.MoveLast
    Me!frm_40_10_Rechnungen_Unterformular.SetFocus
    Me!frm_40_10_Rechnungen_Unterformular!RENr.SetFocus

End Sub

Private Sub NeuesDokument()
    Dim strPfad As String
    Dim auftrNr As String
    Dim rs As Recordset
    Set rs = Me!frm_40_10_Rechnungen_Unterformular.Form.Recordset

    If (rs.RecordCount = 0) Then
        MsgBox ("Bitte erst eine Rechnung anlegen.")
        Exit Sub
    End If

    If (IsNull(rs("ID"))) Then
        MsgBox ("Bitte erst eine Rechnung auswählen.")
        Exit Sub
    End If

    If (Not (IsNull(rs("Pfad")))) Then
        If (rs("Pfad") <> "") Then
            If (FileExists(rs("Pfad"))) Then
                If (MsgBox("Wirklich die bereits vorhandene Datei '" + rs("Dateiname") + "' ersetzen?", vbYesNo) = vbNo) Then 'DM2022-01-22 Dialogtext korrigiert
                    Exit Sub
                Else
                    On Error Resume Next
                    Kill rs("Pfad")
                    Err.Clear

                    If (FileExists(rs("Pfad"))) Then
                        MsgBox ("Die Datei konnte nicht gelöscht werden.")
                    End If
                End If
            End If
        End If
    End If

    auftrNr = Me!Auftragsnr.Value
    strPfad = str_AuftrREPFad 'DM2022-01-21
    If (Dir(strPfad, vbDirectory) = "") Then
        MkDir (strPfad)
    End If
    strPfad = strPfad & Mid(auftrNr, 4, 4) & "\"
    If (Dir(strPfad, vbDirectory) = "") Then
        MkDir (strPfad)
    End If

    Dim fd As FileDialog
    Set fd = Application.FileDialog(msoFileDialogFilePicker)
    fd.AllowMultiSelect = False
    fd.Title = "Bitte wählen Sie eine Rechnung aus, die hinzugefügt werden soll."
    fd.ButtonName = "Rechnung Hochladen"

    Dim vrtSelectedItem As Variant
    If fd.Show = -1 Then

        vrtSelectedItem = fd.SelectedItems(1)
        Dim fContent As String
        Dim fname As String
        Dim strPfadRE As String
        fContent = bin2var(vrtSelectedItem + "")
        strPfadRE = strPfad + "\" + auftrNr
        If (Dir(strPfadRE, vbDirectory) = "") Then
            MkDir (strPfadRE)
        End If

        fname = Right(vrtSelectedItem, Len(vrtSelectedItem) - InStrRev(vrtSelectedItem, "\"))
        strPfadRE = strPfadRE + "\" + fname

        If (FileExists(strPfadRE)) Then 'DM2022-01-22
            MsgBox ("Achtung, zu diesem Auftrag gibt es bereits eine Datei mit diesem Namen (" + fname + ") im Auftragsordner. Bitte ändern Sie den Dateinamen des Rechnungsbelegs und versuchen Sie es erneut.")
            Exit Sub
        End If

        Call var2bin(strPfadRE, fContent)

        rs.Edit
        rs("Dateigröße") = FileLen(strPfadRE)
        rs("Pfad") = strPfadRE
        rs("Dateiname") = ParentPath(strPfadRE)
        rs("ID_Bearbeiter") = BearbeiterID
        rs.Update

        'Set Me!frm_40_10_Rechnungen_Unterformular.Form.Recordset = CurrentDb.OpenRecordset("SELECT * from [tbl_20_10_Aufträge] WHERE ID_Auftrag = " & Me!AuftragID.value)
        Me.Recordset.Requery
    End If

End Sub

Function bin2var(filename As String) As String
    'https://stackoverflow.com/questions/8377574/vba-read-15-mb-binary-file-to-var#8377707
    Dim f As Integer
    f = FreeFile()
    Open filename For Binary Access Read Lock Write As #f
        bin2var = Space(FileLen(filename))
        Get #f, , bin2var
    Close #f
    End Function

Sub var2bin(filename As String, data As String)
    Dim f As Integer
    f = FreeFile()
    Open filename For Binary Access Write As #f
        Put #f, , data
    Close #f
End Sub
