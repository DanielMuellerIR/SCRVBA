Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Form_Open(Cancel As Integer)
10  lng_Ber_Nr_Min = 0
20  lng_Ber_Nr_Max = 2 ^ 31 - 1
30  lng_ID_Geb_Min = 0
40  lng_ID_Geb_Max = 2 ^ 31 - 1

End Sub

Private Sub KF_Datei_AfterUpdate()
10  Setze_Buttons
End Sub

Private Sub KF_Mieter_AfterUpdate()

10  If IsNull(Me.KF_Mieter) Then
20      lng_Ber_Nr_Min = 0
30      lng_Ber_Nr_Max = 2 ^ 31 - 1
40  Else
50      lng_Ber_Nr_Min = Me!KF_Mieter
60      lng_Ber_Nr_Max = Me!KF_Mieter
70  End If

80  Me!KF_Objekt.Requery

End Sub

Private Sub BS_Auswertung_Click()

10  str_Suchtext = Me!KF_Datei

30  lng_Kalk_Jahr = Me!KF_Datei.Column(2)
40  lng_NK_Jahr = Me!KF_Datei.Column(3)

50  lng_Ber_Nr_Min = IIf(IsNull(Me!KF_Mieter), 0, CLng(Nz(Me!KF_Mieter)))
60  lng_Ber_Nr_Max = IIf(IsNull(Me!KF_Mieter), 2 ^ 31 - 1, CLng(Nz(Me!KF_Mieter)))

70  lng_ID_Geb_Min = IIf(IsNull(Me!KF_Objekt), 0, CLng(Nz(Me!KF_Objekt)))
80  lng_ID_Geb_Max = IIf(IsNull(Me!KF_Objekt), 2 ^ 31 - 1, CLng(Nz(Me!KF_Objekt)))

90  str_Open_Args = ""

100 str_Open_Args = "*Details*Archiv*"
110 DoCmd.OpenReport "Mietkalkulation", acViewPreview, , , acDialog

End Sub

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub

Sub Setze_Buttons()

10  If Not IsNull(Me!KF_Datei) Then
20      Me!BS_Auswertung.Enabled = True
30  Else
40      Me!BS_Auswertung.Enabled = False
50  End If

End Sub
