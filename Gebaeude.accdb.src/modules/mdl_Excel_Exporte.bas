Attribute VB_Name = "mdl_Excel_Exporte"
Option Compare Database
Option Explicit

Sub Export_Excel(Abfr_Name, Zieldatei, Blattname, Hinweis)

    Dim xl As Object
    Dim str_Spalte As String
    Dim str_Zeile As String
    Dim fld As Field

    ' ================================================================
    ' EXCEL-EXPORT ====================================================
    ' ================================================================
10  DoCmd.OutputTo _
            acOutputQuery, _
            Abfr_Name, _
            "ExcelWorkbook(*.xlsx)", _
            Zieldatei, _
            False

    'Step 1:  Starte Excel, dann öffne die Ziel-Arbeitsmappe
20  Set xl = CreateObject("Excel.Application")
30  xl.Workbooks.Open (Zieldatei)

    ' Benenne Tabellenblatt um
40  xl.activeworkbook.Sheets(Left(Abfr_Name, 31)).Activate
50  xl.activeworkbook.Sheets(Left(Abfr_Name, 31)).Name = Blattname

    ' Ermittle letzten Spaltenbuchstaben
60  str_Spalte = VBA_Column_Number_To_Letter(CurrentDb.QueryDefs(Abfr_Name).Fields.Count) 'DM2022-04-21

    ' Ermittle letzte Zeile
70  str_Zeile = Trim(Str(DCount(1, Abfr_Name))) + 1

    ' Formatiere nur die Überschriften in Zeile 1 fett, grau und dick umrahmt
80  xl.Range("A1:" & str_Spalte & "1").Select
90  xl.Selection.Font.Bold = True
100 xl.Selection.Borders.Weight = 3
110 xl.Selection.Interior.Color = RGB(217, 217, 217)

    ' Hier Schleife pro Feld = Spalte zur Spaltenformatierung
120 i = 0
130 For Each fld In CurrentDb.QueryDefs(Abfr_Name).Fields
140     i = i + 1
150     xl.Columns(VBA_Column_Number_To_Letter(i)).Select

160     Select Case fld.Type

        Case dbCurrency
170         xl.Selection.NumberFormat = "#,##0.00 $"
180         DoEvents
190         xl.Selection.HorizontalAlignment = xlRight

200     Case dbDate
210         xl.Selection.NumberFormat = "dd/mm/yyyy"
220         DoEvents
230         xl.Selection.HorizontalAlignment = xlRight


240     Case dbTime, dbTimeStamp
250         xl.Selection.NumberFormat = "dd/mm/yyyy hh:mm:ss"

260     Case dbDecimal, dbDouble, dbSingle, dbFloat
270         xl.Selection.NumberFormat = "#,##0.00"
280         DoEvents
290         xl.Selection.HorizontalAlignment = xlRight

300     Case dbInteger, dbLong
310         DoEvents
320         xl.Selection.HorizontalAlignment = xlRight

330     Case dbText, dbMemo

340     Case dbBoolean

350     Case Else
            ' nix
360     End Select

370 Next fld


    ' .. und optimiere alle Spaltenbreiten
380 xl.Columns("A:" & str_Spalte).EntireColumn.AutoFit

    ' .. und optimiere alle Zeilenhöhen
400 xl.Rows("1:" & str_Zeile).EntireRow.AutoFit

    ' Füge oben drüber 5 Leerzeilen ein
410 xl.Rows("1").Select
420 For i = 1 To 5
430     xl.Rows(1).Insert
440 Next i

    ' Gehe zur Zelle A2 und trage Überschriftshinweis ein
450 xl.Range("A2").Select
460 xl.ActiveCell.FormulaR1C1 = Hinweis

    ' Trage Zeitstempel ein
470 xl.Range("F2").Select
480 xl.ActiveCell.FormulaR1C1 = "Stand:"
490 xl.Range("G2").Select
500 xl.ActiveCell.FormulaR1C1 = Format(Now, "dd.mm.yyyy hh:mm")

    ' Formatiere Einträge in Zeile 2 Fett
510 xl.Range("A2:G2").Select
520 xl.Selection.Font.Bold = True
530 xl.Selection.Interior.Color = RGB(227, 227, 227)

    ' Füge vorne Leerspalte ein
540 xl.Columns("A").Select
550 xl.Columns(1).Insert

    ' Friere ab Zeile 7 das Fenster ein
560 xl.Range("A7").Select
570 xl.ActiveWindow.FreezePanes = True

    ' Positioniere Markierung auf B7
580 xl.Range("B7").Select

    ' Speichere ab ..
590 xl.activeworkbook.Save

    ' Fertich-Meldung
600 MsgBox "Export in die Datei " & vbCrLf _
         & Zieldatei & vbCrLf _
         & "erfolgreich abgeschlossen.", vbOKOnly, "Export ergfolgreich"

    ' Excel beenden
610 xl.Application.Quit

    ' Objektreferenz aufheben
620 Set xl = Nothing

End Sub

Sub Export_Test()

10  Export_Excel Abfr_Name:="qry_200_10_05_Werterhöhungen_nach_Bewertungsjahr", _
                 Zieldatei:="S:\a60\Datenbank\Excel-Exporte\Test.xlsx", _
                 Blattname:="Werterh. nach Bewertungsjahr", _
                 Hinweis:="Werterhöhungen nach Bewertungsjahr"

End Sub


Public Function VBA_Column_Number_To_Letter(ByVal ColNum As Integer) As String
    'DM2022-04-21 dafür auch Excel Object Library als Verweis gesetzt
    VBA_Column_Number_To_Letter = Split(Cells(1, ColNum).Address, "$")(1)

End Function
