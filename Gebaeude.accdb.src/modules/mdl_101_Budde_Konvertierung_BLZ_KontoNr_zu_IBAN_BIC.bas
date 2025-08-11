Attribute VB_Name = "mdl_101_Budde_Konvertierung_BLZ_KontoNr_zu_IBAN_BIC"
Option Compare Database
Option Explicit

Function IBANCalc(ByVal sLand As String, _
                  ByVal sBLZ As String, _
                  ByVal sKtoNr As String, _
                  Optional ByVal nBLZMaxLen As Integer = 8, _
                  Optional ByVal nKTOMaxLen As Integer = 10) As String

    Dim zahl                  As Variant
    Dim pz                    As Variant

    Dim sIBAN                 As String
    Dim sChar                 As String
    Dim sTemp                 As String
    Dim i                     As Integer

10  sIBAN = sLand & "00" & _
            Format$(sBLZ, String$(nBLZMaxLen, "0")) & _
            Format$(sKtoNr, String$(nKTOMaxLen, "0"))

20  sIBAN = Right$(sIBAN, Len(sIBAN) - 4) & Left$(sIBAN, 4)

30  For i = 1 To Len(sIBAN)
40      sChar = Mid$(sIBAN, i, 1)
50      If Asc(sChar) > 64 And Asc(sChar) < 91 Then
60          sChar = CStr(Asc(sChar) - 55)
70      End If
80      sTemp = sTemp & sChar
90  Next i

100 zahl = CDec(sTemp)
110 pz = 98 - modDecimal(zahl, 97)

120 sTemp = Left$(sTemp, Len(sTemp) - 2) & Trim$(Str$(pz))
130 sTemp = Right$(sTemp, 6) & Left$(sTemp, Len(sTemp) - 6)

140 IBANCalc = Chr$(val(Left$(sTemp, 2)) + 55) & _
               Chr$(val(Mid$(sTemp, 3, 2)) + 55) & _
               Right$(sTemp, Len(sTemp) - 4)

If Left(IBANCalc, 2) <> sLand Then
    IBANCalc = ""
Else
    ' nix,
End If

End Function


Public Function modDecimal(Dividend, Divisor)
10  If Divisor = 0 Then
20      modDecimal = -1
30  Else
40      modDecimal = Dividend - Divisor * (Round(Dividend / Divisor))
50      If modDecimal < 0 Then modDecimal = Divisor + modDecimal
60  End If
End Function



Public Function fct_BIC(BLZ As String) As String

10  fct_BIC = Nz(DLookup("BIC", "tbl_BIC_DB_Deutsche_Bundesbank", "[Bank-leitzahl] = '" & BLZ & "'"))

End Function
