Operation =1
Option =0
Where ="(((tbl_200_30_10_Bew_Bilanz_Sanierungsstau.Bilanz_relevant)=True))"
Begin InputTables
    Name ="tbl_200_30_10_Bew_Bilanz_Sanierungsstau"
    Name ="tbl_200_10_10_Bewertungsbilanzen"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_10_Liegenschaften"
End
Begin OutputColumns
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil"
    Expression ="tbl_100_10_Liegenschaften.Bezeichnung"
    Expression ="tbl_100_20_Gebäudeteile.Gebäudeteil"
    Expression ="tbl_200_30_10_Bew_Bilanz_Sanierungsstau.ID_Bew_Bil"
    Alias ="San_Stau"
    Expression ="Sum(tbl_200_30_10_Bew_Bilanz_Sanierungsstau.[voraussichtliche Kosten gesamt])"
End
Begin Joins
    LeftTable ="tbl_200_10_10_Bewertungsbilanzen"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Geb"
        "äudeteil"
    Flag =1
    LeftTable ="tbl_200_10_10_Bewertungsbilanzen"
    RightTable ="tbl_200_30_10_Bew_Bilanz_Sanierungsstau"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil = tbl_200_30_10_Bew_Bilanz_Sanierung"
        "sstau.ID_Bew_Bil"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
End
Begin Groups
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="tbl_100_10_Liegenschaften.Bezeichnung"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.Gebäudeteil"
    GroupLevel =0
    Expression ="tbl_200_30_10_Bew_Bilanz_Sanierungsstau.ID_Bew_Bil"
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
        dbText "Name" ="tbl_200_30_10_Bew_Bilanz_Sanierungsstau.ID_Bew_Bil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="San_Stau"
        dbInteger "ColumnWidth" ="3420"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1871
    Bottom =992
    Left =-1
    Top =-1
    Right =1847
    Bottom =447
    Left =0
    Top =0
    ColumnsShown =541
    Begin
        Left =1128
        Top =71
        Right =1450
        Bottom =243
        Top =0
        Name ="tbl_200_30_10_Bew_Bilanz_Sanierungsstau"
        Name =""
    End
    Begin
        Left =764
        Top =87
        Right =1046
        Bottom =247
        Top =0
        Name ="tbl_200_10_10_Bewertungsbilanzen"
        Name =""
    End
    Begin
        Left =441
        Top =136
        Right =698
        Bottom =292
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =109
        Top =152
        Right =351
        Bottom =310
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
End
