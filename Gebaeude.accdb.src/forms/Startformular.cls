Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub B_Formular_Gebäudebewertung_Enter()
    Me!B_Formular_Gebäudebewertung!Kennummer.Requery 'DM2022-10-20
End Sub


Private Sub Befehl233_Click()
'DM2025-06-10
 On Error GoTo Err_Befehl233_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "M_Formular_Eingabe_VerwaltungskostenAb2024"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl233_Click:
    Exit Sub

Err_Befehl233_Click:
    MsgBox Err.Description
    Resume Exit_Befehl233_Click
End Sub

Private Sub BS_Abschr_Matr_Neu_Click()
10  Call Bilde_Abschr_Matrix_Neu
End Sub

Private Sub BS_Arb_Prog_Termin_Plg_Click()

10  lng_Kalk_Jahr = Year(Date)
20  DoEvents
30  DoCmd.OpenForm "frm_030_10_Maßn_SB_Term_planung", , , , , acDialog
40  DoEvents

End Sub

Private Sub BS_Archiv_Ausw_Click()

10  DoCmd.OpenForm "Filter für Archiv Mietberechnung", , , , , acDialog

End Sub

Private Sub BS_Geb_Begehungen_Click()
10  DoCmd.OpenForm "frm_500_010_Gebaeudebegehungen"
End Sub

Private Sub BS_Gebaeude_Massn_Click()
10  DoCmd.OpenForm "frm_010_010_Gebäudeverwaltung"
End Sub

Private Sub BS_Gemarkungen_Click()
10  DoCmd.OpenForm "frm_005_10_10_Gemarkungen"
End Sub

Private Sub BS_Massn_Erl_NichtErl_Click()
10  DoCmd.OpenForm "Filter für Maßnahmen Erledigt Status"
End Sub

Private Sub BS_Massn_Fehl_VK_Click()
10  DoCmd.OpenReport "Sanierungsstau Finanzplanung ohne VoraussKosten", acViewPreview, , , acDialog
End Sub

Private Sub BS_Massn_verw_Click()
10  DoCmd.OpenForm "frm_020_10_Maßnahmenverwaltung"
End Sub

Private Sub BS_Sachbearbeiter_Click()
10  DoCmd.OpenForm "frm_001_010_Sachbearbeiter", , , , , acDialog
End Sub

Private Sub BS_Sanstau_Exp_Excel_Click()

20  str_Dateiname = DateiSpeichern("S:\a60\Datenbank\Excel-Exporte\Sanierungsstau_Finanzplanung_Jahre.xlsx", "Excel-Export nach ..", "Excel-Dateien (*.xlsx)", "*.xlsx")

30  If str_Dateiname = "" Then
'40      MsgBox "Abbbruch"
50      Exit Sub
60  End If

70  Call Export_Excel("Sanierungsstau Finanzplanung Jahre Excel", _
                      str_Dateiname, _
                      "Sanierungsstau Finanzpl. Jahre", _
                      "Sanierungsstau Finanzplanung Jahre")
End Sub

Private Sub BS_Tabelle_bearb_Click()
10  If val(Nz(InStr(1, DLookup("[Zugriff_für]", "tbl_010_10_01_Tabellenliste", "[Tabellenname] = '" & Me!LF_Weitere_Tabellen.Column(0) & "'"), _
                    DLookup("[Zugriffskategorie]", "tbl_010_20_01_User", "[User_Loginname] = '" & getUser & "'")))) = 0 Then

20      MsgBox "Sie haben leider kein Zugrifsrecht zur direkten Bearbeitung" & vbCrLf _
             & "der Tabelle " & Me.LF_Weitere_Tabellen.Column(1)
30      Exit Sub
40  End If

50  str_SQL_Statement = Me!LF_Weitere_Tabellen.Column(0)
60  str_Open_Args = Me!LF_Weitere_Tabellen.Column(2)

70  'Anw_Fenster_Aus False 'DM2022-07-26
80  DoEvents
90  'DoCmd.RunCommand acCmdAppMaximize
100 DoEvents

110 Select Case str_Open_Args
    Case "Tab"
120     DoCmd.OpenTable str_SQL_Statement
130 Case "Abfr"
140     DoCmd.OpenQuery str_SQL_Statement
150 End Select

160 DoCmd.OpenForm "frm_001_001_Hintergrund", , , , , acHidden
170 DoCmd.Close acForm, "Startformular"

180 DoCmd.Maximize

End Sub

Private Sub BS_VergabeVorlagen_Click()
10  DoCmd.OpenForm "frm_050_010_Vergabevorlagen", , , , , acDialog
End Sub

Private Sub BS_Verw_ber_MN_Kost_drucken_Click()
10  DoCmd.OpenForm "Filter für Verwalt_Kosten_Massnahmen", , , , , acDialog
End Sub

Private Sub BS_verw_Zw_Bew_loeschen_Click()
10  Call Loesche_Temp_Bew_Bilanzen    ' in Modul mdl_170_Bewertungslauefe
20  DoEvents
30  MsgBox "Alle ggf. verwaisten Zwischenbewertungen erfolgreich gelöscht.", vbOKOnly, "Löschen erfolgreich.."
End Sub

Private Sub Befehl2_Click()

If (getUser() Like "dm*") Then 'DM2022-04-12
    DoCmd.Close
Else
    DoCmd.Quit
End If

End Sub

Private Sub Befehl45_Click()
    On Error GoTo Err_Befehl45_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Haushaltsdaten eingeben"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl45_Click:
    Exit Sub

Err_Befehl45_Click:
    MsgBox Err.Description
    Resume Exit_Befehl45_Click

End Sub
Private Sub Befehl46_Click()
    On Error GoTo Err_Befehl46_Click

    Dim stDocName As String

    stDocName = "Übersicht Haushalt"
    DoCmd.OpenReport stDocName, acPreview

Exit_Befehl46_Click:
    Exit Sub

Err_Befehl46_Click:
    MsgBox Err.Description
    Resume Exit_Befehl46_Click

End Sub


Private Sub Befehl52_Click()
    On Error GoTo Err_Befehl52_Click

    Dim stDocName As String

    stDocName = "Arbeitsprogramm"
    DoCmd.OpenReport stDocName, acPreview

Exit_Befehl52_Click:
    Exit Sub

Err_Befehl52_Click:
    MsgBox Err.Description
    Resume Exit_Befehl52_Click

End Sub
Private Sub Befehl53_Click()

10  DoCmd.OpenForm "Filter für Verantwortungen"

End Sub
Private Sub Befehl55_Click()
    On Error GoTo Err_Befehl55_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "M_Formular_Eingabe_VerwaltungskostenBis2023"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl55_Click:
    Exit Sub

Err_Befehl55_Click:
    MsgBox Err.Description
    Resume Exit_Befehl55_Click

End Sub
Private Sub Befehl56_Click()
    On Error GoTo Err_Befehl56_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "M_Formular_Gebäudedaten"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl56_Click:
    Exit Sub

Err_Befehl56_Click:
    MsgBox Err.Description
    Resume Exit_Befehl56_Click

End Sub

Private Sub Befehl60_Click()
    On Error GoTo Err_Befehl60_Click

    Dim stDocName As String

    stDocName = "Mietkalkulation"
    DoCmd.OpenReport stDocName, acPreview

Exit_Befehl60_Click:
    Exit Sub

Err_Befehl60_Click:
    MsgBox Err.Description
    Resume Exit_Befehl60_Click

End Sub
Private Sub Befehl61_Click()
    On Error GoTo Err_Befehl61_Click

    Dim stDocName As String

    stDocName = "Mietkalkulation_Kontrolle"
    DoCmd.OpenReport stDocName, acPreview

Exit_Befehl61_Click:
    Exit Sub

Err_Befehl61_Click:
    MsgBox Err.Description
    Resume Exit_Befehl61_Click

End Sub


Private Sub Befehl76_Click()
    On Error GoTo Err_Befehl76_Click

    Dim stDocName As String

    stDocName = "Plausibiltätsprüfungen"
    DoCmd.OpenReport stDocName, acPreview

Exit_Befehl76_Click:
    Exit Sub

Err_Befehl76_Click:
    MsgBox Err.Description
    Resume Exit_Befehl76_Click

End Sub
Private Sub Befehl77_Click()
    On Error GoTo Err_Befehl77_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "frm_015_10_10_Buchungsstelle"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl77_Click:
    Exit Sub

Err_Befehl77_Click:
    MsgBox Err.Description
    Resume Exit_Befehl77_Click

End Sub

Private Sub Befehl90_Click()
10  On Error GoTo Err_Befehl90_Click

    Dim stDocName As String

20  DoCmd.OpenForm "Filter für Sanierungsstau Jahre", , , , , acDialog

Exit_Befehl90_Click:
30  Exit Sub

Err_Befehl90_Click:
40  MsgBox Err.Description
50  Resume Exit_Befehl90_Click

End Sub


Private Sub Befehl120_Click()
    On Error GoTo Err_Befehl120_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "B_Formular_neuer_NHK-Typ"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl120_Click:
    Exit Sub

Err_Befehl120_Click:
    MsgBox Err.Description
    Resume Exit_Befehl120_Click

End Sub

Private Sub Befehl125_Click()
10  On Error GoTo Err_Befehl125_Click

    Dim stDocName As String
    Dim stLinkCriteria As String


    'Lege neuen Buchungs-DS an
20  str_SQL_Statement = "INSERT INTO A_Buchungen ( Haushaltsjahr ) SELECT Year(Date()) AS HH;"
30  DoCmd.SetWarnings False
40  DoCmd.RunSQL str_SQL_Statement
50  DoCmd.SetWarnings True
60  DoEvents
70  lng_ID_Buchung = DMax("[ID]", "A_Buchungen")

    'Lege neuen Fälligkeits-DS an
80  str_SQL_Statement = "INSERT INTO A_Buchungen_Aufteilung_auf_Fälligkeiten ( [ID aus Buchungen] )" _
                      & " SELECT " & lng_ID_Buchung & ";"
90  DoCmd.SetWarnings False
100 DoCmd.RunSQL str_SQL_Statement
110 DoCmd.SetWarnings True

    ' Eigentlich gleiches procedere zu ..
    ' A_Buchungen_Aufteilung_auf_Buchungsstellen

    ' Eigentlich gleiches procedere zu ..
    ' A_Buchungen_Aufteilung_auf_Kostenstellen




120 DoCmd.OpenForm "Buchungsanordnung"

Exit_Befehl125_Click:
130 Exit Sub

Err_Befehl125_Click:
140 MsgBox Err.Description
150 Resume Exit_Befehl125_Click

End Sub


Private Sub Form_Open(Cancel As Integer)

10  Me.Caption = "Gebäudeverwaltung (Version " & str_Version & ")"

70  If fc_Admin() = True Then
80      Me!St_Admin.Visible = True
90      Me!St_Erweiterungen.Visible = True
100     Me!KK_MN_ID_einbl = True
110     bln_MN_ID_sichtb = True
120 Else
130     Me!St_Admin.Visible = False
140     Me!St_Erweiterungen.Visible = False
150     Me!KK_MN_ID_einbl = False
160     bln_MN_ID_sichtb = False

170 End If


    Dim lng_User As Long
    Dim sUsername As String
    sUsername = getUser() 'DM2023-05-12
    lng_User = Nz(DLookup("[ID_User]", "tbl_010_20_01_User", "[User_Loginname] = '" & sUsername & "'"))

    If (lng_User = 0) Then 'DM2025-08-06 'DM2023-05-12
        If (InStr(1, Ausnahme_Anw_F_aus_fuer, (Environ$("computername") & ";")) > 0) Then
            DoCmd.SetWarnings False
            CurrentDb.Execute ("INSERT into tbl_010_20_01_User (Username, User_Loginname, [Zugriffskategorie]) VALUES ('" & sUsername & "', '" & sUsername & "',  'Admin');")
            DoCmd.SetWarnings True
        Else

            MsgBox ("Aktuellen Benutzer '" & sUsername & "' nicht gefunden. Die Anwendung wird beendet. Bitte den User im Backend anlegen, wenn Zugriff gewährt werden soll.")
            Application.Quit
        End If

    End If

    ' Lege aktuelles KAlanderjahr als Begehungsjahr fest (falls nicht 0)

240 If lng_Beg_Jahr = 0 Then
250     lng_Beg_Jahr = Year(Date)
260 End If


    ' Blende je anch Rechten die Controls ein oder aus
270 For Each Ctrl In Me.Controls

280     If (InStr(Ctrl.Tag, fc_Recht()) > 0 Or Nz(Ctrl.Tag) = "") And Ctrl.Tag <> "Immer_Unsichtbar" Then
290         Ctrl.Visible = True
300     Else
310         Ctrl.Visible = False
320     End If

330 Next Ctrl

    If (getUser() Like "dm*") Then 'DM2022-11-07
        Forms!Startformular.ShortcutMenu = True
    End If

End Sub

Private Sub Befehl127_Click()
    On Error GoTo Err_Befehl127_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Formular neue Buchungsstelle einrichten Doppik"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl127_Click:
    Exit Sub

Err_Befehl127_Click:
    MsgBox Err.Description
    Resume Exit_Befehl127_Click

End Sub
Private Sub Befehl128_Click()
    On Error GoTo Err_Befehl128_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Filter für Bericht Nebenkosten"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl128_Click:
    Exit Sub

Err_Befehl128_Click:
    MsgBox Err.Description
    Resume Exit_Befehl128_Click

End Sub
Private Sub Befehl129_Click()
10  On Error GoTo Err_Befehl129_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

40  stDocName = "Monatsanordnung"
50  DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl129_Click:
60  Exit Sub

Err_Befehl129_Click:
70  MsgBox Err.Description
80  Resume Exit_Befehl129_Click

End Sub

Private Sub Befehl134_Click()
    On Error GoTo Err_Befehl134_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Filter für Bericht Nebenkostenhochrechnung"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl134_Click:
    Exit Sub

Err_Befehl134_Click:
    MsgBox Err.Description
    Resume Exit_Befehl134_Click

End Sub

Private Sub Befehl142_Click()
    On Error GoTo Err_Befehl142_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Buchungsanordnung_Suche_Hauptformular"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl142_Click:
    Exit Sub

Err_Befehl142_Click:
    MsgBox Err.Description
    Resume Exit_Befehl142_Click

End Sub
Private Sub Befehl150_Click()
    On Error GoTo Err_Befehl150_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Filter für Zusammenstellung NK"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl150_Click:
    Exit Sub

Err_Befehl150_Click:
    MsgBox Err.Description
    Resume Exit_Befehl150_Click

End Sub
Private Sub Befehl151_Click()
    On Error GoTo Err_Befehl151_Click

    Dim stDocName As String

    stDocName = "Zusammenstellung Nebenkosten nach Arten"
    DoCmd.OpenReport stDocName, acPreview

Exit_Befehl151_Click:
    Exit Sub

Err_Befehl151_Click:
    MsgBox Err.Description
    Resume Exit_Befehl151_Click

End Sub

Private Sub Befehl153_Click()
    On Error GoTo Err_Befehl153_Click

    Dim stDocName As String

    stDocName = "Bericht Mittelabfluss Historik"
    DoCmd.OpenReport stDocName, acPreview

Exit_Befehl153_Click:
    Exit Sub

Err_Befehl153_Click:
    MsgBox Err.Description
    Resume Exit_Befehl153_Click

End Sub

Private Sub Befehl170_Click()
    On Error GoTo Err_Befehl170_Click

    Dim stDocName As String

    stDocName = "Plausibilitätsprüfung_Buchungen"
    DoCmd.OpenReport stDocName, acPreview

Exit_Befehl170_Click:
    Exit Sub

Err_Befehl170_Click:
    MsgBox Err.Description
    Resume Exit_Befehl170_Click

End Sub

Private Sub Befehl191_Click()
    On Error GoTo Err_Befehl191_Click

    Dim stDocName As String

    stDocName = "Zuordnung_Abschreibung_2"
    DoCmd.OpenReport stDocName, acPreview, , , acDialog

Exit_Befehl191_Click:
    Exit Sub

Err_Befehl191_Click:
    MsgBox Err.Description
    Resume Exit_Befehl191_Click

End Sub

Private Sub Befehl194_Click()
10  On Error GoTo Err_Befehl194_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
40  stDocName = "Formular Berichte"
50  DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Befehl194_Click:
60  Exit Sub

Err_Befehl194_Click:
70  MsgBox Err.Description
80  Resume Exit_Befehl194_Click

End Sub

Private Sub Befehl203_Click()

10  DoCmd.OpenForm "Auswahl für Sanierungsstau Prioritaeten", , , , , acDialog

End Sub

Private Sub Form_Unload(Cancel As Integer)
    'DM2022-07-26
    If (InStr(1, Ausnahme_Anw_F_aus_fuer, (Environ$("computername") & ";")) <= 0) Then
        Application.Quit
    Else
        Dim lngRetCode As Long
        lngRetCode = ShowWindow(Application.hWndAccessApp, 3)
        CurrentDb.Properties("AllowFullMenus") = True
        Call ShowWindow(hWndAccessApp, SW_MAXIMIZED)
        ZeigNavi True
    End If
End Sub

Private Sub KK_MN_ID_einbl_AfterUpdate()

10  If Me.KK_MN_ID_einbl = True Then
20      bln_MN_ID_sichtb = True
30  Else
40      bln_MN_ID_sichtb = False
50  End If

End Sub

Private Sub LF_Weitere_Tabellen_AfterUpdate()
10  Setze_Buttons
End Sub

Private Sub LF_Weitere_Tabellen_DblClick(Cancel As Integer)
10  DoEvents
20  BS_Tabelle_bearb_Click
End Sub

Private Sub Reg_Alle_Change()

10  lng_Reg_Seite = Me!Reg_Alle

20  If Me!Reg_Alle = 3 Then
30      Me!B_Formular_Gebäudebewertung!Kennummer = Null
40      Me!B_Formular_Gebäudebewertung!Objekt = Null
50      Me!B_Formular_Gebäudebewertung!BS_Ein_GebT_bewerten.Enabled = False
60      lng_ID_Geb_Teil = 0
70      Me!B_Formular_Gebäudebewertung!B_Unterformular_Gebäudedaten.Requery
80      Me!B_Formular_Gebäudebewertung!B_Unterformular_Abschreibung.Requery
90      Me!B_Formular_Gebäudebewertung!B_Unterformular_Sanierungsbedarf.Requery
100     Me!B_Formular_Gebäudebewertung!B_Unterformular_Werterhöhung.Requery
110     Me!B_Formular_Gebäudebewertung!KF_Bew_Jahr = Year(Date)
120     lng_Kalk_Jahr = Year(Date)
130 End If

End Sub

Sub Setze_Buttons()

10  If Me.LF_Weitere_Tabellen.ListIndex >= 0 Then
20      Me.BS_Tabelle_bearb.Enabled = True
30  Else
40      Me.BS_Tabelle_bearb.Enabled = False
50  End If

End Sub
