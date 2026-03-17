Operation =1
Option =0
Begin InputTables
    Name ="tbl_10_30_Objekte"
    Name ="tbl_20_10_Aufträge"
    Name ="tbl_10_10_User"
    Name ="tbl_20_20_Vergabe_Art"
    Name ="qry_20_10_DH_Auftr_Liste"
End
Begin OutputColumns
    Expression ="tbl_20_10_Aufträge.angelegt_am"
    Expression ="tbl_20_10_Aufträge.Auftragsnr"
    Expression ="tbl_20_10_Aufträge.Best_Nr_Infoma"
    Expression ="tbl_20_10_Aufträge.Vergabe_Nr_VIS"
    Expression ="tbl_20_10_Aufträge.Mel_Nr_Infoma"
    Expression ="qry_20_10_DH_Auftr_Liste.beauftr_Firma"
    Alias ="Leistungsort"
    Expression ="tbl_10_30_Objekte.Objekt"
    Expression ="tbl_20_10_Aufträge.Produktbezeichnung"
    Expression ="tbl_20_10_Aufträge.Produktart"
    Expression ="tbl_20_10_Aufträge.SK_brutto"
    Expression ="tbl_20_10_Aufträge.Teilnehmer"
    Expression ="tbl_20_10_Aufträge.Bemerkungen"
    Expression ="tbl_20_10_Aufträge.AS_brutto"
    Expression ="tbl_20_10_Aufträge.Auftrags_Dat"
    Expression ="tbl_20_10_Aufträge.SR_brutto"
    Expression ="tbl_20_10_Aufträge.SR_bearbeitet_am"
End
Begin Joins
    LeftTable ="tbl_20_10_Aufträge"
    RightTable ="tbl_10_10_User"
    Expression ="tbl_20_10_Aufträge.ID_User = tbl_10_10_User.ID_User"
    Flag =2
    LeftTable ="tbl_20_10_Aufträge"
    RightTable ="tbl_20_20_Vergabe_Art"
    Expression ="tbl_20_10_Aufträge.ID_Vergabe_Art = tbl_20_20_Vergabe_Art.ID_Vergabe_Art"
    Flag =2
    LeftTable ="tbl_20_10_Aufträge"
    RightTable ="qry_20_10_DH_Auftr_Liste"
    Expression ="tbl_20_10_Aufträge.ID_Auftrag = qry_20_10_DH_Auftr_Liste.ID_Auftrag"
    Flag =1
    LeftTable ="tbl_10_30_Objekte"
    RightTable ="tbl_20_10_Aufträge"
    Expression ="tbl_10_30_Objekte.ID_Obj = tbl_20_10_Aufträge.ID_Obj"
    Flag =1
    LeftTable ="tbl_10_30_Objekte"
    RightTable ="tbl_20_10_Aufträge"
    Expression ="tbl_10_30_Objekte.ID_Obj = tbl_20_10_Aufträge.ID_Obj"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbSingle "ECLScaleFactor" ="1"
Begin
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Auftragsnr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Produktbezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Teilnehmer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Bemerkungen"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.angelegt_am"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.SR_bearbeitet_am"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.[Auftrags_Dat]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Auftrags_Dat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_20_10_DH_Auftr_Liste.beauftr_Firma"
        dbInteger "ColumnWidth" ="10485"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Leistungsort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Best_Nr_Infoma"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Vergabe_Nr_VIS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.SK_brutto"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.SR_brutto"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Mel_Nr_Infoma"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.AS_brutto"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Auftragssumme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.SR_Summe"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Schätzkosten"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sachb "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sachb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Verg-art"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1940
    Bottom =1140
    Left =-1
    Top =-1
    Right =1920
    Bottom =306
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =53
        Top =13
        Right =212
        Bottom =172
        Top =0
        Name ="tbl_10_30_Objekte"
        Name =""
    End
    Begin
        Left =265
        Top =13
        Right =424
        Bottom =286
        Top =0
        Name ="tbl_20_10_Aufträge"
        Name =""
    End
    Begin
        Left =477
        Top =13
        Right =636
        Bottom =172
        Top =0
        Name ="tbl_10_10_User"
        Name =""
    End
    Begin
        Left =689
        Top =13
        Right =848
        Bottom =172
        Top =0
        Name ="tbl_20_20_Vergabe_Art"
        Name =""
    End
    Begin
        Left =901
        Top =13
        Right =1060
        Bottom =172
        Top =0
        Name ="qry_20_10_DH_Auftr_Liste"
        Name =""
    End
End
