Attribute VB_Name = "LetzDat"
Option Compare Database
Option Explicit

   Function GetLast(strControl As String)

      Dim rs As Recordset

      Set rs = Screen.ActiveForm.RecordsetClone
      rs.MoveLast
      GetLast = rs(strControl)
      rs.Close

   End Function
