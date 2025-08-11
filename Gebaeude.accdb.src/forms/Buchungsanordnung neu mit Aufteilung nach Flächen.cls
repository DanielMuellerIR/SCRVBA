Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit



Private Sub Betrag_AfterUpdate()

Me![Buchungsanordnung Unterformular 1].SetFocus
Me![Buchungsanordnung Unterformular 1]![Betrag] = Me![Betrag]
Me![Buchungsanordnung Unterformular 1]![ID aus Buchungsstellen].SetFocus
SendKeys "{F4}", False

End Sub





Private Sub Betrag_Exit(Cancel As Integer)

If IsNull(Me![Betrag].Value) Then
MsgBox "Musst schon hier reinschreiben, wieviel Du ausgeben möchtest!"
Me![Betrag].SetFocus
Cancel = True
End If





 Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me!Betrag.BackColor = lngWeiß
End Sub

Private Sub Betrag_GotFocus()
SendKeys "{PGDN}", False

    Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me!Betrag.BackColor = lngGelb



End Sub

Private Sub Betrag_LostFocus()


 Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me!Betrag.BackColor = lngWeiß


End Sub



Private Sub Form_Current()
DoCmd.Maximize
End Sub

Private Sub Form_Open(Cancel As Integer)
DoCmd.Maximize
Me![ID Sachbearbeiter].SetFocus
Me![ID Sachbearbeiter].Dropdown
End Sub

Private Sub Form_Resize()
DoCmd.Maximize
End Sub

Private Sub ID_Empfänger_AfterUpdate()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me![ID Empfänger].BackColor = lngWeiß
End Sub


Private Sub ID_Empfänger_Exit(Cancel As Integer)

If IsNull(Me![ID Empfänger].Value) Then
MsgBox "Musst ansagen, wer die Kohle bekommen soll!"
Me![ID Empfänger].SetFocus
Cancel = True
End If

End Sub

Private Sub ID_Empfänger_GotFocus()

Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me![ID Empfänger] = lngGelb




Me![ID Empfänger].Requery
End Sub

Private Sub ID_Empfänger_KeyDown(KeyCode As Integer, Shift As Integer)
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me![ID Empfänger].BackColor = lngGelb


End Sub

Private Sub ID_Empfänger_LostFocus()
On Error GoTo Err_Befehl1

Me![Buchungsanordnung Unterformular 4].SetFocus
Me![Buchungsanordnung Unterformular 4]![sofort] = -1


Exit_Befehl1:
    Exit Sub

Err_Befehl1:
    'MsgBox Err.Description
    Resume Exit_Befehl1


End Sub

Private Sub ID_Nebenkostenart_AfterUpdate()
Me![Betrag].SetFocus
End Sub

Private Sub Kombinationsfeld3_AfterUpdate()
Me![ID Nebenkostenart].SetFocus
Me![ID Nebenkostenart].Dropdown
End Sub


Private Sub ID_Nebenkostenart_Exit(Cancel As Integer)
If IsNull(Me![ID Nebenkostenart]) Then
MsgBox "Musst schon hier reinschreiben, was hier bezahlt werden soll!"
Me![ID Nebenkostenart].SetFocus
Cancel = True
End If
End Sub

Private Sub ID_Nebenkostenart_GotFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me![ID Nebenkostenart].BackColor = lngGelb

End Sub

Private Sub ID_Nebenkostenart_LostFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me![ID Nebenkostenart].BackColor = lngWeiß

End Sub

Private Sub ID_Sachbearbeiter_AfterUpdate()
Me![Zyklus].SetFocus
Me![Zyklus].Dropdown
End Sub


Private Sub Befehl67_Click()
On Error GoTo Err_Befehl67_Click

Me![Verwendungszweck].SetFocus

DBEngine.Idle

If Me![KontrolleBetrag] <> Me![KontrolleBuSt] Then
MsgBox "Aufteilung Buchungsstelle stimmt nicht!"
Exit Sub
End If

If Me![KontrolleBetrag] <> Me![KontrolleKoSt] Then
MsgBox "Aufteilung Kostenstelle stimmt nicht!"
Exit Sub
End If

If IsNull(Me![KontrolleKoSt]) Then
MsgBox "Aufteilung Kostenstelle stimmt nicht"
Exit Sub
End If


If Me![KontrolleEmpfänger] = 65535 Then
MsgBox "Wer soll die Kohle bekommen????"
Exit Sub
End If

If IsNull(Me![KontrolleEmpfänger]) Then
MsgBox "Wer soll die Kohle bekommen????"
Me![ID Empfänger].SetFocus
Me![ID Empfänger].Dropdown
Exit Sub
End If

If Me![Datumskontrolle] = 1 Then

 If Me![KontrolleBetrag] <> Me![KontrolleFälligkeit] Then
 MsgBox "Aufteilung Fälligkeiten stimmt nicht!"
 Exit Sub
 End If

 If IsNull(Me![KontrolleFälligkeit]) Then
 MsgBox "Aufteilung Fälligkeiten stimmt nicht!"
 Exit Sub
 End If

End If



    Dim stDocName As String

    stDocName = "Buchungsanordnung"
    DoCmd.OpenReport stDocName, acNormal

    stDocName = "Buchungsanordnung_Kopie"
    DoCmd.OpenReport stDocName, acNormal

Exit_Befehl67_Click:
    Exit Sub

Err_Befehl67_Click:
    MsgBox Err.Description
    Resume Exit_Befehl67_Click

End Sub
Private Sub Befehl68_Click()
On Error GoTo Err_Befehl68_Click


    DoCmd.GoToRecord , , acNewRec
    Me![ID Sachbearbeiter].SetFocus
    Me![ID Sachbearbeiter].Dropdown


Exit_Befehl68_Click:
    Exit Sub

Err_Befehl68_Click:
    MsgBox Err.Description
    Resume Exit_Befehl68_Click

End Sub
Private Sub Befehl69_Click()
On Error GoTo Err_Befehl69_Click


    DoCmd.Close

 Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Startformular"
    DoCmd.OpenForm stDocName, , , stLinkCriteria


Exit_Befehl69_Click:
    Exit Sub

Err_Befehl69_Click:
    MsgBox Err.Description
    Resume Exit_Befehl69_Click

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



Private Sub ID_Sachbearbeiter_Exit(Cancel As Integer)
If IsNull(Me![ID Sachbearbeiter]) Then
Cancel = True
MsgBox "Namen bitte hier eintragen!"
End If

End Sub

Private Sub ID_Sachbearbeiter_GotFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me![ID Sachbearbeiter].BackColor = lngGelb



End Sub

Private Sub ID_Sachbearbeiter_LostFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me![ID Sachbearbeiter].BackColor = lngWeiß

End Sub

Private Sub Kombinationsfeld10_AfterUpdate()
Me![Zyklus].SetFocus

End Sub

Private Sub Kombinationsfeld10_GotFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me!Kombinationsfeld10.BackColor = lngGelb

End Sub

Private Sub Kombinationsfeld10_LostFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me!Kombinationsfeld10.BackColor = lngWeiß
End Sub

Private Sub Kombinationsfeld16_GotFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me!Betrag.BackColor = lngGelb

End Sub

Private Sub Kombinationsfeld16_LostFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me!Betrag.BackColor = lngWeiß

End Sub

Private Sub Kombinationsfeld17_AfterUpdate()
Me![Betrag].SetFocus

End Sub

Private Sub Kombinationsfeld17_GotFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me!Betrag.BackColor = lngGelb

End Sub

Private Sub Kombinationsfeld17_LostFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me!Betrag.BackColor = lngWeiß

End Sub

Private Sub Skonto_AfterUpdate()
Me![Betrag].SetFocus

End Sub



Private Sub Verwendungszweck_AfterUpdate()
Me![ID Empfänger].SetFocus
SendKeys "{F4}", True
End Sub

Private Sub Verwendungszweck_Exit(Cancel As Integer)

If IsNull(Me![Verwendungszweck].Value) Then
MsgBox "Musst Zweck für Verwendung eingeben bitte!"
Me![Verwendungszweck].SetFocus
Cancel = True
End If

End Sub

Private Sub Verwendungszweck_GotFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me!Verwendungszweck.BackColor = lngGelb


End Sub

Private Sub Verwendungszweck_LostFocus()

Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me!Verwendungszweck.BackColor = lngWeiß

End Sub
Private Sub Befehl77_Click()
On Error GoTo Err_Befehl77_Click

    Dim stDocName As String

    stDocName = "Buchungsanordnung"
    DoCmd.OpenReport stDocName, acPreview

Exit_Befehl77_Click:
    Exit Sub

Err_Befehl77_Click:
    MsgBox Err.Description
    Resume Exit_Befehl77_Click

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
On Error GoTo Err_Befehl80_Click

Me![Verwendungszweck].SetFocus

DBEngine.Idle

If Me![KontrolleBetrag] <> Me![KontrolleBuSt] Then
MsgBox "Aufteilung Buchungsstelle stimmt nicht!"
Exit Sub
End If

If Me![KontrolleBetrag] <> Me![KontrolleKoSt] Then
MsgBox "Aufteilung Kostenstelle stimmt nicht!"
Exit Sub
End If

If IsNull(Me![KontrolleKoSt]) Then
MsgBox "Aufteilung Kostenstelle stimmt nicht"
Exit Sub
End If


If Me![KontrolleEmpfänger] = 65535 Then
MsgBox "Wer soll die Kohle bekommen????"
Exit Sub
End If

If IsNull(Me![KontrolleEmpfänger]) Then
MsgBox "Wer soll die Kohle bekommen????"
Me![ID Empfänger].SetFocus
Me![ID Empfänger].Dropdown
Exit Sub
End If

If Me![Datumskontrolle] = 1 Then

 If Me![KontrolleBetrag] <> Me![KontrolleFälligkeit] Then
 MsgBox "Aufteilung Fälligkeiten stimmt nicht!"
 Exit Sub
 End If

 If IsNull(Me![KontrolleFälligkeit]) Then
 MsgBox "Aufteilung Fälligkeiten stimmt nicht!"
 Exit Sub
 End If

End If

    Dim stDocName As String

    stDocName = "Buchungsanordnung"
    DoCmd.OpenReport stDocName, acPreview

Exit_Befehl80_Click:
    Exit Sub

Err_Befehl80_Click:
    MsgBox Err.Description
    Resume Exit_Befehl80_Click

End Sub

Private Sub Zyklus_AfterUpdate()

Me![ID Nebenkostenart].SetFocus
Me![ID Nebenkostenart].Dropdown

End Sub

Private Sub Zyklus_Exit(Cancel As Integer)
If IsNull(Me![Zyklus]) Then
Cancel = True
MsgBox "Bitte hier was eintragen!"
End If
End Sub

Private Sub Zyklus_GotFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me!Zyklus.BackColor = lngGelb
End Sub

Private Sub Zyklus_LostFocus()
Dim lngGelb As Long, lngWeiß As Long



    lngGelb = RGB(255, 255, 0)
    lngWeiß = RGB(255, 255, 255)


    Me!Zyklus.BackColor = lngWeiß
End Sub
Private Sub Befehl87_Click()
On Error GoTo Err_Befehl87_Click

    Dim stDocName As String


    stDocName = "Anteilige_Aufteilung_Rechnung_nach_Quardratmetern_Löschabfrage"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

    stDocName = "Anteilige_Aufteilung_Rechnung_nach_Quadtratmetern"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

    Me![Buchungsanordnung Unterformular 2].Requery
Exit_Befehl87_Click:
    Exit Sub

Err_Befehl87_Click:
    MsgBox Err.Description
    Resume Exit_Befehl87_Click

End Sub
