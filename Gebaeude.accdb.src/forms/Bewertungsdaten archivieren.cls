Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

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
Private Sub Befehl52_Click()
On Error GoTo Err_Befehl52_Click


    DoCmd.Close

Exit_Befehl52_Click:
    Exit Sub

Err_Befehl52_Click:
    MsgBox Err.Description
    Resume Exit_Befehl52_Click

End Sub




Private Sub BS_Bew_archivieren_Click()

10  DoCmd.SetWarnings False

20  DoCmd.OpenQuery "B_Archivierung_Gebäudebewertung_1"
30  DoEvents
40  DoCmd.OpenQuery "B_Archivierung_Gebäudebewertung_2"
50  DoEvents
60  DoCmd.OpenQuery "B_Archivierung_Gebäudebewertung_3"
70  DoEvents
80  DoCmd.OpenQuery "B_Archivierung_Gebäudebewertung_4"
90  DoEvents
100 DoCmd.OpenQuery "B_Archivierung_Gebäudebewertung_5"

110 DoCmd.SetWarnings True

120 MsgBox "Archivierung abgeschlossen.", vbOKOnly, "abgeschlossen"

130 DoCmd.SetWarnings True

End Sub

Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub
