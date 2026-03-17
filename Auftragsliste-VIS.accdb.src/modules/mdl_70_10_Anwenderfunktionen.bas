Attribute VB_Name = "mdl_70_10_Anwenderfunktionen"
Option Compare Database
Option Explicit

Sub Anw_Fenster_Aus(Schalter As Boolean)

    Dim hWindow As LongPtr
    Dim nResult As Long
    'Dim nCmdShow As Long

10  hWindow = Application.hWndAccessApp

20  If Schalter = True Then
30      nResult = ShowWindow(ByVal hWindow, ByVal 0)
40  Else
50      nResult = ShowWindow(ByVal hWindow, ByVal 3) 'DM2023-01-31
60  End If

End Sub

Function fc_Quartal(Datum) As Long

10  Select Case Month(Datum)

    Case 1, 2, 3
20      fc_Quartal = 1

30  Case 4, 5, 6
40      fc_Quartal = 2

50  Case 7, 8, 9
60      fc_Quartal = 3

70  Case 10, 11, 12
80      fc_Quartal = 4

90  End Select

End Function
