Operation =1
Option =0
Begin InputTables
    Name ="B_Abfrage_alle_Ergebnisse"
    Name ="NHK-Typen"
End
Begin OutputColumns
    Expression ="B_Abfrage_alle_Ergebnisse.ID_Gebäudeteil"
    Expression ="B_Abfrage_alle_Ergebnisse.Straße"
    Expression ="B_Abfrage_alle_Ergebnisse.Bezeichnung"
    Expression ="B_Abfrage_alle_Ergebnisse.Gebäudeteil"
    Expression ="B_Abfrage_alle_Ergebnisse.BGF"
    Expression ="B_Abfrage_alle_Ergebnisse.BRI"
    Expression ="[NHK-Typen].Typ"
    Expression ="B_Abfrage_alle_Ergebnisse.Baujahr_real"
    Expression ="B_Abfrage_alle_Ergebnisse.Herstellungskosten"
    Expression ="B_Abfrage_alle_Ergebnisse.Versicherungswert"
    Expression ="B_Abfrage_alle_Ergebnisse.[kumulierte Abschreibung]"
    Expression ="B_Abfrage_alle_Ergebnisse.Sanierungsstau"
    Expression ="B_Abfrage_alle_Ergebnisse.Grundstückswert"
    Alias ="Wert ermittelt"
    Expression ="IIf([ermittelter Wert]<=0,1,[ermittelter Wert])"
    Expression ="B_Abfrage_alle_Ergebnisse.[Bewertung abgeschlossen]"
    Expression ="B_Abfrage_alle_Ergebnisse.[Abschreibung Jahr]"
    Expression ="B_Abfrage_alle_Ergebnisse.[Typ aus NHK-Typen]"
End
Begin Joins
    LeftTable ="B_Abfrage_alle_Ergebnisse"
    RightTable ="NHK-Typen"
    Expression ="B_Abfrage_alle_Ergebnisse.[Typ aus NHK-Typen] = [NHK-Typen].Kennummer"
    Flag =2
End
Begin OrderBy
    Expression ="B_Abfrage_alle_Ergebnisse.Straße"
    Flag =0
    Expression ="B_Abfrage_alle_Ergebnisse.Bezeichnung"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.Gebäudeteil"
        dbInteger "ColumnWidth" ="1860"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.Herstellungskosten"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.[kumulierte Abschreibung]"
        dbInteger "ColumnWidth" ="2535"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.Grundstückswert"
        dbInteger "ColumnWidth" ="1725"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert ermittelt"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.[Bewertung abgeschlossen]"
        dbInteger "ColumnWidth" ="2640"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.Straße"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.Sanierungsstau"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.[Abschreibung Jahr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.BRI"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.Versicherungswert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.BGF"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.Baujahr_real"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Typen].Typ"
        dbInteger "ColumnWidth" ="11460"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.[Typ aus NHK-Typen]"
        dbInteger "ColumnWidth" ="2205"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1890
    Bottom =1004
    Left =-1
    Top =-1
    Right =1866
    Bottom =559
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =28
        Top =27
        Right =372
        Bottom =454
        Top =0
        Name ="B_Abfrage_alle_Ergebnisse"
        Name =""
    End
    Begin
        Left =476
        Top =93
        Right =787
        Bottom =298
        Top =0
        Name ="NHK-Typen"
        Name =""
    End
End
