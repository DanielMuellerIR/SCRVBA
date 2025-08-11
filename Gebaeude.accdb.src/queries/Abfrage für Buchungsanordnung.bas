Operation =1
Option =0
Where ="(((A_Buchungen.ID)=F_Variable(\"lng_ID_Buchung\")))"
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
    Expression ="A_Buchungen.Auftragsnummer"
    Expression ="A_Buchungen.AO_Nr"
    Expression ="A_Buchungen.Zahlung"
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
    Alias ="EmpfängerID"
    Expression ="A_Empfänger.ID"
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
    Flag =1
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
        dbText "Name" ="A_Buchungen.Zahlung"
        dbInteger "ColumnWidth" ="1530"
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
    Begin
        dbText "Name" ="EmpfängerID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.AO_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.angelegt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Haushaltsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Ausgabe_ja_nein"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Ausgabe"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Skonto"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.[Einnahme/Ausgabeart]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Auftragsnummer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Betrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Verwendungszweck"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.Anrede"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.[Name, Vorname]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.[PLZ, Ort]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.[Straße, Nr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.Postfach"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.Bankname"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.BLZ"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.[Konto-Nr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.IBAN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.Abbucher"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.PersID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.von_"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.bis_"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Anlage"
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
    Bottom =562
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =251
        Bottom =374
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =445
        Top =339
        Right =736
        Bottom =453
        Top =0
        Name ="M_Verzeichnis Nebenkosten"
        Name =""
    End
    Begin
        Left =457
        Top =159
        Right =700
        Bottom =322
        Top =0
        Name ="A_Empfänger"
        Name =""
    End
    Begin
        Left =857
        Top =71
        Right =1093
        Bottom =337
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
End
