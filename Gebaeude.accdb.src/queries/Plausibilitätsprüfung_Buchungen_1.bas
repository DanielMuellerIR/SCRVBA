Operation =1
Option =0
Having ="(((A_Buchungen.Haushaltsjahr)=Year(Now())) And ((A_Buchungen.Betrag-Sum(A_Buchun"
    "gen_Aufteilung_auf_Kostenstellen.Betrag))<>0))"
Begin InputTables
    Name ="A_Buchungen"
    Name ="A_Empfänger"
    Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
End
Begin OutputColumns
    Alias ="Emfpänger"
    Expression ="[Anrede] & \", \" & [Name, Vorname]"
    Expression ="A_Buchungen.angelegt"
    Expression ="A_Buchungen.Verwendungszweck"
    Alias ="Anordnungsbetra"
    Expression ="A_Buchungen.Betrag"
    Alias ="Betrag aufgeteilt"
    Expression ="Sum(A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag)"
    Alias ="Differenz"
    Expression ="A_Buchungen.Betrag-Sum(A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag)"
    Alias ="Text"
    Expression ="\"Gesamtbetrag falsch auftgeteilt\""
    Expression ="A_Buchungen.ID"
End
Begin Joins
    LeftTable ="A_Buchungen"
    RightTable ="A_Empfänger"
    Expression ="A_Buchungen.[ID Empfänger] = A_Empfänger.ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Expression ="A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]"
    Flag =2
End
Begin Groups
    Expression ="[Anrede] & \", \" & [Name, Vorname]"
    GroupLevel =0
    Expression ="A_Buchungen.angelegt"
    GroupLevel =0
    Expression ="A_Buchungen.Verwendungszweck"
    GroupLevel =0
    Expression ="A_Buchungen.Betrag"
    GroupLevel =0
    Expression ="\"Gesamtbetrag falsch auftgeteilt\""
    GroupLevel =0
    Expression ="A_Buchungen.ID"
    GroupLevel =0
    Expression ="A_Buchungen.Haushaltsjahr"
    GroupLevel =0
    Expression ="A_Buchungen.ID"
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
        dbText "Name" ="Differenz"
        dbInteger "ColumnWidth" ="1170"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Anordnungsbetra"
        dbInteger "ColumnWidth" ="1785"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag aufgeteilt"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Emfpänger"
        dbInteger "ColumnWidth" ="4275"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Text"
        dbInteger "ColumnWidth" ="2850"
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
    Bottom =444
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =411
        Bottom =330
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =508
        Top =205
        Right =780
        Bottom =409
        Top =0
        Name ="A_Empfänger"
        Name =""
    End
    Begin
        Left =507
        Top =57
        Right =780
        Bottom =156
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
        Name =""
    End
End
