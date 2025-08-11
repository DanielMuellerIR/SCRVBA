Operation =1
Option =8
Having ="((([B_Ergebnisse_Tabelle].[Grundstückswert]*[anteil]) Is Not Null) AND (([Zuordn"
    "ung Gebäudebestand zu Bilanz].Grundstück)=Yes))"
Begin InputTables
    Name ="B_Ergebnisse_Tabelle"
    Name ="B_Abfrage_alle_Ergebnisse"
    Name ="Zuordnung_Abschreibung"
    Name ="Zuordnung Gebäudebestand zu Bilanz"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="M_Kostenstellen"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
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
    Expression ="\"bebautes Grundstück\""
    Alias ="Anschaffungs-Startdatum"
    Expression ="\"\""
    Alias ="Nutzungsdauer_"
    Expression ="\"\""
    Alias ="Wert / Preis"
    Expression ="[B_Ergebnisse_Tabelle].[Grundstückswert]*[anteil]"
    Alias ="aktueller Buchwert"
    Expression ="[B_Ergebnisse_Tabelle].[Grundstückswert]*[anteil]"
    Alias ="bisherige AfA"
    Expression ="0"
    Alias ="Datum des Buchwertes"
    Expression ="\"01.01.\" & Year(Now())"
    Expression ="tbl_100_20_Gebäudeteile.BGF"
End
Begin Joins
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
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
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
    Expression ="\"bebautes Grundstück\""
    GroupLevel =0
    Expression ="\"\""
    GroupLevel =0
    Expression ="[B_Ergebnisse_Tabelle].[Grundstückswert]*[anteil]"
    GroupLevel =0
    Expression ="0"
    GroupLevel =0
    Expression ="\"01.01.\" & Year(Now())"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.BGF"
    GroupLevel =0
    Expression ="B_Ergebnisse_Tabelle.Baujahr_real"
    GroupLevel =0
    Expression ="[B_Ergebnisse_Tabelle].[Grundstückswert]*[anteil]"
    GroupLevel =0
    Expression ="\"01.01.\" & [tbl_100_20_Gebäudeteile].[Baujahr_real]"
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
dbMemo "Filter" ="([Inventurliste_Part_02].[Objekt]=\"DRESDENER STR. 24: GS Dresdener Str. -> Flüc"
    "htlingsunterkunft (ehem. Schulgebäude)\")"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="8100"
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
        dbInteger "ColumnWidth" ="1680"
        dbBoolean "ColumnHidden" ="0"
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
        dbInteger "ColumnWidth" ="2340"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Wert / Preis"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="aktueller Buchwert"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2190"
        dbBoolean "ColumnHidden" ="0"
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
        dbInteger "ColumnWidth" ="1800"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Nutzungsdauer_"
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
    Bottom =666
    Left =0
    Top =0
    ColumnsShown =543
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
        Left =827
        Top =464
        Right =1121
        Bottom =605
        Top =0
        Name ="Zuordnung Gebäudebestand zu Bilanz"
        Name =""
    End
    Begin
        Left =444
        Top =290
        Right =722
        Bottom =591
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =1202
        Top =188
        Right =1434
        Bottom =332
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =814
        Top =328
        Right =1110
        Bottom =453
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =1186
        Top =359
        Right =1367
        Bottom =470
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =810
        Top =155
        Right =1135
        Bottom =295
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
End
