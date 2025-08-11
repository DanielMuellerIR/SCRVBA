Attribute VB_Name = "mdl_010_Budde_Oeffentliche_Variablen"
Option Compare Database
Option Explicit

'-- Constants used by ShowWindow
Public Const SW_HIDE = 0
Public Const SW_NORMAL = 1
Public Const SW_MINIMIZED = 2
Public Const SW_MAXIMIZED = 3
' API-Aufruf zum Ein- / Ausblenden des Anwendungsfensters
Public Declare PtrSafe Function ShowWindow Lib "user32" (ByVal hwnd As LongPtr, ByVal nCmdShow As Long) As Long

' =====================================================================================
' Konstante zur Versionsangabe:
Public Const str_Version As String = "08.08.2025"

' Änderungsdoku DM seit 4.5.2022: -------------------
'DM2022-05-04:
'- Spalte tbl_200_05_10_Bewertungsläufe.Erläuterung aus qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009 entfernt, da über die Angabe qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.* bereits enthalten
'- Formular und Reports wieder aktiviert nach Klick auf Bewertung -> Alle Ergenisse (Liste)
'DM2022-06-30:
'- Diverser Debug-Output vor allem in mdl 180 HK_Abschr_1.. bis 3...
'DM2022-07-20 bis 2022-07-25
'- Änderungen an mdl 180, rpt_220_10_10_Bew_Bil_Versicherungswerte, qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten, rpt_200_10_12_Bew_Bilanz_nach_2009 zwecks Integration des WBW in den erstgenannten Report und Entfernen des Wertes aus dem letztgenannten Report.
'DM2022-07-26
'- Änderungen am Startformular, mdl 055 und mdl 010 bzgl. Erkennung meines Computers/Users und Verhindern des Ausblendens des Access-Fensters
'- Änderung des autoExec-Markos und mdl 010 bzgl. Fenster ausblenden und Ausnahme zum Entwickeln. Außerdem weitere Aufrufe der alten Fenster-Ausblenden Funktion Anw_Fenster_Aus in mdl 150 entfernt und die Funktion auskommentiert. Load und Unload des Startformulars bearbeitet.
'- Formular 040 010 Bewertungsbilanzen Verwaltung bearbeitet
'DM2022-07-27
'- Bugfix wegen fehlendem Handling von Null in HK_Abschr_1_zum_Baujahr in mdl 180
'- Weiterentwickelte Query qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten in qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten_DM umbenannt und im Report rpt_220_10_10_Bew_Bil_Versicherungswerte verwendet.
'- Alte Version der Query qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten aus der Version vom 5.5.22 einkopiert, so dass alle bisherigen Verwendungen weiterhin diese alte Version verwenden
'DM2022-09-07
'- Bewertungsbilanzen -> Eröffnungsbilanz -> Herstellkosten für Gebäudeteile mit Baujahr > 2000: Die Spalte Herstellkosten soll für diese Datensätze den Wert zeigen, der in der Maske Neubau/Sanierung -> Liegenschaften -> Rechte Seite Gebäudeteile -> Neubaukosten zu sehen ist.
'- Der entsprechende Report (nur für die Eröffnungsbilanz) ist rpt_220_10_10_Bew_Bil_HK_Kosten, das Feld "Herstellkosten", die Datenquelle qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten. Feldberechnung korrigiert, Test: Die Spalte WBW ändert sich unerwünschterweise mit. Das Feld WBW ist einfach ein Verweis auf das Feld Herstellkosten. Daher die bisherige Berechnung für Herstellkosten dort eingesetzt. Test, Ergebnis ist korrekt.
'- Bewertungen -> Jahr auswählen -> Alle Ergebnisse (Liste) -> Herstellkosten: Hier sollte in der Spalte Herstellkosten der korrekte Wert analog zur 1. Aufgabe stehen und in der Spalte WBW der auf das zuvor ausgewählte Jahr bezogene WBW, analog zum Bericht Bewertungsbilanzen -> Eröffnungsbilanz -> Jahr auswählen -> Liste mit WBW. Ergebnis muss noch überprüft werden.
'DM2022-10-19
'- Fehler in HK_Berechnen_2022 korrigiert, Vermeidung von Nullwert
'- Weitere möglichen Nullwert-Fehler in WBW_Berechnen_2022 abgefangen
'- Bewertung->Bilanzen->Herstellkosten ohne vorher ein Jahr auszuwählen: Auch hier das Jahr, wenn nicht manuell gewählt, vom aktuellen auf das letzte Jahr (also aktuell 2021) setzen (Änderung in BS_HK_Kosten_Click).
'- Gemeinsam mit Herrn Kania noch offene Todos durchgegangen. Dabei unter Seite Neubau/Sanierung -> Liegenschaften die Berhand-Awe-Str. testweise auf Bilanz-relevant (Felder Nicht mehr in Betrieb seit und Begründung geleert) und dann geprüft, ob das Gebäudeteil im Dropdown unter Bewertungen auftaucht. Tut es erst nach Schließen und erneut Öffnen des gesamten Formulars. Wenn es dann auftaucht, führt die Auswahl dieses Gebäudes zu einem Fehler aufgrund der Verwendung von Nullwerten
'- Fix des o.g. Fehlers bzgl. Berhand-Awe-Str.: Modul 150, Methode fc_Grundst_zu_Geb korrigiert, so dass es nicht mehr zu Fehlern beim Öffnen von Gebäuden ohne Flurstück und Gemarkung kommt (wenn keine Werte eingegeben sind unter Neubau/Sanierung -> Liegenschaften -> Stammdaten zur Liegenschaft -> Kästchen Katasterdaten zum Grundstück)
'DM2022-10-20
'- Seite Bewertungen -> Bewertungsjahr: Muss aktuell vor Auswahl eines Gebäudes gesetzt werden, aktualisiert nichts, wenn nachträglich geändert. Gefixt: Bei Änderung des Bewertungsjahres oben und unten die Werte aktualisieren.
'- Unten auf der Seite Bewertung die Spalte WBW bei den Werterhöhenden Bauteilen nicht eingebbar gemacht und entsprechend den Hintergrund auf transparent gesetzt.
'- Seite Bewertungen oben Feld "Bew.j.", da steht bei Herrn Kania 2e+-irgendwas, weil 2021 oder 2019 nicht reinpasst. Vergrößert. Leider bei mir nicht testbar, da der Fehler bei mir von vornherein nicht auftrat.
'- Bewertungen -> "Alle Ergebnisse (Liste)" -> Versicherungskosten -> Drucken -> Spalte WBW ist hier anders als beim Bericht Herstellkosten, muss hier analog angepasst werden. Das Formular zur Auswahl der Liste lautet "Auswahl_Gebauede_Bewertung", der Bericht bzgl. Herstellkosten ist rpt_220_10_10_Bew_Bil_HK_Kosten_nach_2009 (Spalte mit WBW verwendet die Spalte WBW der Abfrage qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten_nach_2009) und der Bericht zu den Versicherungswerten heißt rpt_220_10_10_Bew_Bil_Verswerte_nach_2009 (Spalte mit WBW verwendet die Spalte WBV der Abfrage qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten_nach_2009). Beide Reports basieren also auf derselben Abfrage. Die Summenfelder beziehen sich beide auf WBV und sind daher beide falsch. Korrigiert: Spalte WBW statt WBV in beiden Reports sowie Summenfeld von Spalte WBW verwenden. Die neue, korrekte Summe lautet nun in beiden Berichten 546.079.204,65.
'- Excel Export in dieser Maske getestet. Funktioniert bei mir und ist eine Kombination aus Herstellkosten und Versicherungswerten (Methode ExcelExport_HK_VW). Der Exel-Export exportiert einfach alle Felder der Abfrage, was ziemlich viele sind. Enthalten ist auch die bisherige Spalte WBV, was der WBW sein sollte, aber falsch berechnet wird, sowie die neue Spalte WBW (der korrekt berechnete).
'- Wenn man z.B. für Bernhard Awe-Straße, wo vorher Bilanz angekreuzt und die beiden anderen Felder mit 11/2021 und ein kurzer Text stand - wenn man nun Bilanz-relevant ankreuzt und die beidem Felder leert und zurück zu Bewertungen geht, ist das Gebäudeteil nicht im Dropdown. Schließt man die ganze Maske und öffnet sie wieder, ist es da. Passenden Event für die Aktualisierung gesucht. Im Startformular wird beim Event B_Formular_Gebäudebewertung_Enter nun ein Requery auf das Dropdown Kennnummer durchgeführt.
'DM2022-10-28
'- frm_040_010_Bewertungsbilanzen_Verwaltung Methode SetzeButtons setzt nun die Liste Bewertungsläufe links auf deselektiert und deaktiviert, wenn oben Radiobutton 2 oder 3 ausgewählt sind und deaktiviert die 5 Buttons links.
'  Wenn Radiobutton 1 ausgewählt ist, wird die Listbox aktiviert, selektierbar gemacht und die 5 Buttons werden zunächst alle aktiviert und danach wird der bisherige Code ausgeführt, der ggf. wieder Buttons deaktiviert (z.B. ausdrucken wird deaktiviert, wenn kein Lauf selektiert ist).mdl_Oeffnen_Speichern_Dialoge_Neu
'DM2022-11-02
'- frm_040_010_Bewertungsbilanzen_Verwaltung Methode SetzeButtons: Auch den Button "Neue Bewertungsbilanz..." deaktivieren, wenn oben der zweite oder dritte Radiobutton aktiv ist.
'DM2022-11-04
'- Startformular Bewertungen: Auswahl des Jahres sowie Button "Alle Ergebnisse (Detail)" konnten Fehler bringen bzgl. Verwendung eines Nullwertes. Entsprechend abgefangen. Änderungen im Startfenster sowie in B_Formular_Gebäudebewertung
'- Startformular: Für mich das Kontextmenü aktivieren, um schnell zwischen Formular und Layoutansicht switchen zu können (siehe Open Event des Startfensters)
'DM2023-02-01
'- frm_010_010_Gebäudeverwaltungen (Liegenschaften) Liste links und Liste rechts: Filtermöglichkeit per Radiobuttons implementiert
'- frm_500_010_Gebaeudebegehungen Radiobuttons OR_VerantwortlicherSB für Auswahl aktive oder alle SB implementiert
'- frm_020_10_Maßnahmenverwaltung Radiobuttons implementiert
'DM2023-02-09
'- fc_Admin in mdl 055 Bugfix beim Anlegen von Usern
'- Startformular Form.open Absicherung beim Anlegen von Usern
'DM2023-05-11
'- Umstellung auf 64-Bit-Kompatibilität (PtrSafe und LongPtr für hwnd long Parameter zu Libraries) in allen Modulen (keine Kommentare zu jeder Änderung erstellt, da es sehr viele Ersetzungen waren)
'- Weitere Compilerfehler korrigiert, bzgl. Structures, die LongPtr Parameter von Library calls speichern und daher auch umdeklariert werden müssen
'DM2023-05-12
'- Analog zur Auftragsliste: Anlegen eines fehlenden Benutzers beim Start nur noch wenn mein Benutzer & PC erkannt wird, ansonsten Meldung und Beenden.
'DM2023-06-06
'- Modul mdl_Oeffnen_Speichern_Dialoge_Neu komplett ersetzt.
'DM2023-06-10
'- Formular umbenannt: M_Formular_Eingabe_Verwaltungskosten in M_Formular_Eingabe_VerwaltungskostenBis2023 und Aufrufe korrigiert
'- Formular angelegt: M_Formular_Eingabe_VerwaltungskostenAb2024. Anpassungen wie besprochen. Unterformulare entfernt.
'DM2025-06-10 bis 13:
'- Neues Formular M_Formular_Eingabe_VerwaltungskostenAb2024 implementiert, das bisheriger in "...Bis2023" unbenannt. Erreichbar per Startformular -> Vermietung/Verwaltung -> Mitberechnung bis 2023 / Ab 2024
'- Arraysuchfunktion posInArray hier in diesem Modul
'DM2025-06-17
'- Buttontext komplett sichtbar gemacht durch Änderung des Zeilenumbruchs und der Schreibweise für Neubau/Sanierung -> "Maßnahmen erledigt/nicht erledigt/nicht mehr benötigt"
'- Funktion fc_Admin angepasst, so dass mein automatisch angelegter User auch das Recht_Reparatur hat
'- Abfragen und Berichte geändert: Bericht Sanierungsstau nach Finanzplanung, Bericht Sanierungsstau nach Finanzpl_Part_03, Sanierungsstau Prioritäten
'- Bericht Sanierungsstau Prioritäten geändert: Abfrage, Einstellungen für Sortierung und Gruppierung. Außerdem überschüssiges Leerzeichen in einem der drei AbfragenFinanzpl_Part_01 - 03 und Fehler bei der Groß-/Kleinschreibung korrigiert
'- Analog dazu die vier Berichte deren Namen mit "Sanierungsstau Prioritäten" anfangen geändert (außer _neu_verwerfen)
'DM2025-07-09
'-- Abfrage des Berichts 'Sanierungsstau Finanzplanung Erledigt_Status' geändert. Es war ein inner join auf die Tabelle Geplante_Finanzierung vorhanden, außerdem aber die Abfrage 'Bericht Sanierungsstau nach Finanzpl_Union' und das Feld aus Geplante_Finanzierung ist bereits in 'Bericht Sanierungsstau nach Finanzpl_Union' enthalten und führte zu einem unnötigen join bzw. einer Multiplizierung der Treffer. Korrigiert durch Verwendung des Feldes aus der Abfrage anstelle der Tabelle.
'DM2025-07-09
'- SQL der Abfrage des Berichts "Sanierungsstau Finanzplanung Erledigt_Status" bearbeitet. War zu lang, gekürzt durch u.a. Aliase. Auch Sortierung geändert. Außerdem die Sortierung im Bericht selbst geändert, d.H. Reihenfolge von Sort_Jahr und Maßnahme getauscht.
'DM2025-08-06
'- Bericht Sanierungsstau Finanzplanung Erledigt_Status geändert
'- Abfragen Bericht Sanierungsstau nach Finanzpl_Part_03 und "Bereitgestellt" geändert
'DM2025-08-08
'- Abfragen Bericht Sanierungsstau nach Finanzpl_Part_03 geändert: Es haben sich zusätzliche Zeilen ergeben, die unerwünscht waren. Das liegt daran, dass mit Geplante Finazierung gejoint
'  wurde und dann in der alten Version der Abfrage mit Max(geplante Finanzierung.ID) die sich wiederholenden Zeilen eliminiert wurden. Entsprechend in meiner Fassung auch geändert und die
'  Spalte Fehlbetrag, die in Part_01 "Gepl_Finanz" heißt (es werden die Abfragen 01-03 mit union zusammengeklebt, dabei gelten dann die Spaltenbezeichnungen der ersten Abfrage), wieder von
'  fix 0 auf den vorherigen Restbetrag aus Vorauss. Gesamtkosten minus jeweils tats. Kosten oder wenn nicht vorhanden die geplante Finanzierung.
'- Fix in bln_Anw_Fenster_aus
'----------------------------------------------------
' Bei bln_Anw_Fenster_aus = True wird das Access-Anwendungsfenster ausgeblendet
' Bei bln_Anw_Fenster_aus = False bleibt das Access-Anwendungsfenster eingeblendet
Public Const Ausnahme_Anw_F_aus_fuer As String = "WEEWIN11PARALLE;YS7;" ' DM2022-07-26 siehe unten die Funktion bln_Anw_Fenster_aus

' =====================================================================================

' Standardordner für Excel-Exporte
Public Const str_Excel_Exp_Ordner As String = "S:\a60\Datenbank\Excel-Exporte"

' Standardordner für PDF-Exporte
Public Const str_PDF_Export_Pfad As String = "S:\a60\Datenbank\Gebaeude\PDF_Exporte\"

' Office 32 Bit oder Office 64 Bit
#If VBA7 Then
    Public Const BitVersion = "64"
#Else
    Public Const BitVersion = "32"
#End If

' Pausebefehl
Declare PtrSafe Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Public str_Dateiname As String
Public X As Variant
Public i As Long, j As Long, k As Long, l As Long, m As Long, n As Long, o As Long
Public lng_Reg_Seite As Long
Public str_Suchtext As String
Public str_Hinweis As String
Public str_temp_Obj_Name As String
Public str_SQL_Statement As String
Public str_LF_Rowsource_1 As String
Public str_LF_Rowsource_2 As String
Public str_Open_Args As String
Public rst_GebTeile As DAO.Recordset
Public rst As DAO.Recordset
Public rst_2 As DAO.Recordset
Public rel As Relation
Public lng_ID_Buchung As Long
Public lng_Kennummer As Long
Public lng_ID_Werterh As Long
Public lng_ID_Zuordn As Long
Public lng_ID_Gepl_Finanz As Long
Public dt_Fix_Datum As Date
Public cur_Betrag As Currency
Public cur_Betr_Summe As Currency

' Hilfsvariablen für Berechnung der HK / Nutzungsdauern / Abschreibungen / Werterhöhungen / Restwerte
Public dt_Akt_Datum As Date
Public dbl_BGF As Double
Public dbl_Index As Double
Public cur_HK As Currency
Public cur_Wiederb_wert As Currency
Public lng_Nutzd_Monate As Long
Public cur_Abschr_pro_Monat As Currency
Public lng_Abschr_Monate As Long
Public cur_Abschr_bis_Hier As Currency
Public cur_Restwert_vor_WE As Currency
Public cur_Werterh As Currency
Public lng_Nutzd_Verl As Long
Public bln_Berueck_WBW As Long
Public cur_Restwert_nach_WE As Currency
Public cur_Auftr_Minwert As Currency


' Hilfsvariablen für Abholung der HK / Nutzungsdauern / Abschreibungen / Werterhöhungen / Restwerte aus Vor-DS (B_Bewertung_Werterhöhung)
Public dt_Akt_Datum_VorDS As Date
Public dbl_Index_VorDS As Double
Public cur_HK_VorDS As Currency
Public cur_Wiederb_wert_VorDS As Currency
Public lng_Nutzd_Monate_VorDS As Long
Public cur_Abschr_pro_Monat_VorDS As Currency
Public lng_Abschr_Monate_VorDS As Long
Public cur_Abschr_bis_Hier_VorDS As Currency
Public cur_Restwert_vor_WE_VorDS As Currency
Public cur_Werterh_VorDS As Currency
Public lng_Nutzd_Verl_VorDS As Long
Public bln_Berueck_WBW_VorDS As Long
Public cur_Restwert_nach_WE_VorDS As Currency
'
Public cur_Wert_1 As Currency
Public cur_Wert_2 As Currency
Public cur_Wert_3 As Currency
Public cur_BNK As Currency
Public cur_Auss_Anl As Currency


Public lng_Bil_art As Long
Public lng_Erst_Folg_Bil As Long
Public lng_Fin_quelle As Long
Public lng_Bau_Mod_Jahr As Long


' --------------------------------------------------------------------
' nachfolgend zu den Primärschlüssel-Filtern jeweils auch Min und MAx
' für die Filtervariante "Alle"
Public lng_ID_Gebaeude As Long
Public lng_ID_Geb_Min As Long
Public lng_ID_Geb_Max As Long

Public lng_ID_Geb_Teil As Long
Public lng_ID_Geb_Teil_Min As Long
Public lng_ID_Geb_Teil_Max As Long

Public lng_ID_Haush_Dt As Long
Public lng_Fin_Herk As Long

Public lng_ID_Massn As Long
Public lng_ID_Massn_Min As Long
Public lng_ID_Massn_Max As Long
Public lng_ID_Teil_Massn As Long
Public lng_ID_Verg_Vorl As Long
Public lng_ID_Nachtrag As Long
Public bln_ID_Massn_ausdr As Boolean
Public bln_Massn_Termine_OK As Boolean


Public lng_Kalk_Jahr As Long
Public lng_Kalk_Jahr_Min As Long
Public lng_Kalk_Jahr_Max As Long
Public dt_Start_Datum As Date
Public dt_Ende_Datum As Date

Public dt_RE_Bis As Date

Public lng_NK_Jahr As Long
Public lng_NK_Jahr_Min As Long
Public lng_NK_Jahr_Max As Long

Public lng_ID_Kostst As Long
Public lng_ID_Kostst_Min As Long
Public lng_ID_Kostst_Max As Long

Public lng_ID_Kostart As Long
Public lng_ID_Kostart_Min As Long
Public lng_ID_Kostart_Max As Long

Public lng_Betr_Nr As Long
Public lng_Betr_Nr_Min As Long
Public lng_Betr_Nr_Max As Long

Public lng_Ber_Nr As Long
Public lng_Ber_Nr_Min As Long
Public lng_Ber_Nr_Max As Long

Public lng_ID_Empf As Long
Public lng_ID_Empf_Min As Long
Public lng_ID_Empf_Max As Long

Public lng_ID_ZahlZykl As Long
Public lng_ID_ZahlZykl_Min As Long
Public lng_ID_ZahlZykl_MAx As Long

Public lng_id_Bewert As Long

Public lng_ID_Bew_Bil As Long
Public lng_ID_Bew_Bil_min As Long
Public lng_ID_Bew_Bil_max As Long


Public lng_ID_SB As Long
Public lng_ID_SB_Min As Long
Public lng_ID_SB_Max As Long
Public bln_SB_nicht_festg As Boolean

Public lng_ID_Eigenl As Long

Public bln_MN_ID_sichtb As Boolean
Public bln_MN_Einz_Mitt_Art As Boolean

Public Ctrl As Control
Public tmp_Text As String
Public AO_Text As String

Public bln_Nur_CAS_Firmen As Boolean


Public lng_Beg_Jahr As Long ' Begehungsjahr


' API-Aufruf zur Steuerung der NumLock-Taste
Public Declare PtrSafe Sub keybd_event Lib "user32" ( _
                               ByVal bVk As Byte, _
                               ByVal bScan As Byte, _
                               ByVal dwFlags As Long, _
                               ByVal dwExtraInfo As Long)

Public Const VK_NUMLOCK = &H90
Public Const KEYEVENTF_KEYUP = &H2

' API-Aufruf zur Abfrage der NumLock-Taste
Public Declare PtrSafe Function GetKeyState Lib "user32" ( _
                                    ByVal nVirtKey As Long) As Integer

' Verwendung:
' Status: CAPS-Lock
'If GetKeyState(vbKeyCapital) = 1 Then _
 '  MsgBox "CAPS-Lock ist eingeschaltet!"

' Verwendung:
' Status: NUM-Lock
'If GetKeyState(vbKeyNumlock) = 1 Then _
 '  MsgBox "NUM-Lock ist eingeschaltet!"
'
'
Public str_Openargs As String
'


Public Function bln_Anw_Fenster_aus() As Boolean 'DM2022-07-26 <----------------------------------------------------
    bln_Anw_Fenster_aus = InStr(1, Ausnahme_Anw_F_aus_fuer, (Environ$("computername") & ";")) <= 0

    'Anw_Fenster_Aus bln_Anw_Fenster_aus 'mdl 150
    If (bln_Anw_Fenster_aus = False) Then
        If (MsgBox("Access ausblenden?", vbOKCancel, "Startmodus DEV") = vbOK) Then
            bln_Anw_Fenster_aus = True
        End If
    End If
    CurrentDb.Properties("AllowFullMenus") = Not (bln_Anw_Fenster_aus)
    If (bln_Anw_Fenster_aus) Then
        Call ShowWindow(hWndAccessApp, SW_HIDE)
        DoCmd.OpenForm "Startformular", windowmode:=acDialog
        ZeigNavi False
    Else
        Call ShowWindow(hWndAccessApp, SW_MAXIMIZED)
        DoCmd.OpenForm "Startformular", windowmode:=acNormal
        ZeigNavi True
    End If
End Function

Public Function ZeigNavi(Zeig As Boolean)
    DoCmd.SelectObject acTable, vbNullString, True
    If Zeig = False Then Access.RunCommand acCmdWindowHide
End Function



Public Function Maxim_Bericht()
10  DoCmd.Maximize
End Function


Function F_Variable(Varname As String)

20  Select Case Varname

    Case "lng_ID_Buchung"
30      F_Variable = lng_ID_Buchung
40  Case "lng_Kennummer"
50      F_Variable = lng_Kennummer
60  Case "AO_Text"
70      F_Variable = AO_Text
80  Case "str_Suchtext"
90      F_Variable = str_Suchtext
100 Case "lng_ID_Gebaeude"
110     F_Variable = lng_ID_Gebaeude
120 Case "lng_ID_Geb_Min"
130     F_Variable = lng_ID_Geb_Min
140 Case "lng_ID_Geb_Max"
150     F_Variable = lng_ID_Geb_Max
160 Case "lng_ID_Geb_Teil"
170     F_Variable = lng_ID_Geb_Teil
180 Case "lng_ID_Geb_Teil_Min"
190     F_Variable = lng_ID_Geb_Teil_Min
200 Case "lng_ID_Geb_Teil_Max"
210     F_Variable = lng_ID_Geb_Teil_Max
220 Case "lng_ID_Massn"
230     F_Variable = lng_ID_Massn
240 Case "lng_ID_Haush_Dt"
250     F_Variable = lng_ID_Haush_Dt
260 Case "lng_ID_Verg_Vorl"
270     F_Variable = lng_ID_Verg_Vorl
280 Case "lng_ID_Nachtrag"
290     F_Variable = lng_ID_Nachtrag
300 Case "lng_ID_Massn_Min"
310     F_Variable = lng_ID_Massn_Min
320 Case "lng_ID_Massn_Max"
330     F_Variable = lng_ID_Massn_Max
340 Case "lng_Kalk_Jahr"
350     F_Variable = lng_Kalk_Jahr
360 Case "lng_Kalk_Jahr_Min"
370     F_Variable = lng_Kalk_Jahr_Min
380 Case "lng_Kalk_Jahr_Max"
390     F_Variable = lng_Kalk_Jahr_Max
400 Case "lng_NK_Jahr"
410     F_Variable = lng_NK_Jahr
420 Case "lng_NK_Jahr_Min"
430     F_Variable = lng_NK_Jahr_Min
440 Case "lng_NK_Jahr_Max"
450     F_Variable = lng_NK_Jahr_Max
460 Case "lng_Ber_Nr"
470     F_Variable = lng_Ber_Nr
480 Case "lng_Ber_Nr_Min"
490     F_Variable = lng_Ber_Nr_Min
500 Case "lng_Ber_Nr_Max"
510     F_Variable = lng_Ber_Nr_Max
520 Case "lng_ID_SB"
530     F_Variable = lng_ID_SB
540 Case "lng_ID_SB_Min"
550     F_Variable = lng_ID_SB_Min
560 Case "lng_ID_SB_Max"
570     F_Variable = lng_ID_SB_Max
580 Case "lng_ID_Eigenl"
590     F_Variable = lng_ID_Eigenl
600 Case "bln_SB_nicht_festg"
610     F_Variable = bln_SB_nicht_festg
620 Case "lng_ID_Teil_Massn"
630     F_Variable = lng_ID_Teil_Massn
640 Case "lng_ID_Werterh"
650     F_Variable = lng_ID_Werterh
660 Case "lng_ID_Zuordn"
670     F_Variable = lng_ID_Zuordn

680 Case "dt_RE_Bis"
690     F_Variable = dt_RE_Bis
700 Case "lng_Betr_Nr"
710     F_Variable = lng_Betr_Nr
720 Case "lng_Betr_Nr_Min"
730     F_Variable = lng_Betr_Nr_Min
740 Case "lng_Betr_Nr_Max"
750     F_Variable = lng_Betr_Nr_Max
760 Case "lng_id_Kostst"
770     F_Variable = lng_ID_Kostst
780 Case "lng_id_Kostst_Min"
790     F_Variable = lng_ID_Kostst_Min
800 Case "lng_id_Kostst_Max"
810     F_Variable = lng_ID_Kostst_Max
820 Case "lng_id_Kostart"
830     F_Variable = lng_ID_Kostart
840 Case "lng_id_Kostart_Min"
850     F_Variable = lng_ID_Kostart_Min
860 Case "lng_id_Kostart_Max"
870     F_Variable = lng_ID_Kostart_Max
880 Case "lng_id_Empf"
890     F_Variable = lng_ID_Empf
900 Case "lng_id_Empf_Min"
910     F_Variable = lng_ID_Empf_Min
920 Case "lng_id_Empf_Max"
930     F_Variable = lng_ID_Empf_Max
940 Case "lng_Id_ZahlZykl"
950     F_Variable = lng_ID_ZahlZykl
960 Case "lng_Id_ZahlZykl_Min"
970     F_Variable = lng_ID_ZahlZykl_Min
980 Case "lng_Id_ZahlZykl_MAx"
990     F_Variable = lng_ID_ZahlZykl_MAx
1000 Case "dt_Fix_Datum"
1010    F_Variable = dt_Fix_Datum
1020 Case "str_Open_Args"
1030    F_Variable = str_Open_Args
1040 Case "bln_MN_ID_sichtb"
1050    F_Variable = bln_MN_ID_sichtb
1060 Case "bln_MN_Einz_Mitt_Art"
1070    F_Variable = bln_MN_Einz_Mitt_Art
1080 Case "lng_id_Bewert"
1090    F_Variable = lng_id_Bewert
1100 Case "lng_Bil_art"
1110    F_Variable = lng_Bil_art
1120 Case "lng_ID_Bew_Bil"
1130    F_Variable = lng_ID_Bew_Bil
1140 Case "lng_ID_Bew_Bil_min"
1150    F_Variable = lng_ID_Bew_Bil_min
1160 Case "lng_ID_Bew_Bil_max"
1170    F_Variable = lng_ID_Bew_Bil_max
1180 Case "lng_Erst_Folg_Bil"
1190    F_Variable = lng_Erst_Folg_Bil
1200 Case "lng_Fin_quelle"
1210    F_Variable = lng_Fin_quelle
1220 Case "lng_Bau_Mod_Jahr"
1230    F_Variable = lng_Bau_Mod_Jahr

1240 Case "dt_Akt_Datum"
1250    F_Variable = dt_Akt_Datum
1260 Case "dbl_Index"
1270    F_Variable = dbl_Index
1280 Case "cur_HK"
1290    F_Variable = cur_HK
1300 Case "cur_Wiederb_wert"
1310    F_Variable = cur_Wiederb_wert
1320 Case "lng_Nutzd_Monate"
1330    F_Variable = lng_Nutzd_Monate
1340 Case "cur_Abschr_pro_Monat"
1350    F_Variable = cur_Abschr_pro_Monat
1360 Case "lng_Abschr_Monate"
1370    F_Variable = lng_Abschr_Monate
1380 Case "cur_Abschr_bis_Hier"
1390    F_Variable = cur_Abschr_bis_Hier
1400 Case "cur_Restwert_vor_WE"
1410    F_Variable = cur_Restwert_vor_WE
1420 Case "cur_Werterh"
1430    F_Variable = cur_Werterh
1440 Case "lng_Nutzd_Verl"
1450    F_Variable = lng_Nutzd_Verl
1460 Case "bln_Berueck_WBW"
1470    F_Variable = bln_Berueck_WBW
1480 Case "cur_Restwert_nach_WE"
1490    F_Variable = cur_Restwert_nach_WE
1500 Case "str_temp_Obj_Name"
1510    F_Variable = str_temp_Obj_Name
1520 Case "cur_Auftr_Minwert"
1530    F_Variable = cur_Auftr_Minwert
1540 Case "dt_Start_Datum"
1550    F_Variable = dt_Start_Datum
1560 Case "dt_Ende_Datum"
1570    F_Variable = dt_Ende_Datum
1580 Case "bln_Nur_CAS_Firmen"
1590    F_Variable = bln_Nur_CAS_Firmen
1600 Case "lng_Beg_Jahr"
1610    F_Variable = lng_Beg_Jahr

1620 Case Else
1630    F_Variable = "unbekannter Variablenname"
1640 End Select


End Function


Function NumLock_An()

' NUM-Lock aktivieren (falls deaktiviert)
10  If Not (GetKeyState(vbKeyNumlock) = 1) Then
20      keybd_event VK_NUMLOCK, 1, 0, 0
30      keybd_event VK_NUMLOCK, 1, KEYEVENTF_KEYUP, 0
40  End If

End Function


Public Function posInArray(suche As Variant, arr As Variant) As Variant
Dim i As Long
For i = LBound(arr) To UBound(arr)
    If arr(i) = suche Then
        posInArray = i
        Exit Function
    End If
Next i
posInArray = Null
End Function
