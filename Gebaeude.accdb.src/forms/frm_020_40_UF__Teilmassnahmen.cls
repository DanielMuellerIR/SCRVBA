Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_Neue_Teilm_Click()
10  str_SQL_Statement = "INSERT INTO [Teile der Maßnahmen] ( [ID aus Maßnahmen],  Teilmaßname )" _
                      & " SELECT F_Variable('lng_ID_Massn') AS idm,  'Neue Teilmaßnahme' AS TM;"

20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True

50  lng_ID_Teil_Massn = DMax("[ID]", "Teile der Maßnahmen")
60  Me.Requery
70  DBEngine.Idle
80  DoEvents
90  DoCmd.SearchForRecord , , , "ID = " & lng_ID_Teil_Massn
100 Setze_Buttons

End Sub

Private Sub BS_Teilm_Loeschen_Click()

10  lng_ID_Teil_Massn = Me!TF_ID
20  If MsgBox("Teilmaßnahme <" & Me!Teilmaßname & "> wiklich löschen?", vbYesNo, "Teilmaßnahme löschen") = vbNo Then
30      Exit Sub
40  End If

50  str_SQL_Statement = "DELETE [Teile der Maßnahmen].ID" _
                      & " FROM [Teile der Maßnahmen] WHERE ((([Teile der Maßnahmen].ID)=F_Variable('lng_ID_Teil_Massn')));"

60  DoCmd.SetWarnings False
70  DoCmd.RunSQL str_SQL_Statement
80  DoCmd.SetWarnings True
90  Me.Requery
100 Setze_Buttons

End Sub

Private Sub Dat_Grundl_Erm_Ende_AfterUpdate()
10  If IsDate(Me!Dat_Grundl_Erm_Ende) Then
20      Me!Dat_Planung_Start = fct_Erst_d_naechst_Mon(Me!Dat_Grundl_Erm_Ende)
30  End If
End Sub

Private Sub Dat_Planung_Ende_AfterUpdate()
10  If IsDate(Me!Dat_Planung_Ende) Then
20      Me!Dat_Ausschr_Start = fct_Erst_d_naechst_Mon(Me!Dat_Planung_Ende)
30  End If
End Sub

Private Sub Dat_Ausschr_Ende_AfterUpdate()
10  If IsDate(Me!Dat_Ausschr_Ende) Then
20      Me!Dat_Ausf_Start = fct_Erst_d_naechst_Mon(Me!Dat_Ausschr_Ende)
30  End If
End Sub

Private Sub Dat_Ausf_Ende_AfterUpdate()
10  If IsDate(Me!Dat_Ausf_Ende) Then
20      Me!Dat_Abr_Start = fct_Erst_d_naechst_Mon(Me!Dat_Ausf_Ende)
30  End If
End Sub

Private Sub Form_Current()
20  Setze_Buttons
End Sub

Sub Setze_Buttons()

10  If Me.RecordsetClone.RecordCount > 0 Then
20      Me!BS_Teilm_Loeschen.Enabled = True
30  Else
40      Me!BS_Teilm_Loeschen.Enabled = False
50  End If

End Sub
