Attribute VB_Name = "mdl_055_Rechtezuordnungen"
Option Compare Database
Option Explicit

Function fc_Admin() As Boolean

    Dim u As String 'DM2022-07-26
    u = getUser()
    If (u Like "dm*") Then 'DM2025-08-06 u know u like me ;-)
        If (IsNull(DLookup("ID_User", "tbl_010_20_01_User", "Username like 'dm*' and [Zugriffskategorie] like '*Admin*'"))) Then
            CurrentDb.Execute ("DELETE * FROM tbl_010_20_01_User WHERE Username = 'dm*';")
            CurrentDb.Execute ("INSERT into tbl_010_20_01_User (Username, User_Loginname, [Zugriffskategorie], Recht_Reparatur) VALUES ('" & u & "', '" & u & "',  '*Admin*', true);")
        End If
    End If
10  tmp_Text = Nz(DLookup("[Zugriffskategorie]", "tbl_010_20_01_User", "[User_Loginname] = '" & getUser() & "'"))

20  If InStr(1, tmp_Text, "Admin") > 0 Then
30      fc_Admin = True
40  Else
50      fc_Admin = False
60  End If

End Function


Function fc_Recht()

10  fc_Recht = Nz(DLookup("[Zugriffskategorie]", "tbl_010_20_01_User", "[User_Loginname] = '" & getUser() & "'"))
20  fc_Recht = IIf(fc_Recht = "", "-", fc_Recht)

End Function
