Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit



Private Sub Form_Open(Cancel As Integer)

10  lng_ID_Gebaeude = 0
20  lng_ID_Geb_Teil = 0
30  lng_ID_Massn = 0
40  lng_ID_Verg_Vorl = 0
50  DoEvents
60  Me.Requery
70  Me.Recalc
80  Me.Repaint

90  DoEvents

100 Me!KF_Gebäudeauswahl.SetFocus

110 Setze_Buttons

End Sub

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub

Private Sub KF_Gebäudeauswahl_AfterUpdate()

10  lng_ID_Gebaeude = Me.KF_Gebäudeauswahl
20  lng_ID_Geb_Teil = 0
30  lng_ID_Massn = 0
40  lng_ID_Teil_Massn = 0
50  lng_ID_Verg_Vorl = 0

60  Me!KF_Geb_Teil_Auswahl.Requery
70  Me!KF_Massn_auswahl.Requery
80  Me!UF_Verg_Vorlage.Requery

90  Setze_Buttons

End Sub

Private Sub KF_Geb_Teil_Auswahl_AfterUpdate()
10  lng_ID_Geb_Teil = Me!KF_Geb_Teil_Auswahl
20  lng_ID_Massn = 0
30  lng_ID_Verg_Vorl = 0
40  Me!KF_Geb_Teil_Auswahl.Requery
50  Me!KF_Massn_auswahl.Requery
60  Me!LF_Verlag_Vorlagen.Requery
70  Me!UF_Verg_Vorlage.Requery

80  Setze_Buttons

End Sub

Private Sub KF_ID_Massn_AfterUpdate()
10  lng_ID_Massn = CLng(Nz(Me.KF_ID_Massn))
20  lng_ID_Geb_Teil = CLng(Nz(DLookup("ID_Gebäudeteil", "Maßnahmen", "[ID] = " & lng_ID_Massn)))
30  lng_ID_Gebaeude = CLng(Nz(DLookup("ID_Gebäude", "tbl_100_20_Gebäudeteile", "[ID_Gebäudeteil] = " & lng_ID_Geb_Teil)))
40  lng_ID_Verg_Vorl = CLng(Nz(DLookup("ID_Auftrag", "Aufträge", "[ID_Maßnahme] = " & lng_ID_Massn)))

50  Me!KF_Gebäudeauswahl = lng_ID_Gebaeude
60  Me.KF_Geb_Teil_Auswahl.Requery
70  Me!KF_Geb_Teil_Auswahl = lng_ID_Geb_Teil
80  Me!KF_Massn_auswahl.Requery
90  Me!KF_Massn_auswahl = lng_ID_Massn
100 Me!LF_Verlag_Vorlagen.Requery

110 Setze_Buttons

End Sub

Private Sub KF_Massn_auswahl_AfterUpdate()

10  lng_ID_Massn = Me!KF_Massn_auswahl
    '20  lng_ID_Teil_Massn = 0
20  lng_ID_Verg_Vorl = 0
30  Me!LF_Verlag_Vorlagen.Requery
40  Me.UF_Verg_Vorlage.Requery
50  Me.KF_ID_Massn = lng_ID_Massn

60  Setze_Buttons

End Sub


Private Sub LF_Verlag_Vorlagen_AfterUpdate()
10  lng_ID_Verg_Vorl = Me!LF_Verlag_Vorlagen
20  UF_Verg_Vorlage.Requery

30  Setze_Buttons

End Sub

Private Sub BS_VergVorl_Neu_Click()

10  str_SQL_Statement = "INSERT INTO Aufträge ( ID_Maßnahme, Auftr_Datum, Firma, Auftragsart, Vergabeart )" _
                      & " SELECT F_Variable('lng_ID_Massn') AS idm, Date() AS Dt, 'Firmenname?' AS Fa, 1 AS AuftArt, 3 AS VergArt;"

20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True
50  DoEvents
60  lng_ID_Verg_Vorl = DMax("[ID_Auftrag]", "Aufträge")

    ' Trage ID_Hauptauftr noch nach
70  str_SQL_Statement = "UPDATE Aufträge SET Aufträge.ID_Hauptauftr = F_Variable('lng_ID_Verg_Vorl')" _
                      & " WHERE (((Aufträge.ID_Auftrag)=F_Variable('lng_ID_Verg_Vorl')));"
80  DoCmd.SetWarnings False
90  DoCmd.RunSQL str_SQL_Statement
100 DoCmd.SetWarnings True
110 DoEvents


120 Me!LF_Verlag_Vorlagen.Requery
130 Me!LF_Verlag_Vorlagen = lng_ID_Verg_Vorl

140 Me!UF_Verg_Vorlage.Requery
150 Me!UF_Verg_Vorlage.SetFocus

160 On Error Resume Next
170 Me!UF_Verg_Vorlage!TF_Auftragsinhalt.SetFocus
180 On Error GoTo 0

190 Setze_Buttons

End Sub

Private Sub BS_VergVorl_Loeschen_Click()

10  If DCount("[ID_Auftrag]", "Aufträge", "[ID_Hauptauftr] = " & lng_ID_Verg_Vorl) > 1 Then
20      MsgBox "Es existieren noch Nachträge zum Hauptauftrag, bitte diese erst löschen."
30      Exit Sub
40  End If

50  If MsgBox("Wollen Sie den Hauptauftrag vom " & Me!UF_Verg_Vorlage!TF_Auftr_Datum & vbCrLf _
            & "an Firma " & Me!UF_Verg_Vorlage!TF_Firma & vbCrLf _
            & "wirklich löschen?", vbYesNo + vbCritical, "Auftrag löschen?") = vbNo Then
60      Exit Sub
70  End If

80  str_SQL_Statement = "DELETE Aufträge.ID_Auftrag FROM Aufträge" _
                      & " WHERE (((Aufträge.ID_Auftrag)=F_Variable('lng_ID_Verg_Vorl')));"

90  DoCmd.SetWarnings False
100 DoCmd.RunSQL str_SQL_Statement
110 DoCmd.SetWarnings True
120 DoEvents
130 Me!LF_Verlag_Vorlagen.Requery
140 Me!LF_Verlag_Vorlagen = 0
150 Me!UF_Verg_Vorlage.Requery

160 Setze_Buttons

End Sub

Private Sub BS_Verg_Vorl_Audrucken_Click()

10  Select Case Me.OR_Auftr_Wert
    Case 1  ' alle Aufträge
20      cur_Auftr_Minwert = 0
30  Case 2  ' Aufträge ab 25 TDM
40      cur_Auftr_Minwert = 25000
50  End Select

60  dt_Start_Datum = CDate(Me!KF_AB_Datum)
70  dt_Ende_Datum = CDate(Me!KF_Bis_DAtum)

80  Select Case Me!OR_Alle_Castroper
    Case 1  ' Alle Firmen
90      bln_Nur_CAS_Firmen = False
100 Case 2  ' Nur Castroper Firmen
110     bln_Nur_CAS_Firmen = True
120 End Select

130 DoCmd.OpenReport "rpt_400_10_10_Vergabevorlagen", acViewPreview, , , acDialog

End Sub

Private Sub BS_Verg_Vorl_Mittelh_Ausdr_Click()

10  Select Case Me!OR_Auftr_Wert
    Case 1  ' alle Aufträge
20      cur_Auftr_Minwert = 0
30  Case 2  ' Aufträge ab 25 TDM
40      cur_Auftr_Minwert = 25000
50  End Select

60  dt_Start_Datum = CDate(Me!KF_AB_Datum)
70  dt_Ende_Datum = CDate(Me!KF_Bis_DAtum)

80  Select Case Me.OR_Alle_Castroper
    Case 1  ' Alle Firmen
90      bln_Nur_CAS_Firmen = False
100 Case 2  ' Nur Castroper Firmen
110     bln_Nur_CAS_Firmen = True
120 End Select

130 DoCmd.OpenReport "rpt_400_10_20_Vergabevorl_Mittelherkunft", acViewPreview, , , acDialog

End Sub

Sub Setze_Buttons()

10  If Me!KF_Massn_auswahl.ListIndex >= 0 Then
20      Me!BS_VergVorl_Neu.Enabled = True
30  Else
40      Me!BS_VergVorl_Neu.Enabled = False
50  End If

60  If Me.LF_Verlag_Vorlagen.ListIndex >= 0 Then
70      Me!BS_VergVorl_Loeschen.Enabled = True
80      Me!UF_Verg_Vorlage!BS_Nachtrag_Neu.Enabled = True
90      Me!UF_Verg_Vorlage!BS_Nachtrag_Loeschen.Enabled = True
100 Else
110     Me!BS_VergVorl_Loeschen.Enabled = False
120     Me!UF_Verg_Vorlage!BS_Nachtrag_Neu.Enabled = False
130     Me!UF_Verg_Vorlage!BS_Nachtrag_Loeschen.Enabled = False
140 End If



End Sub
