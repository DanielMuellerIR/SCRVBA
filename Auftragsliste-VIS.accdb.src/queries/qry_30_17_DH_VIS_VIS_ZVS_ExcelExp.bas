Operation =1
Option =0
Where ="(((tbl_20_10_Aufträge.Schätzkosten) Between 250 And 15000))"
Begin InputTables
    Name ="tbl_20_10_Aufträge"
    Name ="tbl_10_10_User"
    Name ="tbl_20_20_Vergabe_Art"
    Name ="qry_20_10_DH_Auftr_Liste"
    Name ="tbl_10_30_Objekte"
End
Begin OutputColumns
    Expression ="tbl_20_10_Aufträge.angelegt_am"
    Alias ="Sachb"
    Expression ="[Anrede] & \" \" & [tbl_10_10_User].[Username]"
    Expression ="tbl_20_10_Aufträge.Auftragsnr"
    Expression ="qry_20_10_DH_Auftr_Liste.beauftr_Firma"
    Alias ="Leistungsort"
    Expression ="tbl_10_30_Objekte.Objekt"
    Expression ="tbl_20_10_Aufträge.Produktbezeichnung"
    Expression ="tbl_20_10_Aufträge.Schätzkosten"
    Alias ="Verg-art"
    Expression ="[Vergabeart] & \"(\" & [Vergabe_Grundlage] & \")\""
    Expression ="tbl_20_10_Aufträge.Teilnehmer"
    Expression ="tbl_20_10_Aufträge.Auftragssumme"
    Expression ="tbl_20_10_Aufträge.Auftrags_Dat"
    Expression ="tbl_20_10_Aufträge.SR_Summe"
    Expression ="tbl_20_10_Aufträge.SR_bearbeitet_am"
    Expression ="tbl_20_10_Aufträge.Bemerkungen"
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
        dbText "Name" ="tbl_20_10_Aufträge.Schätzkosten"
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
        dbText "Name" ="tbl_20_10_Aufträge.Auftragssumme"
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
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.SR_Summe"
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
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Leistungsort"
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
    Right =1916
    Bottom =460
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =517
        Top =47
        Right =774
        Bottom =478
        Top =0
        Name ="tbl_20_10_Aufträge"
        Name =""
    End
    Begin
        Left =1129
        Top =53
        Right =1310
        Bottom =285
        Top =0
        Name ="tbl_10_10_User"
        Name =""
    End
    Begin
        Left =1132
        Top =330
        Right =1311
        Bottom =446
        Top =0
        Name ="tbl_20_20_Vergabe_Art"
        Name =""
    End
    Begin
        Left =145
        Top =44
        Right =408
        Bottom =262
        Top =0
        Name ="qry_20_10_DH_Auftr_Liste"
        Name =""
    End
    Begin
        Left =1642
        Top =219
        Right =1930
        Bottom =507
        Top =0
        Name ="tbl_10_30_Objekte"
        Name =""
    End
End
