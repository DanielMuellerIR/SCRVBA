Attribute VB_Name = "mdl_Oeffnen_Speichern_Dialoge_Neu"
Option Compare Database
Option Explicit

Function DateiSpeichern(Verzeichnis As String, Fenstertitel As String, Dattyp As String, Dat_Endung As String) As String
'DM2023-06-06 Neu von hier: https://learn.microsoft.com/en-us/office/vba/api/office.filedialog.show
'Siehe auch: https://software-solutions-online.com/excel-vba-save-file-dialog-getsaveasfilename/#Jump2
'Leider kann kein Dateityp per Filter angegeben werden, das kann nur eine VBA-Funktion für Excel. Allerdings
'kann ein Dateiname mit Pfad und Endung als default-Wert angegeben werden.


    'Declare a variable as a FileDialog object
    Dim fd As FileDialog

    'Create a FileDialog object as a File Picker dialog box.
    Set fd = Application.FileDialog(msoFileDialogSaveAs) 'DM2023-06-05 siehe https://learn.microsoft.com/en-us/office/vba/api/office.msofiledialogtype

    'Declare a variable to contain the path
    'of each selected item. Even though the path is aString,
    'the variable must be a Variant because For Each...Next
    'routines only work with Variants and Objects.
    Dim vrtSelectedItem As Variant

    'Use a With...End With block to reference the FileDialog object.
    With fd

        If (Verzeichnis <> "") Then
            .InitialFileName = Verzeichnis
        Else
            .InitialFileName = "C:\"
        End If

        .AllowMultiSelect = False
        .Title = Fenstertitel
        '.Filters.Add "Excel Files (*.xlsx), *.xlsx") 'DM2023-06-06 funktioniert leider nicht, s.o., ist aber nicht so schlimm

        'Use the Show method to display the File Picker dialog box and return the user's action.
        'If the user presses the button...
        If .Show = -1 Then

            'Step through each string in the FileDialogSelectedItems collection.
            If .SelectedItems.Count > 0 Then
                DateiSpeichern = .SelectedItems.Item(1)
            End If

        End If
    End With
    Set fd = Nothing
End Function



'DM2023-06-06 auskommentiert
'' mit herzlichem Dank abgekupfert von http://www.access-paradies.de/tipps/datei_oeffnen__speichern_dialog.php
'Private Type BROWSEINFO
'    hOwner As Long
'    pidlRoot As Long
'    pszDisplayName As String
'    lpszTitle As String
'    ulFlags As Long
'    lpfn As LongPtr
'    lParam As Long
'    iImage As Long
'End Type
'
'Private Declare PtrSafe Function SHGetPathFromIDList Lib "shell32.dll" Alias "SHGetPathFromIDListA" (ByVal pidl As Long, ByVal pszPath As String) As Long
'
'Private Declare PtrSafe Function SHBrowseForFolder Lib "shell32.dll" Alias "SHBrowseForFolderA" (lpBrowseInfo As BROWSEINFO) As Long
'
'Private Declare PtrSafe Function SendMessage Lib "user32.dll" Alias "SendMessageA" (ByVal hwnd As LongPtr, ByVal Msg As Long, wParam As Any, lParam As Any) As Long
'
'Declare PtrSafe Function GetOpenFileName Lib "comdlg32.dll" Alias "GetOpenFileNameA" (DateiDialogStruktur As DateiDialogStruktur) As Long
'Declare PtrSafe Function GetSaveFileName Lib "comdlg32.dll" Alias "GetSaveFileNameA" (DateiDialogStruktur As DateiDialogStruktur) As Long
'
'Global StartDir As String
'
'
'Private Const BIF_RETURNONLYFSDIRS = &H1
'Private Const BFFM_SETSELECTION = &H466
'Private Const BFFM_INITIALIZED = 1
'
'Type DateiDialogStruktur
'    lStructSize As Long
'    hwndOwner As Long
'    hInstance As Long
'    lpstrFilter As String
'    lpstrCustomFilter As String
'    nMaxCustFilter As Long
'    nFilterIndex As Long
'    lpstrFile As String
'    nMaxFile As Long
'    lpstrFileTitle As String
'    nMaxFileTitle As Long
'    lpstrInitialDir As String
'    lpstrTitle As String
'    flags As Long
'    nFileOffset As Integer
'    nFileExtension As Integer
'    lpstrDefExt As String
'    lCustData As Long
'    lpfnHook As Long
'    lpTemplateName As String
'End Type
'
'
'
'Public Const OFN_ALLOWMULTISELECT = &H200
'Public Const OFN_CREATEPROMPT = &H2000
'Public Const OFN_ENABLEHOOK = &H20
'Public Const OFN_ENABLETEMPLATE = &H40
'Public Const OFN_ENABLETEMPLATEHANDLE = &H80
'Public Const OFN_EXPLORER = &H80000
'Public Const OFN_EXTENSIONDIFFERENT = &H400
'Public Const OFN_FILEMUSTEXIST = &H1000
'Public Const OFN_HIDEREADONLY = &H4
'Public Const OFN_LONGNAMES = &H200000
'Public Const OFN_NOCHANGEDIR = &H8
'Public Const OFN_NODEREFERENCELINKS = &H100000
'Public Const OFN_NOLONGNAMES = &H40000
'Public Const OFN_NONETWORKBUTTON = &H20000
'Public Const OFN_NOREADONLYRETURN = &H8000
'Public Const OFN_NOTESTFILECREATE = &H10000
'Public Const OFN_NOVALIDATE = &H100
'Public Const OFN_OVERWRITEPROMPT = &H2
'Public Const OFN_PATHMUSTEXIST = &H800
'Public Const OFN_READONLY = &H1
'Public Const OFN_SHAREAWARE = &H4000
'Public Const OFN_SHAREFALLTHROUGH = 2
'Public Const OFN_SHARENOWARN = 1
'Public Const OFN_SHAREWARN = 0
'Public Const OFN_SHOWHELP = &H10
'
'Dim DateiDialogStruktur As DateiDialogStruktur
'
'Function DateiOeffnen(Verzeichnis As String, Fenstertitel As String) As String
'
'    Dim Dateityp As String
'    Dim Dateiname_mit_Pfad As String
'    Dim Dateiname As String
'    Dim Rueckwerte As Long
'
'10  Dateityp = ""
'
'    ' Dateitypen in der Auswahlliste des Dateityp's
'    '   Alle Dateien
'20  Dateityp = Dateityp & "Alle Dateien (*.*)" & Chr$(0) & "*.*" & Chr$(0)
'
'    ' Access-Dateitypen
'30  Dateityp = Dateityp & _
'               "Microsoft Access-Datenbanken (*.mdb)" & Chr$(0) & "*.mdb" & Chr$(0)
'
'40  Dateityp = Dateityp & _
'               "Add-Ins (*.mda)" & Chr$(0) & "*.mda" & Chr$(0)
'
'50  Dateityp = Dateityp & _
'               "Arbeitsgruppen-Dateien (*.mdw)" & Chr$(0) & "*.mdw" & Chr$(0)
'
'60  Dateityp = Dateityp & _
'               "MDE-Dateien (*.mde)" & Chr$(0) & "*.mde" & Chr$(0)
'
'    ' Word-Dateitypen
'    '   Word-Dokumente (*.doc)
'    '   Dokumentenvorlagen (*.dot)
'    '   Rich Text Format (*.rtf)
'    '   Textdateien (*.txt)
'    '   Schedule+-Kontakte (*.scd)
'    '   Persönliches Adreßbuch (*.pab)
'    '   Outlook-Adreßbuch (*.olk)
'    '   MS-DOS Text mit Layout (*.asc)
'    '   Text mit Layout (*.ans)
'    '   HTML Document (*.htm;*.html;*.htx)
'    '   Windows Write (*.wri)
'    '   Lotus 1-2-3 (*.wk1;*.wk3;*.wk4)
'    '   WordPerfect 6.x (*.wpd;*.doc)
'    '   Microsoft Excel-Arbeitsmappen (*.xls)
'    '   Works 3.0 für Windows (*.wps)
'    '   Works 4.0 für Windows (*.wps)
'
'    ' Excel-Dateitypen
'    '   Textdateien (*.prn;*.txt;*.csv)
'    '   QuattroPro/DOS-Dateien (*.wq1)
'    '   Microsoft Works 2.0-Dateien (*.wks)
'    '   dBASE-Dateien (*.dbf)
'    '   Add-Ins (*.xla;*.xll)
'    '   Mustervorlagen (*.xlt)
'    '   Arbeitsbereiche (*.xlw)
'    '   Tabellen (*.xls)
'
'    '   Sicherungsdateien (*.xlk;*.bak)
'    '   HTML-Dateien (*.html;*.htm)
'
'
'    ' Vorgegebenes Verzeichnis
'70  If Verzeichnis = "" Then
'        ' Wenn leer, dann soll das aktuelle Verzeichnis verwendet werden
'80      Verzeichnis = CurDir$ & Chr$(0)
'90  Else
'        ' ANSI "0" an das übergebene Verzeichnis anhängen
'100     Verzeichnis = Verzeichnis & Chr$(0)
'110 End If
'
'120 If Fenstertitel = "" Then
'        ' Wenn kein Titel übergeben worden ist
'130     Fenstertitel = "Datei öffnen"
'140 Else
'        ' ANSI "0" an übergebenen Fenstertitel anhängen
'150     Fenstertitel = Fenstertitel & Chr$(0)
'160 End If
'
'    ' Speicherplatz für Dateieintrag (mit Pfadangabe) reservieren
'170 Dateiname_mit_Pfad = Space$(255) & Chr$(0)
'
'    ' Speicherplatz für Dateieintrag (ohne Pfadangabe) reservieren
'180 Dateiname = Space$(255) & Chr$(0)
'
'    'Datenstruktur von DateiDialogStruktur festlegen
'190 DateiDialogStruktur.lStructSize = Len(DateiDialogStruktur)
'200 DateiDialogStruktur.hwndOwner = 0&
'    'DateiDialogStruktur.hwndOwner = Application.hWndAccessApp
'210 DateiDialogStruktur.lpstrFilter = Dateityp
'220 DateiDialogStruktur.nFilterIndex = 1
'230 DateiDialogStruktur.lpstrFile = Dateiname_mit_Pfad
'240 DateiDialogStruktur.nMaxFile = Len(Dateiname_mit_Pfad)
'250 DateiDialogStruktur.lpstrFileTitle = Dateiname
'260 DateiDialogStruktur.nMaxFileTitle = Len(Dateiname)
'270 DateiDialogStruktur.lpstrInitialDir = Verzeichnis
'280 DateiDialogStruktur.lpstrTitle = Fenstertitel
'290 DateiDialogStruktur.flags = OFN_FILEMUSTEXIST Or OFN_PATHMUSTEXIST _
'                                Or OFN_HIDEREADONLY Or OFN_LONGNAMES
'300 DateiDialogStruktur.nFileOffset = 0
'310 DateiDialogStruktur.nFileExtension = 0
'320 DateiDialogStruktur.lCustData = 0
'330 DateiDialogStruktur.lpfnHook = 0
'340 DateiDialogStruktur.lpTemplateName = ""
'
'350 Rueckwerte = GetOpenFileName(DateiDialogStruktur)
'
'360 If Rueckwerte <> 0 Then
'370     DateiOeffnen = Left(DateiDialogStruktur.lpstrFile, _
'                            InStr(DateiDialogStruktur.lpstrFile, Chr$(0)) - 1)
'380 End If
'
'End Function
'
'Function DateiSpeichern(Verzeichnis As String, Fenstertitel As String, Dattyp As String, Dat_Endung As String) As String
'
'    Dim Dateityp As String
'    Dim Dateiname_mit_Pfad As String
'    Dim Dateiname As String
'    Dim Rueckwerte As Long
'
'    ' Dateitypen in der Auswahlliste des Dateityp's
'    '   Alle Dateien
'    '   Dateityp = Dateityp & "Alle Dateien (*.*)" & Chr$(0) & "*.*" & Chr$(0)
'10  Dateityp = Dattyp & Chr$(0) & Dat_Endung & Chr$(0)
'
'    ' Vorgegebenes Verzeichnis
'20  If Verzeichnis = "" Then
'        ' Wenn leer, dann soll das aktuelle Verzeichnis verwendet werden
'30      Verzeichnis = CurDir$ & Chr$(0)
'40  Else
'        ' ANSI "0" an das übergebene Verzeichnis anhängen
'50      Verzeichnis = Verzeichnis & Chr$(0)
'60  End If
'
'70  If Fenstertitel = "" Then
'        ' Wenn kein Titel übergeben worden ist
'80      Fenstertitel = "Datei speichern"
'90  Else
'        ' ANSI "0" an übergebenen Fenstertitel anhängen
'100     Fenstertitel = Fenstertitel & Chr$(0)
'110 End If
'
'    ' Speicherplatz für Dateieintrag (mit Pfadangabe) reservieren
'120 Dateiname_mit_Pfad = Space$(255) & Chr$(0)
'130 Dateiname_mit_Pfad = Verzeichnis
'
'    ' Speicherplatz für Dateieintrag (ohne Pfadangabe) reservieren
'140 Dateiname = Space$(255) & Chr$(0)
'150 Dateiname = Verzeichnis
'
'    'Datenstruktur von DateiDialogStruktur festlegen
'160 DateiDialogStruktur.lStructSize = Len(DateiDialogStruktur)
'170 DateiDialogStruktur.hwndOwner = 0&
'    'DateiDialogStruktur.hwndOwner = Application.hWndAccessApp
'180 DateiDialogStruktur.lpstrFilter = Dateityp
'190 DateiDialogStruktur.nFilterIndex = 1
'200 DateiDialogStruktur.lpstrFile = Dateiname_mit_Pfad
'210 DateiDialogStruktur.nMaxFile = Len(Dateiname_mit_Pfad)
'220 DateiDialogStruktur.lpstrFileTitle = Dateiname
'230 DateiDialogStruktur.nMaxFileTitle = Len(Dateiname)
'240 DateiDialogStruktur.lpstrInitialDir = Verzeichnis
'250 DateiDialogStruktur.lpstrTitle = Fenstertitel
'260 DateiDialogStruktur.flags = OFN_HIDEREADONLY Or OFN_OVERWRITEPROMPT
'270 DateiDialogStruktur.nFileOffset = 0
'280 DateiDialogStruktur.nFileExtension = 0
'290 DateiDialogStruktur.lCustData = 0
'300 DateiDialogStruktur.lpfnHook = 0
'310 DateiDialogStruktur.lpTemplateName = ""
'
'320 Rueckwerte = GetSaveFileName(DateiDialogStruktur)
'
'330 If Rueckwerte <> 0 Then
'340     DateiSpeichern = Left(DateiDialogStruktur.lpstrFile, _
'                              InStr(DateiDialogStruktur.lpstrFile, Chr$(0)) - 1)
'350 End If
'
'End Function
'
'
'Public Function VerzeichnisSuchen(szDialogTitle As String, _
'                                  StartVerzeichnis As String) As String
'
'    Dim X As Long
'    Dim bi As BROWSEINFO
'    Dim dwIList As Long
'    Dim szPath As String
'    Dim wPos As Integer
'
'10  StartDir = StartVerzeichnis
'
'20  With bi
'30      .hOwner = hWndAccessApp
'40      .lpszTitle = szDialogTitle
'50      .ulFlags = BIF_RETURNONLYFSDIRS
'60      .lpfn = DummyFunc(AddressOf BrowseCallbackProc)
'70  End With
'
'80  dwIList = SHBrowseForFolder(bi)
'90  szPath = Space$(512)
'100 X = SHGetPathFromIDList(ByVal dwIList, ByVal szPath)
'
'110 If X Then
'120     wPos = InStr(szPath, Chr(0))
'130     VerzeichnisSuchen = Left$(szPath, wPos - 1)
'140 Else
'150     VerzeichnisSuchen = ""
'160 End If
'End Function
'
'Public Function BrowseCallbackProc(ByVal hwnd As LongPtr, ByVal uMsg As Long, _
'                                   ByVal lParam As Long, ByVal lpData As Long) As Long
'
'    Dim pathstring As String
'    Dim retval As Long
'
'10  Select Case uMsg
'    Case BFFM_INITIALIZED
'20      pathstring = StartDir
'30      retval = SendMessage(hwnd, BFFM_SETSELECTION, _
'                             ByVal CLng(1), ByVal pathstring)
'40  End Select
'
'50  BrowseCallbackProc = 0
'
'End Function
'Public Function DummyFunc(ByVal param As LongPtr) As LongPtr
'
'10        DummyFunc = param
'
'End Function
'
'
'
'
