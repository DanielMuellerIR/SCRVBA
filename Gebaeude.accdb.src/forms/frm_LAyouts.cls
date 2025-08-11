Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'DEVELOPED AND TESTED UNDER MICROSOFT ACCESS 2000 VBA
'
'Copyright: Stephen Lebans - Lebans Holdings 1999 Inc.
'           Please feel free to use this code within your own projects,
'           both private and commercial, with no obligation.
'           You may not resell this code by itself or as part of a collection.
'
'
'Name:      Save/Restore Relationship Window view
'
'Version:   1.3
'
'Purpose:   1) To allow the saving of the layout of the Relationship window to a table.
'           2) To allow the restoration of the layout of the Relationship Window from a table.
'           3) To allow the saving/restoration of multiple Relationship Window views.
'           4) To allow the importing of the layout of the Relationship Window from an external MDB.
' 
'Requires: This Form must be bound to the table named tblRelationshipViews
'
'Author:    Stephen Lebans
'
'Email:     Stephen@lebans.com
'
'Web Site:  www.lebans.com
'
'Date:      February 04, 2004, 11:11:11 PM
'
'Credits:   Steve Jorgensen for the idea!
'
'BUGS:      Please report any bugs to:
'           Stephen@lebans.com
'
'What's Missing:
'           DAO error handling
'           All other Error handling
'           Add it yourself!
'
'How it Works:
'           Walk through the source code!<grin>
'
' Enjoy
' Stephen Lebans


Option Compare Database
Option Explicit


Private Type POINTAPI
   X As Long
   Y As Long
End Type

Private Type RECTL
   Left As Long
   Top As Long
   Right As Long
   Bottom As Long
End Type


Private Const AAAlength = 12
Private Const FFFlength = 8
Private Const Padding = 12
Private Const NameLengthMax = 128
' 64 Char MAX for a DAO Table Name * 2 = Unicode

Private Type RelBlob
    Sig As Long
    AAAs(1 To AAAlength) As Byte
    RelWinX1  As Long
    RelWinY1 As Long
    RelWinX2  As Long
    RelWinY2 As Long
    Blank As Long
    FFFs(1 To FFFlength) As Byte
    ClientRectX As Long
    ClientRectY As Long
    Pad(1 To Padding) As Byte
    NumWindows As Long
End Type

Private Type RelWindow
    RelWinX1  As Long
    RelWinY1 As Long
    RelWinX2  As Long
    RelWinY2 As Long
    Junk As Long
    WinName As String * NameLengthMax
    Junk1 As Long
    WinNameMaster As String * NameLengthMax
    'Pad(1 To Padding) As Byte
    Junk2 As Long
End Type

Private Declare PtrSafe Function ScreenToClient Lib "user32" _
(ByVal hwnd As LongPtr, lpPoint As POINTAPI) As Long

Private Declare PtrSafe Function FindWindowEx Lib "user32" Alias _
"FindWindowExA" (ByVal hWnd1 As LongPtr, ByVal hWnd2 As LongPtr, _
ByVal lpsz1 As String, ByVal lpsz2 As String) As Long

Private Declare PtrSafe Function apiGetWindow Lib "user32" _
Alias "GetWindow" (ByVal hwnd As LongPtr, ByVal wCmd As Long) As Long

Private Declare PtrSafe Function GetWindowRect Lib "user32" _
(ByVal hwnd As LongPtr, lpRect As RECTL) As Long

Private Declare PtrSafe Function SetWindowPos Lib "user32" _
(ByVal hwnd As LongPtr, ByVal hWndInsertAfter As LongPtr, ByVal X As Long, _
ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long

Private Declare PtrSafe Function GetWindowText Lib "user32" Alias "GetWindowTextA" _
(ByVal hwnd As LongPtr, ByVal lpString As String, ByVal cch As Long) As Long

Private Declare PtrSafe Sub CopyMem Lib "kernel32" Alias "RtlMoveMemory" _
(Destination As Any, Source As Any, ByVal Length As Long)

' SetWindowPos() Constants
Private Const SWP_SHOWWINDOW = &H40

' GetWindow() Constants
Private Const GW_HWNDNEXT = 2
Private Const GW_CHILD = 5


Private Sub SaveLayout()
Dim lngRet As Long
Dim hWndMDI As Long
Dim hWndRel As Long
Dim hWndODsk As Long
Dim hWndTemp
Dim rc As RECTL
Dim pt As POINTAPI
Dim s As String


' Have they entered a Unique Key to store our Relationship View from
' Our control
If Len(Me.txtEnterID.Value & vbNullString) = 0 Then
    MsgBox "You Must Enter a Key to identify this Relationship View"
    Exit Sub
End If

' Force the RelationShips window to open
DoCmd.RunCommand acCmdRelationships

' The Relationships Window is a child of the MDI Client window
' find MDIClient first.
hWndMDI = FindWindowEx(Application.hWndAccessApp, 0&, "MDIClient", vbNullString)
' Find the Relationships Window

'hWndRel = FindWindowEx(hWndMDI, 0&, "OSysRel", "Relationships")
' vorherige Zeile auf deutsches Access angepasst, W. Budde / 13.06.2009
hWndRel = FindWindowEx(hWndMDI, 0&, "OSysRel", "Beziehungen")

If hWndRel = 0 Then
    MsgBox "The Relationships Window is not open.", vbCritical, "Critical Error"
    Exit Sub
End If

' The first child window is of class ODsk
hWndODsk = FindWindowEx(hWndRel, 0&, "ODsk", vbNullString)

' Let's get first Child Window of the ODsk window
hWndTemp = apiGetWindow(hWndODsk, GW_CHILD)
If hWndTemp = 0 Then
    MsgBox "Their are no Relationships!", vbCritical, "Critical Error"
    Exit Sub
Else
    Me.RecordsetClone.AddNew
    lngRet = GetWindowRect(hWndTemp, rc)

    ' MUST store coords as Client Not Screen coords
    ' Upper Left corner of window first
    pt.X = rc.Left
    pt.Y = rc.Top
    lngRet = ScreenToClient(hWndRel, pt)
    rc.Left = pt.X
    rc.Top = pt.Y

    ' Lower right corner of window second
    pt.X = rc.Right
    pt.Y = rc.Bottom
    lngRet = ScreenToClient(hWndRel, pt)
    rc.Right = pt.X
    rc.Bottom = pt.Y
    ' Get the Text for this Window
    s = Space(256)
    lngRet = GetWindowText(hWndTemp, s, 256)
    'Debug.Print "S:" & s & Time
    s = Left$(s, lngRet)
    ' Update our fields
    With Me.RecordsetClone
        .Fields("WinName") = s
        .Fields("X") = rc.Left
        .Fields("X1") = rc.Right
        .Fields("Y") = rc.Top
        .Fields("Y1") = rc.Bottom
        .Fields("ID") = Me.txtEnterID.Value
        .Update
    End With
End If


' Let's walk through every sibling window
Do

    ' Let's get the NEXT SIBLING Window
    hWndTemp = apiGetWindow(hWndTemp, GW_HWNDNEXT)
    ' Do we have a valid Window handle
    If hWndTemp <> 0 Then
        Me.RecordsetClone.AddNew
        lngRet = GetWindowRect(hWndTemp, rc)
        ' MUST store coords as Client Not Screen coords
        ' Upper Left corner of window first
        pt.X = rc.Left
        pt.Y = rc.Top
        lngRet = ScreenToClient(hWndRel, pt)
        rc.Left = pt.X
        rc.Top = pt.Y

        ' Lower right corner of window second
        pt.X = rc.Right
        pt.Y = rc.Bottom
        lngRet = ScreenToClient(hWndRel, pt)
        rc.Right = pt.X
        rc.Bottom = pt.Y


        ' Get the Text for this Window
        s = Space(256)
        lngRet = GetWindowText(hWndTemp, s, 256)
        'Debug.Print "S:" & s & Time
        s = Left$(s, lngRet)
         ' Update our fields
        With Me.RecordsetClone
            .Fields("WinName") = s
            .Fields("X") = rc.Left
            .Fields("X1") = rc.Right
            .Fields("Y") = rc.Top
            .Fields("Y1") = rc.Bottom
            .Fields("ID") = Me.txtEnterID.Value
            .Update
        End With
    End If

' Let's Start the process from the Top again.
' End this loop if no more Windows.
Loop While hWndTemp <> 0


' All done
End Sub


Public Function RestoreLayout(ctl As Access.ListBox) As Boolean

On Error GoTo Err_Restore

Dim lngRet As Long
Dim hWndMDI As Long
Dim hWndRel As Long
Dim hWndODsk As Long
Dim hWndTemp
Dim s As String
Dim X, Y, X1, Y1 As Integer
Dim sWinName As String

' Collection for Window Text and hWnd
Dim colWindows As New Collection

' Ensure we are zero
hWndTemp = 0

' Force the RelationShips window to open
DoCmd.RunCommand acCmdRelationships

' Have they selected a previously saved Relationship View from our ListBox
If Len(ctl.Value & vbNullString) = 0 Then
    MsgBox "You Must Select an Existing Relationship View"
    RestoreLayout = False
    Exit Function
End If


' The Relationships Window is a child of the MDI Client window
' find MDIClient first.
hWndMDI = FindWindowEx(Application.hWndAccessApp, 0&, "MDIClient", vbNullString)
' Find the Relationships Window

'hWndRel = FindWindowEx(hWndMDI, 0&, "OSysRel", "Relationships")
' vorherige Zeile auf deutsches Access angepasst, W. Budde / 13.06.2009
hWndRel = FindWindowEx(hWndMDI, 0&, "OSysRel", "Beziehungen")

' Do we have a valid Window handle
If hWndRel = 0 Then
    MsgBox "The Relationships Window is not open.", vbCritical, "Critical Error"
    RestoreLayout = False
    Exit Function
End If

' The first child window is of class ODsk
hWndODsk = FindWindowEx(hWndRel, 0&, "ODsk", vbNullString)

 ' Create a recordset of the selected records
 Dim rst As DAO.Recordset
 Dim sSql As String
 Dim sSel As String
 sSel = ctl.Value
 sSql = "SELECT * FROM tblRelationshipViews WHERE ID =" & """" & sSel & """"
 Set rst = CurrentDb.OpenRecordset(sSql, dbOpenDynaset, dbReadOnly)

' Let's get first Child Window of the ODsk window
hWndTemp = apiGetWindow(hWndODsk, GW_CHILD)

If hWndTemp = 0 Then
    MsgBox "Their are no Relationships!", vbCritical, "Critical Error"
    RestoreLayout = False
    Exit Function
Else
    ' Add this window to our collection
    ' Grab the Windows Text
    s = Space(256)
    lngRet = GetWindowText(hWndTemp, s, 256)
    'Debug.Print "S:" & s & Time
    s = Left$(s, lngRet)
    colWindows.Add hWndTemp, s
End If

' Loop through the rest of the sibling windows adding them to our collection
Do
hWndTemp = apiGetWindow(hWndTemp, GW_HWNDNEXT)
    If hWndTemp = 0 Then Exit Do
    ' Grab the Windows Text
    s = Space(256)
    lngRet = GetWindowText(hWndTemp, s, 256)
    'Debug.Print "S:" & s & Time
    s = Left$(s, lngRet)
    colWindows.Add hWndTemp, s
Loop

' Walk through our windows collection and match Saved hWnd with current record
' Move our recordset to the first row
rst.MoveFirst
' Loop through all of the rows
Do While Not rst.EOF
    On Error Resume Next
    ' Get the Window handle by using the Window's Text as the Key
    hWndTemp = colWindows.Item(rst.Fields("WinName"))
    On Error GoTo 0
    If hWndTemp <> 0 Then
        ' Copy the window coords into our temp vars
        With rst.Fields
            X = rst.Fields("X")
            X1 = rst.Fields("X1")
            Y = rst.Fields("Y")
            Y1 = rst.Fields("Y1")
        End With

        ' Move and size the window to its original values
        lngRet = SetWindowPos(hWndTemp, 0&, X, Y, X1 - X, Y1 - Y, SWP_SHOWWINDOW)
    End If
    ' Move to the next row
    rst.MoveNext
    ' reset
    hWndTemp = 0
' Keep looping!
Loop

' Return Success
RestoreLayout = True


 ' All done
Exit_Restore:
    Set rst = Nothing
    ' Delete our Collection object
    ' Remove the first object each time  through the loop until there are
    ' no objects left in the collection.
    For X = 1 To colWindows.Count
        colWindows.Remove 1
    Next X
Exit Function

Err_Restore:
    MsgBox Err.Description
    Resume Exit_Restore

End Function


Private Function GetMDBRels(ctl As Access.ListBox) As String
' Pops File Dialog window
' Returns selected MDB
' Fills control with any Relationship Window Layout BLOBS User NAME
Dim rst As DAO.Recordset
Dim sSql As String
Dim sSel As String
Dim db As Database
Dim s As String
Dim iType As Integer
Dim lTemp As Long
Dim sMDBname As String


' Pop the File Dialog Window
sMDBname = fFileDialog
If Len(sMDBname & vbNullString) = 0 Then
    GetMDBRels = vbNullString
    Exit Function
End If

' Relationship Window Layout BLOB TYPE = -32758
 iType = -32758
 sSql = "SELECT * FROM MSysObjects WHERE Type =" & iType ' & "
 Set db = OpenDatabase(sMDBname, False, True)
 Set rst = db.OpenRecordset(sSql, dbOpenDynaset, dbReadOnly)


' Fill the Rowsource of the ListBox control
' Build our string
' Move to first row
rst.MoveFirst
Do While Not rst.EOF
    s = rst.Fields("Name") & ";"
    s = s & sMDBname & ";"
    rst.MoveNext
Loop

ctl.RowSource = s
' Return Success
GetMDBRels = sMDBname

' Free our RecordSet
Set rst = Nothing
' Relase DB
db.Close
Set db = Nothing
End Function



Private Sub GetBlob(Optional TheUser As String = "", Optional TheMDB As String = "")
' Supply params if using External MDB
' TheMDB must be include full path info
Dim a() As Byte
Dim lTemp As Long
Dim X As Long
Dim rb As RelBlob
Dim rl() As RelWindow
Dim rst As DAO.Recordset
Dim sSql As String
Dim sSel As String
Dim db As DAO.Database

' Read the Relationship window BLOB into our array
' Assumes CURRENTUSER is the same user who setup and saved the current Relationship window
' layout for the internal tables. For an External MDB we supply the User!
If Len(TheUser & vbNullString) > 0 Then
    sSel = TheUser
Else
    sSel = CurrentUser
 End If

If Len(TheMDB & vbNullString) > 0 Then
    Set db = OpenDatabase(TheMDB, False, True)
Else
    Set db = CurrentDb()
 End If

 sSql = "SELECT * FROM MSysObjects WHERE NAME = " & """" & sSel & """"
 Set rst = db.OpenRecordset(sSql, dbOpenDynaset, dbReadOnly)

' Get length of BLOB
'lTemp = LenB(rst.Fields("LVExtra"))
lTemp = rst.Fields("LVExtra").FieldSize()

ReDim a(0 To lTemp)
' Copy Blob to our array
a = rst.Fields("LVExtra").GetChunk(0, lTemp)
' Below does not work in A97 so we will use DAO
'a = rst.Fields("LVExtra")
' Free our RecordSet
Set rst = Nothing
db.Close
Set db = Nothing

' Fill in our RelBlob header
CopyMem rb, a(0), Len(rb)

' Fill in our TextBox controls
Me.txtAAAs = rb.AAAs
Me.txtBlank = rb.Blank
Me.txtFFFs = rb.FFFs
Me.txtNumWindows = rb.NumWindows
Me.txtPadding = rb.Pad
Me.txtSig = rb.Sig
Me.txtRelWinX1 = rb.RelWinX1
Me.txtRelWinX2 = rb.RelWinX2
Me.txtRelWinY1 = rb.RelWinY1
Me.txtRelWinY2 = rb.RelWinY2
Me.txtClientRectY = rb.ClientRectY
Me.txtClientRectX = rb.ClientRectX

' First 68 Bytes are the Header
' This is followed by (NumWindows + 1) * 284 bytes per record
' Last record seems to be padding
' Let's create an array of our RelWin structures
ReDim rl(0 To rb.NumWindows)
' Fill in our array of structures
For X = 0 To rb.NumWindows
    CopyMem rl(X), a((X * 284) + 68), 284 '(rb.NumWindows + 1) * 128
Next X

' Now Let's display our Windows and their coords
' By adding them to our table
 For X = 0 To rb.NumWindows - 1

' Add a new row to our table
 With Me.RecordsetClone
        .AddNew
        .Fields("WinName") = StrConv(rl(X).WinName, vbFromUnicode)
        .Fields("X") = rl(X).RelWinX1
        .Fields("X1") = rl(X).RelWinX2
        .Fields("Y") = rl(X).RelWinY1
        .Fields("Y1") = rl(X).RelWinY2
        .Fields("ID") = sSel
        .Update
    End With
 Next X

  ' Refresh the data on the Form
Me.Requery
End Sub


Function fFileDialog() As String
' Calls the API File Dialog Window
' Returns full path to the existing File

10  On Error GoTo Err_fFileDialog

    ' Call the File Common Dialog Window
    Dim clsDialog As Object

20  Set clsDialog = New clsCommonDialog

    ' Fill in our properties
    'clsDialog.Filter = "ALL (*.*)" & Chr$(0) & "*.*" & Chr$(0)
'30  clsDialog.Filter = "MDB (*.MDB)" & Chr$(0) & "*.MDB" & Chr$(0)
30  clsDialog.Filter = "accdb (*.accdb)" & Chr$(0) & "*.accdb" & Chr$(0)
'40  clsDialog.Filter = clsDialog.Filter & "MDE (*.MDE)" & Chr$(0) & "*.MDE" & Chr$(0)

50  clsDialog.hdc = 0
60  clsDialog.MaxFileSize = 256
70  clsDialog.Max = 256
80  clsDialog.FileTitle = vbNullString
90  clsDialog.DialogTitle = "Please Select an Existing Access Database File"
100 clsDialog.InitDir = vbNullString
110 clsDialog.DefaultExt = vbNullString

    ' Display the File Dialog
120 clsDialog.ShowOpen

    ' See if user clicked Cancel or even selected
    ' the very same file already selected
130 fFileDialog = clsDialog.FileName
140 If Len(fFileDialog & vbNullString) = 0 Then
        ' Raise the exception
150     Err.Raise vbObjectError + 513, "Form_frmRelationshipViewsAddModify.fFileDialog", _
                  "Please Select an Existing Access Database"
160 End If


Exit_fFileDialog:

170 Err.Clear
180 Set clsDialog = Nothing
190 Exit Function

Err_fFileDialog:
200 fFileDialog = ""
210 MsgBox Err.Description, vbOKOnly, Err.Source & ":" & Err.Number
220 Resume Exit_fFileDialog

End Function

Private Sub BS_Layout_Loeschen_Click()
Dim iResponse As Integer

iResponse = MsgBox("Markiertes Layout wirklich löschen?" & vbCrLf & Me.listStored.Value, vbOKCancel, "Layout löschen")
If iResponse = vbCancel Then Exit Sub

' Remove all of the matching records
' Let's just loop through them for now.
' Should use a SQL statement against the recordset
Me.RecordsetClone.MoveFirst

Do While Not Me.RecordsetClone.EOF
    ' Check record versus users selection in our ListBox
        If Me.RecordsetClone.Fields("ID") = Me.listStored.Value Then
            Me.RecordsetClone.Delete
        End If

' Move to the next row
Me.RecordsetClone.MoveNext
' Keep looping!
Loop
' Refresh the data on the Form
Me.Refresh
End Sub

Private Sub BS_Layout_reakt_Click()
' Restore the selected saved Relationship Window View
Dim blRet As Boolean
 blRet = RestoreLayout(Me.listStored)

End Sub

Private Sub BS_Schließen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub


Private Sub cmdSave_Click()
' Save the current coordinates of every Window in the Relationships Window

On Error GoTo Err_cmdSave_Click

SaveLayout
' Update our ListBox control
Me.listStored.Requery
Exit_cmdSave_Click:
    Exit Sub

Err_cmdSave_Click:
    MsgBox Err.Description
    Resume Exit_cmdSave_Click

End Sub


Private Sub cmdGetBlob_Click()
On Error GoTo Err_cmdGetBlob_Click

' Call our GetBlob function with no Params
' so it will look to the local MSysObjects table
GetBlob

Exit_cmdGetBlob_Click:
    Exit Sub

Err_cmdGetBlob_Click:
    MsgBox Err.Description
    Resume Exit_cmdGetBlob_Click

End Sub


Private Sub cmdWeb_Click()
On Error GoTo Err_cmdWeb_Click

    ' Setup as a Hyperlinked control

Exit_cmdWeb_Click:
    Exit Sub

Err_cmdWeb_Click:
    MsgBox Err.Description
    Resume Exit_cmdWeb_Click

End Sub
