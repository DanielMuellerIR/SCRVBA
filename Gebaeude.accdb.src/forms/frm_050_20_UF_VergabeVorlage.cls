Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit


Private Sub BS_Nachtrag_Loeschen_Click()

10  If Me!KF_Auftragsart = 1 Then
20      MsgBox "Den Hauptauftrag bitte nicht hier , sondern oben zum Listenfeldeintrag löschen."
30      Exit Sub
40  End If

50  If MsgBox("Nachtrag vom " & Me!TF_Auftr_Datum & " wirklich löschen?", vbYesNo, "Nachtrag löschen?") = vbNo Then
60      Exit Sub
70  End If

80  str_SQL_Statement = "DELETE Aufträge.ID_Auftrag FROM Aufträge WHERE (((Aufträge.ID_Auftrag)=F_VAriable('lng_ID_Nachtrag')));"
90  DoCmd.SetWarnings False
100 DoCmd.RunSQL str_SQL_Statement
110 DoCmd.SetWarnings True
120 Me.Requery

End Sub

Private Sub BS_Nachtrag_Neu_Click()

10  If IsNull(Me!TF_Auftragsinhalt) Then
20      MsgBox "Bitte geben Sie einen Auftragsinhalt ein."
30      Me.TF_Auftragsinhalt.SetFocus
40      Exit Sub
50  End If

60  If IsNull(Me!TF_Firma) Or Me!TF_Firma = "Firmenname?" Then
70      MsgBox "Bitte geben Sie eine Firma ein."
80      Me.TF_Firma.SetFocus
90      Exit Sub
100 End If


110 If IsNull(Me!TF_Firmensitz) Then
120     MsgBox "Bitte geben Sie einen Firmensitz ein."
130     Me.TF_Firmensitz.SetFocus
140     Exit Sub
150 End If

160 If Me.Dirty Then
170     DoCmd.RunCommand acCmdSaveRecord
180 End If

190 str_SQL_Statement = _
    "INSERT INTO Aufträge ( ID_Hauptauftr, ID_Maßnahme, Auftr_Datum, Auftragsart, Vergabeart, Firma, Firmensitz, PLZ, Auftragsinhalt )" _
                      & " SELECT F_Variable('lng_ID_Verg_Vorl') AS id_HA, F_Variable('lng_ID_Massn') AS idm, Date() AS Dt, 2 AS auart, 4 AS vergart," _
                      & " DLookUp('[Firma]','Aufträge','[ID_Auftrag] = " & F_Variable("lng_ID_Verg_Vorl") & "') AS Fa," _
                      & " DLookUp('[Firmensitz]','Aufträge','[ID_Auftrag] = " & F_Variable("lng_ID_Verg_Vorl") & "') AS FS," _
                      & " DLookUp('[PLZ]','Aufträge','[ID_Auftrag] = " & F_Variable("lng_ID_Verg_Vorl") & "') AS PLZ," _
                      & " DLookUp('[Auftragsinhalt]','Aufträge','[ID_Auftrag] = " & F_Variable("lng_ID_Verg_Vorl") & "') AS AI;"

200 DoCmd.SetWarnings False
210 DoCmd.RunSQL str_SQL_Statement
220 DoCmd.SetWarnings True
230 DoEvents
240 lng_ID_Nachtrag = DMax("[ID_Auftrag]", "Aufträge")

250 Me.Requery
260 DoCmd.GoToRecord , , acLast

270 Setze_Buttons
End Sub

Private Sub Form_AfterUpdate()

10  If Me.Dirty Then
20      DoCmd.RunCommand acCmdSaveRecord
30      Me.Parent!LF_Verlag_Vorlagen.Requery
40  End If

End Sub

Private Sub Form_Current()
10  lng_ID_Nachtrag = Me!ID_Auftrag

20  If Me.RecordsetClone.RecordCount = 1 Then
30      Me!KF_Auftragsart.RowSource = "1;'Hauptauftrag'"
40  Else
50      Me!KF_Auftragsart.RowSource = "1;'Hauptauftrag';2;'Nachtrag'"
60  End If

End Sub

Public Sub Setze_Buttons()

10  If Me.RecordsetClone.RecordCount > 0 Then
20      Me!BS_Nachtrag_Loeschen.Enabled = True
30  Else
40      Me!BS_Nachtrag_Loeschen.Enabled = False
50  End If

End Sub

Function Aenderung_Fa_Daten()


10  If Me.Dirty Then
20      DoCmd.RunCommand acCmdSaveRecord
30  Else
40      Exit Function
50  End If

60  i = lng_ID_Nachtrag
70  str_temp_Obj_Name = Me.ActiveControl.Name

80  Select Case str_temp_Obj_Name

    Case "TF_Auftragsinhalt"
90      str_Suchtext = Me!TF_Auftragsinhalt
100     str_SQL_Statement = "UPDATE Aufträge SET Auftragsinhalt = F_VAriable('str_Suchtext')" _
                          & " WHERE (((Aufträge.ID_Hauptauftr) = F_Variable('lng_ID_Verg_Vorl')));"
110     DoCmd.SetWarnings False
120     DoCmd.RunSQL str_SQL_Statement
130     DoCmd.SetWarnings True


140 Case "TF_Firma"
150     str_Suchtext = Me!TF_Firma
160     str_SQL_Statement = "UPDATE Aufträge SET Firma = F_VAriable('str_Suchtext')" _
                          & " WHERE (((Aufträge.ID_Hauptauftr) = F_Variable('lng_ID_Verg_Vorl')));"
170     DoCmd.SetWarnings False
180     DoCmd.RunSQL str_SQL_Statement
190     DoCmd.SetWarnings True


200 Case "TF_Firmensitz"
210     str_Suchtext = Me!TF_Firmensitz
220     str_SQL_Statement = "UPDATE Aufträge SET Firmensitz = F_VAriable('str_Suchtext')" _
                          & " WHERE (((Aufträge.ID_Hauptauftr) = F_Variable('lng_ID_Verg_Vorl')));"
230     DoCmd.SetWarnings False
240     DoCmd.RunSQL str_SQL_Statement
250     DoCmd.SetWarnings True

260 End Select

270 Me.Requery
280 Me.Recordset.FindFirst "ID_Auftrag = " & i
290 Me.Controls(str_temp_Obj_Name).SetFocus
300 SendKeys "{Tab}"

End Function
