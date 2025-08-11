Attribute VB_Name = "Modul2"
Option Compare Database
Option Explicit

Public Function FctZahl_In_Worten(zahl As Double)
'wandelt Zahlen im Bereich 0-999.999.999 in Worte um
'von Karl Donaubauer

    Dim z As String, w As String, vz As String
    Dim r As Integer, i As Integer

10  If zahl < 0 Then
20      zahl = zahl * (-1)
30      vz = " - "
40  Else
50      vz = ""
60  End If

70  z = Int(zahl)
80  If z = 0 Then FctZahl_In_Worten = "null": Exit Function
90  If z < 0 Then FctZahl_In_Worten = "": Exit Function

100 For i = 6 To 0 Step -3
110     If Len(z) > i Then
120         r = Right(Int(z / (10 ^ i)), 3)
130         If r > 99 Then w = FctZif(1, Left(r, 1), w) & "hundert": r = Right(r, 2)
140         If r > 19 Then w = FctZif(3, Right(r, 1), w): w = FctZif(4, Left(r, 1), w)
150         If i = 0 And Right(z, 3) Like "00*" And r > 0 Then w = w & "und"
160         If r < 10 Then w = FctZif(1, r, w)
170         If r > 9 And r < 20 Then w = FctZif(2, Right(r, 1), w)
180         If i = 6 And Len(z) = 7 And r = 1 Then w = "einemillion"
190         If i = 6 And Right(Int(z / 10 ^ i), 3) > 1 Then w = w & "millionen"
200         If i = 3 And Right(Int(z / 10 ^ i), 3) > 0 Then w = w & "tausend"
210         If i = 0 And r = 1 Then w = w & "s"
220     End If
230 Next

240 FctZahl_In_Worten = vz & w

End Function
'----------------------
Function FctZif(Par As Byte, r As Integer, w As String)

  w = w & Choose(r, "ein", "zwei", "drei", "vier", "fünf", "sech", "sieb", "acht", "neun")

  Select Case Par
      Case 1, 3
          If r = 6 Then w = w & "s"
          If r = 7 Then w = w & "en"
          If Par = 3 And r > 0 Then w = w & "und"
      Case 2
          w = w & "zehn"
          If r = 1 Then w = Left(w, Len(w) - 7) & "elf"
          If r = 2 Then w = Left(w, Len(w) - 8) & "zwölf"
      Case 4
          If r = 2 Then w = Left(w, Len(w) - 4) & "zwan"
          w = w & "zig"
          If r = 3 Then w = Left(w, Len(w) - 3) & "ßig"
  End Select

  FctZif = w
End Function
