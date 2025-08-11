Attribute VB_Name = "mdl_051_Budde_User_Login_Abfrage"
Option Compare Database
Option Explicit

'---------------------------------------------------------------------
'-- Autor:      N.N. (abgekupfert von div. Quellen)
'               posted by "Jens Hofmeier" <homni@hotmail.com>
'               Anpassung erforderlich!
'           ==> siehe auch http://www.mvps.org/access/api/api0055.htm
'-- Stand:      04/2002
'---------------------------------------------------------------------

Declare PtrSafe Function GetVersionEx Lib "kernel32" Alias "GetVersionExA" (ByRef lpVersionInformation As OSVERSIONINFO) As Long
Declare PtrSafe Function NWGetDefaultConnectionId Lib "Calwin32.dll" Alias "NWGetDefaultConnectionID" (conn As Long) As Long
Declare PtrSafe Function NWGetConnectionStatus Lib "Calwin32.dll" (ByVal conn_id As Long, nwinfo As nwinfo_struct, ByVal xlen As Integer) As Long
Declare PtrSafe Function WNetGetUser Lib "mpr.dll" Alias "WNetGetUserA" (ByVal lpname As String, ByVal lpusername As String, lpnLength As Long) As Long
Declare PtrSafe Function GetUserName Lib "advapi32.dll" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long


' Informationen zum Betriebssystem
Type OSVERSIONINFO
    dwOSVersionInfoSize As Long
    dwMajorVersion As Long
    dwMinorVersion As Long
    dwBuildNumber As Long
    dwPlatformId As Long
    szCSDVersion As String * 128      '  Maintenance string for PSS usage
End Type

' dwPlatformId defines:
Public Const VER_PLATFORM_WIN32s = 0
Public Const VER_PLATFORM_WIN32_WINDOWS = 1
Public Const VER_PLATFORM_WIN32_NT = 2

Global gl_osversion As OSVERSIONINFO

Type SYSTEM_INFO
    dwOemID As Long
    dwPageSize As Long
    lpMinimumApplicationAddress As Long
    lpMaximumApplicationAddress As Long
    dwActiveProcessorMask As Long
    dwNumberOrfProcessors As Long
    dwProcessorType As Long
    dwAllocationGranularity As Long
    dwReserved As Long
End Type


' Struktur für Novell ConnectionStatus
Type nwinfo_struct
    connid As Integer
    connectflags As Integer
    sessionid As Integer
    connnumber As Integer
    serveraddr As String * 12
    servertype As Integer
    servername As String * 48
    clienttype As Integer
    clientname As String * 48
End Type

Function getUser()

' Netzuser auslesen
    Dim rtn As Integer, P As Integer
    Dim conn_id As Long, connRef As Long
    Dim nwinfo As nwinfo_struct
    Dim delim As String
    Dim nwbuffer(256) As Byte
    Dim gl_nwuser As String

10  On Error Resume Next
20  If Trim(gl_nwuser) = "" Or IsNull(gl_nwuser) Then
30      gl_osversion.dwOSVersionInfoSize = Len(gl_osversion)
40      If CBool(GetVersionEx(gl_osversion)) Then

50          If gl_osversion.dwPlatformId = VER_PLATFORM_WIN32_NT Then
60              GoSub getUser_netuser
70          Else        ' Windows 98 o.ä.
80              GoSub getUser_localuser
90          End If
100     End If
110     If rtn <> 0 Then
120         MsgBox "NetWare Meldung. Bitte prüfen Sie Ihre Netzanmeldung", , "Netzwerkverwaltung"
130     End If
140 End If

    ' nicht darstellbare Zeichen löschen
150 gl_nwuser = remove_invalidCharacters(gl_nwuser)
160 getUser = gl_nwuser
170 Exit Function

getUser_netuser:
    ' Netzuser auslesen
180 rtn = NWGetDefaultConnectionId(conn_id)     ' führt unter Windows 98 zu Absturz
190 If Err <> 0 Then    ' Fehler 53, z.B. Calwin32.dll nicht gefunden
200     Err = 0
210     GoSub getUser_localuser
220 Else
230     If rtn = 0 Then
240         rtn = NWGetConnectionStatus(conn_id, nwinfo, 128)
250         gl_nwuser = Trim(nwinfo.clientname)
260         If (InStr(1, nwinfo.clientname, ".") > 1 _
                And InStr(1, nwinfo.clientname, ".") > InStr(1, nwinfo.clientname, " ")) Then
270             delim = "."
280         Else
290             delim = " "
300         End If
            ' ggf. ungültige Zeichen vor Punkt(en) entfernen - 15.2.2001
310         Do
320             gl_nwuser = remove_invalidCharacters(gl_nwuser)
330             P = InStr(1, gl_nwuser, delim)
340             If P = 1 Then
350                 gl_nwuser = Mid(gl_nwuser, P + 1)
360             Else
370                 If P = 0 Then
380                     gl_nwuser = Mid(gl_nwuser, 1)
390                 Else
400                     gl_nwuser = Mid(gl_nwuser, 1, P - 1)
410                 End If
420             End If
430         Loop While P = 1
440     End If
450 End If
460 Return
getUser_localuser:
    ' lokalen Benutzer auslesen
470 gl_nwuser = get_nwinfo("locuser", "w:")
480 rtn = (Trim(gl_nwuser) = "")
490 Return
End Function



Function remove_invalidCharacters(ByVal mychar As String)
' ungültige Zeichen aus einem String entfernen
' - z.B. Null-terminierte Ergebnisse externer Funktionsaufrufe
' Leerzeichen und Umlaute bleiben erhalten
    Dim z As String, erg As String
    Dim xlen As Long, i As Long

10    xlen = Len(mychar)
20    i = 1
30    For i = 1 To xlen
40      z = Mid(mychar, i, 1)
50      If Asc(z) > 31 And Asc(z) < 127 Or Asc(z) > 159 And Asc(z) < 256 Then
60          erg = erg & z
70      End If
80    Next i
90    remove_invalidCharacters = Trim(erg)
End Function


Public Function get_nwinfo(ByVal infotype As String, lpinfo As String)
'verschiedene Systeminformationen ermitteln
    Dim lpBuffer As String, lplen As Long
    Dim rtn As Long

10    lpBuffer = "                              "
20    lplen = Len(lpBuffer)
30    Select Case infotype
    Case "nwuser"
        Dim P As Long
        ' lplen wird nicht verändert !!
40      rtn = WNetGetUser(lpinfo, lpBuffer, lplen)
50      If rtn = 0 Then
60          P = InStr(lpBuffer, "CN=")
70          If P > 0 Then
80              lpBuffer = Mid(lpBuffer, P + 3)
90          End If
100         P = InStr(lpBuffer, ".")
110         If P > 0 Then
120             lpBuffer = Mid(lpBuffer, 1, P - 1)
130         End If
140     End If
150   Case "locuser"
        ' gibt den Namen UND die Länge des Strings + term. Null zurück
160     rtn = GetUserName(lpBuffer, lplen)
170     If Trim(lpBuffer) <> "" Then
180         rtn = 0
190     End If
200   Case Else
210   End Select
220   If rtn = 0 Then
230     lpBuffer = remove_invalidCharacters(lpBuffer)
240   Else
250     lpBuffer = ""
260   End If
270   get_nwinfo = lpBuffer
End Function



Function fct_Reparatur_Recht()

10    If DLookup("[User_Loginname]", "tbl_010_20_01_User", "[User_Loginname] = '" & getUser() & "' AND [Recht_Reparatur] = true") = getUser() Then
20      fct_Reparatur_Recht = True
30    Else
40      fct_Reparatur_Recht = False
50    End If

End Function
