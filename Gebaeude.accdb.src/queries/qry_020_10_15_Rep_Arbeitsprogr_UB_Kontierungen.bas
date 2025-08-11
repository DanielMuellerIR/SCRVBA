Operation =1
Option =2
Where ="((([Geplante Finanzierung].Kalenderjahr)=F_Variable('lng_Kalk_Jahr')))"
Begin InputTables
    Name ="tbl_100_20_Gebäudeteile"
    Name ="Finanzherkunft"
    Name ="Finanzquellen"
    Name ="Maßnahmen"
    Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Name ="Geplante Finanzierung"
End
Begin OutputColumns
    Expression ="Maßnahmen.ID"
    Expression ="[Geplante Finanzierung].Betrag"
    Expression ="Finanzquellen.Finanzquelle"
    Expression ="Finanzherkunft.Finanzherkunft"
    Expression ="[Geplante Finanzierung].Maßn_Nr_Infoma"
End
Begin Joins
    LeftTable ="Finanzherkunft"
    RightTable ="Geplante Finanzierung"
    Expression ="Finanzherkunft.ID_Fin_Her = [Geplante Finanzierung].ID_Fin_Her"
    Flag =1
    LeftTable ="Finanzquellen"
    RightTable ="Geplante Finanzierung"
    Expression ="Finanzquellen.ID_Fin_Qu = [Geplante Finanzierung].ID_Fin_Qu"
    Flag =1
    LeftTable ="Maßnahmen"
    RightTable ="Geplante Finanzierung"
    Expression ="Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme"
    Flag =1
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Maßnahmen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil"
    Flag =3
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen."
        "ID_Gebäudeteil"
    Flag =2
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
        dbText "Name" ="Maßnahmen.ID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="[Geplante Finanzierung].Betrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Geplante Finanzierung].Maßn_Nr_Infoma"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanzherkunft.Finanzherkunft"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanzquellen.Finanzquelle"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1481
    Bottom =940
    Left =-1
    Top =-1
    Right =1461
    Bottom =521
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =389
        Top =263
        Right =673
        Bottom =632
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =763
        Top =157
        Right =930
        Bottom =282
        Top =0
        Name ="Finanzherkunft"
        Name =""
    End
    Begin
        Left =767
        Top =25
        Right =934
        Bottom =138
        Top =0
        Name ="Finanzquellen"
        Name =""
    End
    Begin
        Left =26
        Top =149
        Right =293
        Bottom =524
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =760
        Top =312
        Right =953
        Bottom =507
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
    Begin
        Left =435
        Top =6
        Right =623
        Bottom =254
        Top =0
        Name ="Geplante Finanzierung"
        Name =""
    End
End
