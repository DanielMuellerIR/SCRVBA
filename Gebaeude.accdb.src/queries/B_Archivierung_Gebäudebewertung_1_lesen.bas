Operation =1
Option =0
Where ="(((tbl_100_10_Liegenschaften.ID_Gebäude) Between F_Variable(\"lng_ID_Geb_Min\") "
    "And F_Variable(\"lng_ID_Geb_Max\")) AND ((Bewertung_Archiv_1.ID_Gebäudeteil) Bet"
    "ween F_Variable(\"lng_ID_Geb_Teil_Min\") And F_Variable(\"lng_ID_Geb_Teil_Max\")"
    ") AND ((Bewertung_Archiv_1.Datei)=F_Variable(\"dt_Fix_Datum\")))"
Begin InputTables
    Name ="Bewertung_Archiv_1"
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude"
    Expression ="Bewertung_Archiv_1.ID_Gebäudeteil"
    Expression ="Bewertung_Archiv_1.Bezeichnung"
    Expression ="Bewertung_Archiv_1.Straße"
    Expression ="Bewertung_Archiv_1.Gebäudeteil"
    Expression ="Bewertung_Archiv_1.BGF"
    Expression ="Bewertung_Archiv_1.Baujahr"
    Expression ="Bewertung_Archiv_1.Baujahr_real"
    Expression ="Bewertung_Archiv_1.Baujahr_mod"
    Expression ="Bewertung_Archiv_1.[gewöhnliche Nutzungsdauer]"
    Expression ="Bewertung_Archiv_1.[geschätze Nutzungsdauer]"
    Expression ="Bewertung_Archiv_1.Neubauwert_ab_2000"
    Expression ="Bewertung_Archiv_1.PunkteAusstattung"
    Expression ="Bewertung_Archiv_1.Ausstattung"
    Expression ="Bewertung_Archiv_1.Range"
    Expression ="Bewertung_Archiv_1.[Wert von]"
    Expression ="Bewertung_Archiv_1.[Wert bis]"
    Expression ="Bewertung_Archiv_1.[Euro je BGF]"
    Expression ="Bewertung_Archiv_1.Wert1"
    Expression ="Bewertung_Archiv_1.Baunebenkosten"
    Expression ="Bewertung_Archiv_1.Erläuterungen"
    Expression ="Bewertung_Archiv_1.Datei"
    Expression ="Bewertung_Archiv_1.Erläuterung"
    Expression ="Bewertung_Archiv_1.Bewertungsjahr"
    Expression ="Bewertung_Archiv_1.[index ab 2000]"
    Expression ="Bewertung_Archiv_1.[Bewertung abgeschlossen]"
    Expression ="Bewertung_Archiv_1.Index_manuell"
End
Begin Joins
    LeftTable ="Bewertung_Archiv_1"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="Bewertung_Archiv_1.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbBoolean "UseTransaction" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Bewertung_Archiv_1.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Index_manuell"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Straße"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Datei"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.BGF"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.[Wert bis]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.[Euro je BGF]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Baunebenkosten"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Ausstattung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.[Wert von]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Bewertungsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.[gewöhnliche Nutzungsdauer]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.[geschätze Nutzungsdauer]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Neubauwert_ab_2000"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Erläuterungen"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Erläuterung"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4170"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.[Bewertung abgeschlossen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Baujahr_mod"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.PunkteAusstattung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Wert1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.[index ab 2000]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Baujahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Baujahr_real"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1.Range"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.ID_Gebäude"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1650
    Bottom =854
    Left =-1
    Top =-1
    Right =1626
    Bottom =484
    Left =0
    Top =16
    ColumnsShown =539
    Begin
        Left =98
        Top =14
        Right =420
        Bottom =509
        Top =0
        Name ="Bewertung_Archiv_1"
        Name =""
    End
    Begin
        Left =795
        Top =28
        Right =1145
        Bottom =186
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =532
        Top =13
        Right =735
        Bottom =231
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
