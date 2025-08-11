Operation =3
Name ="A_Buchungen"
Option =0
Begin InputTables
    Name ="MonatsAO_temp_Buchungssatz"
End
Begin OutputColumns
    Alias ="ID_SB"
    Name ="ID Sachbearbeiter"
    Expression ="[formulare]![Monatsanordnung]![IDSachbearbeiter]"
    Name ="ID Empfänger"
    Expression ="MonatsAO_temp_Buchungssatz.[ID Empfänger]"
    Name ="ID Fälligkeiten"
    Expression ="MonatsAO_temp_Buchungssatz.[ID Fälligkeiten]"
    Alias ="Haushaltsjahr"
    Name ="Haushaltsjahr"
    Expression ="Year(Now())"
    Name ="Ausgabe"
    Expression ="MonatsAO_temp_Buchungssatz.Ausgabe"
    Name ="Ausgabe_ja_nein"
    Expression ="MonatsAO_temp_Buchungssatz.Ausgabe_ja_nein"
    Name ="Skonto"
    Expression ="MonatsAO_temp_Buchungssatz.Skonto"
    Name ="Verwendungszweck"
    Expression ="MonatsAO_temp_Buchungssatz.Verwendungszweck"
    Name ="Fälligkeit"
    Expression ="MonatsAO_temp_Buchungssatz.Fälligkeit"
    Name ="Auftragsnummer"
    Expression ="MonatsAO_temp_Buchungssatz.Auftragsnummer"
    Name ="Zahlung"
    Expression ="MonatsAO_temp_Buchungssatz.Zahlung"
    Name ="ID Nebenkostenart"
    Expression ="MonatsAO_temp_Buchungssatz.[ID Nebenkostenart]"
    Name ="Anlage"
    Expression ="MonatsAO_temp_Buchungssatz.Anlage"
    Alias ="Ausdr1"
    Name ="Betrag"
    Expression ="[formulare]![Monatsanordnung]![Anordnungsbetrag]"
    Alias ="Ausdr2"
    Name ="angelegt"
    Expression ="[formulare]![Monatsanordnung]![angelegt_neu]"
    Alias ="Ausdr3"
    Name ="von_"
    Expression ="[formulare]![Monatsanordnung]![von_]"
    Alias ="Ausdr4"
    Name ="bis_"
    Expression ="[formulare]![Monatsanordnung]![bis_]"
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
        dbText "Name" ="Haushaltsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MonatsAO_temp_Buchungssatz.[ID Sachbearbeiter]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_SB"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =417
    Top =19
    Right =1605
    Bottom =779
    Left =-1
    Top =-1
    Right =1164
    Bottom =263
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =84
        Top =30
        Right =688
        Bottom =253
        Top =0
        Name ="MonatsAO_temp_Buchungssatz"
        Name =""
    End
End
