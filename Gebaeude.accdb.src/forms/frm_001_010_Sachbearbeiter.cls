Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub BS_BS_Liste_ausdrucken_Click()
10  If Me.Dirty Then
20      DoCmd.RunCommand acCmdSaveRecord
30  End If

40  DoCmd.OpenReport "rpt_001_Sachbearbeiter", acViewPreview, , , acDialog

End Sub

Private Sub BS_Farbe_loeschen_Click()
10  Me.TF_Kennfarbe = Null
20  Form_Current
End Sub


Private Sub BS_SB_Neu_Click()

10  str_SQL_Statement = "INSERT INTO Sachbearbeiter ( Name )SELECT 'Name?' AS Nm;"
20  DoCmd.SetWarnings False
30  DoCmd.RunSQL str_SQL_Statement
40  DoCmd.SetWarnings True
50  i = DMax("[ID]", "Sachbearbeiter")
60  Me!LF_SB_Liste.Requery
70  Me!LF_SB_Liste = i
80  Me.Requery

End Sub

Private Sub BS_SB_Loeschen_Click()

10  If MsgBox("Sachbearbeiter <" & Me!LF_SB_Liste.Column(1) & "> wirklich löschen?", vbYesNo, "Sachbearbeiter löschen?") = vbNo Then
20      Exit Sub
30  End If

40  str_SQL_Statement = "DELETE Sachbearbeiter.ID FROM Sachbearbeiter WHERE (((Sachbearbeiter.ID)= " & Me!LF_SB_Liste & "));"
50  DoCmd.SetWarnings False
60  DoCmd.RunSQL str_SQL_Statement
70  DoCmd.SetWarnings True
80  Me!LF_SB_Liste.Requery
90  Me.Requery

End Sub


Private Sub BS_Schliessen_Click()
10  DoCmd.Close acForm, Me.Name
End Sub
Private Sub Form_Load()

10  Me.LF_SB_Liste.Selected(0) = True

End Sub

Private Sub Form_Current()
10  On Error Resume Next

20  If Not IsNull(Me.TF_Kennfarbe) Then
30      Me!TF_Kennfarbe.BackColor = Me!TF_Kennfarbe
40      Me.TF_Kennfarbe.ForeColor = Me!TF_Kennfarbe
50  Else
60      Me!TF_Kennfarbe.BackColor = RGB(255, 255, 255)
70      Me.TF_Kennfarbe.ForeColor = RGB(255, 255, 255)

80  End If

90  On Error GoTo 0
End Sub


Private Sub LF_SB_Liste_AfterUpdate()
10  Me.Requery
End Sub

Private Sub OR_Erl_Unerl_MN_AfterUpdate()

10  Select Case Me!OR_Erl_Unerl_MN

    Case 1    ' zeige Nur Aktive
20      Me!LF_SB_Liste.RowSource = _
        "SELECT Sachbearbeiter.ID, [Name] & IIf([Telefon] Is Null,'',' (' & [Telefon] & ')') AS SB FROM Sachbearbeiter" _
                                 & " WHERE (((Sachbearbeiter.ausgeschieden)= False) or ((Sachbearbeiter.ausgesch_Jahr) Is Null))" _
                                 & " ORDER BY [Name] & IIf([Telefon] Is Null,'',' (' & [Telefon] & ')');"
30  Case 2    ' zeige Alle
40      Me!LF_SB_Liste.RowSource = _
        "SELECT Sachbearbeiter.ID, [Name] & IIf([Telefon] Is Null,'',' (' & [Telefon] & ')') AS SB FROM Sachbearbeiter" _
                                 & " ORDER BY [Name] & IIf([Telefon] Is Null,'',' (' & [Telefon] & ')');"
50  End Select

60  Me!LF_SB_Liste.Requery
70  Me!LF_SB_Liste = 21    ' (ID zum Datensatz "Alle")
80  Me!LF_SB_Liste.Selected(0) = True

100 Me.Requery
110 Me.Repaint
120 Me.Recalc

End Sub


Private Sub TF_Kennfarbe_DblClick(Cancel As Integer)

10  i = ColorSelected(Me!TF_Kennfarbe.BackColor)

20  If i <> 0 Then
30      Me!TF_Kennfarbe = i
40  Else
        ' nix
50  End If

    '10  Me!TF_Kennfarbe = ColorSelected(Me!TF_Kennfarbe.BackColor)


60  If Me.Dirty Then
70      DoCmd.RunCommand acCmdSaveRecord
80  End If
90  DoEvents
100 Form_Current
End Sub
