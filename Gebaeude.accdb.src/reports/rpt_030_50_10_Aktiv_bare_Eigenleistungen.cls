Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Report_Open(Cancel As Integer)
10  DoCmd.Maximize

20  If lng_ID_Massn_Min = lng_ID_Massn_Max Then
30      Me!BF_Massnahme.Caption = Nz(DLookup("[Massn]", Me.RecordSource))
40  Else
50      Me!BF_Massnahme.Caption = "Alle Maßnahmen"
60  End If

70  If lng_ID_SB_Min = lng_ID_SB_Max Then
80      ' Me.BF_SB.Caption = Nz(DLookup("[NAme]", Me.RecordSource)) ' DM2021-08-31 kann nicht mehr verwendet werden, da ich die Spalte Name aus der Query entfernt habe
81      Me.BF_SB.Caption = Nz(DLookup("[Name]", "Sachbearbeiter", "ID=" + Str(F_Variable("lng_ID_SB_Min"))))  'DM2021-08-31 Allerdings wissen wir die ID des SB, also können wir den Namen auch so ermitteln
90  Else
100     Me!BF_SB.Caption = "Alle Sachbearbeiter"
110 End If

120 Me!BF_Zeitraum.Caption = F_Variable("dt_Start_Datum") & " bis " & F_Variable("dt_Ende_Datum")

End Sub
