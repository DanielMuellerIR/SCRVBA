Operation =1
Option =0
Where ="(((Finanzherkunft.Finanzherkunft)<>\"Bauunterhaltung\")) OR ((([Geplante Finanzi"
    "erung].Sammelbuchungsstelle)=True))"
Begin InputTables
    Name ="Geplante Finanzierung"
    Name ="Finanzherkunft"
    Name ="Maßnahmen"
End
Begin OutputColumns
    Expression ="Maßnahmen.ID"
    Expression ="[Geplante Finanzierung].Kalenderjahr"
    Alias ="SummevonBetrag"
    Expression ="Sum([Geplante Finanzierung].Betrag)"
End
Begin Joins
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
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "Filter" ="([Abfrage1].[Kalenderjahr]=2017)"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="[Geplante Finanzierung].Kalenderjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SummevonBetrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.ID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1413
    Bottom =1004
    Left =-1
    Top =-1
    Right =1389
    Bottom =493
    Left =0
    Top =0
    ColumnsShown =541
    Begin
        Left =273
        Top =129
        Right =620
        Bottom =386
        Top =0
        Name ="Geplante Finanzierung"
        Name =""
    End
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
End
