Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Report_Open(Cancel As Integer)

10  DoCmd.Maximize

20  Select Case str_Openargs
    Case "*Alle*"
30      Me.RecordSource = "SELECT B_Plausibilitätsprüfung.Fehler, [Objekt] & IIf([Gebäudeteil] Is Null,'',' -> ' & [Gebäudeteil]) AS Obj, B_Plausibilitätsprüfung.Gemarkung, B_Plausibilitätsprüfung.Flur, B_Plausibilitätsprüfung.Flurstücke" _
                        & " FROM B_Plausibilitätsprüfung LEFT JOIN tbl_100_20_Gebäudeteile ON B_Plausibilitätsprüfung.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil" _
                        & " ORDER BY B_Plausibilitätsprüfung.Fehler, [Objekt] & IIf([Gebäudeteil] Is Null,'',' -> ' & [Gebäudeteil]);"
40      Me!BF_Hinweis.Caption = "Alle Gebäude"

50  Case "*Bilanzrelevante*"
60      Me.RecordSource = "SELECT B_Plausibilitätsprüfung.Fehler, [Objekt] & IIf([Gebäudeteil] Is Null,'',' -> ' & [Gebäudeteil]) AS Obj, B_Plausibilitätsprüfung.Gemarkung, B_Plausibilitätsprüfung.Flur, B_Plausibilitätsprüfung.Flurstücke" _
                        & " FROM B_Plausibilitätsprüfung LEFT JOIN tbl_100_20_Gebäudeteile ON B_Plausibilitätsprüfung.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil" _
                        & " WHERE (((([Bilanz_relevant] = True Or [ID_GebT_Zug_GebT] Is Not Null) And [Nicht_mehr_in_Betr_seit] Is Null) = True)) Or (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil) Is Null))" _
                        & " ORDER BY B_Plausibilitätsprüfung.Fehler, [Objekt] & IIf([Gebäudeteil] Is Null,'',' -> ' & [Gebäudeteil]);"
70      Me!BF_Hinweis.Caption = "Nur Bilanz-relevante Gebäude oder zu anderen Gebäuden gehörende"
80  End Select

End Sub
