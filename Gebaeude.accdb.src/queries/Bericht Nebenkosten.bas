Operation =1
Option =8
Where ="(((A_Buchungen.angelegt)<=CDate(F_Variable(\"dt_RE_Bis\"))) AND ((A_Buchungen.Ha"
    "ushaltsjahr) Between F_Variable(\"lng_Kalk_Jahr_Min\") And F_Variable(\"lng_Kalk"
    "_Jahr_Max\")) AND ((M_Bereiche.Kennummer) Between F_Variable(\"lng_Ber_Nr_Min\")"
    " And F_Variable(\"lng_Ber_Nr_Max\")) AND (([M_Verzeichnis Nebenkosten].ID) Betwe"
    "en F_Variable(\"lng_ID_Kostart_Min\") And F_Variable(\"lng_ID_Kostart_Max\")) AN"
    "D ((A_Empfänger.ID) Between F_Variable(\"lng_ID_Empf_Min\") And F_Variable(\"lng"
    "_ID_Empf_Max\")) AND ((M_Kostenstellen.Kennummer) Between F_Variable(\"lng_ID_Ko"
    "stst_Min\") And F_Variable(\"lng_ID_Kostst_Max\")) AND ((Zahlungszyklen.ID) Betw"
    "een F_Variable(\"lng_ID_ZahlZykl_Min\") And F_Variable(\"lng_ID_ZahlZykl_Max\"))"
    " AND ((M_Betriebe.ID_Betrieb) Between F_Variable(\"lng_Betr_Nr_Min\") And F_Vari"
    "able(\"lng_Betr_Nr_Max\")) AND ((F_Variable(\"lng_Kalk_Jahr_Min\")>=Year([Datum_"
    "von]))=True) AND ((F_Variable(\"lng_Kalk_Jahr_Max\")<=Year([Datum_bis]))=True))"
Begin InputTables
    Name ="M_Betriebe"
    Name ="M_Bereiche"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="A_Buchungen"
    Name ="A_Empfänger"
    Name ="M_Verzeichnis Nebenkosten"
    Name ="Zahlungszyklen"
    Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Name ="M_Kostenstellen"
    Name ="Sachbearbeiter"
    Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
End
Begin OutputColumns
    Alias ="ID_Buch"
    Expression ="A_Buchungen.ID"
    Alias ="ID_KS"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
    Alias ="Gesamtbetrag"
    Expression ="A_Buchungen.Betrag"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
    Expression ="A_Buchungen.angelegt"
    Alias ="Empfänger"
    Expression ="[Anrede] & IIf(IsNull([Anrede]),\"\",\" \") & [Name, Vorname]"
    Expression ="Sachbearbeiter.Name"
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    Expression ="M_Kostenstellen.Kostenstelle"
    Expression ="M_Kostenstellen.Bezeichnung"
    Expression ="A_Buchungen.Haushaltsjahr"
    Expression ="Zahlungszyklen.Zyklus"
    Expression ="M_Bereiche.Kennummer"
    Alias ="Betr_Bereich"
    Expression ="[Betrieb] & \" - \" & [BereichNr] & \": \" & [BereichName]"
    Expression ="M_Bereiche.BereichNr"
    Expression ="A_Buchungen.Verwendungszweck"
End
Begin Joins
    LeftTable ="M_Bereiche"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]"
    Flag =3
    LeftTable ="A_Buchungen"
    RightTable ="A_Empfänger"
    Expression ="A_Buchungen.[ID Empfänger] = A_Empfänger.ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="M_Verzeichnis Nebenkosten"
    Expression ="A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="Zahlungszyklen"
    Expression ="A_Buchungen.[ID Fälligkeiten] = Zahlungszyklen.ID"
    Flag =2
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
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
        dbInteger "ColumnWidth" ="3345"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
        dbInteger "ColumnWidth" ="2070"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Kostenstelle"
        dbInteger "ColumnWidth" ="1305"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
        dbInteger "ColumnWidth" ="2130"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="Gesamtbetrag"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="Empfänger"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Bezeichnung"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="5280"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="A_Buchungen.Haushaltsjahr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="12"
    End
    Begin
        dbText "Name" ="Zahlungszyklen.Zyklus"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="15"
    End
    Begin
        dbText "Name" ="A_Buchungen.Verwendungszweck"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1440"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="19"
    End
    Begin
        dbText "Name" ="M_Bereiche.Kennummer"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="16"
    End
    Begin
        dbText "Name" ="A_Buchungen.angelegt"
        dbText "Format" ="Short Date"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="M_Bereiche.BereichNr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="18"
    End
    Begin
        dbText "Name" ="Betr_Bereich "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betr_Bereich"
        dbInteger "ColumnWidth" ="3810"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="17"
    End
    Begin
        dbText "Name" ="ID_KS "
        dbInteger "ColumnWidth" ="2070"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_KS"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1275"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="ID_Buch"
        dbInteger "ColumnWidth" ="1170"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="Sachbearbeiter.Name"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="8"
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
    Bottom =599
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =1702
        Top =255
        Right =1846
        Bottom =399
        Top =0
        Name ="M_Betriebe"
        Name =""
    End
    Begin
        Left =1503
        Top =208
        Right =1655
        Bottom =367
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =1260
        Top =80
        Right =1463
        Bottom =290
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =18
        Top =141
        Right =210
        Bottom =540
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =294
        Top =314
        Right =546
        Bottom =424
        Top =0
        Name ="A_Empfänger"
        Name =""
    End
    Begin
        Left =297
        Top =544
        Right =552
        Bottom =632
        Top =0
        Name ="M_Verzeichnis Nebenkosten"
        Name =""
    End
    Begin
        Left =296
        Top =432
        Right =550
        Bottom =530
        Top =0
        Name ="Zahlungszyklen"
        Name =""
    End
    Begin
        Left =293
        Top =80
        Right =608
        Bottom =195
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
        Name =""
    End
    Begin
        Left =638
        Top =96
        Right =848
        Bottom =241
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =291
        Top =202
        Right =549
        Bottom =302
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
    Begin
        Left =901
        Top =64
        Right =1202
        Bottom =235
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
End
