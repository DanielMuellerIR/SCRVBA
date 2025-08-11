Operation =1
Option =0
Where ="((([Bericht Sanierungsstau nach Finanzplanung].Gebäude) Like [Formulare]![Filter"
    " für Sanierungsstau]![Gebäude]) AND (([Bericht Sanierungsstau nach Finanzplanung"
    "].Maßnahme) Like [Formulare]![Filter für Sanierungsstau]![Massnahme]))"
Having ="((([voraussichtliche Kosten gesamt]-Sum([Betrag]))>0))"
Begin InputTables
    Name ="Bericht Sanierungsstau nach Finanzplanung"
End
Begin OutputColumns
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].[ID aus Maßnahmen]"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].ID"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Haus"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Finanzierung"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].[voraussichtliche Kosten gesamt]"
    Alias ="Nnzg"
    Expression ="[voraussichtliche Kosten gesamt]-Sum([Betrag])"
End
Begin Groups
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].[ID aus Maßnahmen]"
    GroupLevel =0
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
    GroupLevel =0
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].ID"
    GroupLevel =0
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Haus"
    GroupLevel =0
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Finanzierung"
    GroupLevel =0
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].[voraussichtliche Kosten gesamt]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbByte "RecordsetType" ="1"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].[ID aus Maßnahmen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Nnzg "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Haus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Finanzierung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].[voraussichtliche Kosten gesamt]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Nnzg"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="4065"
        dbBoolean "ColumnHidden" ="0"
    End
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
    Bottom =214
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =403
        Bottom =274
        Top =0
        Name ="Bericht Sanierungsstau nach Finanzplanung"
        Name =""
    End
End
