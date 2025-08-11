Operation =1
Option =0
Having ="((([geplante Finanzierung].ID_Teilmassnahme) In (SELECT [ID_Teilmassnahme] FROM "
    "[geplante Finanzierung] As Tmp GROUP BY [ID_Teilmassnahme],[Kalenderjahr],[Betra"
    "g] HAVING Count(*)>1  And [Kalenderjahr] = [geplante Finanzierung].[Kalenderjahr"
    "] And [Betrag] = [geplante Finanzierung].[Betrag])))"
Begin InputTables
    Name ="geplante Finanzierung"
End
Begin OutputColumns
    Expression ="[geplante Finanzierung].ID_Teilmassnahme"
    Expression ="[geplante Finanzierung].Kalenderjahr"
    Expression ="[geplante Finanzierung].Betrag"
    Alias ="LetzterWertvonID"
    Expression ="Last([geplante Finanzierung].ID)"
End
Begin OrderBy
    Expression ="[geplante Finanzierung].ID_Teilmassnahme"
    Flag =0
    Expression ="[geplante Finanzierung].Kalenderjahr"
    Flag =0
    Expression ="[geplante Finanzierung].Betrag"
    Flag =0
End
Begin Groups
    Expression ="[geplante Finanzierung].ID_Teilmassnahme"
    GroupLevel =0
    Expression ="[geplante Finanzierung].Kalenderjahr"
    GroupLevel =0
    Expression ="[geplante Finanzierung].Betrag"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="1"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="[geplante Finanzierung].[ID_Teilmassnahme]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[geplante Finanzierung].ID_Teilmassnahme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[geplante Finanzierung].[Kalenderjahr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[geplante Finanzierung].[Betrag]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[geplante Finanzierung].Kalenderjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[geplante Finanzierung].Betrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="LetzterWertvonID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1460
    Bottom =996
    Left =-1
    Top =-1
    Right =1428
    Bottom =547
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="geplante Finanzierung"
        Name =""
    End
End
