Operation =1
Option =0
Where ="((([Bericht Sanierungsstau nach Finanzplanung].[ID_Gebäude]) Between F_Variable("
    "\"lng_ID_Geb_Min\") And F_Variable(\"lng_ID_Geb_Max\")) AND (([Bericht Sanierung"
    "sstau nach Finanzplanung].[ID_Gebäudeteil]) Between F_Variable(\"lng_ID_Geb_Teil"
    "_Min\") And F_Variable(\"lng_ID_Geb_Teil_Max\")))"
Begin InputTables
    Name ="Bericht Sanierungsstau nach Finanzplanung"
End
Begin OutputColumns
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].[ID_Gebäudeteil]"
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
Begin
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].[ID_Gebäudeteil]"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1633
    Bottom =841
    Left =-1
    Top =-1
    Right =1609
    Bottom =254
    Left =0
    Top =0
    ColumnsShown =537
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="Bericht Sanierungsstau nach Finanzplanung"
        Name =""
    End
End
