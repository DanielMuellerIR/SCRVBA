Operation =1
Option =0
Where ="(((CCur(Nz([Summe von Bruttogrundfläche])))>0) AND ((tbl_100_20_Gebäudeteile.Mie"
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
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Betrieb"
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.BereichNr"
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.BereichName"
    Alias ="Objekt"
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.ID_Gebäudeteil"
    Alias ="Kostenart"
    Expression ="\"Verwaltungskosten Personal Verwaltung\""
    Alias ="Betrag"
    Expression ="Sum(CCur(Nz([Verwaltung]/[Summe von Bruttogrundfläche]*[Bruttogrundfläche])))"
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
    Flag =2
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
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Betrieb"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.BereichNr"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.BereichName"
    GroupLevel =0
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="\"Verwaltungskosten Personal Verwaltung\""
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
        dbInteger "ColumnWidth" ="1200"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Betrieb"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2355"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.BereichNr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1650"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.BereichName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3120"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Kostenart"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3960"
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
        dbInteger "ColumnWidth" ="4260"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Mietrelevant"
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
    Bottom =614
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =408
        Top =28
        Right =779
        Bottom =185
        Top =0
        Name ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1"
        Name =""
    End
    Begin
        Left =862
        Top =30
        Right =1239
        Bottom =196
        Top =0
        Name ="Union_Abfrage_Mietberechnung_Personalkosten_1"
        Name =""
    End
    Begin
        Left =409
        Top =191
        Right =773
        Bottom =308
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =27
        Top =108
        Right =270
        Bottom =428
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =409
        Top =427
        Right =654
        Bottom =548
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =721
        Top =476
        Right =927
        Bottom =589
        Top =0
        Name ="M_Betriebe"
        Name =""
    End
    Begin
        Left =405
        Top =314
        Right =636
        Bottom =419
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
