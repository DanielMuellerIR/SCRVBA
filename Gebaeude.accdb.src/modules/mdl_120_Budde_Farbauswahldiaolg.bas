Attribute VB_Name = "mdl_120_Budde_Farbauswahldiaolg"
Option Compare Database
Option Explicit

Type ChooseColor
     lStructSize    As Long
     hwndOwner      As LongPtr
     hInstance      As Long
     rgbResult      As Long
     lpCustColors   As LongPtr
     flags          As Long
     lCustData      As Long
     lpfnHook       As Long
     lpTemplateName As String
End Type

Declare PtrSafe Function GetActiveWindow Lib "user32.dll" () As Long
Declare PtrSafe Function ChooseColor_API Lib "comdlg32.dll" Alias "ChooseColorA" (lpChoosecolor As ChooseColor) As Long

Function ColorSelected(Optional lCurrentColor As Long = -1) As Long
'// ----------------------------------------------------------------------------
'// Funktion:        |Aufruf des Farbauswahldialoges.
'// ----------------------------------------------------------------------------
'// Voraussetzungen: |-
'// ----------------------------------------------------------------------------
'// Parameter:       |optional lCurrentColor als aktuelle Farbe zur
'//                  |Voreinstellung im Auswahldialog
'// ----------------------------------------------------------------------------
'// Rückgabe:        |Ausgewählte Fabe als Long-Wert
'// ----------------------------------------------------------------------------

' Vielen Dank an Stefan Kulpa,
' dessen Code ich von wwww.ms-office-forum.de , Link  MOF-FAQ - Module/VBA/VBE
' abgekupfert habe.
' Werner Budde

    Const CC_SOLIDCOLOR As Long = &H80&
    Const CC_ANYCOLOR   As Long = &H100&
    Const CC_RGBINIT    As Long = &H1&

    Dim uChooseColor    As ChooseColor
    Dim alColorRef(15)  As Long
    Dim hwnd            As LongPtr

    hwnd = GetActiveWindow()
    With uChooseColor
        .lStructSize = Len(uChooseColor)
        .hwndOwner = hwnd
        .lpCustColors = VarPtr(alColorRef(0))
        .flags = CC_SOLIDCOLOR Or CC_ANYCOLOR Or CC_RGBINIT
    End With
    If lCurrentColor >= 0 Then
        uChooseColor.rgbResult = lCurrentColor
    End If
    If ChooseColor_API(uChooseColor) Then
        ColorSelected = uChooseColor.rgbResult
    End If

End Function
