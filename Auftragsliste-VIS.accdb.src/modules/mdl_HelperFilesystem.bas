Attribute VB_Name = "mdl_HelperFilesystem"
'Daniel Müller 2014

Option Compare Database
Option Explicit

Function FileExists(ByVal strFile As String, Optional bFindFolders As Boolean) As Boolean
    'Purpose:   Return True if the file exists, even if it is hidden.
    'Arguments: strFile: File name to look for. Current directory searched if no path included.
    '           bFindFolders. If strFile is a folder, FileExists() returns False unless this argument is True.
    'Note:      Does not look inside subdirectories for the file.
    'Author:    Allen Browne. http://allenbrowne.com June, 2006.
    Dim lngAttributes As Long

    'Include read-only files, hidden files, system files.
    lngAttributes = (vbReadOnly Or vbHidden Or vbSystem)

    If bFindFolders Then
        lngAttributes = (lngAttributes Or vbDirectory) 'Include folders as well.
    Else
        ' Strip any trailing slash, so Dir does not look inside the folder.
        Do While Right$(strFile, 1) = "\"
            strFile = Left$(strFile, Len(strFile) - 1)
        Loop
    End If

    'If Dir() returns something, the file exists.
    On Error Resume Next
    FileExists = (Len(Dir(strFile, lngAttributes)) > 0)
End Function

Function FolderExists(strPath As String) As Boolean
    On Error Resume Next
    FolderExists = ((GetAttr(strPath) And vbDirectory) = vbDirectory)
End Function

Function TrailingSlash(varIn As Variant) As String
    If Len(varIn) > 0 Then
        If Right(varIn, 1) = "\" Then
            TrailingSlash = varIn
        Else
            TrailingSlash = varIn & "\"
        End If
    End If
End Function


Public Function DateiWaehlen(Optional ByRef filenamestr = "") As String

    'Verweis auf "Microsoft Office x.0 Object Library" nötig
    Dim fd As FileDialog
    Dim strDatei As String
    Dim varselect

    Set fd = Application.FileDialog(msoFileDialogOpen)
    With fd
        .Title = "Datei auswählen"
        .InitialFileName = CurrentProject.Path
        .InitialView = msoFileDialogViewDetails
        .AllowMultiSelect = False
        .Filters.Clear
        .Filters.Add "Alle Dateien", "*.*", 1
        If .Show = -1 Then
            For Each varselect In .SelectedItems
                strDatei = .SelectedItems(1)
            Next varselect
        End If
    End With
    Set fd = Nothing
    If strDatei <> "" Then
        DateiWaehlen = strDatei
        filenamestr = FilenameFromPath(filePath:=strDatei)
    End If

End Function


Public Sub DateiOeffnen(strPath As String)

     'Verweis auf Microsoft Shell Controls and Automation setzen

    Dim shl As Shell32.Shell
    Dim filenamestr
    Set shl = New Shell32.Shell
    shl.ShellExecute strPath, , strPath, "open", 1

End Sub

Public Function ParentPath(ByVal filePath As String) As String
    Dim v As Variant
    If Right(filePath, 1) = "\" Then filePath = Left(filePath, Len(filePath) - 1)

    v = InStrRev(filePath, "\")
    If Nz(v, 0) = 0 Then
        ParentPath = filePath
    Else

    ParentPath = Mid(filePath, InStrRev(filePath, "\") + 1)
    End If
End Function

Public Function FilenameFromPath(filePath As String) As String
    FilenameFromPath = Mid(filePath, InStrRev(filePath, "\") + 1)
End Function
