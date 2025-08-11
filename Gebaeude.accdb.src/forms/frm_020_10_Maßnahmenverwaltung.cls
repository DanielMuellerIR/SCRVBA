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
40  lng_ID_Teil_Massn = 0
50  DoEvents
60  Me.Requery
70  Me.Recalc
80  Me.Repaint
90  DoEvents

100 Me!KF_Massn_auswahl.RowSource = "SELECT Maßnahmen.ID, Maßnahmen.Maßnahme FROM Maßnahmen" _
                                  & " WHERE (((Maßnahmen.ID_Gebäudeteil) = F_Variable('lng_ID_Geb_Teil')) And ((Maßnahmen.[erledigt im Jahr]) Is Null))" _
                                  & " ORDER BY Maßnahmen.Maßnahme;"

110 If fct_Reparatur_Recht() = True Then
120     Me!BS_Massn_Neu.Visible = True
130     Me!BS_Massn_Loeschen.Visible = True
140     Me!UF_Geplante_Finanzierung!BS_DS_Neu.Visible = True
150     Me!UF_Geplante_Finanzierung!BS_DS_loeschen.Visible = True
160     Me!UF_Teilmassnahme!BS_Neue_Teilm.Visible = True
170     Me!UF_Teilmassnahme!BS_Teilm_Loeschen.Visible = True
180 Else
190     Me!BS_Massn_Neu.Visible = False
200     Me!BS_Massn_Loeschen.Visible = False
210     Me!UF_Geplante_Finanzierung!BS_DS_Neu.Visible = False
220     Me!UF_Geplante_Finanzierung!BS_DS_loeschen.Visible = False
230     Me!UF_Teilmassnahme!BS_Neue_Teilm.Visible = False
240     Me!UF_Teilmassnahme!BS_Teilm_Loeschen.Visible = False
250 End If

260 Me!KF_Gebäudeauswahl.SetFocus

End Sub

Private Sub BS_Massn_Loeschen_Click()

      ' Überprüfe, ob es noch in Beziehung stehende Datensätze in untergeordnete n Tabellen gibt
10    If Not IsNull(DLookup("[ID aus Maßnahmen]", "Haushaltsdaten", "[ID aus Maßnahmen] = " & lng_ID_Massn)) Then
20      MsgBox "Sie können diese Maßnahme nicht löschen, da es hierzu noch" & vbCrLf _
             & "in Beziehung stehende Daten" & vbCrLf _
             & "in der Tabelle <Haushaltsdaten> gibt." & vbCrLf _
             & "Bitte löschen Sie vorher dort diese Daten.", vbOKOnly, "Löschen nicht möglich, weil .."
30      Exit Sub
40    End If

50    If DCount("[ID_Massnahme]", "Geplante Finanzierung", "[ID_Massnahme] = " & lng_ID_Massn) > 1 Then
60      MsgBox "Sie können diese Maßnahme nicht löschen, da es hierzu noch" & vbCrLf _
             & "MEHR ALS EINEN in Beziehung stehenden Datensatz" & vbCrLf _
             & "in der Tabelle <Geplante Finanzierung> gibt." & vbCrLf _
             & "Bitte löschen Sie vorher dort diese Daten.", vbOKOnly, "Löschen nicht möglich, weil .."
70      Exit Sub
80    End If

90    If Not IsNull(DLookup("[ID aus Maßnahmen]", "Teile der Maßnahmen", "[ID aus Maßnahmen] = " & lng_ID_Massn)) Then
100     MsgBox "Sie können diese Maßnahme nicht löschen, da es hierzu noch" & vbCrLf _
             & "in Beziehung stehende Daten" & vbCrLf _
             & "in der Tabelle <Teile der Maßnahmen> gibt." & vbCrLf _
             & "Bitte löschen Sie vorher dort diese Daten.", vbOKOnly, "Löschen nicht möglich, weil .."
110     Exit Sub
120   End If

130   If Not IsNull(DLookup("[ID_Maßnahme]", "Aufträge", "[ID_Maßnahme] = " & lng_ID_Massn)) Then
140     MsgBox "Sie können diese Maßnahme nicht löschen, da es hierzu noch" & vbCrLf _
             & "in Beziehung stehende Daten" & vbCrLf _
             & "in der Tabelle <Aufträge> gibt." & vbCrLf _
             & "Bitte löschen Sie vorher dort diese Daten.", vbOKOnly, "Löschen nicht möglich, weil .."
150     Exit Sub
160   End If


170   If MsgBox("Wollen Sie die Maßnahme <" & Me!KF_Massn_auswahl.Column(1) & ">" & vbCrLf _
            & "wirklich löschen?", vbYesNo, "Maßnahme löschen?") = vbNo Then
180     Exit Sub
190   End If

          ' Lösche letzten verbliebenen DS zur Geplanten Finanzierung
200   Me!UF_Geplante_Finanzierung.SetFocus
210   DoCmd.SetWarnings False
220   On Error Resume Next ' ggf. existiert kein einziger DS zu geplanten Fin.
230   DoCmd.RunCommand acCmdDeleteRecord
240   On Error GoTo 0
250   DoCmd.SetWarnings True

          ' Lösche
260   str_SQL_Statement = "DELETE Maßnahmen.ID FROM Maßnahmen WHERE (((Maßnahmen.ID)=F_Variable('lng_ID_Massn')));"
270   DoCmd.SetWarnings False
280   DoCmd.RunSQL str_SQL_Statement
290   DoCmd.SetWarnings True
300   lng_ID_Massn = 0
310   Me!KF_Massn_auswahl.Requery
320   Me!UF_Massnahme.Requery
330   Me.KF_Massn_auswahl.SetFocus
340   DoEvents
350   Setze_Buttons

End Sub

Private Sub BS_Massn_Neu_Click()
10  str_SQL_Statement = "INSERT INTO Maßnahmen (ID_Gebäudeteil, Maßnahme )" _
                      & " SELECT F_Variable('lng_ID_Geb_Teil') AS idgt, 'Neue Maßnahme' AS Mn;"

20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True

50  lng_ID_Massn = DMax("[ID]", "Maßnahmen")

60  Me!KF_Massn_auswahl.Requery
70  Me!KF_Massn_auswahl = lng_ID_Massn

    ' Grundsätzlich soll zu einer neu angelegten Maßnahme
    ' auch sofort eine erste und zunächst einzige Teilmaßnahme angelegt werden
80  str_SQL_Statement = "INSERT INTO [Teile der Maßnahmen] ( [ID aus Maßnahmen], Teilmaßname )" _
                      & " SELECT F_Variable('lng_ID_Massn') AS idm, 'Neue Teilmaßnahme' AS TM;"

90  DoCmd.SetWarnings False
100 DoCmd.RunSQL str_SQL_Statement
110 DoCmd.SetWarnings True

120 lng_ID_Teil_Massn = DMax("[ID]", "Teile der Maßnahmen")

130 Me!UF_Massnahme.Requery
140 Me!UF_Teilmassnahme.Form.Requery
150 DoEvents
160 Me!UF_Teilmassnahme.SetFocus
170 DoCmd.SearchForRecord , , , "[ID] = " & lng_ID_Teil_Massn

180 Me!UF_Geplante_Finanzierung.Form.BS_DS_Neu_Click

190 Me!UF_Massnahme.SetFocus

200 Setze_Buttons

End Sub

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub

Private Sub KF_Gebäudeauswahl_AfterUpdate()

10  lng_ID_Gebaeude = Me.KF_Gebäudeauswahl
20  lng_ID_Geb_Teil = 0
30  lng_ID_Massn = 0
40  lng_ID_Teil_Massn = 0

50  Me!KF_Geb_Teil_Auswahl.Requery
60  Me!KF_Massn_auswahl.Requery

70  Me!UF_Massnahme.Form.Requery
80  Me!UF_Teilmassnahme.Form.Requery
90  Me!UF_Gepl_Finanzierung.Requery
100 Me!UF_Geplante_Finanzierung.Form.Requery

Setze_Buttons

End Sub

Private Sub KF_Geb_Teil_Auswahl_AfterUpdate()
10  lng_ID_Geb_Teil = Me!KF_Geb_Teil_Auswahl
20  lng_ID_Massn = 0
30  lng_ID_Teil_Massn = 0

40  Me!KF_Geb_Teil_Auswahl.Requery
50  Me!KF_Massn_auswahl.Requery

60  Me!UF_Massnahme.Requery
70  Me!UF_Teilmassnahme.Requery
80  Me!UF_Gepl_Finanzierung.Requery
90  Me!UF_Geplante_Finanzierung.Form.Requery

100 Setze_Buttons

End Sub

Private Sub KF_ID_Massn_AfterUpdate()

10  lng_ID_Massn = CLng(Nz(Me.KF_ID_Massn))
20  lng_ID_Geb_Teil = CLng(Nz(DLookup("ID_Gebäudeteil", "Maßnahmen", "[ID] = " & lng_ID_Massn)))
30  lng_ID_Gebaeude = CLng(Nz(DLookup("ID_Gebäude", "tbl_100_20_Gebäudeteile", "[ID_Gebäudeteil] = " & lng_ID_Geb_Teil)))

40  Me!KF_Gebäudeauswahl = lng_ID_Gebaeude
50  Me.KF_Geb_Teil_Auswahl.Requery
60  Me!KF_Geb_Teil_Auswahl = lng_ID_Geb_Teil
70  Me!KF_Massn_auswahl.Requery
80  Me!KF_Massn_auswahl = lng_ID_Massn
90  Me!UF_Massnahme.Requery
100 Me!UF_Geplante_Finanzierung.Requery
110 Me!UF_Gepl_Finanzierung.Requery
120 Me!UF_Teilmassnahme.Requery

End Sub

Private Sub KF_Massn_auswahl_AfterUpdate()

10  lng_ID_Massn = Me!KF_Massn_auswahl
20  lng_ID_Teil_Massn = 0
30  Me!UF_Massnahme.Form.Requery
40  Me!UF_Massnahme.Form.Recalc
50  Me!UF_Massnahme.Form.Repaint
60  Me!UF_Teilmassnahme.Form.Requery
70  Me!UF_Teilmassnahme.Form.Repaint
80  Me!UF_Gepl_Finanzierung.Form.Requery
90  Me!UF_Geplante_Finanzierung.Form.Requery
100 Me.KF_ID_Massn = lng_ID_Massn

110 Setze_Buttons

End Sub

Private Sub OR_Erl_Unerl_MN_AfterUpdate()

10  Select Case Me.OR_Erl_Unerl_MN

    Case 1  ' Unerledigte Maßnahmen
20      Me!KF_Massn_auswahl.RowSource = "SELECT Maßnahmen.ID, Maßnahmen.Maßnahme FROM Maßnahmen" _
                                      & " WHERE (((Maßnahmen.ID_Gebäudeteil) = F_Variable('lng_ID_Geb_Teil')) And ((Maßnahmen.[erledigt im Jahr]) Is Null))" _
                                      & " ORDER BY Maßnahmen.Maßnahme;"
30  Case 2    ' Alle Maßnahmen
40      Me!KF_Massn_auswahl.RowSource = "SELECT Maßnahmen.ID, Maßnahmen.Maßnahme FROM Maßnahmen" _
                                      & " WHERE Maßnahmen.ID_Gebäudeteil = F_Variable('lng_ID_Geb_Teil')" _
                                      & " ORDER BY Maßnahmen.Maßnahme;"
50  End Select

60  Me!KF_Massn_auswahl.Requery
70  Setze_Buttons

End Sub


Sub Setze_Buttons()

10  If Me!KF_Geb_Teil_Auswahl.ListIndex >= 0 Then
20      Me!BS_Massn_Neu.Enabled = True
30  Else
40      Me!BS_Massn_Neu.Enabled = False
50  End If

60  If Me.KF_Massn_auswahl.ListIndex >= 0 Then
70      Me!BS_Massn_Loeschen.Enabled = True
80  Else
90      Me!BS_Massn_Loeschen.Enabled = False
100 End If

110 If Me!KF_Massn_auswahl.ListIndex >= 0 Then
120     Me!UF_Teilmassnahme!BS_Neue_Teilm.Enabled = True
130 Else
140     Me!UF_Teilmassnahme!BS_Neue_Teilm.Enabled = False
150     Me!UF_Teilmassnahme!BS_Teilm_Loeschen.Enabled = False
160 End If

End Sub
