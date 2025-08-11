Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit


Private Sub Ausdruck_Click()
10  On Error GoTo Err_Befehl67_Click

20  On Error Resume Next
30  DoCmd.RunCommand acCmdSaveRecord

40  On Error GoTo Err_Befehl67_Click:

50  Me![Verwendungszweck].SetFocus

60  DBEngine.Idle

70  If Me![Aufteilung] = 1 Then

        Dim Mldg, Stil, Titel, Antwort, Text1

80      Mldg = "Soll eine Aufteilung auf alle Kostenstellen erfolgen ?"
90      Stil = vbYesNo + vbCritical + vbDefaultButton2

100     Titel = "Kostenstelle Bereich 60!"

110     Antwort = MsgBox(Mldg, Stil, Titel)

120     If Antwort = vbYes Then

            Dim stDocName_ As String

130         DoCmd.SetWarnings False
140         stDocName_ = "Anteilige_Aufteilung_Rechnung_nach_Quardratmetern_Löschabfrage"
150         DoCmd.OpenQuery stDocName_, acNormal, acEdit
160         stDocName_ = "Anteilige_Aufteilung_Rechnung_nach_Quadratmetern"
170         DoCmd.OpenQuery stDocName_, acNormal, acEdit
180         DoCmd.SetWarnings True
190         DoEvents

200         Me![Buchungsanordnung Unterformular 2].Requery

210         cur_Betrag = DSum("[Betrag]", "A_Buchungen_Aufteilung_auf_Kostenstellen", "[ID aus Buchungen] = " & Me!ID)

220         If Me!Betrag <> Round(cur_Betrag, 2) Then

230             stDocName_ = "Anteilige_Aufteilung_Rechnung_nach_Quardratmetern_Löschabfrage"
240             DoCmd.SetWarnings False
250             DoCmd.OpenQuery stDocName_
260             DoCmd.SetWarnings True
270             Me![Buchungsanordnung Unterformular 2].SetFocus
280             Me![Buchungsanordnung Unterformular 2].Requery

290             MsgBox "Der eingegebene Betrag von " & Format(Me!Betrag, "#,##0.00 €") & vbCrLf _
                     & "entspricht nicht der Summe der aufgeteilten Einzelbeträge." & vbCrLf _
                     & "Diese beträgt " & Format(cur_Betrag, "#,##0.00 €") & "." & vbCrLf & vbCrLf _
                     & "Die Aufteilung auf mehere Kostenstelen wurde wieder gelöscht." & vbCrLf _
                     & "Bitte legen Sie wieder erneut mindestens eine Kostenstele fest."
300             Exit Sub
310         End If

320         MsgBox ("OK, ist erledigt!")

330     Else

340         MsgBox ("Na dann eben nicht!")

350     End If

360 End If

370 If Me![KontrolleBuSt] > 0.001 Then
380     MsgBox "Aufteilung Buchungstellen stimmt nicht!"
390 End If

400 If Me![KontrolleKoSt] > 0.001 Then
410     MsgBox "Aufteilung Kostenstellen stimmt nicht!"
420 End If

430 If IsNull(Me![KontrolleKoSt]) Then
440     MsgBox "Aufteilung Kostenstelle stimmt nicht"
450     Exit Sub
460 End If


470 If Me![KontrolleEmpfänger] = 65535 Then
480     MsgBox "Wer soll die Kohle bekommen????"
490     Exit Sub
500 End If

510 If IsNull(Me![KontrolleEmpfänger]) Then
520     MsgBox "Wer soll die Kohle bekommen????"
530     Me![ID Empfänger].SetFocus
540     Me![ID Empfänger].Dropdown
550     Exit Sub
560 End If

570 If Me![Datumskontrolle] = 1 Then

580     If Me![KontrolleBetrag] <> Me![KontrolleFälligkeit] Then
590         MsgBox "Aufteilung Fälligkeiten stimmt nicht!"
600         Exit Sub
610     End If

620     If IsNull(Me![KontrolleFälligkeit]) Then
630         MsgBox "Aufteilung Fälligkeiten stimmt nicht!"
640         Exit Sub
650     End If

660 End If

670 If Me!Betrag < 0 And Len(Nz(Me!TF_AO_Nr)) = 0 Then
680     MsgBox "Bitte geben Sie zu dieser Absetzung noch die AO-Nr. ein."
690     Me.TF_AO_Nr.SetFocus
700     Exit Sub
710 End If


720 If Me.Dirty Then
730     DoCmd.RunCommand acCmdSaveRecord
740 End If

750 If Daten_plausibel() = True Then
        Dim stDocName As String
760     stDocName = "Buchungsanordnung"
        ' Drucke Original
        ' DoCmd.OpenReport stDocName

        ' ab 2020: Export in PDF-Datei
770     str_Dateiname = "Ausz_Anordnung_" _
                      & Me.[ID Sachbearbeiter].Column(1) & "_" _
                      & Format(Now, "yyyy_mm_dd__hh.nn")
780     Export_PDF "Buchungsanordnung", str_Dateiname

        ' Drucke Kopie
        ' DoCmd.OpenReport stDocName, acViewNormal, , , , "Kopie"
790 End If

Exit_Befehl67_Click:
800 Exit Sub

Err_Befehl67_Click:
810 MsgBox Err.Description
820 Resume Exit_Befehl67_Click

End Sub



Private Sub Betrag_Exit(Cancel As Integer)

10  If IsNull(Me.Betrag) Then
20      Exit Sub
30  End If

40  If Me!Betrag.OldValue = Me.Betrag.Value Then
50      Exit Sub
60  End If

70  Me![Buchungsanordnung Unterformular 1].SetFocus
80  Me![Buchungsanordnung Unterformular 1]![Betrag] = Me![Betrag]

'90  Me![Buchungsanordnung Unterformular 2].SetFocus
'90  Me![Buchungsanordnung Unterformular 2]![Betrag] = Me![Betrag]
'100 Me![Buchungsanordnung Unterformular 2]![ID aus Kostenträger] = 113


110 If Me!Betrag < 0 Then
120     Me!KK_Absetzung = True
130     Me.BF_Anordnungsart.Caption = "Auszahlungsabsetzungsanordnung"
140 Else
150     Me!KK_Absetzung = False
160     Me.BF_Anordnungsart.Caption = "Auszahlungsanordnung"
170 End If

180 On Error Resume Next
190 Me.KontrolleKoSt.Requery
200 Me.Requery
210 Me.Recalc
220 Me.Repaint
230 DoCmd.RunCommand acCmdSaveRecord
240 On Error GoTo 0

250 DoEvents

260 On Error Resume Next
270 Me![Buchungsanordnung Unterformular 1].SetFocus
280 Me![Buchungsanordnung Unterformular 1]![ID aus Buchungsstellen].SetFocus
290 On Error GoTo 0


End Sub

Private Sub Buchungsanordnung_Unterformular_2_Exit(Cancel As Integer)
10  DoCmd.GoToRecord , , acFirst
End Sub

Private Sub Form_Current()
10  DoCmd.Maximize
20  lng_ID_Buchung = Me!ID
End Sub

Private Sub Form_Load()
10  DoEvents

20  Me![Buchungsanordnung Unterformular 4].SetFocus
30  Me![Buchungsanordnung Unterformular 4]!sofort = True
40  Me![Buchungsanordnung Unterformular 4]!sofort = False
50  Me![Buchungsanordnung Unterformular 4]!sofort = True
60  DoCmd.RunCommand acCmdSaveRecord

70  Me![ID Sachbearbeiter].SetFocus

80  AO_Text = ""

90  DoEvents
End Sub

Private Sub Form_Open(Cancel As Integer)
10  DoCmd.Maximize
End Sub

Private Sub Form_Resize()
10  DoCmd.Maximize
End Sub



Private Sub ID_Empfänger_GotFocus()

10  Me![ID Empfänger].Requery
End Sub

Private Sub Kombinationsfeld3_AfterUpdate()
10  Me![ID Nebenkostenart].SetFocus
20  Me![ID Nebenkostenart].Dropdown
End Sub

Private Sub Befehl67_Click()
10  On Error GoTo Err_Befehl67_Click

20  Me![Verwendungszweck].SetFocus

30  DBEngine.Idle

40  If Me![Aufteilung] = 1 Then

        Dim Mldg, Stil, Titel, Antwort, Text1

50      Mldg = "Soll eine Aufteilung auf alle Kostenstellen erfolgen ?"
60      Stil = vbYesNo + vbCritical + vbDefaultButton2

70      Titel = "Kostenstelle Bereich 60!"

80      Antwort = MsgBox(Mldg, Stil, Titel)

90      If Antwort = vbYes Then

            Dim stDocName_ As String

100         stDocName_ = "Anteilige_Aufteilung_Rechnung_nach_Quardratmetern_Löschabfrage"
110         DoCmd.OpenQuery stDocName_, acNormal, acEdit

120         stDocName_ = "Anteilige_Aufteilung_Rechnung_nach_Quadtratmetern1"
130         DoCmd.OpenQuery stDocName_, acNormal, acEdit

140         MsgBox ("OK, ist erledigt!")

150     Else

160         MsgBox ("Na dann eben nicht!")

170     End If

180 End If

190 If Me![KontrolleBuSt] > 0.001 Then
200     MsgBox "Aufteilung Buchungstellen stimmt nicht!"
210 End If

220 If Me![KontrolleKoSt] > 0.001 Then
230     MsgBox "Aufteilung Kostenstellen stimmt nicht!"
240 End If

250 If IsNull(Me![KontrolleKoSt]) Then
260     MsgBox "Aufteilung Kostenstelle stimmt nicht"
270     Exit Sub
280 End If


290 If Me![KontrolleEmpfänger] = 65535 Then
300     MsgBox "Wer soll die Kohle bekommen????"
310     Exit Sub
320 End If

330 If IsNull(Me![KontrolleEmpfänger]) Then
340     MsgBox "Wer soll die Kohle bekommen????"
350     Me![ID Empfänger].SetFocus
360     Me![ID Empfänger].Dropdown
370     Exit Sub
380 End If

390 If Me![Datumskontrolle] = 1 Then

400     If Me![KontrolleBetrag] <> Me![KontrolleFälligkeit] Then
410         MsgBox "Aufteilung Fälligkeiten stimmt nicht!"
420         Exit Sub
430     End If

440     If IsNull(Me![KontrolleFälligkeit]) Then
450         MsgBox "Aufteilung Fälligkeiten stimmt nicht!"
460         Exit Sub
470     End If

480 End If



    Dim stDocName As String

490 stDocName = "Buchungsanordnung"
500 DoCmd.OpenReport stDocName, acNormal

510 stDocName = "Buchungsanordnung_Kopie"
520 DoCmd.OpenReport stDocName, acNormal

Exit_Befehl67_Click:
530 Exit Sub

Err_Befehl67_Click:
540 MsgBox Err.Description
550 Resume Exit_Befehl67_Click

End Sub
Private Sub Befehl68_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

10  If Daten_plausibel() = True Then

        'Lege neuen Buchungs-DS an
20      str_SQL_Statement = "INSERT INTO A_Buchungen ( Haushaltsjahr ) SELECT Year(Date()) AS HH;"
30      DoCmd.SetWarnings False
40      DoCmd.RunSQL str_SQL_Statement
50      DoCmd.SetWarnings True
60      DoEvents
70      lng_ID_Buchung = DMax("[ID]", "A_Buchungen")

        'Lege neuen Fälligkeits-DS an
80      str_SQL_Statement = "INSERT INTO A_Buchungen_Aufteilung_auf_Fälligkeiten ( [ID aus Buchungen] )" _
                          & " SELECT " & lng_ID_Buchung & ";"
90      DoCmd.SetWarnings False
100     DoCmd.RunSQL str_SQL_Statement
110     DoCmd.SetWarnings True

120     DoCmd.Close acForm, Me.Name
130     DoCmd.OpenForm "Buchungsanordnung"

140 End If

End Sub
Private Sub Befehl69_Click()
10  On Error GoTo Err_Befehl69_Click


20  If Daten_plausibel() = True Then

30      DoCmd.Close acForm, Me.Name
        Dim stDocName As String
        Dim stLinkCriteria As String
40      stDocName = "Startformular"
50      DoCmd.OpenForm stDocName, , , stLinkCriteria
60  End If

Exit_Befehl69_Click:
70  Exit Sub

Err_Befehl69_Click:
80  MsgBox Err.Description
90  Resume Exit_Befehl69_Click

End Sub
Private Sub Befehl71_Click()
    On Error GoTo Err_Befehl71_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "A_Empfänger"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl71_Click:
    Exit Sub

Err_Befehl71_Click:
    MsgBox Err.Description
    Resume Exit_Befehl71_Click

End Sub


Private Sub Skonto_AfterUpdate()
10  Me![Kombinationsfeld17].SetFocus
End Sub

Private Sub Text104_LostFocus()
10  Forms!Buchungsanordnung.Refresh
20  DoEvents
End Sub


Private Sub Befehl77_Click()
10  On Error GoTo Err_Befehl77_Click

    Dim stDocName As String

20  stDocName = "Buchungsanordnung"
30  DoCmd.OpenReport stDocName, acPreview

Exit_Befehl77_Click:
40  Exit Sub

Err_Befehl77_Click:
50  MsgBox Err.Description
60  Resume Exit_Befehl77_Click

End Sub
Private Sub Befehl78_Click()
    On Error GoTo Err_Befehl78_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Startformular"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl78_Click:
    Exit Sub

Err_Befehl78_Click:
    MsgBox Err.Description
    Resume Exit_Befehl78_Click

End Sub
Private Sub Befehl79_Click()
    On Error GoTo Err_Befehl79_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Startformular"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl79_Click:
    Exit Sub

Err_Befehl79_Click:
    MsgBox Err.Description
    Resume Exit_Befehl79_Click

End Sub
Private Sub Befehl80_Click()
10  On Error GoTo Err_Befehl80_Click

20  Me![Verwendungszweck].SetFocus

30  On Error Resume Next
40  DoCmd.RunCommand acCmdSaveRecord
50  On Error GoTo Err_Befehl80_Click

60  DBEngine.Idle

70  If Me![Aufteilung] = 1 Then

        Dim Mldg, Stil, Titel, Antwort, Text1

80      Mldg = "Soll eine Aufteilung auf alle Kostenstellen erfolgen ?"
90      Stil = vbYesNo + vbCritical + vbDefaultButton2

100     Titel = "Kostenstelle Bereich 60!"

110     Antwort = MsgBox(Mldg, Stil, Titel)

120     If Antwort = vbYes Then

            Dim stDocName_ As String

130         DoCmd.SetWarnings False
140         stDocName_ = "Anteilige_Aufteilung_Rechnung_nach_Quardratmetern_Löschabfrage"
150         DoCmd.OpenQuery stDocName_, acNormal, acEdit
160         stDocName_ = "Anteilige_Aufteilung_Rechnung_nach_Quadratmetern"
170         DoCmd.OpenQuery stDocName_, acNormal, acEdit
180         DoCmd.SetWarnings True
190         DoEvents

200         Me![Buchungsanordnung Unterformular 2].Requery

210         cur_Betrag = DSum("[Betrag]", "A_Buchungen_Aufteilung_auf_Kostenstellen", "[ID aus Buchungen] = " & Me!ID)

220         If Me!Betrag <> Round(cur_Betrag, 2) Then

230             If MsgBox("Der eingegebene Betrag von " & Format(Me!Betrag, "#,##0.00 €") & vbCrLf _
                        & "entspricht nicht der Summe der aufgeteilten Einzelbeträge." & vbCrLf _
                        & "Diese beträgt " & Format(cur_Betrag, "#,##0.00 €") & "." & vbCrLf & vbCrLf _
                        & "Soll diese Auszahlungsanordnung trotzdem ausgeführt werden", vbYesNo, "Differenz bei den Beträgen") = vbNo Then

240                 stDocName_ = "Anteilige_Aufteilung_Rechnung_nach_Quardratmetern_Löschabfrage"
250                 DoCmd.SetWarnings False
260                 DoCmd.OpenQuery stDocName_
270                 DoCmd.SetWarnings True
280                 Me![Buchungsanordnung Unterformular 2].SetFocus
290                 Me![Buchungsanordnung Unterformular 2].Requery

300                 MsgBox "Die Aufteilung auf mehere Kostenstellen wurde wieder gelöscht."
310             End If

320             Exit Sub
330         End If

340         MsgBox ("OK, ist erledigt!")

350     Else

360         MsgBox ("Na dann eben nicht!")

370     End If

380 End If

    'If Daten_plausibel() = True Then
    Dim stDocName As String
390 stDocName = "Buchungsanordnung"
400 DoCmd.OpenReport stDocName, acPreview
    'End If

Exit_Befehl80_Click:
410 Exit Sub

Err_Befehl80_Click:
420 MsgBox Err.Description & "  Zeile:" & Erl
430 Resume Exit_Befehl80_Click

End Sub

Private Sub von__BeforeUpdate(Cancel As Integer)
10  Me![bis_].SetFocus
End Sub

Private Sub von__LostFocus()
10  DBEngine.Idle
20  Forms!Buchungsanordnung.Refresh
30  Me.Text104.SetFocus

End Sub



Private Sub Befehl88_Click()
10  On Error GoTo Err_Befehl88_Click

    Dim stDocName As String

20  stDocName = "Anteilige_Aufteilung_Rechnung_nach_Quardratmetern_Löschabfrage"
30  DoCmd.OpenQuery stDocName, acNormal, acEdit

Exit_Befehl88_Click:
40  Exit Sub

Err_Befehl88_Click:
50  MsgBox Err.Description
60  Resume Exit_Befehl88_Click

End Sub

Function Daten_plausibel()

10  Daten_plausibel = False
    '20  Me.SetFocus
    '30  Me.[ID_Sachbearbeiter].SetFocus

20  If IsNull(Me.ID_Sachbearbeiter) Then
30      MsgBox "Bitte einen Sachbearbeiter festlegen"
40      Me.ID_Sachbearbeiter.SetFocus
50      Exit Function
60  End If


70  If IsNull(Me!Auftragsnummer) Then
80      MsgBox "Bitte legen Sie eine Auftragsnummer fest"
90      Me.Auftragsnummer.SetFocus
100     Exit Function
110 End If

120 If IsNull(Me!Kombinationsfeld10) Then
130     MsgBox "Bitte Zahlungsart festlegen"
140     Me.Kombinationsfeld10.SetFocus
150     Exit Function
160 End If

170 If IsNull(Me!Kombinationsfeld16) Then
180     MsgBox "Bitte festlegen, ob Schluss- oder Teilzahlung"
190     Me.Kombinationsfeld16.SetFocus
200     Exit Function
210 End If

220 If IsNull(Me!Zyklus) Then
230     MsgBox "Bitte einen Zahlungszyklus festlegen"
240     Me!Zyklus.SetFocus
250     Exit Function
260 End If

270 If IsNull(Me![ID Nebenkostenart]) Or Me![ID Nebenkostenart] = 0 Then
280     MsgBox "Musst schon hier reinschreiben, was hier bezahlt werden soll!"
290     Me![ID Nebenkostenart].SetFocus
300     Exit Function
310 End If

320 If IsNull(Me!Betrag) Then
330     MsgBox "Bitte einen Betrag festlegen"
340     Me.Betrag.SetFocus
350     Exit Function
360 End If


370 If IsNull(Me![Buchungsanordnung Unterformular 1]![ID aus Buchungsstellen]) Or Me![Buchungsanordnung Unterformular 1]![ID aus Buchungsstellen] = 0 Then
380     MsgBox "Bitte eine Buchungsstelle festlegen."
390     Me![Buchungsanordnung Unterformular 1].SetFocus
400     Me![Buchungsanordnung Unterformular 1]![ID aus Buchungsstellen].SetFocus
410     Exit Function
420 End If

430 If Not Me![Buchungsanordnung Unterformular 2].Form.NewRecord Then

440     If IsNull(Me![Buchungsanordnung Unterformular 2]![ID aus Kostenstellen]) Or Me![Buchungsanordnung Unterformular 2]![ID aus Kostenstellen] = 0 Then
450         MsgBox "Bitte eine Kostenstelle festlegen."
460         Me![Buchungsanordnung Unterformular 2].SetFocus
470         Me![Buchungsanordnung Unterformular 2]![ID aus Kostenstellen].SetFocus
480         Exit Function
490     End If

500 End If

510 If IsNull(Me![Buchungsanordnung Unterformular 2]![ID aus Kostenträger]) Or Me![Buchungsanordnung Unterformular 2]![ID aus Kostenträger] = 0 Then
520     MsgBox "Bitte einen Kostenträger festlegen."
530     Me![Buchungsanordnung Unterformular 2].SetFocus
540     Me![Buchungsanordnung Unterformular 2]![ID aus Kostenträger].SetFocus
550     Exit Function
560 End If

570 If Me![KontrolleBuSt] > 0.001 Then
580     MsgBox "Aufteilung Buchungstellen stimmt nicht!"
590     Me![Buchungsanordnung Unterformular 1]!Betrag.SetFocus
600     Exit Function
610 End If

620 If Me![KontrolleKoSt] > 0.001 Then
630     MsgBox "Aufteilung Kostenstellen stimmt nicht!"
640     Me![Buchungsanordnung Unterformular 2]!Betrag.SetFocus
650     Exit Function
660 End If

670 If IsNull(Me![KontrolleKoSt]) Then
680     MsgBox "Aufteilung Kostenstelle stimmt nicht"
690     DoEvents
700     Me![Buchungsanordnung Unterformular 2]!Betrag.SetFocus
710     Exit Function
720 End If

730 If IsNull(Me![Verwendungszweck]) Then
740     MsgBox "Bitte geben Sie einen Verwendungszweck ein"
750     Me!Verwendungszweck.SetFocus
760     Exit Function
770 End If

780 If Me![KontrolleEmpfänger] = 65535 Then
790     MsgBox "Wer soll die Kohle bekommen????"
800     Me.ID_Empfänger.SetFocus
810     Exit Function
820 End If

830 If IsNull(Me![KontrolleEmpfänger]) Then
840     MsgBox "Wer soll die Kohle bekommen????"
850     Me![ID Empfänger].SetFocus
860     Exit Function
870 End If

880 If IsNull(Me![von_]) And IsNull(Me.Text104) Then
890     MsgBox "Bitte geben Sie wenigstens ein Leistungsdatum ein (entweder vom:  oder bis:)"
900     Me![von_].SetFocus
910     Exit Function
920 End If


930 If Me![Datumskontrolle] = 1 Then

940     If Me![KontrolleBetrag] <> Me![KontrolleFälligkeit] Then
950         MsgBox "Aufteilung Fälligkeiten stimmt nicht!"
960         Me![Buchungsanordnung Unterformular 4]!Betrag.SetFocus
970         Exit Function
980     End If

990     If IsNull(Me![KontrolleFälligkeit]) Then
1000        MsgBox "Aufteilung Fälligkeiten stimmt nicht!"
1010        Me![Buchungsanordnung Unterformular 4]!Betrag.SetFocus
1020        Exit Function
1030    End If

1040 End If

    ' Wenn alle Vorinstanzen anstandslos passiert wurden, ist alles ok
1050 Daten_plausibel = True

End Function
