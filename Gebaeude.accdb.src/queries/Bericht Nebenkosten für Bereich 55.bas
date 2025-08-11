Operation =1
Option =0
Having ="(((A_Buchungen.Haushaltsjahr)=2010 Or (A_Buchungen.Haushaltsjahr)=2011) AND ((M_"
    "Kostenstellen.Kostenstelle)=60550111) AND ((A_Buchungen.bis_)>#12/31/2009# Or (A"
    "_Buchungen.bis_) Is Null)) OR (((A_Buchungen.Haushaltsjahr)=2010 Or (A_Buchungen"
    ".Haushaltsjahr)=2011) AND ((M_Kostenstellen.Kostenstelle)=60550101) AND ((A_Buch"
    "ungen.bis_)>#12/31/2009# Or (A_Buchungen.bis_) Is Null)) OR (((A_Buchungen.Haush"
    "altsjahr)=2010 Or (A_Buchungen.Haushaltsjahr)=2011) AND ((M_Kostenstellen.Kosten"
    "stelle)=60550106) AND ((A_Buchungen.bis_)>#12/31/2009# Or (A_Buchungen.bis_) Is "
    "Null)) OR (((A_Buchungen.Haushaltsjahr)=2010 Or (A_Buchungen.Haushaltsjahr)=2011"
    ") AND ((M_Kostenstellen.Kostenstelle)=60550301) AND ((A_Buchungen.bis_)>#12/31/2"
    "009# Or (A_Buchungen.bis_) Is Null)) OR (((A_Buchungen.Haushaltsjahr)=2010 Or (A"
    "_Buchungen.Haushaltsjahr)=2011) AND ((M_Kostenstellen.Kostenstelle)=60550101) AN"
    "D ((A_Buchungen.bis_)>#12/31/2009# Or (A_Buchungen.bis_) Is Null)) OR (((A_Buchu"
    "ngen.Haushaltsjahr)=2010 Or (A_Buchungen.Haushaltsjahr)=2011) AND ((M_Kostenstel"
    "len.Kostenstelle)=60550110) AND ((A_Buchungen.bis_)>#12/31/2009# Or (A_Buchungen"
    ".bis_) Is Null)) OR (((A_Buchungen.Haushaltsjahr)=2010 Or (A_Buchungen.Haushalts"
    "jahr)=2011) AND ((M_Kostenstellen.Kostenstelle)=60550109) AND ((A_Buchungen.bis_"
    ")>#12/31/2009# Or (A_Buchungen.bis_) Is Null))"
Begin InputTables
    Name ="A_Buchungen"
    Name ="A_Empfänger"
    Name ="M_Verzeichnis Nebenkosten"
    Name ="Zahlungszyklen"
    Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Name ="M_Kostenstellen"
    Name ="M_Bereiche"
    Name ="Sachbearbeiter"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="M_Betriebe"
    Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
End
Begin OutputColumns
    Expression ="A_Buchungen.Haushaltsjahr"
    Expression ="M_Kostenstellen.Bezeichnung"
    Expression ="M_Kostenstellen.Kostenstelle"
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    Expression ="A_Buchungen.angelegt"
    Alias ="Gesamtbetrag Rechnung"
    Expression ="A_Buchungen.Betrag"
    Alias ="Anteil Kostenstelle"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
    Expression ="A_Buchungen.von_"
    Expression ="A_Buchungen.bis_"
    Alias ="Empfänger"
    Expression ="[Anrede] & IIf(IsNull([Anrede]),\"\",\" \") & [Name, Vorname]"
    Expression ="M_Betriebe.Betrieb"
End
Begin Joins
    LeftTable ="A_Buchungen"
    RightTable ="A_Empfänger"
    Expression ="A_Buchungen.[ID Empfänger] = A_Empfänger.ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="M_Verzeichnis Nebenkosten"
    Expression ="A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID"
    Flag =1
    LeftTable ="A_Buchungen"
    RightTable ="Zahlungszyklen"
    Expression ="A_Buchungen.[ID Fälligkeiten] = Zahlungszyklen.ID"
    Flag =1
    LeftTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    RightTable ="M_Kostenstellen"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen] = M_Kostenstelle"
        "n.Kennummer"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Expression ="A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="Sachbearbeiter"
    Expression ="A_Buchungen.[ID Sachbearbeiter] = Sachbearbeiter.ID"
    Flag =2
    LeftTable ="M_Bereiche"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]"
    Flag =3
    LeftTable ="M_Betriebe"
    RightTable ="M_Bereiche"
    Expression ="M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb"
    Flag =3
    LeftTable ="M_Kostenstellen"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen."
        "ID_Gebäudeteil"
    Flag =3
End
Begin OrderBy
    Expression ="A_Buchungen.Haushaltsjahr"
    Flag =0
    Expression ="M_Kostenstellen.Kostenstelle"
    Flag =0
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    Flag =0
End
Begin Groups
    Expression ="A_Buchungen.Haushaltsjahr"
    GroupLevel =0
    Expression ="M_Kostenstellen.Bezeichnung"
    GroupLevel =0
    Expression ="M_Kostenstellen.Kostenstelle"
    GroupLevel =0
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    GroupLevel =0
    Expression ="A_Buchungen.angelegt"
    GroupLevel =0
    Expression ="A_Buchungen.Betrag"
    GroupLevel =0
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
    GroupLevel =0
    Expression ="A_Buchungen.von_"
    GroupLevel =0
    Expression ="A_Buchungen.bis_"
    GroupLevel =0
    Expression ="[Anrede] & IIf(IsNull([Anrede]),\"\",\" \") & [Name, Vorname]"
    GroupLevel =0
    Expression ="Sachbearbeiter.Name"
    GroupLevel =0
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
    GroupLevel =0
    Expression ="A_Empfänger.[Name, Vorname]"
    GroupLevel =0
    Expression ="Zahlungszyklen.Zyklus"
    GroupLevel =0
    Expression ="IIf(Right(Left([Kostenstelle],4),2)=0,60,Right(Left([Kostenstelle],4),2))"
    GroupLevel =0
    Expression ="M_Betriebe.Betrieb"
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
        dbText "Name" ="M_Kostenstellen.Kostenstelle"
        dbInteger "ColumnWidth" ="1305"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.angelegt"
        dbText "Format" ="Short Date"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
        dbInteger "ColumnWidth" ="4350"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Haushaltsjahr"
        dbInteger "ColumnOrder" ="1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gesamtbetrag Rechnung"
        dbInteger "ColumnWidth" ="2505"
        dbInteger "ColumnOrder" ="6"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Anteil Kostenstelle"
        dbInteger "ColumnWidth" ="1920"
        dbInteger "ColumnOrder" ="7"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Empfänger"
        dbInteger "ColumnWidth" ="3990"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Bezeichnung"
        dbInteger "ColumnWidth" ="4575"
        dbInteger "ColumnOrder" ="3"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Betriebe.Betrieb"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="A_Buchungen.von_"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.bis_"
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
    Bottom =597
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =49
        Top =28
        Right =214
        Bottom =423
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =295
        Top =256
        Right =556
        Bottom =365
        Top =0
        Name ="A_Empfänger"
        Name =""
    End
    Begin
        Left =293
        Top =469
        Right =574
        Bottom =565
        Top =0
        Name ="M_Verzeichnis Nebenkosten"
        Name =""
    End
    Begin
        Left =295
        Top =376
        Right =460
        Bottom =460
        Top =0
        Name ="Zahlungszyklen"
        Name =""
    End
    Begin
        Left =297
        Top =26
        Right =606
        Bottom =155
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
        Name =""
    End
    Begin
        Left =664
        Top =42
        Right =842
        Bottom =187
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =1517
        Top =153
        Right =1695
        Bottom =299
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =294
        Top =159
        Right =538
        Bottom =248
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
    Begin
        Left =1244
        Top =26
        Right =1471
        Bottom =312
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =1735
        Top =201
        Right =1867
        Bottom =299
        Top =0
        Name ="M_Betriebe"
        Name =""
    End
    Begin
        Left =896
        Top =10
        Right =1196
        Bottom =154
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
End
