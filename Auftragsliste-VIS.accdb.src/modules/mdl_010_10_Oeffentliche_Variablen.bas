Attribute VB_Name = "mdl_010_10_Oeffentliche_Variablen"
Option Compare Database

' API-Aufruf zum Ein- / Ausblenden des Anwendungsfensters
Public Declare PtrSafe Function ShowWindow Lib "user32" _
                                   (ByVal hWnd As LongPtr, ByVal nCmdShow As Long) As Long

'-- Constants used by ShowWindow
Public Const SW_HIDE = 0
Public Const SW_NORMAL = 1
Public Const SW_MINIMIZED = 2
Public Const SW_MAXIMIZED = 3

Public Const str_Version As String = "17.03.2026"
' In der Variablen str_Version kann die Version eingetragen werden, einbettende Anführungszeichen bitte belassen
'------ Änderungslog DM seit 2023-01-30
'DM2023-01-30
'- Änderungen an Form_Load und Form_Unload von frm_10_10_Startformular, sowie in BS_Neuer_Auftrag_Click
'DM2023-01-31
'- Änderungen an Form_Load von frm_10_10_Startformular, sowie in mdl_010_10 und mdl_70_10 bzgl. Fenster ein- und ausblenden etc.
'- autoexec-Makro erstellt, startet bln_Anw_Fenster_aus. Außerdem das Formular frm_001_001_Hintergrund einkopiert, dieses wird aber momentan nicht genutzt, kann aber Dinge per Timer verzögert starten
'DM2023-05-12
'- 64-Bit Kompatibilität: PtrSafe in API Deklarationen und LongPtr für Fensterpointer in mehreren Modulen
'- Fehlermeldungen beim Start (Startformular Form_Open). Fixes beim Ermitteln des Users, wenn dieser nicht gefunden wird.
'- Analog zur Gebäude-DB bei nicht Vorhandensein des Users Meldung bringen und die Anwendung beenden, es sei denn, mein Computer & User wird erkannt, dann in der Usertabelle diesen anlegen
'- Auftragsdokumente zeigen: Button bringt nun einer Meldung, dass man erst einen Auftrag auswählen soll, wenn man ohne dies zu tun auf den Button geklickt hat
'DM2023-06-05
'- Modul mdl_90_10_Datei_Speichern komplett ersetzt durch die eingebaute VBA-Funktion FileDialog. Anpassungen.
'DM2026-03-17
'- Bugfix: RecordSource der beiden unteren UF im Startformular beím Starten Setzen, wird sonst vom Beenden-Button geleert und blieb dann beim Entwickeln leer.
'- Prüfen, ob notwendige Felder leer sind, bevor man die Auftragssumme eintragen darf, inkl. Meldung, welche Felder noch fehlen und einfärben sowie wieder weiß färben wenn befüllt
'- Rechnung erstellen nur, wenn Auftragssumme brutto und Auftragsdatum gesetzt sind, sonst Meldung.
'------ Änderungslog Ende
'Public Const bln_Anw_Fenster_aus As Boolean = True
' True:  das  Accesls-Anwendungsfenster wird  ausgeblendet  (Auslieferungszustand)
' False: das Access-Anwendungsfenster wird eingeblendet     (Entwicklungs-Umgebung)
Public Const Ausnahme_Anw_F_aus_fuer As String = "WEEWIN11PARALLE" ' DM2023-01-30 siehe unten die Funktion bln_Anw_Fenster_aus

Public Const str_Bereich As Long = "60"
' Feste Verankerung des Bereichs, kann ggf. für Kopie der DB für andere Bereiche anders festgelegt werden
' str_Bereich wird beim Generieren neuer Aufträge fest in die VIS-Auftrags-Nr. übernommen

Public Const str_Excel_Exportpfad = "S:\a60\Kania\Daten\Tobi\Access\Auftragsliste VIS\Excel-Exporte\" ' abschließendes  \  nicht vergessen
' Vorgabe des Standard-Ordnerpades für Excel-Exporte

Public Const str_AuftrDokumentePfad = "S:\a60\Datenbank\Auftragsliste_VIS\Dokumente\" 'DM2022-01-21
Public Const str_AuftrREPFad = "S:\a60\Datenbank\Auftragsliste_VIS\Rechnungen\"

Public ctrl As Control
Public i As Long, j As Long, k As Long
Public lng_User As Long
Public lng_Bearbeiter As Long
Public lng_Firma As Long
Public lng_Auftr_Nr As Long
Public lng_Q_Pr As Long
Public Str_SQL_Statement As String
Public dt_Jetzt As Date

Public str_Dateiname As String
'

Public Function F_Variable(str_Var_Name As String)

10  Select Case str_Var_Name
    Case "i"
20      F_Variable = i
30  Case "lng_User"
40      F_Variable = lng_User
50  Case "str_Version"
60      F_Variable = str_Version
70  Case "lng_Bearbeiter"
80      F_Variable = lng_Bearbeiter
90  Case "lng_Firma"
100     F_Variable = lng_Firma
110 Case "lng_Auftr_Nr"
120     F_Variable = lng_Auftr_Nr
130 Case "lng_Q_Pr"
140     F_Variable = lng_Q_Pr
150 Case "str_Bereich"
160     F_Variable = str_Bereich

170 End Select

End Function


Public Function bln_Anw_Fenster_aus() As Boolean 'DM2023-01-30 <----------------------------------------------------
    bln_Anw_Fenster_aus = Not (Environ$("computername") = Ausnahme_Anw_F_aus_fuer)
    If (bln_Anw_Fenster_aus = False) Then
        DoEvents
        If (MsgBox("Access ausblenden?", vbOKCancel, "Startmodus DEV") = vbOK) Then
            bln_Anw_Fenster_aus = True
        End If
    End If
    CurrentDb.Properties("AllowFullMenus") = Not (bln_Anw_Fenster_aus)
    If (bln_Anw_Fenster_aus) Then
        Call ShowWindow(hWndAccessApp, SW_HIDE)
        DoCmd.OpenForm "frm_10_10_Startformular", windowmode:=acDialog
        ZeigNavi False
        DoEvents
    Else
        Call ShowWindow(hWndAccessApp, SW_MAXIMIZED)
        DoCmd.OpenForm "frm_10_10_Startformular", windowmode:=acNormal
        ZeigNavi True
    End If
End Function

Public Function ZeigNavi(Zeig As Boolean)
    DoCmd.SelectObject acTable, vbNullString, True
    If Zeig = False Then Access.RunCommand acCmdWindowHide
End Function
