Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database


Private Sub BS_Fa_loeschen_Click()
10  Me.TF_beauftragte_Firma = Null
20  lng_Firma = 0
30  Me.TF_Fa_Ort.Requery
40  DoCmd.RunCommand acCmdSaveRecord
50  Forms("frm_10_10_Startformular")!LF_Auftraege.Requery

End Sub

Private Sub Form_Current()
    'DM2022-01-21
    If (Me.RecordSource <> "") Then
        If (IsNull(Me!Kriterium)) Then
            Me!Kriterium = 0
        End If
    End If
End Sub

Private Sub TF_SK_brutto_AfterUpdate()
10  Me!TF_Schaetzkosten = Me.TF_SK_brutto / (1 + Me.TF_SK_MWST_Satz)
End Sub

Private Sub TF_SK_MWST_Satz_AfterUpdate()
10  Me.TF_Schaetzkosten = Me.TF_SK_brutto / (1 + Me.TF_SK_MWST_Satz)
End Sub

Private Sub TF_AS_brutto_AfterUpdate()
10  Me.TF_Auftragssumme = Me.TF_AS_brutto / (1 + Me.TF_AS_MWST_Satz)
End Sub

Private Sub TF_AS_MWST_Satz_AfterUpdate()
10  Me.TF_Auftragssumme = Me.TF_AS_brutto / (1 + Me.TF_AS_MWST_Satz)
End Sub

Private Sub TF_SR_brutto_AfterUpdate()
'10  Me.TF_SR_Summe = Me.TF_SR_brutto / (1 + Me.TF_SR_MWST_Satz)
End Sub

Private Sub TF_SR_MWST_Satz_AfterUpdate()
'10  Me.TF_SR_Summe = Me.TF_SR_brutto / (1 + Me.TF_SR_MWST_Satz)
End Sub

Function Aktual_F_Listenfeld()

10  If Me.Dirty Then
20      DoCmd.RunCommand acCmdSaveRecord
30      lng_Firma = Nz(Me.TF_beauftragte_Firma) ' NZ deshalb, da bei Neuem DS zu diesem Zeitpunkt noch gar keine Fa. feststeht
40      Me.TF_Fa_Ort.Requery

50      Forms("frm_10_10_Startformular")!LF_Auftraege.Requery
60  End If

End Function
