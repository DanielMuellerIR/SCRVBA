Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_KS_Neu_Click()

10  str_SQL_Statement = _
    "INSERT INTO tbl_100_40_Zuordn_Gebteile_Koststellen ( ID_Gebäudeteil, Datum_von, Datum_bis )" _
                      & " SELECT F_Variable('lng_ID_Geb_Teil') AS idbt, Date() AS dt_von, CDate('31.12.9999') AS dt_bis;"

20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True

50  Me.Requery
60  DoCmd.GoToRecord acDataForm, Me.Name, acLast

70  On Error Resume Next    ' wenn der erste der einzige ist, gibt es keinen "vorherigen"
80  DoCmd.GoToRecord acDataForm, Me.Name, acPrevious
90  On Error GoTo 0

100 Me!TF_Datum_bis = Date - 1
110 DoCmd.GoToRecord acDataForm, Me.Name, acLast
120 Me!TF_Datum_von.SetFocus

End Sub

Private Sub BS_KS_Loeschen_Click()

10  If Me.Recordset.RecordCount = 1 Then
20      MsgBox "Mindestens eine Zuordnung muss bestehen bleiben!"
30      Exit Sub
40  End If

50  Me.AllowDeletions = True
60  DoCmd.SetWarnings False
70  DoCmd.RunCommand acCmdDeleteRecord
80  DoEvents
90  Me.AllowDeletions = False
100 DoCmd.SetWarnings False
110 Me.Requery
120 DoCmd.GoToRecord acDataForm, Me.Name, acLast

'130 If Me.Recordset.RecordCount = 1 Then
140     Me!TF_Datum_bis = CDate("31.12.9999")
'150 End If

End Sub

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub
