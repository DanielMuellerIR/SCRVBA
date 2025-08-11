Operation =1
Option =0
Where ="(((Finanzherkunft.Finanzherkunft)<>\"Bauunterhaltung\"))"
Having ="(((Haushaltsdaten.Jahr)=F_Variable(\"lng_Kalk_JAhr\")))"
Begin InputTables
    Name ="Finanzherkunft"
    Name ="Maßnahmen"
    Name ="Haushaltsdaten"
End
Begin OutputColumns
    Expression ="Maßnahmen.ID"
    Expression ="Haushaltsdaten.Jahr"
    Alias ="Betrag"
    Expression ="Sum(CCur([HHR])+CCur([Ansatz]))"
End
Begin Joins
    LeftTable ="Maßnahmen"
    RightTable ="Haushaltsdaten"
    Expression ="Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =1
    LeftTable ="Finanzherkunft"
    RightTable ="Haushaltsdaten"
    Expression ="Finanzherkunft.ID_Fin_Her = Haushaltsdaten.ID_Fin_Her"
    Flag =1
End
Begin Groups
    Expression ="Maßnahmen.ID"
    GroupLevel =0
    Expression ="Haushaltsdaten.Jahr"
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
        dbText "Name" ="Maßnahmen.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Jahr"
        dbInteger "ColumnWidth" ="2520"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1890
    Bottom =1004
    Left =-1
    Top =-1
    Right =1866
    Bottom =546
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =736
        Top =160
        Right =880
        Bottom =304
        Top =0
        Name ="Finanzherkunft"
        Name =""
    End
    Begin
        Left =39
        Top =178
        Right =183
        Bottom =322
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =318
        Top =119
        Right =578
        Bottom =371
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
End
