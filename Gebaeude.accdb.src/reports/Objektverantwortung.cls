Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Report_Open(Cancel As Integer)

10  DoCmd.Maximize

20  Select Case str_Open_Args

    Case 1
        ' Objekt-Verantwortliche
30      Me.RecordSource = _
        "SELECT Sachbearbeiter.Name, tbl_100_10_Liegenschaften.Bezeichnung, [M_Strassenverzeichnis].[Name]" _
                        & " & ' ' & [Haus_Nr] AS Straße_HNr, Sachbearbeiter.Objektverantwortlicher" _
                        & " FROM Sachbearbeiter INNER JOIN (tbl_100_10_Liegenschaften LEFT JOIN M_Strassenverzeichnis" _
                        & " ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer)" _
                        & " ON Sachbearbeiter.ID = tbl_100_10_Liegenschaften.ID_SB" _
                        & " WHERE (((Sachbearbeiter.Objektverantwortlicher)=True)" _
                        & " and ((tbl_100_10_Liegenschaften.Nicht_mehr_in_Betr_seit) is null)" _
                        & " AND ((tbl_100_10_Liegenschaften.ID_Gebäude) Between F_Variable('lng_ID_Geb_Min') And F_Variable('lng_ID_Geb_Max')))" _
                        & " ORDER BY Sachbearbeiter.Name, [M_Strassenverzeichnis].[Name] & ' ' & [Haus_Nr];"
40      Me!BF_Verantwortung.Caption = "Objekt-Verantwortliche"


50  Case 2
        ' Grundstücks-Verantwortliche
60      Me.RecordSource = _
        "SELECT Sachbearbeiter.Name, tbl_100_10_Liegenschaften.Bezeichnung, [M_Strassenverzeichnis].[Name]" _
                        & " & ' ' & [Haus_Nr] AS Straße_HNr, Sachbearbeiter.Grundstücksverantwortlicher" _
                        & " FROM Sachbearbeiter INNER JOIN (tbl_100_10_Liegenschaften LEFT JOIN M_Strassenverzeichnis" _
                        & " ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer)" _
                        & " ON Sachbearbeiter.ID = tbl_100_10_Liegenschaften.ID_SB_Grundst" _
                        & " WHERE (((Sachbearbeiter.Grundstücksverantwortlicher) = True))" _
                        & " and ((tbl_100_10_Liegenschaften.Nicht_mehr_in_Betr_seit) is null)" _
                        & " AND ((tbl_100_10_Liegenschaften.ID_Gebäude) Between F_Variable('lng_ID_Geb_Min') And F_Variable('lng_ID_Geb_Max'))" _
                        & " ORDER BY Sachbearbeiter.Name, [M_Strassenverzeichnis].[Name] & ' ' & [Haus_Nr];"
70      Me!BF_Verantwortung.Caption = "Grundstücks-Verantwortliche"

80  Case 3
        ' Fachplaner Elektro
90      Me.RecordSource = _
        "SELECT Sachbearbeiter.Name, tbl_100_10_Liegenschaften.Bezeichnung, [M_Strassenverzeichnis].[Name]" _
                        & " & ' ' & [Haus_Nr] AS Straße_HNr, Sachbearbeiter.Fachplaner_Elektro" _
                        & " FROM Sachbearbeiter INNER JOIN (tbl_100_10_Liegenschaften LEFT JOIN M_Strassenverzeichnis" _
                        & " ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer)" _
                        & " ON Sachbearbeiter.ID = tbl_100_10_Liegenschaften.ID_SB_Fachpl_Elek" _
                        & " WHERE (((Sachbearbeiter.Fachplaner_Elektro) = True))" _
                        & " and ((tbl_100_10_Liegenschaften.Nicht_mehr_in_Betr_seit) is null)" _
                        & " AND ((tbl_100_10_Liegenschaften.ID_Gebäude) Between F_Variable('lng_ID_Geb_Min') And F_Variable('lng_ID_Geb_Max'))" _
                        & " ORDER BY Sachbearbeiter.Name, [M_Strassenverzeichnis].[Name] & ' ' & [Haus_Nr];"
100     Me!BF_Verantwortung.Caption = "Fachplaner Elektro"

110 Case 4
        ' Fachplaner H/L/S
120     Me.RecordSource = _
        "SELECT Sachbearbeiter.Name, tbl_100_10_Liegenschaften.Bezeichnung, [M_Strassenverzeichnis].[Name]" _
                        & " & ' ' & [Haus_Nr] AS Straße_HNr, Sachbearbeiter.Fachplaner_HLS" _
                        & " FROM Sachbearbeiter INNER JOIN (tbl_100_10_Liegenschaften LEFT JOIN M_Strassenverzeichnis" _
                        & " ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer)" _
                        & " ON Sachbearbeiter.ID = tbl_100_10_Liegenschaften.ID_SB_Fachpl_HLS" _
                        & " WHERE (((Sachbearbeiter.Fachplaner_HLS) = True))" _
                        & " and ((tbl_100_10_Liegenschaften.Nicht_mehr_in_Betr_seit) is null)" _
                        & " AND ((tbl_100_10_Liegenschaften.ID_Gebäude) Between F_Variable('lng_ID_Geb_Min') And F_Variable('lng_ID_Geb_Max'))" _
                        & " ORDER BY Sachbearbeiter.Name, [M_Strassenverzeichnis].[Name] & ' ' & [Haus_Nr];"
130     Me!BF_Verantwortung.Caption = "Fachplaner H/L/S"


140 Case 5
        ' Vermietungs-Verantwortliche
150     Me.RecordSource = _
        "SELECT Sachbearbeiter.Name, tbl_100_10_Liegenschaften.Bezeichnung, [M_Strassenverzeichnis].[Name]" _
                        & " & ' ' & [Haus_Nr] AS Straße_HNr, Sachbearbeiter.Mietobjektverantwortlicher" _
                        & " FROM Sachbearbeiter INNER JOIN (tbl_100_10_Liegenschaften LEFT JOIN M_Strassenverzeichnis" _
                        & " ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer)" _
                        & " ON Sachbearbeiter.ID = tbl_100_10_Liegenschaften.ID_SB_Mietverantw" _
                        & " WHERE (((Sachbearbeiter.Mietobjektverantwortlicher) = True))" _
                        & " and ((tbl_100_10_Liegenschaften.Nicht_mehr_in_Betr_seit) is null)" _
                        & " AND ((tbl_100_10_Liegenschaften.ID_Gebäude) Between F_Variable('lng_ID_Geb_Min') And F_Variable('lng_ID_Geb_Max'))" _
                        & " ORDER BY Sachbearbeiter.Name, [M_Strassenverzeichnis].[Name] & ' ' & [Haus_Nr];"
160     Me!BF_Verantwortung.Caption = "Vermietungs-Verantwortliche"

170 Case Else
        ' nicht definiert
180     Me.RecordSource = _
        "SELECT Sachbearbeiter.Name, tbl_100_10_Liegenschaften.Bezeichnung, [M_Strassenverzeichnis].[Name]" _
                        & " & ' ' & [Haus_Nr] AS Straße_HNr, Sachbearbeiter.Objektverantwortlicher" _
                        & " FROM Sachbearbeiter INNER JOIN (tbl_100_10_Liegenschaften LEFT JOIN M_Strassenverzeichnis" _
                        & " ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer)" _
                        & " ON Sachbearbeiter.ID = tbl_100_10_Liegenschaften.ID_SB" _
                        & " WHERE (((Sachbearbeiter.Objektverantwortlicher) = True))" _
                        & " and ((tbl_100_10_Liegenschaften.Nicht_mehr_in_Betr_seit) is null)" _
                        & " AND ((tbl_100_10_Liegenschaften.ID_Gebäude) Between F_Variable('lng_ID_Geb_Min') And F_Variable('lng_ID_Geb_Max'))" _
                        & " ORDER BY Sachbearbeiter.Name, [M_Strassenverzeichnis].[Name] & ' ' & [Haus_Nr];"
190     Me!BF_Verantwortung.Caption = "Objekt-Verantwortliche"

200 End Select

End Sub
