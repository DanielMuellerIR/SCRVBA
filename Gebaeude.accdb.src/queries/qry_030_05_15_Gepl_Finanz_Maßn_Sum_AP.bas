Operation =1
Option =0
Having ="((([Geplante Finanzierung].Kalenderjahr)=F_Variable(\"lng_Kalk_Jahr\")) AND (([T"
    "eile der Maßnahmen].Umsetzungsjahr)=F_Variable(\"lng_Kalk_JAhr\")))"
Begin InputTables
    Name ="Geplante Finanzierung"
    Name ="Finanzherkunft"
    Name ="Maßnahmen"
    Name ="Teile der Maßnahmen"
End
Begin OutputColumns
    Expression ="Maßnahmen.ID"
    Expression ="[Geplante Finanzierung].Kalenderjahr"
    Alias ="Voraus_Kosten"
    Expression ="[Geplante Finanzierung].Betrag"
    Alias ="Tats_Voraus_Kosten"
    Expression ="IIf([Finanzherkunft]<>\"Bauunterhaltung\" Or [Sammelbuchungsstelle]=True,[Betrag"
        "],0)"
    Expression ="[Geplante Finanzierung].Sammelbuchungsstelle"
    Expression ="Finanzherkunft.Finanzherkunft"
    Alias ="Sort"
    Expression ="IIf(IsDate([Dat_Abschluss_DB]),\"Z: Abgeschlossene Maßnahmen\",\"A: Noch offene "
        "Maßnahmen\")"
    Expression ="[Teile der Maßnahmen].Umsetzungsjahr"
End
Begin Joins
    LeftTable ="Maßnahmen"
    RightTable ="Teile der Maßnahmen"
    Expression ="Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]"
    Flag =1
    LeftTable ="Maßnahmen"
    RightTable ="Teile der Maßnahmen"
    Expression ="Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]"
    Flag =1
    LeftTable ="Finanzherkunft"
    RightTable ="Geplante Finanzierung"
    Expression ="Finanzherkunft.ID_Fin_Her = [Geplante Finanzierung].ID_Fin_Her"
    Flag =1
    LeftTable ="Maßnahmen"
    RightTable ="Geplante Finanzierung"
    Expression ="Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme"
    Flag =1
End
Begin Groups
    Expression ="Maßnahmen.ID"
    GroupLevel =0
    Expression ="[Geplante Finanzierung].Kalenderjahr"
    GroupLevel =0
    Expression ="[Geplante Finanzierung].Betrag"
    GroupLevel =0
    Expression ="IIf([Finanzherkunft]<>\"Bauunterhaltung\" Or [Sammelbuchungsstelle]=True,[Betrag"
        "],0)"
    GroupLevel =0
    Expression ="[Geplante Finanzierung].Sammelbuchungsstelle"
    GroupLevel =0
    Expression ="Finanzherkunft.Finanzherkunft"
    GroupLevel =0
    Expression ="IIf(IsDate([Dat_Abschluss_DB]),\"Z: Abgeschlossene Maßnahmen\",\"A: Noch offene "
        "Maßnahmen\")"
    GroupLevel =0
    Expression ="[Teile der Maßnahmen].Umsetzungsjahr"
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
dbBoolean "TotalsRow" ="-1"
Begin
    Begin
        dbText "Name" ="[Geplante Finanzierung].Kalenderjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Tats_Voraus_Kosten"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="2295"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Voraus_Kosten "
        dbInteger "ColumnWidth" ="2070"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Voraus_Kosten"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="[Geplante Finanzierung].Sammelbuchungsstelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanzherkunft.Finanzherkunft"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sort"
        dbInteger "ColumnWidth" ="3105"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Umsetzungsjahr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1882
    Bottom =957
    Left =-1
    Top =-1
    Right =1858
    Bottom =543
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =673
        Top =37
        Right =1020
        Bottom =220
        Top =0
        Name ="Geplante Finanzierung"
        Name =""
    End
    Begin
        Left =1159
        Top =70
        Right =1303
        Bottom =214
        Top =0
        Name ="Finanzherkunft"
        Name =""
    End
    Begin
        Left =340
        Top =94
        Right =514
        Bottom =263
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =676
        Top =231
        Right =1007
        Bottom =500
        Top =0
        Name ="Teile der Maßnahmen"
        Name =""
    End
End
