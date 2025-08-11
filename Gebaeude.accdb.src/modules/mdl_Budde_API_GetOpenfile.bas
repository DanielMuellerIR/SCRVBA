Attribute VB_Name = "mdl_Budde_API_GetOpenfile"

Option Compare Database
Option Explicit

'***************** Code Start **************
'This code was originally written by Ken Getz.
'It is not to be altered or distributed,
'except as part of an application.
'You are free to use it in any application,
'provided the copyright notice is left unchanged.
',
' Code courtesy of:
'   Microsoft Access 95 How-To
' Ken Getz and Paul Litwin
' Waite Group Press, 1996

Type tagOPENFILENAME
    lStructSize               As Long
    hwndOwner                 As Long
    hInstance                 As Long
    strFilter                 As String
    strCustomFilter           As String
    nMaxCustFilter            As Long
    nFilterIndex              As Long
    strFile                   As String
    nMaxFile                  As Long
    strFileTitle              As String
    nMaxFileTitle             As Long
    strInitialDir             As String
    strTitle                  As String
    flags                     As Long
    nFileOffset               As Integer
    nFileExtension            As Integer
    strDefExt                 As String
    lCustData                 As Long
    lpfnHook                  As Long
    lpTemplateName            As String
End Type

#If VBA7 Then
   Private Declare PtrSafe Function aht_apiGetOpenFileName Lib "comdlg32.dll" Alias "GetOpenFileNameA" (OFN As tagOPENFILENAME) As Boolean
#Else
   Private Declare PtrSafe Function aht_apiGetOpenFileName Lib "comdlg32.dll" Alias "GetOpenFileNameA" (OFN As tagOPENFILENAME) As Boolean
#End If


#If VBA7 Then
   Private Declare PtrSafe Function aht_apiGetSaveFileName Lib "comdlg32.dll" Alias "GetSaveFileNameA" (OFN As tagOPENFILENAME) As Boolean
#Else
   Private Declare PtrSafe Function aht_apiGetSaveFileName Lib "comdlg32.dll" Alias "GetSaveFileNameA" (OFN As tagOPENFILENAME) As Boolean
#End If


#If VBA7 Then
   Private Declare PtrSafe Function CommDlgExtendedError Lib "comdlg32.dll" () As Long
#Else
   Private Declare PtrSafe Function CommDlgExtendedError Lib "comdlg32.dll" () As Long
#End If



Global Const ahtOFN_READONLY = &H1
Global Const ahtOFN_OVERWRITEPROMPT = &H2
Global Const ahtOFN_HIDEREADONLY = &H4
Global Const ahtOFN_NOCHANGEDIR = &H8
Global Const ahtOFN_SHOWHELP = &H10
' You won't use these.
'Global Const ahtOFN_ENABLEHOOK = &H20
'Global Const ahtOFN_ENABLETEMPLATE = &H40
'Global Const ahtOFN_ENABLETEMPLATEHANDLE = &H80
Global Const ahtOFN_NOVALIDATE = &H100
Global Const ahtOFN_ALLOWMULTISELECT = &H200
Global Const ahtOFN_EXTENSIONDIFFERENT = &H400
Global Const ahtOFN_PATHMUSTEXIST = &H800
Global Const ahtOFN_FILEMUSTEXIST = &H1000
Global Const ahtOFN_CREATEPROMPT = &H2000
Global Const ahtOFN_SHAREAWARE = &H4000
Global Const ahtOFN_NOREADONLYRETURN = &H8000
Global Const ahtOFN_NOTESTFILECREATE = &H10000
Global Const ahtOFN_NONETWORKBUTTON = &H20000
Global Const ahtOFN_NOLONGNAMES = &H40000
' New for Windows 95
Global Const ahtOFN_EXPLORER = &H80000
Global Const ahtOFN_NODEREFERENCELINKS = &H100000
Global Const ahtOFN_LONGNAMES = &H200000


Function TestIt()
    Dim strFilter As String
    Dim lngFlags As Long


10  strFilter = ahtAddFilterItem(strFilter, "Access Files (*.mda, *.mdb)", _
                                 "*.MDA;*.MDB")
20  strFilter = ahtAddFilterItem(strFilter, "Textdatei (*.txt)")
30  strFilter = ahtAddFilterItem(strFilter, "dBASE Files (*.dbf)", "*.DBF")
40  strFilter = ahtAddFilterItem(strFilter, "Text Files (*.txt)", "*.TXT")
50  strFilter = ahtAddFilterItem(strFilter, "All Files (*.*)", "*.*")
60  MsgBox "You selected: " & ahtCommonFileOpenSave(InitialDir:="C:\", _
                                                    Filter:=strFilter, FilterIndex:=3, flags:=lngFlags, _
                                                    DialogTitle:="Hello! Open Me!")
    ' Since you passed in a variable for lngFlags,
    ' the function places the output flags value in the variable.
    ' Debug.Print Hex(lngFlags)


End Function

Function GetOpenFile( _
         Optional OpenSAve As Boolean, _
         Optional varDirectory As Variant, _
         Optional str_filename As String, _
         Optional varTitleForDialog As String, _
         Optional DFilter As String) As Variant
' W. Budde: 2. Parameter <str_filename> ergänzt

GoTo Hier:
' Für Offiece 64 Bit vereinfacht:
If BitVersion = 64 Then
    Dim f    As FileDialog
    Set f = Application.FileDialog(msoFileDialogFilePicker)
    f.Show
        If f.SelectedItems.Count > 0 Then
        GetOpenFile = f.SelectedItems(1)
        Else
        GetOpenFile = "NoFile"
        End If
    Exit Function
End If
Hier:
' Ab hier die 32Bit-VAriante:
' Here's an example that gets an Access database name.
    Dim strFilter             As String
    Dim lngFlags              As Long
    Dim varFileName           As Variant

    ' Specify that the chosen file must already exist,
    ' don't change directories when you're done
    ' Also, don't bother displaying
    ' the read-only box. It'll only confuse people.

20  lngFlags = ahtOFN_FILEMUSTEXIST Or _
               ahtOFN_HIDEREADONLY Or ahtOFN_NOCHANGEDIR
30  If IsMissing(varDirectory) Then
40      varDirectory = ""
50  End If
60  If IsMissing(varTitleForDialog) Then
70      varTitleForDialog = ""
80  End If

    ' Define the filter string and allocate space in the "c"
    ' string Duplicate this line with changes as necessary for
    ' more file templates.

    'W.Budde: nachf. Zeile stillgesetzt
    'strFilter = ahtAddFilterItem(strFilter, _
     "Access (*.mdb)", "*.MDB;*.MDA")

    'W.Budde:nachf. nachf.Zeile neu
'90  If IsMissing(DFilter) Then
'100     strFilter = ahtAddFilterItem(strFilter, "Alle Dateien(*.*)", "*.*")
'110 Else
'120     strFilter = ahtAddFilterItem(strFilter, DFilter & "-Dateien", DFilter)
'130 End If

    ' Now actually call to get the file name.
140 varFileName = ahtCommonFileOpenSave( _
                  OpenFile:=OpenSAve, _
                  InitialDir:=varDirectory, _
                  Filter:=strFilter, _
                  flags:=lngFlags, _
                  FileName:=str_filename, _
                  DialogTitle:=varTitleForDialog)

150 If Not IsNull(varFileName) Then
160     varFileName = TrimNull(varFileName)
170 End If
180 GetOpenFile = varFileName


End Function


Function ahtCommonFileOpenSave( _
         Optional ByRef flags As Variant, _
         Optional ByVal InitialDir As Variant, _
         Optional ByVal Filter As Variant, _
         Optional ByVal FilterIndex As Variant, _
         Optional ByVal DefaultExt As Variant, _
         Optional ByVal FileName As Variant, _
         Optional ByVal DialogTitle As Variant, _
         Optional ByVal hwnd As Variant, _
         Optional ByVal OpenFile As Variant) As Variant

' This is the entry point you'll use to call the common
' file open/save dialog. The parameters are listed
' below, and all are optional.
'
' In:
' Flags: one or more of the ahtOFN_* constants, OR'd together.
' InitialDir: the directory in which to first look
' Filter: a set of file filters, set up by calling
' AddFilterItem. See examples.
' FilterIndex: 1-based integer indicating which filter
' set to use, by default (1 if unspecified)
' DefaultExt: Extension to use if the user doesn't enter one.
' Only useful on file saves.
' FileName: Default value for the file name text box.
' DialogTitle: Title for the dialog.
' hWnd: parent window handle
' OpenFile: Boolean(True=Open File/False=Save As)
' Out:
' Return Value: Either Null or the selected filename
    Dim OFN As tagOPENFILENAME
    Dim strFileName As String
    Dim strFileTitle As String
    Dim fResult As Boolean
    ' Give the dialog a caption title.


20    If IsMissing(InitialDir) Then InitialDir = CurDir
30    If IsMissing(Filter) Then Filter = ""
40    If IsMissing(FilterIndex) Then FilterIndex = 1
50    If IsMissing(flags) Then flags = 0&
60    If IsMissing(DefaultExt) Then DefaultExt = ""
70    If IsMissing(FileName) Then FileName = ""
80    If IsMissing(DialogTitle) Then DialogTitle = ""
90    If IsMissing(hwnd) Then hwnd = Application.hWndAccessApp
100   If IsMissing(OpenFile) Then OpenFile = True
    ' Allocate string space for the returned strings.
110   strFileName = Left(FileName & String(256, 0), 256)
120   strFileTitle = String(256, 0)
    ' Set up the data structure before you call the function
130   With OFN
140     .lStructSize = Len(OFN)
150     .hwndOwner = hwnd
160     .strFilter = Filter
170     .nFilterIndex = FilterIndex
180     .strFile = strFileName
190     .nMaxFile = Len(strFileName)
200     .strFileTitle = strFileTitle
210     .nMaxFileTitle = Len(strFileTitle)
220     .strTitle = DialogTitle
230     .flags = flags
240     .strDefExt = DefaultExt
250     .strInitialDir = InitialDir
        ' Didn't think most people would want to deal with
        ' these options.
260     .hInstance = 0
270     .strCustomFilter = ""
280     .nMaxCustFilter = 0
290     .lpfnHook = 0
        'New for NT 4.0
300     .strCustomFilter = String(255, 0)
310     .nMaxCustFilter = 255
320   End With


    ' This will pass the desired data structure to the
    ' Windows API, which will in turn it uses to display
    ' the Open/Save As Dialog.
330   If OpenFile Then
340     fResult = aht_apiGetOpenFileName(OFN)
350   Else
360     fResult = aht_apiGetSaveFileName(OFN)
370   End If

    ' The function call filled in the strFileTitle member
    ' of the structure. You'll have to write special code
    ' to retrieve that if you're interested.
380   If fResult Then
        ' You might care to check the Flags member of the
        ' structure to get information about the chosen file.
        ' In this example, if you bothered to pass in a
        ' value for Flags, we'll fill it in with the outgoing
        ' Flags value.
390     If Not IsMissing(flags) Then flags = OFN.flags
400     ahtCommonFileOpenSave = TrimNull(OFN.strFile)
410   Else
420     ahtCommonFileOpenSave = "NoFile"
430   End If

End Function


Function ahtAddFilterItem(strFilter As String, _
                          strDescription As String, Optional varItem As Variant) As String
' Tack a new chunk onto the file filter.
' That is, take the old value, stick onto it the description,
' (like "Databases"), a null character, the skeleton
' (like "*.mdb;*.mda") and a final null character.


20    If IsMissing(varItem) Then varItem = "*.*"
30    ahtAddFilterItem = strFilter & _
                       strDescription & vbNullChar & _
                       varItem & vbNullChar



End Function

Private Function TrimNull(ByVal strItem As String) As String

    Dim intPos As Integer
10  intPos = InStr(strItem, vbNullChar)
20  If intPos > 0 Then
30      TrimNull = Left(strItem, intPos - 1)
40  Else
50      TrimNull = strItem
60  End If


End Function


Function Speichere_Exceldatei(Optional Dateiname)
    Dim strFilter As String
    Dim lngFlags As Long

10  strFilter = ahtAddFilterItem(strFilter, "Exceldatei(*.xlsx)")
20  Speichere_Exceldatei = ahtCommonFileOpenSave(InitialDir:="S:\a60\Datenbank\Excel-Exporte\", _
                                                 FileName:=Dateiname, _
                                                 Filter:=strFilter, FilterIndex:=3, flags:=lngFlags, _
                                                 DialogTitle:="Exportieren unter ..", OpenFile:=False)


End Function
