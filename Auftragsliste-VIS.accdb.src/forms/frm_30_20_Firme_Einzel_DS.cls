Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit


Function Aktul_Listenfeld()

10  If Me.Dirty Then
20      DoCmd.RunCommand acCmdSaveRecord
30      Forms("frm_30_10_Firmen")!LF_Firmen.Requery
40  End If

End Function
