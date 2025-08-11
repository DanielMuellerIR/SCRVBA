Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit


Private Sub BF_BS_Neu_Click()

10  str_SQL_Statement = "INSERT INTO Buchungsstellen ( [Text Buchungsstelle] ) SELECT 'Neuer Buchungsstellentext' AS Neue_BS;"
20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True

50  lng_ID_Buchung = DMax("[ID]", "Buchungsstellen")
60  DoCmd.OpenForm "frm_015_10_10_Buchungsstelle", , , , , acDialog

70  Me.Requery
80  DoEvents
90  Me!IDBuSt.SetFocus
100 lng_ID_Buchung = DMax("[ID]", "Buchungsstellen")
110 Me.Recordset.FindFirst "[ID_BS] = " & lng_ID_Buchung

End Sub

Private Sub BS_BS_bearbeiten_Click()

    Dim strBookmark As String
10  strBookmark = Me.Bookmark

40  lng_ID_Buchung = Me!IDBuSt
50  DoCmd.OpenForm "frm_015_10_10_Buchungsstelle", , , , , acDialog

60  Me.Requery
70  DoEvents
30  Me.Bookmark = strBookmark

End Sub

Private Sub Form_Current()
10  On Error Resume Next    ' be Neu anlegen
20  lng_ID_Buchung = Me!IDBuSt
30  On Error GoTo 0
40  lng_ID_Haush_Dt = val(Nz(Me!ID_HHD))

End Sub

Private Sub BS_HH_DS_Loeschen_Click()

    Dim str_Bu_St As String
    Dim str_Massn As String

10  If lng_ID_Haush_Dt = 0 Then
20      MsgBox "Kein echter Datensatz!"
30      Exit Sub
40  End If

50  str_Bu_St = DLookup("[Buchungsstelle]", "Buchungsstellen", "[ID] = " & Me!IDBuSt)
60  str_Massn = DLookup("[Maßnahme]", "Maßnahmen", "[ID] = " & Me![ID aus Maßnahmen])

70  If MsgBox("Wollen Sie den markierten Haushalts-Datensatz" & vbCrLf _
            & "(Buchungsstelle:  " & str_Bu_St & "," & vbCrLf _
            & "Maßnahme:  " & str_Massn & ")" & vbCrLf _
            & "wirklich löschen?", vbYesNo, "Eintrag löschen?") = vbNo Then
80      Exit Sub
90  End If

100 str_SQL_Statement = "DELETE Haushaltsdaten.ID FROM Haushaltsdaten WHERE (((Haushaltsdaten.ID)=F_Variable('lng_ID_Haush_Dt')));"
110 DoCmd.SetWarnings False
120 DoCmd.RunSQL str_SQL_Statement
130 DoCmd.SetWarnings True

140 Me.Requery

End Sub

Private Sub Befehl10_Click()
On Error GoTo Err_Befehl10_Click


    DoCmd.Close

Exit_Befehl10_Click:
    Exit Sub

Err_Befehl10_Click:
    MsgBox Err.Description
    Resume Exit_Befehl10_Click

End Sub
Private Sub Befehl38_Click()
On Error GoTo Err_Befehl38_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl38_Click:
    Exit Sub

Err_Befehl38_Click:
    MsgBox Err.Description
    Resume Exit_Befehl38_Click

End Sub
Private Sub Befehl39_Click()
On Error GoTo Err_Befehl39_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl39_Click:
    Exit Sub

Err_Befehl39_Click:
    MsgBox Err.Description
    Resume Exit_Befehl39_Click

End Sub

Private Sub Befehl51_Click()
On Error GoTo Err_Befehl51_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl51_Click:
    Exit Sub

Err_Befehl51_Click:
    MsgBox Err.Description
    Resume Exit_Befehl51_Click

End Sub




Private Sub ID_aus_Maßnahmen_LostFocus()
Me![IDBuSt].Requery
End Sub
Private Sub Befehl58_Click()
On Error GoTo Err_Befehl58_Click

    Dim stDocName As String
    Dim MyForm As Form

    stDocName = "Haushaltsdaten eingeben"
    Set MyForm = Screen.ActiveForm
    DoCmd.SelectObject acForm, stDocName, True
    DoCmd.PrintOut
    DoCmd.SelectObject acForm, MyForm.Name, False

Exit_Befehl58_Click:
    Exit Sub

Err_Befehl58_Click:
    MsgBox Err.Description
    Resume Exit_Befehl58_Click

End Sub

Private Sub IDBuSt_GotFocus()
Me![IDBuSt].Requery
End Sub
