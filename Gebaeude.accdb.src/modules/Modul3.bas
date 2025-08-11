Attribute VB_Name = "Modul3"
Option Compare Database
Option Explicit

Function fctTableExists(strTableName As String) As Boolean

If DCount("*", "MSysObjects", "Name='" & strTableName & "'") Then fctTableExists = True

End Function
