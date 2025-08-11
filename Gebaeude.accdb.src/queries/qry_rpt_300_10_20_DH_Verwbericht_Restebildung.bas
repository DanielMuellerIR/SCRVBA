Operation =1
Option =0
Where ="(((Maßnahmen.[nicht mehr erforderlich weil]) Is Null) AND (Not ([Geplante Finanz"
    "ierung].Erledigt)=True))"
Having ="(((Maßnahmen.[offene Auträge])>0) AND ((Finanzquellen.Finanzquelle)=\"investiv\""
    "))"
Begin InputTables
    Name ="Maßnahmen"
    Name ="Geplante Finanzierung"
    Name ="Finanzquellen"
    Name ="Haushaltsdaten"
    Name ="Buchungsstellen"
End
Begin OutputColumns
    Alias ="Buch_stelle"
    Expression ="[Buchungsstelle] & \": \" & [Text Buchungsstelle]"
    Expression ="Maßnahmen.Maßnahme"
    Expression ="Maßnahmen.[offene Auträge]"
    Expression ="[Geplante Finanzierung].Kalenderjahr"
End
Begin Joins
    LeftTable ="Maßnahmen"
    RightTable ="Haushaltsdaten"
    Expression ="Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =1
    LeftTable ="Buchungsstellen"
    RightTable ="Haushaltsdaten"
    Expression ="Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]"
    Flag =1
    LeftTable ="Maßnahmen"
    RightTable ="Geplante Finanzierung"
    Expression ="Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme"
    Flag =1
    LeftTable ="Finanzquellen"
    RightTable ="Haushaltsdaten"
    Expression ="Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu"
    Flag =1
End
Begin Groups
    Expression ="[Buchungsstelle] & \": \" & [Text Buchungsstelle]"
    GroupLevel =0
    Expression ="Maßnahmen.Maßnahme"
    GroupLevel =0
    Expression ="Maßnahmen.[offene Auträge]"
    GroupLevel =0
    Expression ="Finanzquellen.Finanzquelle"
    GroupLevel =0
    Expression ="[Geplante Finanzierung].Kalenderjahr"
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
        dbText "Name" ="Maßnahmen.Maßnahme"
        dbInteger "ColumnWidth" ="7620"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Buch_stelle "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Buch_stelle"
        dbInteger "ColumnWidth" ="6900"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.[offene Auträge]"
        dbInteger "ColumnWidth" ="1830"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Geplante Finanzierung].Erledigt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Geplante Finanzierung].Kalenderjahr"
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
    Bottom =577
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =36
        Top =114
        Right =266
        Bottom =436
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =460
        Top =32
        Right =659
        Bottom =239
        Top =0
        Name ="Geplante Finanzierung"
        Name =""
    End
    Begin
        Left =750
        Top =462
        Right =975
        Bottom =557
        Top =0
        Name ="Finanzquellen"
        Name =""
    End
    Begin
        Left =468
        Top =262
        Right =660
        Bottom =485
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =745
        Top =274
        Right =976
        Bottom =440
        Top =0
        Name ="Buchungsstellen"
        Name =""
    End
End
