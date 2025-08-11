Attribute VB_Name = "mdl_190_Index_Ermittlung"
Option Compare Database
Option Explicit
Public rst_Indx_BezJahre As DAO.Recordset
Public Idx_Teil(10, 3) As Double
'

Sub Indexvorbereitung()

10  str_SQL_Statement = "SELECT tbl_200_10_05_Indexe.Bezugsjahr" _
                      & " FROM tbl_200_10_05_Indexe" _
                      & " GROUP BY tbl_200_10_05_Indexe.Bezugsjahr" _
                      & " ORDER BY tbl_200_10_05_Indexe.Bezugsjahr;"
20  Set rst_Indx_BezJahre = CurrentDb.OpenRecordset(str_SQL_Statement, dbOpenDynaset)

End Sub

Function fc_Index(Optional Baujahr, Optional bew_jahr)
    Debug.Print (vbNewLine & "--- fc_Index Start " & Time())
    Const bln_Test As Boolean = True    ' Schalter für Tests  'DM2022-06-30 hier auf true gesetzt

    Dim i As Long, j As Long

    Dim lng_Bezugsjahr As Long
    Dim lng_Bezugsjahr_Bew As Long
    Dim lng_BauJahr As Long

    Dim idx_Bau_Jahr As Double
    Dim idx_Bew_Jahr As Double

10  Call Indexvorbereitung

    ' Plausibilitätsüberwachung zu den Übergabe-Parametern: ---------------------------------------------------------
20  If IsNull(bew_jahr) Or IsMissing(bew_jahr) Then
30      fc_Index = "Bewertungsjahr fehlt!"
40      Exit Function
50  End If

60  If IsNull(Baujahr) Or IsMissing(Baujahr) Then
70      fc_Index = "Baujahr fehlt!"
80      Exit Function
90  End If

100 If IsNull(DLookup("[Index]", "tbl_200_10_05_Indexe", "[Jahr] = " & bew_jahr)) Then
110     fc_Index = "zum Bewertungsjahr " & bew_jahr & " existiert kein Indexeintrag in der Indextabelle"
120     Exit Function
130 End If

140 If IsNull(DLookup("[Index]", "tbl_200_10_05_Indexe", "[Jahr] = " & Baujahr)) Then
150     fc_Index = "zum Baujahr " & Baujahr & " existiert kein Indexeintrag in der Indextabelle"
160     Exit Function
170 End If
    ' Ende Plausibilitätsüberwachung zu den Übergabe-Parametern: ---------------------------------------------------------

    ' Sonderfall Baujahr 2000 und BewJahr 2009: Index fest 16,4%
180 If Baujahr = 2000 And bew_jahr = 2009 Then
190     fc_Index = 1.1641
        Debug.Print ("Baujahr = 2000 And Bew_Jahr = 2009 -> True, daher: fc_Index = 1.1641") 'DM2022-06-30
        Debug.Print (vbNewLine & "fc_Index = " & fc_Index & vbNewLine & "--- fc_Index Ende " & Time())
200     Exit Function
210 End If


    ' Schleifenkonstrukt zur Ermittlung eines Indexes von Bezugsjahresblock zu Bezugsjahresblock -----------------------------
    ' Ermittle jüngste Bezugsjahre zu Bau- und Bewertungsjahr
220 lng_Bezugsjahr = DMax("[Bezugsjahr]", "tbl_200_10_05_Indexe", "[Jahr] = " & Baujahr)
230 lng_Bezugsjahr_Bew = DMax("[Bezugsjahr]", "tbl_200_10_05_Indexe", "[Jahr] = " & bew_jahr)
Debug.Print ("lng_Bezugsjahr = DMax([Bezugsjahr], tbl_200_10_05_Indexe, [Jahr] = " & Baujahr & ")  = " & lng_Bezugsjahr) 'DM2022-06-30
Debug.Print ("lng_Bezugsjahr_Bew = DMax([Bezugsjahr], tbl_200_10_05_Indexe, [Jahr] = " & bew_jahr & ")  = " & lng_Bezugsjahr_Bew) 'DM2022-06-30


    ' Ermittle. ob es zu Baujahr und Bewertungsjahr Datensätze zum selben Bezugsjahr gibt
240 If lng_Bezugsjahr = lng_Bezugsjahr_Bew Then

        ' Es gibt zu Baujahr und Bewertungsjahr einen DS zum selben Bezugsjahr
250     idx_Bau_Jahr = DLookup("[Index]", "tbl_200_10_05_Indexe", "[Bezugsjahr] = " & lng_Bezugsjahr & " and [Jahr] = " & Baujahr)
260     idx_Bew_Jahr = DLookup("[Index]", "tbl_200_10_05_Indexe", "[Bezugsjahr] = " & lng_Bezugsjahr & " and [Jahr] = " & bew_jahr)
270     fc_Index = 1 + ((idx_Bew_Jahr - idx_Bau_Jahr) / idx_Bau_Jahr)
280     fc_Index = Round(fc_Index, 3)
        Debug.Print ("lng_Bezugsjahr = lng_Bezugsjahr_Bew -> True, daher:" & vbNewLine & "idx_Bau_Jahr = " & idx_Bau_Jahr & vbNewLine & "idx_Bew_Jahr = " & idx_Bew_Jahr) 'DM2022-06-30
        Debug.Print ("fc_Index = round(1 + ((idx_Bew_Jahr - idx_Bau_Jahr) / idx_Bau_Jahr), 3)")
        Debug.Print ("fc_Index = round(1 + ((" & idx_Bew_Jahr & " - " & idx_Bau_Jahr & ") / " & idx_Bau_Jahr & "), 3) = " & fc_Index)
        Debug.Print (vbNewLine & "--- fc_Index Ende " & Time())
290     Exit Function

300 Else
    Debug.Print ("lng_Bezugsjahr = lng_Bezugsjahr_Bew -> False, daher: Schleifenkosntrukt gem. Exeldatei Indexberechnungsmuster.xlsx")
        ' Es gibt zu Baujahr und Bewertungsjahr zusammen keine 2 DS'e zum selben Bezugsjahr
        ' Nachf. Schleifenkosntrukt gem. Exeldatei "Indexberechnungsmuster.xlsx"  :
        ' Das Recordset rst_Indx_BezJahre wird gebildet in der Prozedur Indexvorbereitung,
        ' diese muss zuvor aufgerufen werden, nämlich von mehreren:
        ' Hauptmaske: Buttons für temporäre Bewertung bzw. temporäre-HK-Liste
        ' Bewertungsmaske: Einzelbewertung bzw. HK-Liste
        ' Hintergrund: Bei Listenausdruck HKs soll die Bildung der Recordsets
        ' nicht immer und immer wieder zu jedem GebtTeil-DS neu erfolgen.
310     i = 0
320     Do
330         i = i + 1

340         If i = 1 Then

                ' Startschleife
                ' Springe im Recordset rst_Indx_BezJahre den DS an mit dem zum Baujahr gefundenen jüngstem Bezugsjahr
                ' Grund: es wird später von hier an mit .movenext  DS für DS weiter gesprungen
350             rst_Indx_BezJahre.FindFirst "[Bezugsjahr] = " & lng_Bezugsjahr
                ' Ermittle zum Baujahr den Index
360             Idx_Teil(i, 0) = DLookup("[Index]", "tbl_200_10_05_Indexe", "[Bezugsjahr] = " & lng_Bezugsjahr & " ANd [JAhr] = " & Baujahr)

                ' Danach
                ' Ermittle letztes Jahr im gleichen Bezugsjahresblock
370             lng_BauJahr = DMax("[Jahr]", "tbl_200_10_05_Indexe", "[Bezugsjahr] = " & lng_Bezugsjahr)
                ' Ermittle den Index zum letzten Jahr im selben Bezugsjahr-Block
380             Idx_Teil(i, 1) = DLookup("[Index]", "tbl_200_10_05_Indexe", "[Bezugsjahr] = " & lng_Bezugsjahr & " ANd [JAhr] = " & lng_BauJahr)

390         Else

                ' Folgeschleife(n)
                ' Ermittle im (bereits nächsten, da .movenext weiter unten schon lief) Bezugsjahresblock den Index zum selben Baujahr der Vorschleife
400             Idx_Teil(i, 0) = DLookup("[Index]", "tbl_200_10_05_Indexe", "[Bezugsjahr] = " & lng_Bezugsjahr & " ANd [JAhr] = " & lng_BauJahr)

                ' Stelle fest, ob in der aktuellen Schleife bereits der Bezugsjahresblock des Bewertungsjahres erreicht ist
410             If lng_Bezugsjahr = lng_Bezugsjahr_Bew Then
                    ' Dann ermittle Idx_Teil(i, 1) zum Bewjahr
420                 Idx_Teil(i, 1) = DLookup("[Index]", "tbl_200_10_05_Indexe", "[Bezugsjahr] = " & lng_Bezugsjahr & " ANd [JAhr] = " & bew_jahr)

                    ' ENDE DER Schleife =====================================
430                 Exit Do
                    ' ENDE DER Schleife =====================================

440             Else
                    ' ansonsten: Ermittle das letzte Jahr im gleichen Bezugsjahresblock
450                 lng_BauJahr = DMax("[Jahr]", "tbl_200_10_05_Indexe", "[Bezugsjahr] = " & lng_Bezugsjahr)
                    ' Ermittle den Index zum letzten JAhr im gleichen Bezugsjahresblock
460                 Idx_Teil(i, 1) = DLookup("[Index]", "tbl_200_10_05_Indexe", "[Bezugsjahr] = " & lng_Bezugsjahr & " ANd [JAhr] = " & lng_BauJahr)

470             End If

480         End If

            ' Gehe zum nächsten Bezugsjahresblock
490         rst_Indx_BezJahre.MoveNext

500         If rst_Indx_BezJahre.EOF Then
                ' ENDE DER Schleife =====================================
510             Exit Do
                ' ENDE DER Schleife =====================================
520         End If

            ' Ermittle das Bezugsjahr diese Blocks
530         lng_Bezugsjahr = rst_Indx_BezJahre![Bezugsjahr]


540         If bln_Test = True Then
560             Debug.Print i & ".te Schleife: ", "Baujahr: " & lng_BauJahr, "Bezugsjahr: " & lng_Bezugsjahr
570         End If


580     Loop
        ' Schleifenkonstrukt ENDE --------------------------------------------------------------------------------------------

        ' Nach den Schleifen nun die Verrechnung der Teilindexe --------------------------------------------------------------

        ' Bilde die Teil-Differenz-Indexe PRO Bezugsjahr
590     For j = 1 To i
600         Idx_Teil(j, 2) = 1 + (Idx_Teil(j, 1) - Idx_Teil(j, 0)) / (Idx_Teil(j, 0))
610     Next j


        ' Multipliziere im Array alle Differenz-Indexe miteinander -----------------------------------------------------------
620     For j = 0 To i

            ' in erster Schleife: Lege fc_Index auf den Start-Multiplikator  1
630         If j = 0 Then
640             fc_Index = 1
                Debug.Print ("fc_Index = 1")
650         Else
660             fc_Index = fc_Index * Idx_Teil(j, 2)
                Debug.Print ("fc_Index * Idx_Teil(j, 2) = " & fc_Index)
670         End If

680     Next j

        ' Runde auf 4 Nachkomma-Stellen
690     fc_Index = Round(fc_Index, 4)


        ' FERTICH
    Debug.Print (vbNewLine & "fc_Index = " & fc_Index & vbNewLine & "--- fc_Index Ende " & Time())
700 End If

End Function
