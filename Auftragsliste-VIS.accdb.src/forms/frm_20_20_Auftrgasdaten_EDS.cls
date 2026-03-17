Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Public Function CheckFields(Optional ByVal keineWarnung As Boolean) As Boolean
    'DM2026-03-17
    CheckFields = True

    If (Me.Form.RecordSource = "") Then
        Exit Function
    End If

    Dim colFld As Collection
    Set colFld = New Collection
    Dim colNam As Collection
    Set colNam = New Collection
    Dim colObjname As Collection
    Set colObjname = New Collection
    Dim colLeer As Collection
    Set colLeer = New Collection
    Dim i As Integer
    Dim fname, fehl As String

    colFld.Add "ID_Obj"
    colNam.Add "Leistungsort"
    colObjname.Add "KF_Leistungsort"

    colFld.Add "ID_User"
    colNam.Add "Sachbearbeiter"
    colObjname.Add "ID_User"

    colFld.Add "ID_User2"
    colNam.Add "Vertreter"
    colObjname.Add "Kombinationsfeld82"

    colFld.Add "ID_Vergabe_Art"
    colNam.Add "Vergabeart"
    colObjname.Add "ID_Vergabe_Art"

    colFld.Add "SK_brutto"
    colNam.Add "Schätzkosten brutto"
    colObjname.Add "TF_SK_brutto"

    colFld.Add "Produktbezeichnung"
    colNam.Add "Produktbezeichnung"
    colObjname.Add "TF_Produktbezeichnung"

    colFld.Add "Produktart"
    colNam.Add "Produktart"
    colObjname.Add "KF_Produktart"

    colFld.Add "Teilnehmer"
    colNam.Add "Aufgeforderte Teilnehmer"
    colObjname.Add "TF_Teilnehmer"

    colFld.Add "Name"
    colNam.Add "Beauftragte Firma"
    colObjname.Add "Text162"


    For i = 1 To colFld.Count
        Set fld = Me(colFld.Item(i))
        fname = colNam.Item(i)


        If (VarType(fld) = vbString) Then
            If ((IsNull(fld)) Or (fld = "")) Then
                colLeer.Add i
                fehl = fehl & vbNewLine & "- " & fname
                CheckFields = False
                Me(colObjname.Item(i)).BackColor = RGB(255, 200, 200)
            Else
                Me(colObjname.Item(i)).BackColor = RGB(255, 255, 255)
            End If
        Else
            If ((IsNull(fld)) Or (fld = 0)) Then
                colLeer.Add i
                fehl = fehl & vbNewLine & "- " & fname
                CheckFields = False
                Me(colObjname.Item(i)).BackColor = RGB(255, 200, 200)
            Else
                Me(colObjname.Item(i)).BackColor = RGB(255, 255, 255)
            End If

        End If

    Next i

    If (colLeer.Count > 0) Then
        If (keineWarnung = False) Then
            MsgBox ("Die Auftragssumme kann noch nicht eingetragen werden, da folgende Felder noch nicht ausgefüllt wurden:" & fehl)
        End If
    Else
        Me.TF_Auftragssumme = Me.TF_AS_brutto / (1 + Me.TF_AS_MWST_Satz)
    End If

End Function


Private Sub TF_AS_brutto_AfterUpdate()

    'DM2026-03-17
    If (Me.TF_AS_brutto.Value <> 0) Then
        If (CheckFields = 0) Then
            Me.TF_AS_brutto.Value = 0
            ' Me.Recordset.Update
            DoCmd.RunCommand acCmdSaveRecord
        End If
    End If

End Sub



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
    CheckFields (True) 'DM2026-03-17
End Sub

Private Sub TF_SK_brutto_AfterUpdate()
10  Me!TF_Schaetzkosten = Me.TF_SK_brutto / (1 + Me.TF_SK_MWST_Satz)
End Sub

Private Sub TF_SK_MWST_Satz_AfterUpdate()
10  Me.TF_Schaetzkosten = Me.TF_SK_brutto / (1 + Me.TF_SK_MWST_Satz)
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

    ' CheckFields (True) 'DM2026-03-17 Felder einfärben

End Function
