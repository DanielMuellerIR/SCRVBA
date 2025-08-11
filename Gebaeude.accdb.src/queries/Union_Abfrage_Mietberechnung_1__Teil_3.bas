Operation =1
Option =0
Where ="(((CDbl(Nz([Summe von Bruttogrundfläche])))>0) AND ((tbl_100_20_Gebäudeteile.Mie"
    "trelevant)=True))"
Begin InputTables
    Name ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1"
    Name ="Union_Abfrage_Mietberechnung_Personalkosten_1"
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="M_Bereiche"
    Name ="M_Betriebe"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Planjahr"
    Expression ="M_Betriebe.Betrieb"
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.BereichNr"
    Expression ="M_Bereiche.BereichName"
    Alias ="Objekt"
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.ID_Gebäudeteil"
    Alias ="Kostenart"
    Expression ="\"Verwaltungskosten Personal Unterhaltung\""
    Alias ="Betrag"
    Expression ="CCur(Nz(Sum([Unterhaltung]/[Summe von Bruttogrundfläche]*[Bruttogrundfläche])))"
    Alias ="sort"
    Expression ="\"B\""
End
Begin Joins
    LeftTable ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1"
    RightTable ="Union_Abfrage_Mietberechnung_Personalkosten_1"
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Planjahr = Union_Abfrage_Mietbere"
        "chnung_Personalkosten_1.Haushaltsjahr"
    Flag =1
    LeftTable ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.ID_Gebäudeteil = tbl_100_20_Gebäu"
        "deteile.ID_Gebäudeteil"
    Flag =1
    LeftTable ="M_Bereiche"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]"
    Flag =3
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =1
    LeftTable ="M_Betriebe"
    RightTable ="M_Bereiche"
    Expression ="M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb"
    Flag =3
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
End
Begin Groups
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Planjahr"
    GroupLevel =0
    Expression ="M_Betriebe.Betrieb"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.BereichNr"
    GroupLevel =0
    Expression ="M_Bereiche.BereichName"
    GroupLevel =0
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="\"Verwaltungskosten Personal Unterhaltung\""
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Bruttogrundfläche"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.[Summe von Bruttogrundfläche]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "RecordsetType" ="0"
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Planjahr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1185"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.BereichNr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1350"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Kostenart"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4110"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Betrag"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1140"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="sort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="7230"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="M_Betriebe.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Bereiche.BereichName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Mietrelevant"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäude"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1874
    Bottom =991
    Left =-1
    Top =-1
    Right =1850
    Bottom =569
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =401
        Top =13
        Right =783
        Bottom =181
        Top =0
        Name ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1"
        Name =""
    End
    Begin
        Left =827
        Top =14
        Right =1191
        Bottom =227
        Top =0
        Name ="Union_Abfrage_Mietberechnung_Personalkosten_1"
        Name =""
    End
    Begin
        Left =402
        Top =189
        Right =676
        Bottom =282
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =20
        Top =95
        Right =237
        Bottom =317
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =402
        Top =395
        Right =590
        Bottom =525
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =673
        Top =443
        Right =817
        Bottom =537
        Top =0
        Name ="M_Betriebe"
        Name =""
    End
    Begin
        Left =402
        Top =293
        Right =669
        Bottom =384
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
