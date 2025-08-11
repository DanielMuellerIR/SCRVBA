Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Report_Open(Cancel As Integer)
10  DoCmd.Maximize
End Sub


Private Sub Detailbereich_Format(Cancel As Integer, FormatCount As Integer)

10  If Not IsNull(Me!NB_Wert_Eing) Then
        ' Wenn es einen echten Eintrag gibt zu Neubauwert_ab_2000
20      Me.BF_Hinweis_BJ_vor_2000_nicht_relev.Visible = True
30      Me.BF_Hinweis_BJ_nach_2000_nicht_relev.Visible = False

40      For Each Ctrl In Me.Detailbereich.Controls

50          If InStr(1, Ctrl.Tag, "Echte_HK") > 0 Then
60              Ctrl.ForeColor = RGB(0, 0, 0)
70          End If

80          If InStr(1, Ctrl.Tag, "Index_ermittelt") > 0 Then
90              Ctrl.ForeColor = RGB(127, 127, 127)
100         End If

110     Next Ctrl

120     Me.RE_Ausst_ABdeckung.Visible = True


130 Else
        ' Wenn es zu älteren Gebäuden"nur" Index-ermittelte rechnerische HK-Kosten "gibt"
140     Me.BF_Hinweis_BJ_vor_2000_nicht_relev.Visible = False
150     Me.BF_Hinweis_BJ_nach_2000_nicht_relev.Visible = True

160     For Each Ctrl In Me.Detailbereich.Controls

170         If InStr(1, Ctrl.Tag, "Echte_HK") > 0 Then
180             Ctrl.ForeColor = RGB(127, 127, 127)
190         End If

200         If InStr(1, Ctrl.Tag, "Index_ermittelt") > 0 Then
210             Ctrl.ForeColor = RGB(0, 0, 0)
220         End If

230     Next Ctrl

240     Me.RE_Ausst_ABdeckung.Visible = False

250 End If



'260 If IsNull(Me![ID_GebT_Zug_GebT]) Then
260 If Me![LS_Grst_wert_hier_zuordn] = True Then

        ' GS-Fläche ist nicht einem anderen Gebäudeteil, sondern diesem hier zugeordnet
270     Me!TF_Fl_anderweitig.Visible = False

280     For Each Ctrl In Me.Detailbereich.Controls
290         If Ctrl.Tag = "GS_Wert" Then
300             Ctrl.Visible = True
310         End If
320     Next Ctrl

330 Else

        ' GS-Fläche ist einem anderen Gebäudeteilzugeordnet
340     Me!TF_Fl_anderweitig.Visible = True

350     For Each Ctrl In Me.Detailbereich.Controls
360         If Ctrl.Tag = "GS_Wert" Then
370             Ctrl.Visible = False
380         End If
390     Next Ctrl

400 End If

End Sub
