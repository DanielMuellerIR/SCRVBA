Operation =3
Name ="MonatsAO_temp_Buchungssatz_BuSt"
Option =0
Where ="(((A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungen])=[formulare]![M"
    "onatsanordnung]![alteID]))"
Begin InputTables
    Name ="A_Buchungen_Aufteilung_auf_Buchungsstellen"
    Name ="Buchungsstellen _Doppik"
End
Begin OutputColumns
    Name ="ID aus Buchungsstellen"
    Expression ="A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungsstellen]"
    Name ="ID aus Buchungen_alt"
    Expression ="A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungen]"
    Name ="Betrag"
    Expression ="A_Buchungen_Aufteilung_auf_Buchungsstellen.Betrag"
    Name ="Prod_Nr"
    Expression ="A_Buchungen_Aufteilung_auf_Buchungsstellen.Prod_Nr"
End
Begin Joins
    LeftTable ="A_Buchungen_Aufteilung_auf_Buchungsstellen"
    RightTable ="Buchungsstellen _Doppik"
    Expression ="A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungsstellen] = [Buchungss"
        "tellen _Doppik].Kennummer"
    Flag =1
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
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Buchungsstellen.Prod_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungsstellen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Buchungsstellen.Betrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Buchungsstellen.Sachkonto"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Buchungsstellen _Doppik].Sachkonto"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1882
    Bottom =861
    Left =-1
    Top =-1
    Right =1858
    Bottom =255
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =94
        Top =29
        Right =450
        Bottom =212
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Buchungsstellen"
        Name =""
    End
    Begin
        Left =578
        Top =46
        Right =890
        Bottom =215
        Top =0
        Name ="Buchungsstellen _Doppik"
        Name =""
    End
End
