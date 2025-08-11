Operation =1
Option =0
Begin InputTables
    Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Name ="A_Buchungen"
    Name ="M_Verzeichnis Nebenkosten"
    Name ="A_Empfänger"
    Name ="Zahlungszyklen"
End
Begin OutputColumns
    Expression ="A_Buchungen.Haushaltsjahr"
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
    Expression ="A_Empfänger.[Name, Vorname]"
    Alias ="ID_Empf"
    Expression ="A_Empfänger.ID"
    Expression ="Zahlungszyklen.Zyklus"
    Alias ="ID_Zyklus"
    Expression ="Zahlungszyklen.ID"
    Expression ="Zahlungszyklen.Vervielfältiger"
    Alias ="Betrag"
    Expression ="Sum(A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag)"
    Alias ="ID_Nebenkosten"
    Expression ="[M_Verzeichnis Nebenkosten].ID"
End
Begin Joins
    LeftTable ="A_Buchungen"
    RightTable ="M_Verzeichnis Nebenkosten"
    Expression ="A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="A_Empfänger"
    Expression ="A_Buchungen.[ID Empfänger] = A_Empfänger.ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="Zahlungszyklen"
    Expression ="A_Buchungen.[ID Fälligkeiten] = Zahlungszyklen.ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Expression ="A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]"
    Flag =3
End
Begin Groups
    Expression ="A_Buchungen.Haushaltsjahr"
    GroupLevel =0
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    GroupLevel =0
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
    GroupLevel =0
    Expression ="A_Empfänger.[Name, Vorname]"
    GroupLevel =0
    Expression ="A_Empfänger.ID"
    GroupLevel =0
    Expression ="Zahlungszyklen.Zyklus"
    GroupLevel =0
    Expression ="Zahlungszyklen.ID"
    GroupLevel =0
    Expression ="Zahlungszyklen.Vervielfältiger"
    GroupLevel =0
    Expression ="[M_Verzeichnis Nebenkosten].ID"
    GroupLevel =0
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]"
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
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
        dbInteger "ColumnWidth" ="4350"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.[Name, Vorname]"
        dbInteger "ColumnOrder" ="3"
        dbInteger "ColumnWidth" ="4155"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Haushaltsjahr"
        dbInteger "ColumnWidth" ="1440"
        dbInteger "ColumnOrder" ="1"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Zahlungszyklen.Zyklus"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Nebenkosten"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Zyklus "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
        dbInteger "ColumnOrder" ="7"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Zyklus"
        dbInteger "ColumnWidth" ="1710"
        dbInteger "ColumnOrder" ="6"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Zahlungszyklen.Vervielfältiger"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Empf "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Empf"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag "
        dbInteger "ColumnWidth" ="2280"
        dbInteger "ColumnOrder" ="0"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1874
    Bottom =992
    Left =-1
    Top =-1
    Right =1850
    Bottom =498
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =16
        Top =39
        Right =336
        Bottom =186
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
        Name =""
    End
    Begin
        Left =383
        Top =39
        Right =607
        Bottom =489
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =706
        Top =342
        Right =1037
        Bottom =454
        Top =0
        Name ="M_Verzeichnis Nebenkosten"
        Name =""
    End
    Begin
        Left =712
        Top =23
        Right =998
        Bottom =124
        Top =0
        Name ="A_Empfänger"
        Name =""
    End
    Begin
        Left =709
        Top =135
        Right =992
        Bottom =249
        Top =0
        Name ="Zahlungszyklen"
        Name =""
    End
End
