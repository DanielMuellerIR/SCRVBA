Operation =1
Option =0
Begin InputTables
    Name ="A_Buchungen"
    Name ="A_Buchungen_Aufteilung_auf_Buchungsstellen"
    Name ="Buchungsstellen _Doppik"
End
Begin OutputColumns
    Expression ="A_Buchungen.ID"
    Expression ="A_Buchungen_Aufteilung_auf_Buchungsstellen.Betrag"
    Expression ="[Buchungsstellen _Doppik].Buchungsstelle"
    Expression ="A_Buchungen_Aufteilung_auf_Buchungsstellen.Sachkonto"
    Expression ="A_Buchungen_Aufteilung_auf_Buchungsstellen.Prod_Nr"
End
Begin Joins
    LeftTable ="A_Buchungen_Aufteilung_auf_Buchungsstellen"
    RightTable ="Buchungsstellen _Doppik"
    Expression ="A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungsstellen] = [Buchungss"
        "tellen _Doppik].Kennummer"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="A_Buchungen_Aufteilung_auf_Buchungsstellen"
    Expression ="A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungen]"
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
        dbText "Name" ="[Buchungsstellen _Doppik].Buchungsstelle"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Buchungsstellen.Prod_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Buchungsstellen.Betrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Buchungsstellen.Sachkonto"
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
    Bottom =353
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =26
        Top =30
        Right =247
        Bottom =354
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =415
        Top =31
        Right =711
        Bottom =187
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Buchungsstellen"
        Name =""
    End
    Begin
        Left =818
        Top =49
        Right =1059
        Bottom =240
        Top =0
        Name ="Buchungsstellen _Doppik"
        Name =""
    End
End
