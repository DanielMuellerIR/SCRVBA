Operation =1
Option =0
Begin InputTables
    Name ="B_Abfrage_alle_Ergebnisse_D"
    Name ="Zuordnung_Abschreibung"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_10_Liegenschaften"
End
Begin OutputColumns
    Alias ="Mietobjekt"
    Expression ="IIf(IsNull([Zuordnung_Abschreibung].[ID_Gebäudeteil]),\"KEINEM OBJEKT ZUGEORDNET"
        "!\",[Bezeichnung])"
    Expression ="tbl_100_20_Gebäudeteile.Gebäudeteil"
    Expression ="B_Abfrage_alle_Ergebnisse_D.[Abschreibung Jahr]"
    Expression ="Zuordnung_Abschreibung.Anteil"
    Alias ="Betrag"
    Expression ="[Abschreibung Jahr]*[Anteil]"
    Expression ="Zuordnung_Abschreibung.ID_Gebäudeteil"
End
Begin Joins
    LeftTable ="B_Abfrage_alle_Ergebnisse_D"
    RightTable ="Zuordnung_Abschreibung"
    Expression ="B_Abfrage_alle_Ergebnisse_D.ID_Gebäudeteil = Zuordnung_Abschreibung.ID_Gebäudete"
        "il"
    Flag =2
    LeftTable ="Zuordnung_Abschreibung"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="Zuordnung_Abschreibung.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Flag =2
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =3
End
Begin OrderBy
    Expression ="IIf(IsNull([Zuordnung_Abschreibung].[ID_Gebäudeteil]),\"KEINEM OBJEKT ZUGEORDNET"
        "!\",[Bezeichnung])"
    Flag =0
    Expression ="tbl_100_20_Gebäudeteile.Gebäudeteil"
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
        dbText "Name" ="Zuordnung_Abschreibung.Anteil"
        dbInteger "ColumnWidth" ="915"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Mietobjekt"
        dbInteger "ColumnWidth" ="4785"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse_D.[Abschreibung Jahr]"
        dbInteger "ColumnWidth" ="3030"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Zuordnung_Abschreibung.ID_Gebäudeteil"
        dbInteger "ColumnWidth" ="8610"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3615"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebäudeteil"
        dbInteger "ColumnWidth" ="3300"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Mietobjekt "
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
    Top =0
    ColumnsShown =539
    Begin
        Left =57
        Top =54
        Right =280
        Bottom =246
        Top =0
        Name ="B_Abfrage_alle_Ergebnisse_D"
        Name =""
    End
    Begin
        Left =374
        Top =38
        Right =587
        Bottom =161
        Top =0
        Name ="Zuordnung_Abschreibung"
        Name =""
    End
    Begin
        Left =664
        Top =53
        Right =902
        Bottom =188
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =1011
        Top =66
        Right =1284
        Bottom =320
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
End
