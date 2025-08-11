Operation =1
Option =0
Having ="(((Count(A_Buchungen_Aufteilung_auf_Fälligkeiten.Fälligkeitsdatum))>0) AND ((A_B"
    "uchungen.Haushaltsjahr)=Year(Now())))"
Begin InputTables
    Name ="A_Buchungen_Aufteilung_auf_Fälligkeiten"
    Name ="A_Buchungen"
    Name ="A_Empfänger"
    Name ="Zahlungszyklen"
End
Begin OutputColumns
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen]"
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.Betrag"
    Alias ="Anzahl von Fälligkeitsdatum"
    Expression ="Count(A_Buchungen_Aufteilung_auf_Fälligkeiten.Fälligkeitsdatum)"
    Expression ="A_Buchungen.Haushaltsjahr"
    Expression ="A_Buchungen.angelegt"
    Expression ="A_Buchungen.Verwendungszweck"
    Alias ="Empfänger"
    Expression ="[Anrede] & \", \" & [Name, Vorname]"
    Expression ="Zahlungszyklen.Vervielfältiger"
    Expression ="Zahlungszyklen.Zyklus"
End
Begin Joins
    LeftTable ="A_Buchungen"
    RightTable ="A_Empfänger"
    Expression ="A_Buchungen.[ID Empfänger] = A_Empfänger.ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="A_Buchungen_Aufteilung_auf_Fälligkeiten"
    Expression ="A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen]"
    Flag =3
    LeftTable ="Zahlungszyklen"
    RightTable ="A_Buchungen"
    Expression ="Zahlungszyklen.ID = A_Buchungen.[ID Fälligkeiten]"
    Flag =3
End
Begin Groups
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen]"
    GroupLevel =0
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.Betrag"
    GroupLevel =0
    Expression ="A_Buchungen.Haushaltsjahr"
    GroupLevel =0
    Expression ="A_Buchungen.angelegt"
    GroupLevel =0
    Expression ="A_Buchungen.Verwendungszweck"
    GroupLevel =0
    Expression ="[Anrede] & \", \" & [Name, Vorname]"
    GroupLevel =0
    Expression ="Zahlungszyklen.Vervielfältiger"
    GroupLevel =0
    Expression ="Zahlungszyklen.Zyklus"
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
        dbText "Name" ="Anzahl von Fälligkeitsdatum"
        dbInteger "ColumnWidth" ="2850"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Haushaltsjahr"
        dbInteger "ColumnWidth" ="1440"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Empfänger"
        dbInteger "ColumnWidth" ="3255"
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
    Bottom =438
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =393
        Bottom =128
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Fälligkeiten"
        Name =""
    End
    Begin
        Left =551
        Top =13
        Right =935
        Bottom =300
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =1065
        Top =69
        Right =1256
        Bottom =251
        Top =0
        Name ="A_Empfänger"
        Name =""
    End
    Begin
        Left =322
        Top =267
        Right =418
        Bottom =359
        Top =0
        Name ="Zahlungszyklen"
        Name =""
    End
End
