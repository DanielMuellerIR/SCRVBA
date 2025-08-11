Operation =1
Option =0
Where ="(((tbl_100_20_Gebäudeteile.Mietrelevant)=True))"
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="M_Bereiche"
    Name ="Fiktive Flächen berechnen"
    Name ="Jahre_für_Bauunterhaltung"
    Name ="M_Betriebe"
End
Begin OutputColumns
    Alias ="Planjahr"
    Expression ="Jahre_für_Bauunterhaltung.Jahr"
    Expression ="M_Betriebe.Betrieb"
    Expression ="M_Bereiche.BereichNr"
    Expression ="M_Bereiche.BereichName"
    Alias ="Objekt"
    Expression ="[Bezeichnung] & \": \" & [Gebäudeteil]"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Alias ="Summe von Bruttogrundfläche"
    Expression ="DLookUp(\"[Summe von Bruttogrundfläche]\",\"Union_Abfrage_Mietberechnung_Bauunte"
        "rhaltung_Summe_Flächen\")"
    Alias ="KostenarT"
    Expression ="\"Bauunterhaltung\""
    Alias ="Bruttogrundfläche"
    Expression ="[Fiktive Flächen berechnen].Berechnungsfläche"
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Bereiche"
    Expression ="tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche] = M_Bereiche.Kennummer"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Fiktive Flächen berechnen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = [Fiktive Flächen berechnen].ID_Gebäudet"
        "eil"
    Flag =1
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Jahre_für_Bauunterhaltung"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Jahre_für_Bauunterhaltung.ID_Gebäudetei"
        "l"
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
Begin OrderBy
    Expression ="Jahre_für_Bauunterhaltung.Jahr"
    Flag =0
    Expression ="M_Bereiche.BereichNr"
    Flag =0
    Expression ="[Bezeichnung] & \": \" & [Gebäudeteil]"
    Flag =0
End
Begin Groups
    Expression ="Jahre_für_Bauunterhaltung.Jahr"
    GroupLevel =0
    Expression ="M_Betriebe.Betrieb"
    GroupLevel =0
    Expression ="M_Bereiche.BereichNr"
    GroupLevel =0
    Expression ="M_Bereiche.BereichName"
    GroupLevel =0
    Expression ="[Bezeichnung] & \": \" & [Gebäudeteil]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="DLookUp(\"[Summe von Bruttogrundfläche]\",\"Union_Abfrage_Mietberechnung_Bauunte"
        "rhaltung_Summe_Flächen\")"
    GroupLevel =0
    Expression ="\"Bauunterhaltung\""
    GroupLevel =0
    Expression ="[Fiktive Flächen berechnen].Berechnungsfläche"
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
        dbText "Name" ="M_Bereiche.BereichName"
        dbInteger "ColumnWidth" ="2685"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Planjahr"
        dbInteger "ColumnWidth" ="960"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bruttogrundfläche"
        dbInteger "ColumnWidth" ="3045"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="KostenarT"
        dbInteger "ColumnWidth" ="1560"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Bereiche.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="6300"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Betriebe.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von Bruttogrundfläche "
        dbInteger "ColumnWidth" ="3255"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von Bruttogrundfläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Mietrelevant"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =24
    Top =-3
    Right =1409
    Bottom =1041
    Left =-1
    Top =-1
    Right =1353
    Bottom =736
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =24
        Top =59
        Right =276
        Bottom =436
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =360
        Top =43
        Right =631
        Bottom =542
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =690
        Top =432
        Right =908
        Bottom =545
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =719
        Top =155
        Right =1230
        Bottom =379
        Top =0
        Name ="Fiktive Flächen berechnen"
        Name =""
    End
    Begin
        Left =715
        Top =40
        Right =1222
        Bottom =136
        Top =0
        Name ="Jahre_für_Bauunterhaltung"
        Name =""
    End
    Begin
        Left =980
        Top =479
        Right =1202
        Bottom =586
        Top =0
        Name ="M_Betriebe"
        Name =""
    End
End
