Operation =1
Option =2
Where ="(((Haushaltsdaten.Jahr)=F_Variable('lng_Kalk_Jahr')))"
Begin InputTables
    Name ="tbl_100_20_Gebäudeteile"
    Name ="Finanzherkunft"
    Name ="Finanzquellen"
    Name ="Maßnahmen"
    Name ="Buchungsstellen"
    Name ="Haushaltsdaten"
    Name ="M_Kostenstellen"
    Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
End
Begin OutputColumns
    Expression ="Buchungsstellen.Sachkonto"
    Expression ="M_Kostenstellen.Kostenstelle_Infoma"
    Expression ="Haushaltsdaten.Kostentraeger"
    Expression ="Haushaltsdaten.Inv_Nr"
    Expression ="Maßnahmen.ID"
    Expression ="Haushaltsdaten.Anlagen_Nr"
    Expression ="Haushaltsdaten.FP_Nr"
    Alias ="Summ"
    Expression ="[Ansatz]+[HHR]+[VE]"
    Alias ="Kontierung"
    Expression ="[Finanzquelle] & \" / \" & [Finanzherkunft] & \" / \" & Format(Nz([Ansatz])+Nz(["
        "HHr])+Nz([VE]),\"#,##0.00 €\")"
End
Begin Joins
    LeftTable ="Buchungsstellen"
    RightTable ="Haushaltsdaten"
    Expression ="Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]"
    Flag =3
    LeftTable ="Maßnahmen"
    RightTable ="Haushaltsdaten"
    Expression ="Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =2
    LeftTable ="Finanzquellen"
    RightTable ="Haushaltsdaten"
    Expression ="Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu"
    Flag =3
    LeftTable ="Finanzherkunft"
    RightTable ="Haushaltsdaten"
    Expression ="Finanzherkunft.ID_Fin_Her = Haushaltsdaten.ID_Fin_Her"
    Flag =3
    LeftTable ="M_Kostenstellen"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst"
    Flag =3
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
        dbText "Name" ="Haushaltsdaten.Inv_Nr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="5"
        dbInteger "ColumnWidth" ="1485"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Anlagen_Nr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1373"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Kostentraeger"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2213"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="Buchungsstellen.Sachkonto"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Kostenstelle_Infoma"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.FP_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.ID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="Kontierung"
        dbInteger "ColumnWidth" ="4950"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summ"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="Expr1001"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1882
    Bottom =861
    Left =-1
    Top =-1
    Right =1858
    Bottom =715
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =519
        Top =389
        Right =803
        Bottom =628
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =963
        Top =306
        Right =1169
        Bottom =411
        Top =0
        Name ="Finanzherkunft"
        Name =""
    End
    Begin
        Left =961
        Top =209
        Right =1158
        Bottom =296
        Top =0
        Name ="Finanzquellen"
        Name =""
    End
    Begin
        Left =26
        Top =149
        Right =342
        Bottom =524
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =963
        Top =14
        Right =1226
        Bottom =197
        Top =0
        Name ="Buchungsstellen"
        Name =""
    End
    Begin
        Left =535
        Top =54
        Right =730
        Bottom =367
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =1262
        Top =454
        Right =1539
        Bottom =619
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =965
        Top =418
        Right =1196
        Bottom =585
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
End
