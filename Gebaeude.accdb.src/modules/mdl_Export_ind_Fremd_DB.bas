Attribute VB_Name = "mdl_Export_ind_Fremd_DB"
Option Compare Database
Option Explicit

Sub Exportiere_Objekte()

    Dim cnt As Container
    Dim Doc As Document

10  For Each cnt In CurrentDb.Containers

20      Select Case cnt.Name

        Case "tables"
30          For Each Doc In cnt.Documents

40              If Left(Doc.Name, 4) <> "MSys" And IsTableQuery("", Doc.Name) = "Tabelle" Then
50                  'On Error Resume Next
60                  DoCmd.TransferDatabase acExport, "Microsoft Access", "S:\a60\Datenbank\Gebäude_Neu.mdb", acTable, Doc.Name, Doc.Name
70                  On Error GoTo 0
80              End If

90              If Left(Doc.Name, 4) <> "MSys" And IsTableQuery("", Doc.Name) = "Abfrage" Then
100                 On Error Resume Next
110                 'DoCmd.TransferDatabase acExport, "Microsoft Access", "S:\a60\Datenbank\Gebäude_Neu.mdb", acQuery, doc.Name, doc.Name
120                 On Error GoTo 0
130             End If

Exit Sub

140         Next Doc

150     Case "forms"
160         For Each Doc In cnt.Documents
170             On Error Resume Next
180             DoCmd.TransferDatabase acExport, "Microsoft Access", "S:\a60\Datenbank\Gebäude_Neu.mdb", acForm, Doc.Name, Doc.Name
190             On Error GoTo 0
200         Next Doc

210     Case "reports"
220         For Each Doc In cnt.Documents
230             On Error Resume Next
240             DoCmd.TransferDatabase acExport, "Microsoft Access", "S:\a60\Datenbank\Gebäude_Neu.mdb", acReport, Doc.Name, Doc.Name
250             On Error GoTo 0
260         Next Doc

270     Case "Scripts"
280         For Each Doc In cnt.Documents
290             On Error Resume Next
300             DoCmd.TransferDatabase acExport, "Microsoft Access", "S:\a60\Datenbank\Gebäude_Neu.mdb", acMacro, Doc.Name, Doc.Name
310             On Error GoTo 0
320         Next Doc


330     Case "modules"
340         For Each Doc In cnt.Documents
350             On Error Resume Next
360             DoCmd.TransferDatabase acExport, "Microsoft Access", "S:\a60\Datenbank\Gebäude_Neu.mdb", acModule, Doc.Name, Doc.Name
370             On Error GoTo 0
380         Next Doc

390     End Select

400 Next cnt

End Sub



'********************************************************
' FUNCTION: IsTableQuery()
'
' PURPOSE: Determine if a table or query exists.
'
' ARGUMENTS:
'   DbName: The name of the database. If the database name
'           is "" the current database is used.
'    TName: The name of a table or query.
'
' RETURNS: True (it exists) or False (it does not exist).
' Modifiziert von W. Budde: Rückgabe: "Tabelle" ODER "Abfrage"
'********************************************************
Function IsTableQuery(DbName As String, TName As String) As String


    Dim db As DAO.Database, Found As Integer, Test As String
    Const NAME_NOT_IN_COLLECTION = 3265

    ' Assume the table or query does not exist.
   ' Fehlerabfangroutine -----

10  Found = False

    ' Trap for any errors.
20  On Error Resume Next

    ' If the database name is empty...
30  If Trim$(DbName) = "" Then
        ' ...then set Db to the current Db.
40      Set db = CurrentDb()
50  Else
        ' Otherwise, set Db to the specified open database.
60      Set db = DBEngine.Workspaces(0).OpenDatabase(DbName)

        ' See if an error occurred.
70      If Err Then
80          MsgBox "Could not find database to open: " & DbName
90          IsTableQuery = False
100         Exit Function
110     End If
120 End If

    ' See if the name is in the Tables collection.
130 If DLookup("[Name]", "MSysObjects", "[NAme] = '" & TName & "' and [Type] = 6") = TName Then
140     IsTableQuery = "Tabelle"
150     Exit Function
160 End If

    ' See if the name is in the Queries collection.
170 If DLookup("[Name]", "MSysObjects", "[NAme] = '" & TName & "' and [Type] = 5") = TName Then
180     IsTableQuery = "Abfrage"
190     Exit Function
200 End If

210 db.Close


End Function
