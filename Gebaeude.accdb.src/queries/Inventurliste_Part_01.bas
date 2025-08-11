Operation =1
Option =8
Having ="((([Zuordnung Gebäudebestand zu Bilanz].Grundstück)<>Yes))"
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
    Name ="B_Ergebnisse_Tabelle"
    Name ="B_Abfrage_alle_Ergebnisse"
    Name ="Zuordnung_Abschreibung"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="Zuordnung Gebäudebestand zu Bilanz"
    Name ="M_Kostenstellen"
    Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
End
Begin OutputColumns
    Alias ="Objekt"
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Lieg"
        "enschaften].[Bezeichnung] & \" -> \" & [tbl_100_20_Gebäudeteile].[Gebäudeteil]"
    Alias ="Anlagenklassen-Code"
    Expression ="\"0 SACHANL\""
    Alias ="Bereich"
    Expression ="60"
    Alias ="Kostenstellen-Code"
    Expression ="M_Kostenstellen.Kostenstelle"
    Alias ="Kostenträger-Code"
    Expression ="\"6011130300\""
    Alias ="Sachgruppen-Code"
    Expression ="[Zuordnung Gebäudebestand zu Bilanz].Code"
    Alias ="Erläuterungen 1"
    Expression ="\"Anteil KSt \" & [Anteil]*100 & \"%\""
    Alias ="Erläuterungen 2"
    Expression ="\"Gebäude\""
    Alias ="Anschaffungs-Startdatum"
    Expression ="\"01.01.\" & [tbl_100_20_Gebäudeteile].[Baujahr_real]"
    Expression ="B_Abfrage_alle_Ergebnisse.Nutzungsdauer"
    Alias ="Wert / Preis"
    Expression ="[B_Ergebnisse_Tabelle].[Herstellungskosten]*[anteil]"
    Alias ="aktueller Buchwert"
    Expression ="[Wert ermittelt]*[anteil]"
    Alias ="bisherige AfA"
    Expression ="[B_Ergebnisse_Tabelle].[kumulierte Abschreibung]*[Anteil]"
    Alias ="Datum des Buchwertes"
    Expression ="\"01.01.\" & Year(Now())"
    Expression ="tbl_100_20_Gebäudeteile.BGF"
End
Begin Joins
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="B_Ergebnisse_Tabelle"
    RightTable ="B_Abfrage_alle_Ergebnisse"
    Expression ="B_Ergebnisse_Tabelle.ID_Gebäudeteil = B_Abfrage_alle_Ergebnisse.ID_Gebäudeteil"
    Flag =2
    LeftTable ="B_Ergebnisse_Tabelle"
    RightTable ="Zuordnung_Abschreibung"
    Expression ="B_Ergebnisse_Tabelle.ID_Gebäudeteil = Zuordnung_Abschreibung.ID_Gebäudeteil"
    Flag =2
    LeftTable ="B_Ergebnisse_Tabelle"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="B_Ergebnisse_Tabelle.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Zuordnung Gebäudebestand zu Bilanz"
    Expression ="tbl_100_20_Gebäudeteile.[Zuordnung Bilanz] = [Zuordnung Gebäudebestand zu Bilanz"
        "].ID"
    Flag =2
    LeftTable ="M_Kostenstellen"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst"
    Flag =3
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen."
        "ID_Gebäudeteil"
    Flag =2
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =3
End
Begin Groups
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Lieg"
        "enschaften].[Bezeichnung] & \" -> \" & [tbl_100_20_Gebäudeteile].[Gebäudeteil]"
    GroupLevel =0
    Expression ="\"0 SACHANL\""
    GroupLevel =0
    Expression ="60"
    GroupLevel =0
    Expression ="M_Kostenstellen.Kostenstelle"
    GroupLevel =0
    Expression ="\"6011130300\""
    GroupLevel =0
    Expression ="[Zuordnung Gebäudebestand zu Bilanz].Code"
    GroupLevel =0
    Expression ="\"Anteil KSt \" & [Anteil]*100 & \"%\""
    GroupLevel =0
    Expression ="\"01.01.\" & [tbl_100_20_Gebäudeteile].[Baujahr_real]"
    GroupLevel =0
    Expression ="B_Abfrage_alle_Ergebnisse.Nutzungsdauer"
    GroupLevel =0
    Expression ="[B_Ergebnisse_Tabelle].[Herstellungskosten]*[anteil]"
    GroupLevel =0
    Expression ="[Wert ermittelt]*[anteil]"
    GroupLevel =0
    Expression ="[B_Ergebnisse_Tabelle].[kumulierte Abschreibung]*[Anteil]"
    GroupLevel =0
    Expression ="\"01.01.\" & Year(Now())"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.BGF"
    GroupLevel =0
    Expression ="[Zuordnung Gebäudebestand zu Bilanz].Grundstück"
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
dbMemo "Filter" ="([Inventurliste_Part_01].[Objekt]=\"DRESDENER STR. 24: GS Dresdener Str. -> Flüc"
    "htlingsunterkunft (ehem. Schulgebäude)\")"
Begin
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="10680"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Anlagenklassen-Code"
        dbInteger "ColumnWidth" ="1770"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bereich"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Kostenstellen-Code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sachgruppen-Code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Kostenträger-Code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.BGF"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erläuterungen 2"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2400"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse.Nutzungsdauer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert / Preis"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2790"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="aktueller Buchwert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="bisherige AfA"
        dbInteger "ColumnWidth" ="1815"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Datum des Buchwertes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Anschaffungs-Startdatum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erläuterungen 1"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1755"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =112
    Top =5
    Right =1357
    Bottom =843
    Left =-1
    Top =-1
    Right =1225
    Bottom =607
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =839
        Top =307
        Right =1065
        Bottom =406
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =1149
        Top =339
        Right =1342
        Bottom =445
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =24
        Top =25
        Right =294
        Bottom =378
        Top =0
        Name ="B_Ergebnisse_Tabelle"
        Name =""
    End
    Begin
        Left =440
        Top =38
        Right =724
        Bottom =153
        Top =0
        Name ="B_Abfrage_alle_Ergebnisse"
        Name =""
    End
    Begin
        Left =444
        Top =163
        Right =707
        Bottom =274
        Top =0
        Name ="Zuordnung_Abschreibung"
        Name =""
    End
    Begin
        Left =444
        Top =290
        Right =722
        Bottom =610
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =827
        Top =464
        Right =1121
        Bottom =605
        Top =0
        Name ="Zuordnung Gebäudebestand zu Bilanz"
        Name =""
    End
    Begin
        Left =1240
        Top =161
        Right =1472
        Bottom =305
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =844
        Top =130
        Right =1162
        Bottom =288
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
End
