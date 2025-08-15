Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Report_Open(Cancel As Integer)
10  DoCmd.Maximize
20  Blende_MN_IDs_ein_aus Me

30  Select Case str_Openargs

    Case "Erl-Obj"
40      Me.GroupLevel(0).ControlSource = "Erledigt_Status"
50      Me.GroupLevel(1).ControlSource = "Objekt"
60      Me!TF_Level_0.ControlSource = "Erledigt_Status"
70      Me.TF_Level_1.ControlSource = "Objekt"



80  Case "Obj-Erl"
90      Me.GroupLevel(0).ControlSource = "Objekt"
100     Me.GroupLevel(1).ControlSource = "Erledigt_Status"
110     Me!TF_Level_0.ControlSource = "Objekt"
120     Me.TF_Level_1.ControlSource = "Erledigt_Status"

130 End Select

End Sub
