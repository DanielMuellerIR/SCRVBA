Operation =3
Name ="MonatsAO_temp_Buchungssatz_fällig"
Option =0
Having ="(((A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen])=[formulare]![Mona"
    "tsanordnung]![alteID]) AND ((A_Buchungen_Aufteilung_auf_Fälligkeiten.sofort)=Yes"
    "))"
Begin InputTables
    Name ="A_Buchungen_Aufteilung_auf_Fälligkeiten"
End
Begin OutputColumns
    Name ="ID aus Buchungen_alt"
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen]"
    Name ="sofort"
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.sofort"
    Name ="andere Fälligkeit"
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.[andere Fälligkeit]"
    Alias ="Fälligkeitsdatum"
    Name ="Fälligkeitsdatum"
    Expression ="Null"
End
Begin Groups
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen]"
    GroupLevel =0
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.sofort"
    GroupLevel =0
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.[andere Fälligkeit]"
    GroupLevel =0
    Expression ="Null"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbBoolean "UseTransaction" ="0"
dbByte "Orientation" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="A_Buchungen.Verwendungszweck"
        dbInteger "ColumnWidth" ="4665"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Auftragsnummer"
        dbInteger "ColumnWidth" ="1725"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Zahlung"
        dbInteger "ColumnWidth" ="1530"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Fälligkeiten.[andere Fälligkeit]"
        dbInteger "ColumnWidth" ="1770"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
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
    Bottom =230
    Left =0
    Top =0
    ColumnsShown =655
    Begin
        Left =38
        Top =6
        Right =407
        Bottom =128
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Fälligkeiten"
        Name =""
    End
End
