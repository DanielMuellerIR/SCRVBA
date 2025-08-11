Attribute VB_Name = "Modul1"
Option Compare Database
Option Explicit


Public Function faktor(Anfang As Date, Ende As Date, Mietbeginn As Date, Mietende As Date) As Double

10  On Error GoTo Problem

20  If IsNull(Mietende) Then
30      faktor = 0
40      Exit Function
50  End If

60  If Nz(Mietende) = "" Then
70      faktor = 0
80      Exit Function
90  End If

100 If Mietbeginn <= Anfang Then
110     faktor = Ende - Anfang
120 End If

130 If Mietbeginn > Anfang Then
140     faktor = Ende - Mietbeginn
150 End If

160 If Mietbeginn >= Ende Then
170     faktor = 0
180 End If


190 If Mietende < Anfang Then
200     faktor = 0
210 End If

220 If Mietende > Anfang And Mietende < Ende Then
230     faktor = Mietende - Anfang
240 End If

250 If Mietende > Ende Then
260     faktor = Ende - Anfang
270 End If

280 If faktor > 0 Then
290     faktor = faktor / (Ende - Anfang)
300 End If

310 Exit Function
Problem:
320 MsgBox Err.Description & "Zeile " & Erl
330 On Error GoTo 0

End Function
