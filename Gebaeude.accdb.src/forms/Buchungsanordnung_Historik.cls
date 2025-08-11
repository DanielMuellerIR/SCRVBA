Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit



Private Sub Betrag_AfterUpdate()
10  Me![Buchungsanordnung Unterformular 1].SetFocus
20  Me![Buchungsanordnung Unterformular 1]![Betrag] = Me![Betrag]
30  Me![Buchungsanordnung Unterformular 1]![ID aus Buchungsstellen].SetFocus


40  If Me!Betrag < 0 Then
50      Me!KK_Absetzung = True
60      Me.BF_Anordnungsart.Caption = "Absetzungsanordnung"
70  Else
80      Me!KK_Absetzung = False
90      Me.BF_Anordnungsart.Caption = "Auszahlungsanordnung"
100 End If

110 SendKeys "{F4}", True

End Sub

Private Sub Buchungsanordnung_Unterformular_1_Exit(Cancel As Integer)
Me![KontrolleKoSt].Requery
Me![KontrolleBuSt].Requery
End Sub

Private Sub Buchungsanordnung_Unterformular_2_Exit(Cancel As Integer)
Me![KontrolleKoSt].Requery
Me![KontrolleBuSt].Requery
End Sub

Private Sub Form_Current()
10  DoCmd.Maximize
20  lng_ID_Buchung = Me![ID]
End Sub



Private Sub Form_Load()
DoCmd.Maximize
End Sub

Private Sub ID_Empfänger_AfterUpdate()
'Me![Buchungsanordnung Unterformular 4].SetFocus
'Me![Buchungsanordnung Unterformular 4]![sofort] = -1
End Sub


Private Sub ID_Empfänger_LostFocus()
Me![Buchungsanordnung Unterformular 4].SetFocus
Me![Buchungsanordnung Unterformular 4]![sofort] = -1

End Sub

Private Sub ID_Nebenkostenart_AfterUpdate()
Me![Betrag].SetFocus
End Sub

Private Sub Kombinationsfeld3_AfterUpdate()
Me![ID Nebenkostenart].SetFocus
SendKeys "{F4}", False

End Sub


Private Sub Befehl67_Click()
10  On Error GoTo Err_Befehl67_Click


20  If Me![KontrolleBuSt] > 0.001 Then
30      MsgBox "Aufteilung Buchungstellen stimmt nicht!"
40  End If

50  If Me![KontrolleKoSt] > 0.001 Then
60      MsgBox "Aufteilung Kostenstellen stimmt nicht!"
70  End If

80  If Me!Betrag < 0 And Len(Nz(Me!TF_AO_Nr)) = 0 Then
90      MsgBox "Bitte geben Sie zu dieser Absetzung noch die AO-Nr. ein."
100     Me.TF_AO_Nr.SetFocus
110     Exit Sub
120 End If

130 If Daten_plausibel() Then
        Dim stDocName As String

140     If Me.Dirty Then
150         DoCmd.RunCommand acCmdSaveRecord
160     End If

170     stDocName = "Buchungsanordnung"
        ' Drucke Original
        ' DoCmd.OpenReport stDocName

        ' ab 2020: Export in PDF-Datei
180     str_Dateiname = "Ausz_Anordnung_" _
                      & Me.[Kombinationsfeld3].Column(1) & "_" _
                      & Format(Now, "yyyy_mm_dd__hh.nn")
190     Export_PDF "Buchungsanordnung", str_Dateiname
        ' Drucke Kopie
        ' DoCmd.OpenReport stDocName, acViewNormal, , , , "Kopie"
200 End If

Exit_Befehl67_Click:
210 Exit Sub

Err_Befehl67_Click:
220 MsgBox Err.Description
230 Resume Exit_Befehl67_Click


End Sub
Private Sub Befehl68_Click()
On Error GoTo Err_Befehl68_Click


    DoCmd.GoToRecord , , acNewRec

Exit_Befehl68_Click:
    Exit Sub

Err_Befehl68_Click:
    MsgBox Err.Description
    Resume Exit_Befehl68_Click

End Sub
Private Sub Befehl69_Click()
10  On Error GoTo Err_Befehl69_Click



20  If Daten_plausibel() Then
30      DoCmd.Close acForm, "Filter für Buchungen_Historik"
40      DoCmd.Close
50  End If

Exit_Befehl69_Click:
60  Exit Sub

Err_Befehl69_Click:
70  MsgBox Err.Description
80  Resume Exit_Befehl69_Click

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

Private Sub Text104_LostFocus()
DBEngine.Idle
Forms!Buchungsanordnung_Historik.Refresh
End Sub

Private Sub Text110_LostFocus()
DBEngine.Idle
Forms!Buchungsanordnung_Historik.Refresh
End Sub

Private Sub Verwendungszweck_AfterUpdate()
Me![ID Empfänger].SetFocus
SendKeys "{F4}", True
End Sub
Private Sub Befehl75_Click()
On Error GoTo Err_Befehl75_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

    DoCmd.Close acForm, "Filter für Buchungen_Historik"
    DoCmd.Close

    'Dim stDocName As String
    'Dim stLinkCriteria As String

    'stDocName = "Buchungsanordnung"
    'DoCmd.OpenForm stDocName, , , stLinkCriteria



Exit_Befehl75_Click:
    Exit Sub

Err_Befehl75_Click:
    MsgBox Err.Description
    Resume Exit_Befehl75_Click

End Sub
Private Sub Befehl76_Click()


10  If Me![KontrolleBuSt] > 0.001 Then
20      MsgBox "Aufteilung Buchungstellen stimmt nicht!"
30  End If

40  If Me![KontrolleKoSt] > 0.001 Then
50      MsgBox "Aufteilung Kostenstellen stimmt nicht!"
60  End If



70  If Me![KontrolleBuSt] > 0.001 Then
80      MsgBox "Aufteilung Buchungstellen stimmt nicht!"
90  End If

100 If Me![KontrolleKoSt] > 0.001 Then
110     MsgBox "Aufteilung Kostenstellen stimmt nicht!"
120 End If

130 If Me.Dirty Then
140     DoCmd.RunCommand acCmdSaveRecord
150 End If

    Dim stDocName As String


160 If Daten_plausibel() Then
170     stDocName = "Buchungsanordnung"
180     DoCmd.OpenReport stDocName, acPreview
190 End If

End Sub
Private Sub Befehl78_Click()
On Error GoTo Err_Befehl78_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 2, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 5, , acMenuVer70 'Paste Append

Exit_Befehl78_Click:
    Exit Sub

Err_Befehl78_Click:
    MsgBox Err.Description
    Resume Exit_Befehl78_Click

End Sub

Private Sub von__LostFocus()
DBEngine.Idle
Forms!Buchungsanordnung_Historik.Refresh
End Sub



Function Daten_plausibel()

10  Daten_plausibel = False

20  If IsNull(Me!Kombinationsfeld3) Then
30      MsgBox "Bitte einen Sachbearbeiter festlegen"
40      Me!Kombinationsfeld3.SetFocus
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

430 If IsNull(Me![Buchungsanordnung Unterformular 2]![ID aus Kostenstellen]) Or Me![Buchungsanordnung Unterformular 2]![ID aus Kostenstellen] = 0 Then
440     MsgBox "Bitte eine Kostenstelle festlegen."
450     Me![Buchungsanordnung Unterformular 2].SetFocus
460     Me![Buchungsanordnung Unterformular 2]![ID aus Kostenstellen].SetFocus
470     Exit Function
480 End If

490 If IsNull(Me![Buchungsanordnung Unterformular 2]![ID aus Kostenträger]) Or Me![Buchungsanordnung Unterformular 2]![ID aus Kostenträger] = 0 Then
500     MsgBox "Bitte einen Kostenträger festlegen."
510     Me![Buchungsanordnung Unterformular 2].SetFocus
520     Me![Buchungsanordnung Unterformular 2]![ID aus Kostenträger].SetFocus
530     Exit Function
540 End If

550 If Me![KontrolleBuSt] > 0.001 Then
560     MsgBox "Aufteilung Buchungstellen stimmt nicht!"
570     Me![Buchungsanordnung Unterformular 1]!Betrag.SetFocus
580     Exit Function
590 End If

600 If Me![KontrolleKoSt] > 0.001 Then
610     MsgBox "Aufteilung Kostenstellen stimmt nicht!"
620     Me![Buchungsanordnung Unterformular 2]!Betrag.SetFocus
630     Exit Function
640 End If

650 If IsNull(Me![KontrolleKoSt]) Then
660     MsgBox "Aufteilung Kostenstelle stimmt nicht"
670     DoEvents
680     Me![Buchungsanordnung Unterformular 2]!Betrag.SetFocus
690     Exit Function
700 End If

710 If IsNull(Me![Verwendungszweck]) Then
720     MsgBox "Bitte geben Sie einen Verwendungszweck ein"
730     Me!Verwendungszweck.SetFocus
740     Exit Function
750 End If


810 If IsNull(Me![ID Empfänger]) Then
820     MsgBox "Wer soll die Kohle bekommen????"
830     Me![ID Empfänger].SetFocus
840     Exit Function
850 End If

860 If IsNull(Me![von_]) And IsNull(Me.Text104) Then
870     MsgBox "Bitte geben Sie wenigstens ein Leistungsdatum ein (entweder vom:  oder bis:)"
880     Me![von_].SetFocus
890     Exit Function
900 End If

    ' Wenn alle Vorinstanzen anstandslos passiert wurden, ist alles ok
1030 Daten_plausibel = True

End Function
