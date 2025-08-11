Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_Gefiltert_Drucken_Click()

10  lng_Kalk_Jahr = Me!KF_Kalkulationsjahr
20  lng_NK_Jahr = Me!KF_NK_Jahr

30  lng_Ber_Nr_Min = IIf(IsNull(Me!KF_Mieter), 0, CLng(Nz(Me!KF_Mieter)))
40  lng_Ber_Nr_Max = IIf(IsNull(Me!KF_Mieter), 2 ^ 31 - 1, CLng(Nz(Me!KF_Mieter)))

50  lng_ID_Geb_Min = IIf(IsNull(Me!KF_Objekt), 0, CLng(Nz(Me!KF_Objekt)))
60  lng_ID_Geb_Max = IIf(IsNull(Me!KF_Objekt), 2 ^ 31 - 1, CLng(Nz(Me!KF_Objekt)))

70  lng_ID_SB_Min = IIf(IsNull(Me!KF_SB), 0, CLng(Nz(Me!KF_SB)))
80  lng_ID_SB_Max = IIf(IsNull(Me!KF_SB), 2 ^ 31 - 1, CLng(Nz(Me!KF_SB)))

90  str_Open_Args = ""

100 If Me!KK_mit_Details = True Then
110     str_Open_Args = str_Open_Args & "*Details*Aktuell*"
120 Else
130     str_Open_Args = str_Open_Args & "*Aktuell*"
140 End If

150 DoCmd.OpenReport "Mietkalkulation", acViewPreview, , , acDialog

End Sub

Private Sub BS_Archivierung_Click()

10    If IsNull(Me.TF_Texthinweis) Or (Trim(Me.TF_Texthinweis)) = "" Then
20      MsgBox "Bitte legen Sie vorher noch einen Hinweistzext für die Archivierung fest."
30      Me!TF_Texthinweis.SetFocus
40      Exit Sub
50    End If

60    str_Suchtext = Me!TF_Texthinweis

70    lng_Kalk_Jahr = Me!KF_Kalkulationsjahr
80    lng_NK_Jahr = Me!KF_NK_Jahr

90    lng_Ber_Nr_Min = 0
100   lng_Ber_Nr_Max = 2 ^ 31 - 1

110   lng_ID_Geb_Min = 0
120   lng_ID_Geb_Max = 2 ^ 31 - 1

130   lng_ID_SB_Min = 0
140   lng_ID_SB_Max = 2 ^ 31 - 1

150   DoCmd.SetWarnings False
160   DoCmd.OpenQuery "Archiverstellungsabfrage_Mietberechnung"
170   DoCmd.SetWarnings True

180   DoEvents
190   MsgBox "Daten wurden archiviert"

End Sub

Private Sub BS_Kalkj_loeschen_Click()
10  Me.KF_Kalkulationsjahr = Null
20  Setze_Buttons
End Sub

Private Sub BS_NK_J_loeschen_Click()
10  Me.KF_NK_Jahr = Null
20  Setze_Buttons
End Sub

Private Sub BS_Mieter_loeschen_Click()
10  Me.KF_Mieter = Null
End Sub

Private Sub BS_Objekt_loeschen_Click()
10  Me.KF_Objekt = Null
End Sub


Private Sub BS_SB_Loeschen_Click()
    Me.KF_SB = Null
End Sub

Private Sub Form_Current()
10  Setze_Buttons
End Sub

Private Sub KF_Kalkulationsjahr_AfterUpdate()
10  Setze_Buttons
End Sub

Private Sub KF_Mieter_AfterUpdate()
10  Me.KF_Objekt.Requery
End Sub


Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub


Private Sub KF_NK_Jahr_AfterUpdate()
10  Setze_Buttons
End Sub

Sub Setze_Buttons()

10  If Not IsNull(Me.KF_Kalkulationsjahr) And Not IsNull(Me.KF_NK_Jahr) Then
20      Me!BS_Gefiltert_Drucken.Enabled = True
30      Me!BS_Archivierung.Enabled = True
40  Else
50      Me!BS_Gefiltert_Drucken.Enabled = False
60      Me!BS_Archivierung.Enabled = False
70  End If

End Sub
