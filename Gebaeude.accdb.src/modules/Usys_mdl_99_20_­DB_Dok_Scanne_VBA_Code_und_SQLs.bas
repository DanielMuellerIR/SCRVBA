Attribute VB_Name = "Usys_mdl_99_20_­DB_Dok_Scanne_VBA_Code_und_SQLs"
Option Compare Database
Option Explicit

Sub Generiere_Codezeilen_zu_DSen()
' Generiere aus sämtlichen VBA-Codezeilen und Abfarge-SQL's neue DSe in TAbelle Usys_tbl_DBDok_Module_Prozeduren_Zeilen

10  Call Loesche_Alle_Alt_DSe   ' Lösche zunhächst alle Alt-DS'e in Tabelle Usys_tbl_DBDok_Module_Prozeduren_Zeilen
20  DoEvents

30  Call Scanne_VBA_Code        ' Generiere aus dem gesamten VBA-Code aller Module und Code Behind Forms zu jeder Codezeile einen Datensatz
    '                           ' in TAbelle Usys_tbl_DBDok_Module_Prozeduren_Zeilen (diese wird vorher komplett geleert)
    '                           ' zeitinstensiv --> einige Dutzend Sekunden
40  DoEvents

50  Call Baue_Mehrz_zusammen    ' Verschmelze in Tabelle Usys_tbl_DBDok_Module_Prozeduren_Zeilen alle mit dem "_"- Zeichen umbrochenen Zeilen
    '                           ' zu einer Zeile zusammen
60  DoEvents

70  Call List_Abfr_SQLs         ' Ergänze in o.a. TAbelle Usys_tbl_DBDok_Module_Prozeduren_Zeilen die SQL-Statemnets aller Abfragen
80  DoEvents

90  Scanne_Form_Recordsets      ' Scanne zu jedem Formular seine Datenherkunft
100 DoEvents

110 Scanne_Berichts_Recordsets   ' Scanne zu jedem Formular seine Datenherkunft
120 DoEvents

130 VBA.MsgBox "Puuh, fertich." & vbCrLf & vbCrLf _
             & "Sämtlicher VBA-Code, die SQL's sämtlicher Abfragen" & vbCrLf _
             & "sowie die Datenherlünfte sämtlicher Formulare und Berichte" & vbCrLf _
             & "neu abgelegt in Tabelle Usys_tbl_DBDok_Module_Prozeduren_Zeilen." & vbCrLf & vbCrLf _
             & "Bitte das hier geöffnete Frontend jetzt einmal komprimieren und reparierern."

End Sub

Sub Loesche_Alle_Alt_DSe()
' Lösche bisherige VBA-Code-Datensätze in Usys_tbl_DBDok_Module_Prozeduren_Zeilen
10  str_SQL_Statement = "DELETE Usys_tbl_DBDok_Module_Prozeduren_Zeilen.Prozedurname, *" _
                      & " From Usys_tbl_DBDok_Module_Prozeduren_Zeilen;"
20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True

End Sub

Sub Scanne_VBA_Code()
' Quelle: http://www.chf-online.de/vba/vbalistmakronamen.htm
' Vielen Dank an Christian Freßdorf
' modifiziert von W. Budde am 08.10.2020:
' Modulnamen, Prozedurennamen und jede Codezeile werden in Tabelle Usys_tbl_DBDok_Module_Prozeduren_Zeilen geshrieben,
' und zwar PRO Codezeile je ein DS = mit dem "_" - Zeichen umbrochene Zeilen werden zunächst als einzelne Datensätze gespeichert.
' die nachfologende Prozedur Baue_Mehrz_zusammen verschmilzt diee "Mehreiler zu einem DS!!

    Dim myProject As VBProject
    Dim myComponent As VBComponent
    Dim strNames As String
    Dim iCount As Long
    Dim strProc As String
    Dim strType As String

10  Set rst = CurrentDb.OpenRecordset("Usys_tbl_DBDok_Module_Prozeduren_Zeilen", dbOpenDynaset)
20  strNames = ""

    ' Referenziere das VBProject-Objekt myProject auf die aktuelel DB
30  On Error Resume Next
40  Set myProject = VBE.VBProjects(1)
50  On Error GoTo 0

    ' Alle Module des VBProject-Objekts myProject als For-Each-Schleife abarbeiten..
60  i = 0
70  For Each myComponent In myProject.VBComponents

80      With myComponent
            ' Modul-Typ ermitteln
90          Select Case .Type
            Case vbext_ct_StdModule
100             strType = "Standardmodul"
110         Case vbext_ct_ClassModule
120             strType = "Klassenmodul"
130         Case vbext_ct_MSForm, vbext_ct_Document
140             strType = "Code Behind Form"
150         End Select

            ' Prozeduren auslesen
160         strProc = ""

            ' Alle Routinen (Deklarationsteil, Prozeduren und Funtionen) des aktuellen Moduls abarbeiten und Zeiel für Zeile als DS im RST neu anlegen
            ' unter Ausschluss der Module / Klassenmodule, die im NAmen mit "Usys" beginnen
170         For iCount = 1 To .CodeModule.CountOfLines
180             i = i + 1
190             strProc = .CodeModule.ProcOfLine(iCount, vbext_pk_Proc)

                ' User-System-eigene Module ausschließen
200             If UCase(Left(.CodeModule.Name, 4)) <> "USYS" Then
210                 rst.AddNew
220                 rst![lfd_Nr] = i
230                 rst![Modulname] = .CodeModule.Name
240                 rst![Modul-Typ] = strType
250                 rst![Prozedurname] = IIf(strProc = "", "Deklarationsteil", strProc)
260                 rst![Codezeile] = .CodeModule.Lines(iCount, 1)
270                 rst.Update
280             End If

290         Next iCount

300     End With

310 Next myComponent

320 rst.Close
330 Set rst = Nothing

340 DoEvents

    'Lösche alle DS'e mit Leereinträgen in Feld Codezeile
350 str_SQL_Statement = "DELETE Usys_tbl_DBDok_Module_Prozeduren_Zeilen.Codezeile" _
                      & " From Usys_tbl_DBDok_Module_Prozeduren_Zeilen" _
                      & " WHERE (((Usys_tbl_DBDok_Module_Prozeduren_Zeilen.Codezeile)=''));"
360 DoCmd.SetWarnings False
370 DoCmd.RunSQL str_SQL_Statement
380 DoCmd.SetWarnings True


    'Lösche alle DS'e mit beginnendem Hochkomma in Feld Codezeile ( = Kommentarzeilen)
390 str_SQL_Statement = "DELETE Usys_tbl_DBDok_Module_Prozeduren_Zeilen.Codezeile" _
                      & " From Usys_tbl_DBDok_Module_Prozeduren_Zeilen" _
                      & " WHERE ((Left(LTrim([Codezeile]),1)= " & Chr(34) & "'" & Chr(34) & "));"
400 DoCmd.SetWarnings False
410 DoCmd.RunSQL str_SQL_Statement
420 DoCmd.SetWarnings True

End Sub

Sub Baue_Mehrz_zusammen()
' Baue alle "Folge"-Zeilen nach einer Zeile mit letzten "_"-Zeichen an diese Zeile an

    Dim str_Zeile As String

10  Set rst = CurrentDb.OpenRecordset("Usys_tbl_DBDok_Module_Prozeduren_Zeilen", dbOpenDynaset)

20  i = 0
30  rst.MoveLast
40  rst.MoveFirst

50  Do
60      i = i + 1

70      If i > 1 Then  ' erst ab 2. DS ..
80          rst.MoveNext

90          If rst.EOF Then
100             Exit Do
110         End If

120         i = rst![lfd_Nr]
130     End If

140     str_Zeile = ""

150     If Right(rst![Codezeile], 1) = "_" Then
160         j = 0

170         Do
                ' gehe zur nächsten Zeile und schreiben ihren Code in die Variable str_Zeile
180             j = j + 1
190             rst.FindFirst "[lfd_Nr] = " & (i + j)
200             str_Zeile = rst!Codezeile
210             str_Zeile = vbCrLf & str_Zeile    ' Setze in derVariablen en Zeilenumbruchzeichen davor

                ' gehe WIEDER zur Erst-Zeile und füge den Inhal der Variablen dort hinten an
220             rst.FindFirst "[lfd_Nr] = " & i
230             rst.Edit
240             rst![Codezeile] = Trim(rst![Codezeile]) & " " & Trim(str_Zeile)
250             rst.Update

                ' gehe wieder zur aktuellen NAchfolge-Zeile
260             rst.FindFirst "[lfd_Nr] = " & (i + j)

                ' Falls sie keine "_"-Zeichen mehr am Ened hat, lösche alle Nachfolgezeilen und verlasse die Loop-Schleife
270             If Right(rst![Codezeile], 1) <> "_" Then
280                 str_SQL_Statement = "DELETE Left(Trim([Codezeile]),1) AS Zeichen_1, *" _
                                      & " From Usys_tbl_DBDok_Module_Prozeduren_Zeilen" _
                                      & " WHERE (((Usys_tbl_DBDok_Module_Prozeduren_Zeilen.lfd_Nr) Between " & (i + 1) & " And " & (i + j) & "));"
290                 DoCmd.SetWarnings False
300                 DoCmd.RunSQL str_SQL_Statement
310                 DoCmd.SetWarnings True
320                 Exit Do
330             End If

340             DoEvents
350         Loop

360         rst.Requery

370     End If

        ' gehe WIEDER zur Erst-Zeile
380     rst.FindFirst "[lfd_Nr] = " & i
        ' Starte nächste Schleife
390 Loop

400 rst.Close
410 Set rst = Nothing

End Sub

Sub List_Abfr_SQLs()

    Dim str_Abfr_Typ As String
    ' Lösche zunächst alle alten DS'e in Tabelle Usys_tbl_DBDok_Module_Prozeduren_Zeilen, die aus Abfragen generiert wurden
10  str_SQL_Statement = "DELETE Usys_tbl_DBDok_Module_Prozeduren_Zeilen.[Modul-Typ]" _
                      & " From Usys_tbl_DBDok_Module_Prozeduren_Zeilen" _
                      & " WHERE (((Usys_tbl_DBDok_Module_Prozeduren_Zeilen.[Modul-Typ]) Like '*abfrage'));"

20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True
50  DoEvents

    ' Generiere aus sämtlcihen ABfragen neue DS'e in TAbelle Usys_tbl_DBDok_Module_Prozeduren_Zeilen
60  Set rst = CurrentDb.OpenRecordset("Usys_tbl_DBDok_Module_Prozeduren_Zeilen", dbOpenDynaset)

70  j = DMax("[Lfd_Nr]", "Usys_tbl_DBDok_Module_Prozeduren_Zeilen")
80  For i = 0 To CurrentDb.QueryDefs.Count - 1

90      If (UCase(Left(CurrentDb.QueryDefs(i).Name, 4)) <> "USYS") And (Left(CurrentDb.QueryDefs(i).Name, 3) <> "~sq") Then
100         j = j + 1
110         str_Abfr_Typ = ""
120         Select Case CurrentDb.QueryDefs(i).Type
            Case 0
130             str_Abfr_Typ = "Auswahlabfrage"
140         Case 32
150             str_Abfr_Typ = "Löschabfrage"
160         Case 48
170             str_Abfr_Typ = "Aktualisierungsabfrage"
180         Case 64
190             str_Abfr_Typ = "Anfügeabfrage"
200         Case 128
210             str_Abfr_Typ = "Unionsabfrage"
220         End Select

230         rst.AddNew
240         rst![lfd_Nr] = j
250         rst![Modulname] = CurrentDb.QueryDefs(i).Name
260         rst![Modul-Typ] = str_Abfr_Typ
270         rst![Prozedurname] = "SQL"
280         rst![Codezeile] = CurrentDb.QueryDefs(i).SQL
290         rst.Update
300     End If

310 Next i

320 rst.Close
330 Set rst = Nothing

End Sub

Sub Scanne_Form_Recordsets()
    Dim cnt As Container
    Dim Doc As Document
    Dim str_Form_Name As String
    ' Lösche zunächst alle alten DS'e in Tabelle Usys_tbl_DBDok_Module_Prozeduren_Zeilen, die aus Abfragen generiert wurden
10  str_SQL_Statement = "DELETE Usys_tbl_DBDok_Module_Prozeduren_Zeilen.[Modul-Typ]" _
                      & " From Usys_tbl_DBDok_Module_Prozeduren_Zeilen" _
                      & " WHERE (((Usys_tbl_DBDok_Module_Prozeduren_Zeilen.Modulname) Like 'Formular *')" _
                      & " AND ((Usys_tbl_DBDok_Module_Prozeduren_Zeilen.Prozedurname)='Datenherkunft'));"

20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True
50  DoEvents

    ' Generiere aus sämtlcihen ABfragen neue DS'e in TAbelle Usys_tbl_DBDok_Module_Prozeduren_Zeilen
60  Set rst = CurrentDb.OpenRecordset("Usys_tbl_DBDok_Module_Prozeduren_Zeilen", dbOpenDynaset)

70  j = DMax("[Lfd_Nr]", "Usys_tbl_DBDok_Module_Prozeduren_Zeilen")

80  For Each cnt In CurrentDb.Containers
90      If cnt.Name = "Forms" Then
100         For Each Doc In cnt.Documents
110             str_Form_Name = Doc.Name
120             j = j + 1
130             DoCmd.OpenForm str_Form_Name, acDesign, , , , acHidden
140             rst.AddNew
150             rst![lfd_Nr] = j
160             rst![Modulname] = "Formular " & str_Form_Name
170             rst![Modul-Typ] = "Formulareigenschaft"
180             rst![Prozedurname] = "Datenherkunft"
190             rst![Codezeile] = Forms(str_Form_Name).RecordSource
200             rst.Update
210             DoCmd.Close acForm, str_Form_Name
220         Next Doc
230     End If
240 Next cnt

250 Exit Sub

260 rst.Close
270 Set rst = Nothing

End Sub

Sub Scanne_Berichts_Recordsets()
    Dim cnt As Container
    Dim Doc As Document
    Dim str_Rep_Name As String
    ' Lösche zunächst alle alten DS'e in Tabelle Usys_tbl_DBDok_Module_Prozeduren_Zeilen, die aus Abfragen generiert wurden
10  str_SQL_Statement = "DELETE Usys_tbl_DBDok_Module_Prozeduren_Zeilen.[Modul-Typ]" _
                      & " From Usys_tbl_DBDok_Module_Prozeduren_Zeilen" _
                      & " WHERE (((Usys_tbl_DBDok_Module_Prozeduren_Zeilen.Modulname) Like 'Bericht *')" _
                      & " AND ((Usys_tbl_DBDok_Module_Prozeduren_Zeilen.Prozedurname)='Datenherkunft'));"

20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True
50  DoEvents

    ' Generiere aus sämtlcihen ABfragen neue DS'e in TAbelle Usys_tbl_DBDok_Module_Prozeduren_Zeilen
60  Set rst = CurrentDb.OpenRecordset("Usys_tbl_DBDok_Module_Prozeduren_Zeilen", dbOpenDynaset)

70  j = DMax("[Lfd_Nr]", "Usys_tbl_DBDok_Module_Prozeduren_Zeilen")

80  For Each cnt In CurrentDb.Containers
90      If cnt.Name = "Reports" Then
100         For Each Doc In cnt.Documents
110             str_Rep_Name = Doc.Name
120             j = j + 1
130             DoCmd.OpenReport str_Rep_Name, acDesign, , , acHidden
140             rst.AddNew
150             rst![lfd_Nr] = j
160             rst![Modulname] = "Bericht " & str_Rep_Name
170             rst![Modul-Typ] = "Berichtseigenschaft"
180             rst![Prozedurname] = "Datenherkunft"
190             rst![Codezeile] = Reports(str_Rep_Name).RecordSource
200             rst.Update
210             DoCmd.Close acReport, str_Rep_Name
220         Next Doc
230     End If
240 Next cnt

250 Exit Sub

260 rst.Close
270 Set rst = Nothing

End Sub
