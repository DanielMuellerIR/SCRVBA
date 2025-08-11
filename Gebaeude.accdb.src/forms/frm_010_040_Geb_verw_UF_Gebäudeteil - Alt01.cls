Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Baujahr_real_AfterUpdate()
10  DoCmd.RunCommand acCmdSaveRecord
20  Call HK_Abschr_1_zum_Baujahr    ' in Modul mdl_180_Abschreib_Wiederherst_Kost_Werterhoehg
End Sub

Private Sub BS_KS_zurordnen_Click()

10  DoCmd.OpenForm "frm_010_050_GebTeil_UF_Kostenst_Hitorie", , , , , acDialog
20  Me.TF_Kostenstelle.Requery

End Sub

Private Sub geschätze_Nutzungsdauer_AfterUpdate()
10  DoCmd.RunCommand acCmdSaveRecord
20  Call HK_Abschr_1_zum_Baujahr    ' in Modul mdl_180_Abschreib_Wiederherst_Kost_Werterhoehg
End Sub

Private Sub gewöhnliche_Nutzungsdauer_AfterUpdate()
10  DoCmd.RunCommand acCmdSaveRecord
20  Call HK_Abschr_1_zum_Baujahr    ' in Modul mdl_180_Abschreib_Wiederherst_Kost_Werterhoehg
End Sub

Private Sub KK_Bilanz_relevant_Click()

10  Aktual_Zug_Gebauedeteil

End Sub


Public Sub Aktual_Zug_Gebauedeteil()

10  If Me!KK_Bilanz_relevant = True Then
20      Me!KF_ID_GebT_Zug_GebT = Null
30      Me!KF_ID_GebT_Zug_GebT.Enabled = False
40  Else
50      Me!KF_ID_GebT_Zug_GebT.Enabled = True
60  End If

End Sub

Function Berechne_WE_Abschr_Neu()

'10  MsgBox "Datenstand zu Wiederbeschaffungswert, Abschreibung, aktuelle Nutzungsdauer, Restwert, Werterhöhung wird neu ermittelt .."

20  DoCmd.RunCommand acCmdSaveRecord
30  Call HK_Abschr_1_zum_Baujahr    ' die Startzeile zu ABschreibungen etc. mit DS-Typ 1 wird neu generiert
40  DoEvents
50  Call HK_Abschr_2_Werterhoehung  ' die gesamte MAtrix zu echten Werterhöhungen (DS-Typ 2) wird dort neu berechnet
60  DoEvents

'70  MsgBox "Erledigt!"

End Function
