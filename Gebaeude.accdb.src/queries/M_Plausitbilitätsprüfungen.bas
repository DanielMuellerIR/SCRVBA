Operation =1
Option =0
Where ="(((tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]) Is Null)) OR (((tbl_100_20_"
    "Gebäudeteile.BGF) Is Null Or (tbl_100_20_Gebäudeteile.BGF)=0)) OR ((([Unterabfra"
    "ge für Plausibiltitätsprüfung].NK) Is Null Or ([Unterabfrage für Plausibiltitäts"
    "prüfung].NK)=0))"
Begin InputTables
    Name ="M_Strassenverzeichnis"
    Name ="Unterabfrage für Plausibiltitätsprüfung"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_10_Liegenschaften"
    Name ="Zuordnung_Abschreibung"
    Name ="tbl_100_30_Mietparteien"
    Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
End
Begin OutputColumns
    Alias ="Objekt"
    Expression ="[Bezeichnung] & \": \" & [Gebäudeteil] & \", \" & [Name] & \" \" & [tbl_100_20_G"
        "ebäudeteile].[Haus_Nr]"
    Expression ="tbl_100_30_Mietparteien.Mietpartei"
    Alias ="Kostenstelle"
    Expression ="IIf(IsNull([Kenn_Kostst]),\"X\",\"\")"
    Alias ="Fläche"
    Expression ="IIf(IsNull([BGF]),\"X\",IIf([BGF]=0,\"X\",\"\"))"
    Alias ="Nebenkosten"
    Expression ="IIf(IsNull([NK]),\"X\",\"\")"
End
Begin Joins
    LeftTable ="Unterabfrage für Plausibiltitätsprüfung"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="[Unterabfrage für Plausibiltitätsprüfung].ID_Gebäudeteil = tbl_100_20_Gebäudetei"
        "le.ID_Gebäudeteil"
    Flag =3
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen."
        "ID_Gebäudeteil"
    Flag =1
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Zuordnung_Abschreibung"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Zuordnung_Abschreibung.ID_Gebäudeteil"
    Flag =2
    LeftTable ="tbl_100_30_Mietparteien"
    RightTable ="Zuordnung_Abschreibung"
    Expression ="tbl_100_30_Mietparteien.ID_Mietpartei = Zuordnung_Abschreibung.ID_Mietpartei"
    Flag =3
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
End
Begin Groups
    Expression ="[Bezeichnung] & \": \" & [Gebäudeteil] & \", \" & [Name] & \" \" & [tbl_100_20_G"
        "ebäudeteile].[Haus_Nr]"
    GroupLevel =0
    Expression ="tbl_100_30_Mietparteien.Mietpartei"
    GroupLevel =0
    Expression ="IIf(IsNull([Kenn_Kostst]),\"X\",\"\")"
    GroupLevel =0
    Expression ="IIf(IsNull([BGF]),\"X\",IIf([BGF]=0,\"X\",\"\"))"
    GroupLevel =0
    Expression ="IIf(IsNull([NK]),\"X\",\"\")"
    GroupLevel =0
    Expression ="IIf(IsNull([Kennummer aus Bereiche]),\"X\",\"\")"
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
Begin
    Begin
        dbText "Name" ="Kostenstelle"
        dbInteger "ColumnWidth" ="1320"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Fläche"
        dbInteger "ColumnWidth" ="2580"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gebäudewert_"
        dbInteger "ColumnWidth" ="2115"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Nebenkosten"
        dbInteger "ColumnWidth" ="1485"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbInteger "ColumnWidth" ="5100"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_30_Mietparteien.Mietpartei"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1487
    Bottom =846
    Left =-1
    Top =-1
    Right =1467
    Bottom =384
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =840
        Top =356
        Right =1092
        Bottom =455
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =843
        Top =150
        Right =1087
        Bottom =232
        Top =0
        Name ="Unterabfrage für Plausibiltitätsprüfung"
        Name =""
    End
    Begin
        Left =485
        Top =91
        Right =789
        Bottom =318
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =206
        Top =69
        Right =420
        Bottom =250
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =842
        Top =236
        Right =1088
        Bottom =352
        Top =0
        Name ="Zuordnung_Abschreibung"
        Name =""
    End
    Begin
        Left =1224
        Top =202
        Right =1512
        Bottom =318
        Top =0
        Name ="tbl_100_30_Mietparteien"
        Name =""
    End
    Begin
        Left =883
        Top =5
        Right =1208
        Bottom =145
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
End
