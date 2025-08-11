Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Form_Timer()

10  If Tabelle_geoeffnet(str_SQL_Statement) = False And Abfrage_geoeffnet(str_SQL_Statement) = False Then

'20      If bln_Anw_Fenster_aus = True Then 'DM2022-07-26
'30          Anw_Fenster_Aus True
'40      Else
'50          Anw_Fenster_Aus False
'60      End If

70      DoEvents

80      DoCmd.OpenForm "Startformular"
90      Forms("Startformular")!Reg_Alle = lng_Reg_Seite
100     Forms("Startformular")!LF_Weitere_Tabellen = str_SQL_Statement
110     DoEvents
120     DoCmd.Close acForm, Me.Name
130 End If




End Sub
