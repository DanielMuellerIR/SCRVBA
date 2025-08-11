Operation =1
Option =0
Where ="(((CCur(Nz([Summe von Bruttogrundfläche])))>0) AND ((tbl_100_20_Gebäudeteile.Mie"
    "trelevant)=True))"
Begin InputTables
    Name ="M_Verwaltungskosten"
    Name ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1"
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="M_Bereiche"
    Name ="M_Betriebe"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Planjahr"
    Expression ="M_Betriebe.Betrieb"
    Expression ="M_Bereiche.BereichNr"
    Expression ="M_Bereiche.BereichName"
    Alias ="Objekt"
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.ID_Gebäudeteil"
    Alias ="Kostenart"
    Expression ="\"Sachkosten\""
    Alias ="Betrag"
    Expression ="(([Betrag_520000]*([Anteil_520000_Verwaltung]+[Anteil_520000_Unterhaltung])/100)"
        "+([Betrag_550000]*([Anteil_550000_Verwaltung]+[Anteil_550000_Unterhaltung])/100)"
        "+([Betrag_560000]*([Anteil_560000_Verwaltung]+[Anteil_560000_Unterhaltung])/100)"
        "+([Betrag_570000]*([Anteil_570000_Verwaltung]+[Anteil_570000_Unterhaltung])/100)"
        "+([Betrag_650000]*([Anteil_650000_Verwaltung]+[Anteil_650000_Unterhaltung])/100)"
        "+([Betrag_Reinigung]*([Anteil_Reinigung_Verwaltung]+[Anteil_Reinigung_Unterhaltu"
        "ng])/100))/[Summe von Bruttogrundfläche]*[Bruttogrundfläche]"
    Alias ="sort"
    Expression ="\"B\""
End
Begin Joins
    LeftTable ="M_Verwaltungskosten"
    RightTable ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1"
    Expression ="M_Verwaltungskosten.Haushaltsjahr = Union_Abfrage_Mietberechnung_Bauunterhaltung"
        "_1.Planjahr"
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
        dbInteger "ColumnWidth" ="1260"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Kostenart"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Betrag"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3705"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="sort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Betriebe.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Bereiche.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Bereiche.BereichName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
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
    Bottom =536
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =946
        Top =7
        Right =1264
        Bottom =458
        Top =0
        Name ="M_Verwaltungskosten"
        Name =""
    End
    Begin
        Left =435
        Top =24
        Right =841
        Bottom =207
        Top =0
        Name ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1"
        Name =""
    End
    Begin
        Left =442
        Top =217
        Right =768
        Bottom =326
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =18
        Top =103
        Right =318
        Bottom =458
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =442
        Top =453
        Right =614
        Bottom =580
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =687
        Top =500
        Right =890
        Bottom =603
        Top =0
        Name ="M_Betriebe"
        Name =""
    End
    Begin
        Left =442
        Top =338
        Right =735
        Bottom =444
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
