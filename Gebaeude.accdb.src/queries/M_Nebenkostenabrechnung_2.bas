Operation =1
Option =0
Begin InputTables
    Name ="M_Bereiche"
    Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Name ="A_Buchungen"
    Name ="M_Verzeichnis Nebenkosten"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
    Name ="M_Betriebe"
End
Begin OutputColumns
    Expression ="A_Buchungen.Haushaltsjahr"
    Expression ="M_Betriebe.Betrieb"
    Expression ="M_Bereiche.BereichNr"
    Expression ="M_Bereiche.BereichName"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    Alias ="Zahlungen"
    Expression ="Sum(A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag)"
End
Begin Joins
    LeftTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    RightTable ="A_Buchungen"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen] = A_Buchungen.ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="M_Verzeichnis Nebenkosten"
    Expression ="A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID"
    Flag =2
    LeftTable ="M_Bereiche"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]"
    Flag =3
    LeftTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.ID_Gebäudeteil = tbl_100_20_Gebäudeteil"
        "e.ID_Gebäudeteil"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =3
    LeftTable ="M_Betriebe"
    RightTable ="M_Bereiche"
    Expression ="M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb"
    Flag =3
End
Begin OrderBy
    Expression ="M_Betriebe.Betrieb"
    Flag =0
    Expression ="M_Bereiche.BereichNr"
    Flag =0
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    Flag =0
End
Begin Groups
    Expression ="A_Buchungen.Haushaltsjahr"
    GroupLevel =0
    Expression ="M_Betriebe.Betrieb"
    GroupLevel =0
    Expression ="M_Bereiche.BereichNr"
    GroupLevel =0
    Expression ="M_Bereiche.BereichName"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    GroupLevel =0
    Expression ="[Bezeichnung] & \": \" & [Gebäudeteil] & \", \" & [Name] & \" \" & [tbl_100_20_G"
        "ebäudeteile].[Haus_Nr]"
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
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
        dbInteger "ColumnWidth" ="3675"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Zahlungen"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Haushaltsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
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
        dbText "Name" ="M_Betriebe.Betrieb"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1873
    Bottom =990
    Left =-1
    Top =-1
    Right =1849
    Bottom =620
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =901
        Top =315
        Right =1190
        Bottom =447
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =28
        Top =122
        Right =357
        Bottom =292
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
        Name =""
    End
    Begin
        Left =475
        Top =452
        Right =689
        Bottom =596
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =829
        Top =528
        Right =1126
        Bottom =628
        Top =0
        Name ="M_Verzeichnis Nebenkosten"
        Name =""
    End
    Begin
        Left =475
        Top =188
        Right =811
        Bottom =440
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =900
        Top =95
        Right =1193
        Bottom =205
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =902
        Top =216
        Right =1095
        Bottom =305
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =1343
        Top =365
        Right =1487
        Bottom =487
        Top =0
        Name ="M_Betriebe"
        Name =""
    End
End
