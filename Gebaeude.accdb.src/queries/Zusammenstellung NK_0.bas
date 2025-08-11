Operation =1
Option =0
Where ="(((M_Kostenstellen.Kostenstelle) Is Not Null))"
Begin InputTables
    Name ="A_Buchungen"
    Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Name ="A_Empfänger"
    Name ="M_Verzeichnis Nebenkosten"
    Name ="A_Sachbearbeiter_Buchung"
    Name ="M_Kostenstellen"
    Name ="Zahlungszyklen"
    Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
End
Begin OutputColumns
    Alias ="Gesamtbetrag"
    Expression ="A_Buchungen.Betrag"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
    Alias ="Empfänger"
    Expression ="[Anrede] & IIf(IsNull([Anrede]),\"\",\" \") & [Name, Vorname]"
    Expression ="A_Empfänger.[Name, Vorname]"
    Expression ="A_Buchungen.angelegt"
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    Alias ="ID_NebKostArt"
    Expression ="[M_Verzeichnis Nebenkosten].ID"
    Expression ="A_Sachbearbeiter_Buchung.Name"
    Expression ="M_Kostenstellen.Kostenstelle"
    Expression ="M_Kostenstellen.Kostenstelle_Infoma"
    Expression ="M_Kostenstellen.Bezeichnung"
    Expression ="A_Buchungen.Haushaltsjahr"
    Expression ="Zahlungszyklen.Zyklus"
    Alias ="BereichNr"
    Expression ="CDbl(IIf(Right(Left([Kostenstelle],4),2)=0,60,Right(Left([Kostenstelle],4),2)))"
End
Begin Joins
    LeftTable ="A_Buchungen"
    RightTable ="A_Empfänger"
    Expression ="A_Buchungen.[ID Empfänger] = A_Empfänger.ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="M_Verzeichnis Nebenkosten"
    Expression ="A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="A_Sachbearbeiter_Buchung"
    Expression ="A_Buchungen.[ID Sachbearbeiter] = A_Sachbearbeiter_Buchung.ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="Zahlungszyklen"
    Expression ="A_Buchungen.[ID Fälligkeiten] = Zahlungszyklen.ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Expression ="A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]"
    Flag =2
    LeftTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    RightTable ="M_Kostenstellen"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen] = M_Kostenstelle"
        "n.Kennummer"
    Flag =2
    LeftTable ="M_Kostenstellen"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst"
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
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
        dbInteger "ColumnWidth" ="3135"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
        dbInteger "ColumnWidth" ="5888"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Kostenstelle"
        dbInteger "ColumnWidth" ="3758"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.angelegt"
        dbText "Format" ="Short Date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
        dbInteger "ColumnWidth" ="4800"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BereichNr"
        dbText "Format" ="General Number"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Empfänger"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gesamtbetrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Sachbearbeiter_Buchung.Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_NebKostArt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.[Name, Vorname]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4388"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ID_NebKostArt"
        dbInteger "ColumnWidth" ="1800"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Haushaltsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Zahlungszyklen.Zyklus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Kostenstelle_Infoma"
        dbInteger "ColumnWidth" ="2370"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1882
    Bottom =861
    Left =-1
    Top =-1
    Right =1858
    Bottom =602
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =61
        Top =73
        Right =350
        Bottom =561
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =790
        Top =28
        Right =1074
        Bottom =169
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
        Name =""
    End
    Begin
        Left =786
        Top =348
        Right =1032
        Bottom =497
        Top =0
        Name ="A_Empfänger"
        Name =""
    End
    Begin
        Left =440
        Top =479
        Right =647
        Bottom =573
        Top =0
        Name ="M_Verzeichnis Nebenkosten"
        Name =""
    End
    Begin
        Left =788
        Top =182
        Right =1036
        Bottom =329
        Top =0
        Name ="A_Sachbearbeiter_Buchung"
        Name =""
    End
    Begin
        Left =1163
        Top =46
        Right =1416
        Bottom =202
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =441
        Top =352
        Right =645
        Bottom =459
        Top =0
        Name ="Zahlungszyklen"
        Name =""
    End
    Begin
        Left =1493
        Top =10
        Right =1762
        Bottom =179
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
End
