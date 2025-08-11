Operation =1
Option =0
Begin InputTables
    Name ="Zuordnung_Abschreibung_1"
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Alias ="Mietobjekt"
    Expression ="Zuordnung_Abschreibung_1.Bezeichnung"
    Expression ="tbl_100_20_Gebäudeteile.Gebäudeteil"
    Expression ="Zuordnung_Abschreibung_1.Anteil"
    Expression ="Zuordnung_Abschreibung_1.[Abschreibung Jahr]"
    Alias ="Betrag"
    Expression ="CCur(Nz([Abschreibung Jahr]))*CDbl(Nz([Anteil]))"
End
Begin Joins
    LeftTable ="Zuordnung_Abschreibung_1"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="Zuordnung_Abschreibung_1.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Flag =2
End
Begin OrderBy
    Expression ="Zuordnung_Abschreibung_1.Bezeichnung"
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
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Zuordnung_Abschreibung_1.Mietobjekt"
        dbInteger "ColumnWidth" ="4815"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Zuordnung_Abschreibung_1.Anteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Zuordnung_Abschreibung_1.[Abschreibung Jahr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Mietobjekt"
        dbInteger "ColumnWidth" ="4815"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschreibung Jahr_ "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Abschreibung Jahr_]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschreibung_Jahr "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschreibung_Jahr_ "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschreibung_Jahr_"
        dbInteger "ColumnWidth" ="1965"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Fehler "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Fehler"
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
    Bottom =388
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =338
        Bottom =299
        Top =0
        Name ="Zuordnung_Abschreibung_1"
        Name =""
    End
    Begin
        Left =411
        Top =52
        Right =818
        Bottom =207
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
