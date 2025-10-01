Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Report_Open(Cancel As Integer)

    DoCmd.Maximize
    Blende_MN_IDs_ein_aus Me

    Select Case Left(Me.OpenArgs, 8)
    Case "*JaObMa*"
        Me.GroupLevel(0).ControlSource = "Kal_Jahr"
        Me.GroupLevel(1).ControlSource = "Liegenschaft"
        Me.GroupLevel(2).ControlSource = "Haus"
        Me!TF_Level_0.ControlSource = "Kal_Jahr"
        Me!TF_Level_1.ControlSource = "Liegenschaft"
        Me!TF_Level_2.ControlSource = "Haus"
        Me!SeitenumbruchStufe1.Visible = True 'DM2025-09-30

    Case "*ObJaMa*"
        Me.GroupLevel(0).ControlSource = "Liegenschaft"
        Me.GroupLevel(1).ControlSource = "Haus"
        Me.GroupLevel(2).ControlSource = "Kal_Jahr"
        Me!TF_Level_0.ControlSource = "Liegenschaft"
        Me!TF_Level_1.ControlSource = "Haus"
        Me!TF_Level_2.ControlSource = "Kal_Jahr"
        Me!SeitenumbruchStufe1.Visible = False 'DM2025-09-30
    End Select

End Sub
