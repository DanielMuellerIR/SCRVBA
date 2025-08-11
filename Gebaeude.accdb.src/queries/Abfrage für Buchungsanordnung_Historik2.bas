Operation =1
Option =0
Where ="(((A_Buchungen.ID) Like [formulare]![Buchungsanordnung_Historik].[ID]))"
Begin InputTables
    Name ="A_Buchungen"
    Name ="M_Verzeichnis Nebenkosten"
    Name ="A_Empfänger"
    Name ="Sachbearbeiter"
End
Begin OutputColumns
    Expression ="A_Buchungen.ID"
    Expression ="A_Buchungen.angelegt"
    Expression ="A_Buchungen.Haushaltsjahr"
    Alias ="Sachbearbeiter"
    Expression ="[Name] & \", \" & [Telefon]"
    Expression ="A_Buchungen.Ausgabe_ja_nein"
    Expression ="A_Buchungen.Ausgabe"
    Expression ="A_Buchungen.Skonto"
    Expression ="A_Buchungen.[Einnahme/Ausgabeart]"
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    Expression ="A_Buchungen.Betrag"
    Expression ="A_Buchungen.Verwendungszweck"
    Expression ="A_Empfänger.Anrede"
    Expression ="A_Empfänger.[Name, Vorname]"
    Expression ="A_Empfänger.[PLZ, Ort]"
    Expression ="A_Empfänger.[Straße, Nr]"
    Expression ="A_Empfänger.Postfach"
    Expression ="A_Empfänger.Bankname"
    Expression ="A_Empfänger.BLZ"
    Expression ="A_Empfänger.[Konto-Nr]"
    Expression ="A_Empfänger.IBAN"
    Expression ="A_Empfänger.BIC"
    Expression ="A_Empfänger.Abbucher"
    Expression ="A_Empfänger.PersID"
    Expression ="A_Empfänger.[Name, Vorname]"
    Expression ="A_Buchungen.Auftragsnummer"
    Expression ="A_Buchungen.Zahlung"
    Expression ="A_Buchungen.von_"
    Expression ="A_Buchungen.bis_"
    Expression ="A_Buchungen.Anlage"
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
    RightTable ="Sachbearbeiter"
    Expression ="A_Buchungen.[ID Sachbearbeiter] = Sachbearbeiter.ID"
    Flag =2
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
        dbText "Name" ="A_Empfänger.[Name, Vorname]"
        dbInteger "ColumnWidth" ="2640"
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
        dbText "Name" ="A_Buchungen.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.BIC"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sachbearbeiter"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1890
    Bottom =1004
    Left =-1
    Top =-1
    Right =1866
    Bottom =539
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =251
        Bottom =416
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =336
        Top =338
        Right =600
        Bottom =444
        Top =0
        Name ="M_Verzeichnis Nebenkosten"
        Name =""
    End
    Begin
        Left =332
        Top =113
        Right =532
        Bottom =318
        Top =0
        Name ="A_Empfänger"
        Name =""
    End
    Begin
        Left =670
        Top =22
        Right =1011
        Bottom =208
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
End
