Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_AlleFilter_Loeschen_Click()
10  Call BS_Filter_Firma_loeschen_Click
20  BS_Filter_Strasse_loeschen_Click
End Sub

Private Sub BS_Fa_loeschen_Click()

' Überprüfe, ob die zu löschende Fa bei irgendeinem AUftrag angemeldet ist,
' wenn ja, dann Blockieren unbd Abbruch
10  i = DCount("[Id_Fa]", "tbl_20_10_Aufträge", "[ID_Fa] = " & lng_Firma)
20  If i > 0 Then
30      MsgBox Me.UF_Firma![Anrede] & " " & Me.UF_Firma![TF_Name] & " ist noch " & i & " Aufträgen zugeordnet" & vbCrLf _
               & "und kann deshalb nicht gelöscht werden!", , "Löschen nicht möglich"

40      Exit Sub
50  End If

'Sicherheitsfrage
60  If MsgBox("Soll " & Me.UF_Firma![Anrede] & " " & Me.UF_Firma![TF_Name] & vbCrLf _
              & "wirklich gelöscht werden?", vbYesNo, "Firmeneintrag löschen?") = vbNo Then
70      Exit Sub
80  End If

' Löschabfrage ausführen
90  Str_SQL_Statement = "DELETE tbl_10_40_Firmen.ID_Fa FROM tbl_10_40_Firmen WHERE tbl_10_40_Firmen.ID_Fa= " & lng_Firma
100 DoCmd.SetWarnings False
110 DoCmd.RunSQL Str_SQL_Statement
120 DoCmd.SetWarnings True
130 DoEvents

    ' Aktualisiere Listenfeld LF_Firmen und Ufo UF_Firma
140 lng_Firma = 0
150 Me.LF_Firmen.Requery
160 Me.UF_Firma.Requery

    ' Aktualisiere Listenfeld LF_Auftraege und UFO UF_Auftrag im übergeordneten
170 Forms("frm_10_10_Startformular")![LF_Auftraege].Requery
180 Forms("frm_10_10_Startformular")![UF_Auftrag].Requery

' Erfolgsmeldung
190 MsgBox "Eintrag erfolgreich gelöscht!", vbOKOnly, "Löschen erfolgreich"

End Sub

Private Sub BS_Fa_Neu_Click()

' Lege in TAbelle tbl_10_40_Firmen einen neuen DS an
10  Str_SQL_Statement = "INSERT INTO tbl_10_40_Firmen ( Name, Ort, Straße )" _
                        & " SELECT 'Neuer Firmenname?' AS Neuer_Name, 'Ort?' AS Neuer_Ort, 'Strasse?' AS Neue_Strasse;"
20  DoCmd.SetWarnings False
30  DoCmd.RunSQL Str_SQL_Statement
40  DoCmd.SetWarnings True
50  DoEvents

    ' Springe zum neuen Firmen-DS
60  Me.LF_Firmen.Requery
70  Me.LF_Firmen.SetFocus
80  Me.LF_Firmen = DMax("[ID_Fa]", "tbl_10_40_Firmen")

90  DoEvents
100 lng_Firma = Me.LF_Firmen
110 Me.UF_Firma.Requery
120 DoEvents

130 Me.UF_Firma.SetFocus
140 Me.UF_Firma![TF_Name].SetFocus

End Sub

Private Sub Form_Load()
10  Me.LF_Firmen = lng_Firma
End Sub

Private Sub Form_Open(Cancel As Integer)

10  If DLookup("[nur_lesen]", "tbl_10_10_User", "[User_Loginname] = '" & getUser() & "'") = True Then
'20      Me.AllowEdits = False

30      Me.UF_Firma.Form.AllowEdits = False
40      Me.BS_Fa_Neu.Visible = False
50      Me.BS_Fa_Loeschen.Visible = False
60  End If

End Sub

Private Sub LF_Firmen_AfterUpdate()
10  lng_Firma = Me.LF_Firmen
20  Me.UF_Firma.Requery
End Sub

Private Sub TF_Filter_Firma_AfterUpdate()
10  Me.LF_Firmen.Requery
20  Me.UF_Firma.Requery
End Sub

Private Sub BS_Filter_Firma_loeschen_Click()
10  Me.TF_Filter_Firma = Null
20  Me.LF_Firmen.Requery
30  Me.UF_Firma.Form.Requery
End Sub

Private Sub TF_Filter_Strasse_AfterUpdate()
10  Me.LF_Firmen.Requery
20  Me.UF_Firma.Form.Requery
End Sub

Private Sub BS_Filter_Strasse_loeschen_Click()
10  Me.TF_Filter_Strasse = Null
20  Me.LF_Firmen.Requery
30  Me.UF_Firma.Form.Requery

End Sub

Private Sub BS_Schließen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub
