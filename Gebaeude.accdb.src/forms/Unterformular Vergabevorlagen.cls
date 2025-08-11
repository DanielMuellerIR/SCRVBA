Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Befehl13_Click()
On Error GoTo Err_Befehl13_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70

Exit_Befehl13_Click:
    Exit Sub

Err_Befehl13_Click:
    MsgBox Err.Description
    Resume Exit_Befehl13_Click

End Sub

Private Sub Befehl53_Click()
On Error GoTo Err_Befehl53_Click

    Dim stAppName As String

    stAppName = "C:\Programme\Internet Explorer\IEXPLORE.EXE"
    Call Shell(stAppName, 1)

Exit_Befehl53_Click:
    Exit Sub

Err_Befehl53_Click:
    MsgBox Err.Description
    Resume Exit_Befehl53_Click

End Sub
Private Sub Befehl54_Click()
On Error GoTo Err_Befehl54_Click

    Dim myUrl As String
    Dim oIE As Object


  myUrl = "172.18.33.27/finanz/index.asp?page=Sachstammdetails&show=ja&Buchungsstelle=06500." & [HHSt] & "&Jahr=2006&Gemeinde=1"
  Set oIE = CreateObject("InternetExplorer.Application")
  oIE.Visible = True 'Sichtbarmachung des Fensters
  oIE.Navigate myUrl
  Set oIE = Nothing

Exit_Befehl54_Click:
    Exit Sub

Err_Befehl54_Click:
    MsgBox Err.Description
    Resume Exit_Befehl54_Click

End Sub
