Operation =1
Option =0
Where ="(((A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag)<>0))"
Begin InputTables
    Name ="A_Buchungen"
    Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Name ="M_Kostenstellen"
    Name ="A_Kostenträger"
    Name ="A_Empfänger"
End
Begin OutputColumns
    Expression ="A_Buchungen.ID"
    Alias ="Betrag"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
    Expression ="M_Kostenstellen.Kostenstelle"
    Expression ="M_Kostenstellen.Kostenstelle_Infoma"
    Expression ="A_Kostenträger.Prod_Nr"
    Alias ="Vorsteuerabzug_"
    Expression ="IIf([A_Empfänger]![Vorsteuerabzug]=0,0,IIf([M_Kostenstellen]![Vorsteuerabzug]=0,"
        "0,[M_Kostenstellen]![Vorsteuerabzug]))"
End
Begin Joins
    LeftTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    RightTable ="M_Kostenstellen"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen] = M_Kostenstelle"
        "n.Kennummer"
    Flag =2
    LeftTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    RightTable ="A_Kostenträger"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenträger] = A_Kostenträger."
        "ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Expression ="A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="A_Empfänger"
    Expression ="A_Buchungen.[ID Empfänger] = A_Empfänger.ID"
    Flag =2
End
Begin OrderBy
    Expression ="M_Kostenstellen.Kostenstelle"
    Flag =0
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
        dbText "Name" ="M_Kostenstellen.Kostenstelle"
        dbInteger "ColumnWidth" ="3255"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Vorsteuerabzug_"
        dbInteger "ColumnWidth" ="1755"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag "
        dbInteger "ColumnWidth" ="3675"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Kostenstelle_Infoma"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Kostenträger.Prod_Nr"
        dbInteger "ColumnWidth" ="1365"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-367
    Top =196
    Right =1401
    Bottom =982
    Left =-1
    Top =-1
    Right =1744
    Bottom =478
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =20
        Top =12
        Right =160
        Bottom =374
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =248
        Top =13
        Right =575
        Bottom =159
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
        Name =""
    End
    Begin
        Left =638
        Top =29
        Right =977
        Bottom =197
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =636
        Top =214
        Right =975
        Bottom =358
        Top =0
        Name ="A_Kostenträger"
        Name =""
    End
    Begin
        Left =252
        Top =171
        Right =529
        Bottom =285
        Top =0
        Name ="A_Empfänger"
        Name =""
    End
End
