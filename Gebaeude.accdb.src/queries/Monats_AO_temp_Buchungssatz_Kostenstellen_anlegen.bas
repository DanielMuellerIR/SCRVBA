Operation =3
Name ="MonatsAO_temp_Buchungssatz_Kostenstellen"
Option =0
Having ="(((A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen])=[formulare]![Mon"
    "atsanordnung]![alteID]))"
Begin InputTables
    Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
End
Begin OutputColumns
    Name ="ID aus Buchungen_alt"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]"
    Name ="ID aus Kostenstellen"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
    Name ="ID aus Kostenträger"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenträger]"
    Name ="Kostenstelle_Infoma"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.Kostenstelle_Infoma"
    Name ="Betrag"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
End
Begin Groups
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]"
    GroupLevel =0
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
    GroupLevel =0
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenträger]"
    GroupLevel =0
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.Kostenstelle_Infoma"
    GroupLevel =0
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
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
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Kostenstellen.Kostenstelle_Infoma"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1499
    Bottom =853
    Left =-1
    Top =-1
    Right =1475
    Bottom =309
    Left =0
    Top =0
    ColumnsShown =655
    Begin
        Left =153
        Top =51
        Right =607
        Bottom =269
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
        Name =""
    End
End
