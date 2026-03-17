Attribute VB_Name = "mdl_90_10_Datei_Speichern"
Option Compare Database
Option Explicit

Function DateiSpeichern(Verzeichnis As String, Fenstertitel As String, Dattyp As String, Dat_Endung As String) As String
'DM2023-06-05 Neu von hier: https://learn.microsoft.com/en-us/office/vba/api/office.filedialog.show
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
        '.Filters.Add "Excel Files (*.xlsx), *.xlsx") 'DM2023-06-05 funktioniert leider nicht, s.o., ist aber nicht so schlimm

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



'DM2023-06-05 alten Code komplett auskommentiert, s.o. für neue Variante
'' mit herzlichem Dank abgekupfert von http://www.access-paradies.de/tipps/datei_oeffnen__speichern_dialog.php
'
'
'Private Type BROWSEINFO
'    hOwner As LongPtr
'    pidlRoot As Long
'    pszDisplayName As String
'    lpszTitle As String
'    ulFlags As Long
'    lpfn As Long
'    lParam As Long
'    iImage As Long
'End Type
'
'Private Declare PtrSafe Function SHGetPathFromIDList Lib "shell32.dll" Alias _
'                                             "SHGetPathFromIDListA" (ByVal pidl As Long, _
'                                                                     ByVal pszPath As String) As Long
'
'Private Declare PtrSafe Function SHBrowseForFolder Lib "shell32.dll" Alias _
'                                           "SHBrowseForFolderA" (lpBrowseInfo As BROWSEINFO) _
'                                           As Long
'
'Private Declare PtrSafe Function SendMessage Lib "user32.dll" Alias "SendMessageA" _
'                                     (ByVal hWnd As LongPtr, ByVal Msg As Long, wParam As Any, _
'                                      lParam As Any) As Long
'
'Declare PtrSafe Function GetOpenFileName Lib "comdlg32.dll" Alias "GetOpenFileNameA" _
'                                 (DateiDialogStruktur As DateiDialogStruktur) As Long
'Declare PtrSafe Function GetSaveFileName Lib "comdlg32.dll" Alias "GetSaveFileNameA" _
'                                 (DateiDialogStruktur As DateiDialogStruktur) As Long
'Global StartDir As String
'
'
'Private Const BIF_RETURNONLYFSDIRS = &H1
'Private Const BFFM_SETSELECTION = &H466
'Private Const BFFM_INITIALIZED = 1
'
'Type DateiDialogStruktur
'    lStructSize As LongPtr
'    hwndOwner As LongPtr
'    hInstance As LongPtr
'    lpstrFilter As String
'    lpstrCustomFilter As String
'    nMaxCustFilter As LongPtr
'    nFilterIndex As LongPtr
'    lpstrFile As String
'    nMaxFile As Long
'    lpstrFileTitle As String
'    nMaxFileTitle As LongPtr
'    lpstrInitialDir As String
'    lpstrTitle As String
'    flags As Long
'    nFileOffset As Integer
'    nFileExtension As Integer
'    lpstrDefExt As String
'    lCustData As LongPtr
'    lpfnHook As LongPtr
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
'Function DateiSpeichern(Verzeichnis As String, Fenstertitel As String, Dattyp As String, Dat_Endung As String) As String
'
'    Dim Dateityp As String
'    Dim Dateiname_mit_Pfad As String
'    Dim Dateiname As String
'    Dim Rueckwerte As LongPtr
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
'160 DateiDialogStruktur.lStructSize = LenB(DateiDialogStruktur)
'170 DateiDialogStruktur.hwndOwner = 0&
'    'DateiDialogStruktur.hwndOwner = Application.hWndAccessApp
'180 DateiDialogStruktur.lpstrFilter = Dateityp
'190 DateiDialogStruktur.nFilterIndex = 1
'200 DateiDialogStruktur.lpstrFile = Dateiname_mit_Pfad
'210 DateiDialogStruktur.nMaxFile = LenB(Dateiname_mit_Pfad)
'220 DateiDialogStruktur.lpstrFileTitle = Dateiname
'230 DateiDialogStruktur.nMaxFileTitle = LenB(Dateiname)
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
