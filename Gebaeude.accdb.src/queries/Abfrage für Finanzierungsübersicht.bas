Operation =1
Option =0
Begin InputTables
    Name ="Buchungsstellen"
    Name ="Haushaltsdaten"
End
Begin OutputColumns
    Expression ="Buchungsstellen.Buchungsstelle"
    Expression ="Buchungsstellen.[für Gebäude]"
    Expression ="Haushaltsdaten.[ID aus Maßnahmen]"
End
Begin Joins
    LeftTable ="Buchungsstellen"
    RightTable ="Haushaltsdaten"
    Expression ="Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]"
    Flag =2
End
Begin Groups
    Expression ="Buchungsstellen.Buchungsstelle"
    GroupLevel =0
    Expression ="Buchungsstellen.[für Gebäude]"
    GroupLevel =0
    Expression ="Haushaltsdaten.[ID aus Maßnahmen]"
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
End
Begin
    State =0
    Left =0
    Top =40
    Right =1393
    Bottom =984
    Left =-1
    Top =-1
    Right =1361
    Bottom =127
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="Buchungsstellen"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
End
