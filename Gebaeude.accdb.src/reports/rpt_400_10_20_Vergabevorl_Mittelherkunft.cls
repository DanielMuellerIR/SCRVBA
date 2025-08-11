Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit


Private Sub Report_Open(Cancel As Integer)

10  DoCmd.Maximize

20  Select Case bln_Nur_CAS_Firmen

    Case False
30      Me.RecordSource = "qry_400_10_10_DH_rpt_Vergabevorlagen"
40  Case True
50      Me.RecordSource = "qry_400_10_20_DH_rpt_Vergabevorl_Castroper_Firmen"
60  End Select

End Sub

Private Sub Gruppenfuß2_Format(Cancel As Integer, FormatCount As Integer)

10  On Error Resume Next
20  If Me!TF_Sum_Auftr = Me.TF_Wert_Auftrag Then
30      Me!TF_Sum_Auftr.Visible = False
40      Me!TF_Sum_Auftr.Height = 0
50      Me!BF_Sum_Auftr.Visible = False
60      Me!BF_Sum_Auftr.Height = 0
70      Me.Gruppenfuß2.Height = 0
90  Else
100     Me!TF_Sum_Auftr.Visible = True
110     Me!BF_Sum_Auftr.Visible = True
120     Me!TF_Sum_Auftr.Height = 270
130     Me!BF_Sum_Auftr.Height = 270
140     Me.Gruppenfuß2.Height = 453
160 End If
170 On Error GoTo 0
End Sub
