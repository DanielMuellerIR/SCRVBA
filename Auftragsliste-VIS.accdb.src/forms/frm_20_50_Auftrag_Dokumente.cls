Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public BearbeiterID As Long

Private Sub Form_Open(Cancel As Integer)

    If DLookup("[nur_lesen]", "tbl_10_10_User", "[User_Loginname] = '" & getUser() & "'") = True Then
        bDok_Hinzu.Visible = False
        bDok_Loeschen.Visible = False
        Me!frm_50_10_AuftrDok_Unterformular.Form.AllowEdits = False
    End If

End Sub


Private Sub Form_Load()
    Dim strargs
    strargs = Nz(Forms!frm_20_50_Auftrag_Dokumente.OpenArgs)
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
    Set Me!frm_50_10_AuftrDok_Unterformular.Form.Recordset = CurrentDb.OpenRecordset("SELECT * from [tbl_50_10_Auftragsdokumente] WHERE ID_Auftrag = " & Me!AuftragID.Value & " ORDER BY ID ASC")
End Sub

Private Sub RemoveDirIfEmpty()
    'DM2022-01-21
    Dim s As String
    If (Auftragsnr.Value <> "") Then
        s = str_AuftrDokumentePfad & Mid(Me!Auftragsnr.Value, 4, 4) & "\" + Me!Auftragsnr.Value & "\"
        If (Dir(s) = "") Then
            RmDir (s)
        End If
    End If
End Sub

Private Sub bSchliessen_Click()
    DoCmd.Close acForm, Me.Name
End Sub

Private Sub bDok_Hinzu_Click()
    Call NeuesDokument
End Sub

Private Sub bDok_Loeschen_Click()
    Dim rsre As Recordset
    Set rsre = Me!frm_50_10_AuftrDok_Unterformular.Form.Recordset
    If (rsre.RecordCount = 0) Then
        MsgBox ("Es sind noch keine Dokumente zu diesem Auftrag vorhanden.")
    Else
        If (IsNull(rsre("ID"))) Then
            MsgBox ("Bitte erst ein Dokument auswählen.")
            Exit Sub
        End If
        If (MsgBox("Wirklich das Dokument " + Nz(rsre("Dateiname")) + " löschen?", vbYesNo) = vbYes) Then
            If (Not (IsNull(rsre("Pfad")))) Then
                If (FileExists(rsre("Pfad"))) Then
                    On Error Resume Next
                    Kill rsre("Pfad")
                    Err.Clear
                End If
            End If
            rsre.Delete
            rsre.Close
            Set Me!frm_50_10_AuftrDok_Unterformular.Form.Recordset = CurrentDb.OpenRecordset("SELECT * from [tbl_50_10_Auftragsdokumente] WHERE ID_Auftrag = " & Me!AuftragID.Value & " ORDER BY ID ASC")
            Call RemoveDirIfEmpty 'DM2022-01-21
        End If
    End If
End Sub

Private Sub bDokOeffnen_Click()
    Dim rsre As Recordset
    Set rsre = Me!frm_50_10_AuftrDok_Unterformular.Form.Recordset
    If (rsre.RecordCount = 0) Then
        MsgBox ("Es gibt noch keine Dokumente.")
    Else

        If (FileExists(rsre("Pfad"))) Then
            DateiOeffnen (rsre("Pfad"))
        Else
            MsgBox ("Die Datei '" + rsre("Dateiname") + "' wurde nicht gefunden. Pfad: " + rsre("Pfad"))
        End If

    End If
End Sub


Private Sub NeuesDokument()
    Dim rs As Recordset
    Dim auftrNr As String

    auftrNr = Me!Auftragsnr.Value

    Set rs = CurrentDb.OpenRecordset("SELECT * from [tbl_50_10_Auftragsdokumente] WHERE ID_Auftrag = " & Me!AuftragID.Value & " ORDER BY ID ASC")

    rs.AddNew
    rs("ID_Auftrag") = ID_Auftrag
    rs("ID_Bearbeiter") = BearbeiterID
    rs.Update
    rs.Close

    Set Me!frm_50_10_AuftrDok_Unterformular.Form.Recordset = CurrentDb.OpenRecordset("SELECT * from [tbl_50_10_Auftragsdokumente] WHERE ID_Auftrag = " & Me!AuftragID.Value & " ORDER BY ID ASC")
    Me!frm_50_10_AuftrDok_Unterformular.Form.Recordset.MoveLast
    Me!frm_50_10_AuftrDok_Unterformular.SetFocus
    Me!frm_50_10_AuftrDok_Unterformular!Bemerkung.SetFocus
    Call NeueDatei
End Sub

Private Sub NeueDatei()
    Dim strPfad As String
    Dim auftrNr As String
    Dim rs As Recordset
    Set rs = Me!frm_50_10_AuftrDok_Unterformular.Form.Recordset

    If (rs.RecordCount = 0) Then
        Exit Sub
    End If

    If (IsNull(rs("ID"))) Then
        Exit Sub
    End If

    auftrNr = Me!Auftragsnr.Value
    strPfad = str_AuftrDokumentePfad
    If (Dir(strPfad, vbDirectory) = "") Then
        MkDir (strPfad)
    End If
    strPfad = strPfad & Mid(auftrNr, 4, 4) & "\" 'DM2022-01-21
    If (Dir(strPfad, vbDirectory) = "") Then
        MkDir (strPfad)
    End If

    Dim fd As FileDialog
    Set fd = Application.FileDialog(msoFileDialogFilePicker)
    fd.AllowMultiSelect = False
    fd.Title = "Bitte wählen Sie ein Dokument aus, das hinzugefügt werden soll."
    fd.ButtonName = "Dokument Hochladen"

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

        If (FileExists(strPfadRE)) Then
            MsgBox ("Achtung, zu diesem Auftrag gibt es bereits ein Dokument mit diesem Namen (" + fname + ") im Dokumente-Ordner. Bitte ändern Sie den Dateinamen des Dokuments und versuchen Sie es erneut.")
            rs.Delete
            Me.Recordset.Requery
            Exit Sub
        End If

        Call var2bin(strPfadRE, fContent)

        rs.Edit
        rs("Dateigröße") = FileLen(strPfadRE)
        rs("Pfad") = strPfadRE
        rs("Dateiname") = ParentPath(strPfadRE)
        rs("ID_Bearbeiter") = BearbeiterID
        rs.Update

        Me.Recordset.Requery
    Else
        rs.Delete
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
