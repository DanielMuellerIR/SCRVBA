Operation =1
Option =0
Begin InputTables
    Name ="M_Kostenstellen"
    Name ="M_Bereiche"
    Name ="M_Betriebe"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
End
Begin OutputColumns
    Expression ="M_Kostenstellen.Kennummer"
    Expression ="M_Kostenstellen.Kostenstelle"
    Expression ="M_Kostenstellen.Bezeichnung"
    Expression ="M_Bereiche.BereichNr"
    Expression ="M_Betriebe.Betrieb"
    Expression ="M_Bereiche.BereichName"
End
Begin Joins
    LeftTable ="M_Betriebe"
    RightTable ="M_Bereiche"
    Expression ="M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb"
    Flag =3
    LeftTable ="M_Bereiche"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]"
    Flag =3
    LeftTable ="M_Kostenstellen"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen."
        "ID_Gebäudeteil"
    Flag =3
End
Begin Groups
    Expression ="M_Kostenstellen.Kennummer"
    GroupLevel =0
    Expression ="M_Kostenstellen.Kostenstelle"
    GroupLevel =0
    Expression ="M_Kostenstellen.Bezeichnung"
    GroupLevel =0
    Expression ="M_Bereiche.BereichNr"
    GroupLevel =0
    Expression ="M_Betriebe.Betrieb"
    GroupLevel =0
    Expression ="M_Bereiche.BereichName"
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
        dbText "Name" ="M_Bereiche.BereichNr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Kennummer"
        dbLong "AggregateType" ="-1"
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
        dbText "Name" ="M_Kostenstellen.Kostenstelle"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1468
    Bottom =1004
    Left =-1
    Top =-1
    Right =1444
    Bottom =641
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =17
        Top =107
        Right =203
        Bottom =273
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =886
        Top =221
        Right =1065
        Bottom =344
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =1128
        Top =269
        Right =1318
        Bottom =379
        Top =0
        Name ="M_Betriebe"
        Name =""
    End
    Begin
        Left =614
        Top =91
        Right =826
        Bottom =318
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =256
        Top =75
        Right =559
        Bottom =240
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
End
