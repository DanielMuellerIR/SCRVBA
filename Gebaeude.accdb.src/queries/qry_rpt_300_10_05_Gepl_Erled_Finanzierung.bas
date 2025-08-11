Operation =1
Option =0
Where ="((([Geplante Finanzierung].Erledigt)=True) AND (([Geplante Finanzierung].Kalende"
    "rjahr)=F_Variable(\"lng_Kalk_Jahr\")))"
Begin InputTables
    Name ="Geplante Finanzierung"
End
Begin OutputColumns
    Expression ="[Geplante Finanzierung].ID"
    Expression ="[Geplante Finanzierung].ID_Massnahme"
End
Begin Groups
    Expression ="[Geplante Finanzierung].ID"
    GroupLevel =0
    Expression ="[Geplante Finanzierung].ID_Massnahme"
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
        dbText "Name" ="[Geplante Finanzierung].ID"
        dbInteger "ColumnWidth" ="1417"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Geplante Finanzierung].ID_Massnahme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Geplante Finanzierung].Kalenderjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MinvonErledigt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Geplante Finanzierung].Erledigt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MittelwertvonErledigt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MaxvonErledigt"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1309
    Bottom =1004
    Left =-1
    Top =-1
    Right =1285
    Bottom =430
    Left =0
    Top =0
    ColumnsShown =541
    Begin
        Left =48
        Top =12
        Right =526
        Bottom =343
        Top =0
        Name ="Geplante Finanzierung"
        Name =""
    End
End
