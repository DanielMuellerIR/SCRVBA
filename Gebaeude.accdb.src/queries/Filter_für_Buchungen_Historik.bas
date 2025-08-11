Operation =1
Option =0
Where ="(((A_Buchungen.ID) Like [formulare]![Filter für Buchungen_Historik]![Betrag]) AN"
    "D ((A_Buchungen.[ID Sachbearbeiter]) Like [formulare]![Filter für Buchungen_Hist"
    "orik]![Sachbearbeiter]) AND ((A_Buchungen.[ID Empfänger]) Like [formulare]![Filt"
    "er für Buchungen_Historik]![Empfänger]) AND ((A_Buchungen.Haushaltsjahr) Like [f"
    "ormulare]![Filter für Buchungen_Historik]![Haushaltsjahr])) OR (((A_Buchungen.[I"
    "D Empfänger]) Is Null))"
Begin InputTables
    Name ="A_Buchungen"
    Name ="M_Verzeichnis Nebenkosten"
End
Begin OutputColumns
    Expression ="A_Buchungen.ID"
    Expression ="A_Buchungen.[ID Sachbearbeiter]"
    Expression ="A_Buchungen.[ID Empfänger]"
    Expression ="A_Buchungen.[ID Buchungsstelle]"
    Expression ="A_Buchungen.[ID Kostenstelle]"
    Expression ="A_Buchungen.[ID Kostenträger]"
    Expression ="A_Buchungen.[ID Fälligkeiten]"
    Expression ="A_Buchungen.AO_Nr"
    Expression ="A_Buchungen.Haushaltsjahr"
    Expression ="A_Buchungen.Betrag"
    Expression ="A_Buchungen.Ausgabe"
    Expression ="A_Buchungen.Ausgabe_ja_nein"
    Expression ="A_Buchungen.Skonto"
    Expression ="A_Buchungen.[Einnahme/Ausgabeart]"
    Expression ="A_Buchungen.Verwendungszweck"
    Expression ="A_Buchungen.Fälligkeit"
    Expression ="A_Buchungen.angelegt"
    Expression ="A_Buchungen.Auftragsnummer"
    Expression ="A_Buchungen.Zahlung"
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    Expression ="A_Buchungen.[ID Nebenkostenart]"
    Expression ="A_Buchungen.von_"
    Expression ="A_Buchungen.bis_"
    Expression ="A_Buchungen.Anlage"
End
Begin Joins
    LeftTable ="A_Buchungen"
    RightTable ="M_Verzeichnis Nebenkosten"
    Expression ="A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID"
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
        dbText "Name" ="A_Buchungen.[ID Nebenkostenart]"
        dbInteger "ColumnWidth" ="1890"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.AO_Nr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1864
    Bottom =996
    Left =-1
    Top =-1
    Right =1832
    Bottom =389
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =435
        Bottom =268
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =642
        Top =14
        Right =857
        Bottom =83
        Top =0
        Name ="M_Verzeichnis Nebenkosten"
        Name =""
    End
End
