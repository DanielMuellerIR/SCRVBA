Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_Drucken_Click()

10  dt_Start_Datum = CDate(Me!TF_Stichtag_ab)
20  dt_Ende_Datum = CDate(Me!TF_Stichtag_bis)

30  Select Case Me!OR_Ausw_Auswertung

    Case 1   ' = Alle Stunden aller SB zu allen Maßnahmen im Zeitraum
40      lng_ID_SB_Min = 1
50      lng_ID_SB_Max = 2 ^ 31 - 1
60      lng_ID_Massn_Min = 1
70      lng_ID_Massn_Max = 2 ^ 31 - 1

80  Case 2   ' = Alle Stunden aller SB zur markierten Maßnahme im Zeitraum
90      lng_ID_SB_Min = 1
100     lng_ID_SB_Max = 2 ^ 31 - 1
110     lng_ID_Massn_Min = lng_ID_Massn
120     lng_ID_Massn_Max = lng_ID_Massn


130 Case 3   ' = Alle Stunden zum markierten SB zu allen Maßnahmen im Zeitraum
140     lng_ID_SB_Min = lng_ID_SB
150     lng_ID_SB_Max = lng_ID_SB
160     lng_ID_Massn_Min = 1
170     lng_ID_Massn_Max = 2 ^ 31 - 1

180 End Select

190 DoCmd.OpenReport "rpt_030_50_10_Aktiv_bare_Eigenleistungen", acViewPreview, , , acDialog

End Sub

Private Sub BS_Excel_Exp_Click()

10  str_Dateiname = DateiSpeichern("S:\a60\Datenbank\Excel-Exporte\Aktivierbare_Eigenleistungen.xlsx", "Excel-Export nach ..", "Excel-Dateien (*.xlsx)", "*.xlsx")

20  If str_Dateiname = "" Then
        '40      MsgBox "Abbbruch"
30      Exit Sub
40  End If


50  Call Export_Excel("qry_rpt_030_50_10_Aktiv_bare_Eigenleistungen", _
                      str_Dateiname, _
                      "Aktivierbare_Eigenleistungen", _
                      "Aktivierbare_Eigenleistungen")

End Sub

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub

Private Sub Form_Open(Cancel As Integer)

10  lng_ID_SB = 0
20  lng_ID_Teil_Massn = 0
30  Me!UF_Stunden.Form.Requery

40  For Each Ctrl In Me.Controls
50      If InStr(1, Ctrl.Tag, fc_Recht()) > 0 Or Ctrl.Tag = "" Then
60          Ctrl.Visible = True
70      Else
80          Ctrl.Visible = False
90      End If
100 Next Ctrl

End Sub

Private Sub LF_SB_er_AfterUpdate()

10  lng_ID_SB = Me!LF_SB_er
20  Me!LF_Teilmassnahmen.Requery
30  Me!LF_Teilmassnahmen = Null
40  lng_ID_Teil_Massn = 0
50  lng_ID_Massn = 0
60  Me.UF_Stunden.Requery
70  Setze_Buttons

End Sub

Private Sub LF_Teilmassnahmen_AfterUpdate()
10  lng_ID_Teil_Massn = Me!LF_Teilmassnahmen
20  lng_ID_Massn = Me.LF_Teilmassnahmen.Column(1)
30  Me!UF_Stunden.Form.Requery
40  DoEvents
50  Setze_Buttons
End Sub

Sub Setze_Buttons()

10  If Me!LF_Teilmassnahmen > 0 Then
20      Me!UF_Stunden!BS_DS_Neu.Enabled = True
30  Else
40      Me!UF_Stunden!BS_DS_Neu.Enabled = False
50  End If

60  If Me!UF_Stunden.Form.RecordsetClone.RecordCount > 0 Then
70      Me!UF_Stunden!BS_DS_loeschen.Enabled = True
80  Else
90      Me!UF_Stunden!BS_DS_loeschen.Enabled = False
100 End If

110 Me.Repaint

End Sub
