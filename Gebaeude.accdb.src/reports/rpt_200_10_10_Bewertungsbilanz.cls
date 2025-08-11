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

10  If Not IsNull(Me!Neubauwert_ab_2000) Then
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

120 Else
        ' Wenn es zu älteren Gebäuden"nur" Index-ermittelte rechnerische HK-Kosten "gibt"
130     Me.BF_Hinweis_BJ_vor_2000_nicht_relev.Visible = False
140     Me.BF_Hinweis_BJ_nach_2000_nicht_relev.Visible = True

150     For Each Ctrl In Me.Detailbereich.Controls

160         If InStr(1, Ctrl.Tag, "Echte_HK") > 0 Then
170             Ctrl.ForeColor = RGB(127, 127, 127)
180         End If

190         If InStr(1, Ctrl.Tag, "Index_ermittelt") > 0 Then
200             Ctrl.ForeColor = RGB(0, 0, 0)
210         End If

220     Next Ctrl

230 End If


240 If Me![Ablaufzeit] = "Nutzungsdauer abgelaufen!" Then
250     Me![Ablaufzeit].FontBold = True
260 End If

End Sub
