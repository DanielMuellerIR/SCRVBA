Operation =1
Option =0
Where ="(((CDbl(Nz([Summe von Bruttogrundfläche])))>0) AND ((tbl_100_20_Gebäudeteile.Mie"
    "trelevant)=True))"
Having ="(((tbl_100_20_Gebäudeteile.angemietetes_Gebäude)=False))"
Begin InputTables
    Name ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1"
    Name ="M_Bauunterhaltung"
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
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.KostenarT"
    Alias ="Betrag"
    Expression ="CCur(Nz([Betrag_5050000]/CCur(Nz([Summe von Bruttogrundfläche]))*[Bruttogrundflä"
        "che]))"
    Alias ="sort"
    Expression ="\"B\""
End
Begin Joins
    LeftTable ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1"
    RightTable ="M_Bauunterhaltung"
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Planjahr = M_Bauunterhaltung.Haus"
        "haltsjahr"
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
    Expression ="M_Betriebe.Betrieb"
    GroupLevel =0
    Expression ="M_Bereiche.BereichNr"
    GroupLevel =0
    Expression ="M_Bereiche.BereichName"
    GroupLevel =0
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.KostenarT"
    GroupLevel =0
    Expression ="CCur(Nz([Betrag_5050000]/CCur(Nz([Summe von Bruttogrundfläche]))*[Bruttogrundflä"
        "che]))"
    GroupLevel =0
    Expression ="\"B\""
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.angemietetes_Gebäude"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="-1"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Planjahr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1650"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1.KostenarT"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Betrag"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="3630"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="sort"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="780"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="6030"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
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
    Bottom =420
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =17
        Top =30
        Right =404
        Bottom =245
        Top =0
        Name ="Union_Abfrage_Mietberechnung_Bauunterhaltung_1"
        Name =""
    End
    Begin
        Left =543
        Top =14
        Right =785
        Bottom =139
        Top =0
        Name ="M_Bauunterhaltung"
        Name =""
    End
    Begin
        Left =853
        Top =69
        Right =1072
        Bottom =200
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =534
        Top =150
        Right =785
        Bottom =396
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =846
        Top =323
        Right =1023
        Bottom =445
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =1077
        Top =369
        Right =1324
        Bottom =452
        Top =0
        Name ="M_Betriebe"
        Name =""
    End
    Begin
        Left =844
        Top =213
        Right =1054
        Bottom =309
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
