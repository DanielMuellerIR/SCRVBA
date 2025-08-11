Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Report_Open(Cancel As Integer)

10  DoCmd.Maximize
20  Blende_MN_IDs_ein_aus Me

30  If bln_MN_Einz_Mitt_Art = True Then
40      Me.Detailbereich.Visible = True
50      Me.GrpFss_Massnahme.Visible = False
60  Else
70      Me.Detailbereich.Visible = False
80      Me.GrpFss_Massnahme.Visible = True
90  End If

100 Select Case Left(Me.OpenArgs, 8)

    Case "*JaObMa*"
110     Me.GroupLevel(0).ControlSource = "Kal_Jahr"
120     Me.GroupLevel(1).ControlSource = "Liegenschaft"
130     Me.GroupLevel(2).ControlSource = "Haus"
140     Me!TF_Level_0.ControlSource = "Kal_Jahr"
150     Me!TF_Level_1.ControlSource = "Liegenschaft"
160     Me!TF_Level_2.ControlSource = "Haus"

170 Case "*ObJaMa*"
180     Me.GroupLevel(0).ControlSource = "Liegenschaft"
190     Me.GroupLevel(1).ControlSource = "Haus"
200     Me.GroupLevel(2).ControlSource = "Kal_Jahr"

210     Me!TF_Level_0.ControlSource = "Liegenschaft"
220     Me!TF_Level_1.ControlSource = "Haus"
230     Me!TF_Level_2.ControlSource = "Kal_Jahr"

240 End Select

End Sub
