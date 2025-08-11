Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Public pk_namen, pk_bem, pk_kost, pk_av, pk_kv, pk_au, pk_ku As Variant
Public sk_namen, sk_fbem, sk_fkost, sk_fav, sk_fau, sk_onamen, sk_obem, sk_okost, sk_oav, sk_oau, sk_kav, sk_kau As Variant


Private Sub Befehl0_Click()
On Error GoTo Err_Befehl0_Click
    DoCmd.Close
Exit_Befehl0_Click:
    Exit Sub

Err_Befehl0_Click:
    MsgBox Err.Description
    Resume Exit_Befehl0_Click
End Sub


Private Sub Form_Load()
    Call Miete_ArraysInit

'    Dim c As Control
'    For Each c In Me.Controls
'        If c.Name Like "pk_*" Then
'            c.OnChange = "=Miete_Change()"
'        End If
'    Next
End Sub

Private Sub Jahr_AfterUpdate()
DoCmd.SetWarnings False
'DoCmd.RunSQL "UPDATE Kalkulationsjahr SET Kalkulationsjahr.Anfang = [Formulare]![M_Formular_Eingabe_VerwaltungskostenAb2024].[Beginn], Kalkulationsjahr.Ende = [Formulare]![M_Formular_Eingabe_VerwaltungskostenAb2024].[Ende];"
'DM2025-06-11 Das setzt wirklich den einzigen Datensatz der Tabelle Kalkulationsjahr, die hier als Variablenspeicher missbraucht wird
DoCmd.RunSQL "UPDATE Kalkulationsjahr SET Kalkulationsjahr.Anfang = " & Format(DateSerial(Me!Jahr, 1, 1), "\#yyyy\-mm\-dd\#") & ", Kalkulationsjahr.Ende = " & Format(DateSerial(Me!Jahr, 12, 31), "\#yyyy\-mm\-dd\#")
Call Miete_Laden
End Sub



Public Sub Miete_Laden()
'Personalkosten: M_Personalkosten: Haushaltsjahr Zahl, Name Text, Betrag_400000 Währung, Anteil_Name_Verwaltung Zahl, Anteil_Name_Unterhaltung Zahl
Dim pkname, skname
Dim rs As Recordset2
Dim l As Integer
DoCmd.SetWarnings False
On Error Resume Next
l = 0
Me!pk_kostengesamt = 0
Me!pk1_pk2_gesamt = 0
Me!pk_kostenvgesamt = 0
Me!pk_kostenugesamt = 0
For Each pkname In pk_namen
    Set rs = CurrentDb.OpenRecordset("SELECT * from M_Personalkosten WHERE Haushaltsjahr = " & Me!Jahr & " and Name = '" & pkname & "'", dbOpenDynaset)
    If (rs.RecordCount = 0) Then
        rs.AddNew
        rs("Name") = pkname
        rs.Haushaltsjahr = Me!Jahr
        rs.Update
        Set rs = CurrentDb.OpenRecordset("SELECT * from M_Personalkosten WHERE Haushaltsjahr = " & Me!Jahr & " and Name = '" & pkname & "'", dbOpenDynaset)
    End If
    Me(pk_bem(l)) = rs.Bemerkung
    If (pkname = "Personalkosten Gesamt") Then
        ' nicht aus DB lesen, sondern summieren (s.u.)
    Else
        Me(pk_kost(l)) = CCur(rs.Betrag_400000)
        Me(pk_av(l)) = Round(rs.Anteil_Name_Verwaltung, 0)
        Me(pk_kv(l)) = Round(CCur((Me(pk_kost(l)) * Me(pk_av(l))) / 100), 2)
        Me(pk_au(l)) = Round(rs.Anteil_Name_Unterhaltung, 0)
        Me(pk_ku(l)) = Round(CCur((Me(pk_kost(l)) * Me(pk_au(l))) / 100), 2)
        Me!pk_kostengesamt = Me!pk_kostengesamt + Nz(Me(pk_kost(l)), 0) 'summieren
        Me!pk_kostenvgesamt = Me!pk_kostenvgesamt + Nz(Me(pk_kv(l)), 0)
        Me!pk_kostenugesamt = Me!pk_kostenugesamt + Nz(Me(pk_ku(l)), 0)
    End If
    l = l + 1
Next pkname
Me!pk_kostengesamt = Round(Me!pk_kostengesamt, 2)
Me!pk_kostenvgesamt = Round(Me!pk_kostenvgesamt, 2)
Me!pk_kostenugesamt = Round(Me!pk_kostenugesamt, 2)
Me!pk1_pk2_gesamt = Round(Me!pk_kostenvgesamt + Me!pk_kostenugesamt, 2)
If (Me!pk_kostengesamt = 0) Then
    Me!pk_anteilvgesamt = 0
    Me!pk_anteilugesamt = 0
Else
    Me!pk_anteilvgesamt = Round((Me!pk_kostenvgesamt / Me!pk_kostengesamt) * 100, 0)
    Me!pk_anteilugesamt = Round((Me!pk_kostenugesamt / Me!pk_kostengesamt) * 100, 0)
End If
'Sachkosten: Eim Datensatz in M_Verwaltungskosten pro Jahr
l = 0
Set rs = CurrentDb.OpenRecordset("SELECT * from M_Verwaltungskosten WHERE Haushaltsjahr = " & Me!Jahr, dbOpenDynaset)
If (rs.RecordCount = 0) Then
    rs.AddNew
    rs.Haushaltsjahr = Me!Jahr
    rs.Update
    Set rs = CurrentDb.OpenRecordset("SELECT * from M_Verwaltungskosten WHERE Haushaltsjahr = " & Me!Jahr, dbOpenDynaset)
End If
Me!sk_kostenvgesamt = CCur(0)
Me!sk_kostenugesamt = CCur(0)
Me!sk_kostengesamt = CCur(0)
For Each skname In sk_namen
    If (l >= 4) Then
        Me(sk_onamen(l)) = rs("Name" & CStr(l - 3)) 'Felder heißen Name1 und Name2
    End If
    Me(sk_obem(l)) = rs(sk_fbem(l)) 'Bemerkung
    Me(sk_okost(l)) = Round(Nz(CCur(Nz(rs(sk_fkost(l)), 0)), 0), 2) 'Kosten gesamt
    Me!sk_kostengesamt = Me!sk_kostengesamt + Nz(Me(sk_okost(l)), 0)
    Me(sk_oav(l)) = rs(sk_fav(l)) 'Anteil v
    Me(sk_oau(l)) = rs(sk_fau(l)) 'Anteil u
    Me(sk_kav(l)) = CCur(Round(Nz(Me(sk_okost(l)), 0) * (Nz(Me(sk_oav(l)), 0) / 100), 2)) 'Kosten v
    Me(sk_kau(l)) = CCur(Round(Nz(Me(sk_okost(l)), 0) * (Nz(Me(sk_oau(l)), 0) / 100), 2)) 'Kosten u
    Me!sk_kostenvgesamt = Me!sk_kostenvgesamt + Me(sk_kav(l))
    Me!sk_kostenugesamt = Me!sk_kostenugesamt + Me(sk_kau(l))
    l = l + 1
Next
If (Me!sk_kostengesamt = 0) Then
    Me!sk_anteilvgesamt = 0
    Me!sk_anteilugesamt = 0
Else
    Me!sk_anteilvgesamt = Round((Me!sk_kostenvgesamt / Me!sk_kostengesamt) * 100, 0)
    Me!sk_anteilugesamt = Round((Me!sk_kostenugesamt / Me!sk_kostengesamt) * 100, 0)
End If
Me!sk1_sk2_gesamt = CCur(Me!sk_kostenvgesamt + Me!sk_kostenugesamt)
Me!pk_sk_gesamt = CCur(Me!pk1_pk2_gesamt + Me!sk1_sk2_gesamt)
Me!sk_bemerkgesamt = rs("Bemerkung_Gesamt")
DoCmd.SetWarnings True
On Error GoTo 0
End Sub

Public Sub Miete_ArraysInit()
   'M_Personalkosten: Ein Datensatz pro Zeile, die namen in Name speichern, neues Feld Bemerkung, Haushaltsjahr Zahl, Betrag_400000 Währung, Anteil_Name_Verwaltung Zahl, Anteil_Name_Unterhaltung Zahl
    pk_namen = Array("11.13 Personalkosten Verwaltung", "11.14 Personalkosten Technik", "11.15 Personalkosten Baulager", "Personalkosten Gesamt")
    pk_bem = Array("pk_bemerk13", "pk_bemerk14", "pk_bemerk15", "pk_bemerkgesamt")
    pk_kost = Array("pk_kosten13", "pk_kosten14", "pk_kosten15", "pk_kostengesamt")
    pk_av = Array("pk_anteilv13", "pk_anteilv14", "pk_anteilv15", "pk_anteilvgesamt")
    pk_kv = Array("pk_kostenv13", "pk_kostenv14", "pk_kostenv15", "pk_kostenvgesamt")
    pk_au = Array("pk_anteilu13", "pk_anteilu14", "pk_anteilu15", "pk_anteilugesamt")
    pk_ku = Array("pk_kostenu13", "pk_kostenu14", "pk_kostenu15", "pk_kostenugesamt")
    'Summe: pk1_pk2_gesamt = pk_kostenvgesamt + pk_kostenugesamt

    'M_Verwaltungskosten: Ein Datensatz für alle 6 Zeilen. 6 neue Felder für die Bemerkungen, 2 neue Felder für die beiden variablen Bezeichnungen für die letzten beiden Zeilen.
    'Achtung, für die anteiligen Kosten gibt es auch Felder, obwohl diese sich eigentlich durch Gesamtkosten * AnteilV/U berechnen. Daher diese Felder nicht verwenden, stattdessen live rechnen.
    sk_namen = Array("11.14 Fahrzeuge Miete 54220509", "11.14 Fahrzeuge-Aufwand 52150009", "11.13 Bes. Autu-f-Bad: 54121509", "11.14. Bes.-Aufw.f.-Bed. 54121509", "", "")
    sk_fbem = Array("Bemerkung1", "Bemerkung2", "Bemerkung3", "Bemerkung4", "Bemerkung5", "Bemerkung6", "Bemerkung_Gesamt")
    sk_fkost = Array("Berechnung440000", "Berechnung520000", "Berechnung550000", "Berechnung560000", "Berechnung570000", "Berechnung650000")
    sk_fav = Array("Anteil_400000_Verwaltung", "Anteil_520000_Verwaltung", "Anteil_550000_Verwaltung", "Anteil_560000_Verwaltung", "Anteil_570000_Verwaltung", "Anteil_650000_Verwaltung")
    sk_fau = Array("Anteil_400000_Unterhaltung", "Anteil_520000_Unterhaltung", "Anteil_550000_Unterhaltung", "Anteil_560000_Unterhaltung", "Anteil_570000_Unterhaltung", "Anteil_650000_Unterhaltung")
    sk_onamen = Array("", "", "", "", "sk_frei5", "sk_frei6") ' Die ersten 4 Zeilen sind fix
    sk_obem = Array("sk_bemerk1", "sk_bemerk2", "sk_bemerk3", "sk_bemerk4", "sk_bemerk5", "sk_bemerk6", "sk_bemerkgesamt")
    sk_okost = Array("sk_kosten1", "sk_kosten2", "sk_kosten3", "sk_kosten4", "sk_kosten5", "sk_kosten6")
    sk_oav = Array("sk_anteilv1", "sk_anteilv2", "sk_anteilv3", "sk_anteilv4", "sk_anteilv5", "sk_anteilv6")
    sk_oau = Array("sk_anteilu1", "sk_anteilu2", "sk_anteilu3", "sk_anteilu4", "sk_anteilu5", "sk_anteilu6")
    sk_kav = Array("sk_kostenv1", "sk_kostenv2", "sk_kostenv3", "sk_kostenv4", "sk_kostenv5", "sk_kostenv6")
    sk_kau = Array("sk_kostenu1", "sk_kostenu2", "sk_kostenu3", "sk_kostenu4", "sk_kostenu5", "sk_kostenu6")
End Sub

Public Sub Miete_Change()
    Dim c As Control
    Dim rs As Recordset2
    Set c = Screen.ActiveControl
    If (Nz(Me!Jahr, 0) = 0) Then
        c.Value = ""
        Exit Sub
    End If
    Select Case True
' ------  PERSONALKOSTEN
    Case (IsNull(posInArray(c.Name, pk_bem)) = False) 'Bemerkung
        Call Miete_Change_PK_DB(pk_namen(posInArray(c.Name, pk_bem)), "Bemerkung", c.Value)

    Case (IsNull(posInArray(c.Name, pk_kost)) = False) 'Kosten Gesant
        Call Miete_Change_PK_DB(pk_namen(posInArray(c.Name, pk_kost)), "Betrag_400000", Round(CCur(c.Value), 2))

    Case (IsNull(posInArray(c.Name, pk_av)) = False) 'Anteil V
        Call Miete_Change_PK_DB(pk_namen(posInArray(c.Name, pk_av)), "Anteil_Name_Verwaltung", Round(CDbl(c.Value), 0))

    Case (IsNull(posInArray(c.Name, pk_au)) = False) 'Anteil U
        Call Miete_Change_PK_DB(pk_namen(posInArray(c.Name, pk_au)), "Anteil_Name_Unterhaltung", Round(CDbl(c.Value), 0))

' ------  SACHKOSTEN
    Case (IsNull(posInArray(c.Name, sk_onamen)) = False) 'Namen
        If (c.Name = "sk_frei5") Then
            Call Miete_Change_SK_DB("Name1", c.Value)
        Else
            Call Miete_Change_SK_DB("Name2", c.Value)
        End If

    Case (IsNull(posInArray(c.Name, sk_obem)) = False) 'Bemerkung
        If (c.Name = "sk_bemerkgesamt") Then
            Call Miete_Change_SK_DB("Bemerkung_Gesamt", c.Value)
        Else
            Call Miete_Change_SK_DB("Bemerkung" & CStr(posInArray(c.Name, sk_obem) + 1), c.Value)
        End If

    Case (IsNull(posInArray(c.Name, sk_okost)) = False) 'Kosten gesamt
        Call Miete_Change_SK_DB(sk_fkost(posInArray(c.Name, sk_okost)), c.Value)

    Case (IsNull(posInArray(c.Name, sk_oav)) = False) 'Anteil V
        Call Miete_Change_SK_DB(sk_fav(posInArray(c.Name, sk_oav)), c.Value)

    Case (IsNull(posInArray(c.Name, sk_oau)) = False) 'Anteil U
        Call Miete_Change_SK_DB(sk_fau(posInArray(c.Name, sk_oau)), c.Value)

    Case Else
        MsgBox "Miete_Change: Element noch nicht behandelt: " & c.Name
    End Select

End Sub

Public Sub Miete_Change_SK_DB(feld, val)
    Dim rs As Recordset2
    DoCmd.SetWarnings False
    On Error Resume Next
    Set rs = CurrentDb.OpenRecordset("SELECT * from M_Verwaltungskosten WHERE Haushaltsjahr = " & Me!Jahr, dbOpenDynaset)
    rs.Edit
    rs(feld) = val
    rs.Update
    Miete_Laden
    Me.Refresh
    DoCmd.SetWarnings True
    On Error GoTo 0

End Sub

Public Sub Miete_Change_PK_DB(pkname, feld, val)
    Dim rs As Recordset2
    DoCmd.SetWarnings False
    On Error Resume Next
    Set rs = CurrentDb.OpenRecordset("SELECT * from M_Personalkosten WHERE Haushaltsjahr = " & Me!Jahr & " and Name = '" & pkname & "'", dbOpenDynaset)
    rs.Edit
    rs(feld) = val
    rs.Update
    Miete_Laden
    Me.Refresh
    DoCmd.SetWarnings True
    On Error GoTo 0

End Sub

Private Sub pk_bemerk13_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_bemerk14_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_bemerk15_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_bemerkgesamt_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_kosten13_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_kosten14_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_kosten15_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_kostengesamt_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_anteilv13_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_anteilv14_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_anteilv15_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_anteilvgesamt_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_anteilu13_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_anteilu14_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_anteilu15_AfterUpdate()
    Miete_Change
End Sub

Private Sub pk_anteilugesamt_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_bemerk1_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_bemerk2_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_bemerk3_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_bemerk4_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_bemerk5_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_bemerk6_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_bemerkgesamt_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_frei5_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_frei6_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_kosten1_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_kosten2_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_kosten3_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_kosten4_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_kosten5_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_kosten6_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_anteilv1_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_anteilv2_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_anteilv3_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_anteilv4_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_anteilv5_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_anteilv6_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_anteilu1_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_anteilu2_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_anteilu3_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_anteilu4_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_anteilu5_AfterUpdate()
    Miete_Change
End Sub

Private Sub sk_anteilu6_AfterUpdate()
    Miete_Change
End Sub
