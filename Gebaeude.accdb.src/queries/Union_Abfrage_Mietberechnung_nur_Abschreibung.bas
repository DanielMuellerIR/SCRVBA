Operation =1
Option =0
Having ="(((M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Jahr)=[Welches Kalkulationsjahr:]"
    "))"
Begin InputTables
    Name ="B_Ergebnisse_D"
    Name ="Zuordnung_Abschreibung"
    Name ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn"
    Name ="M_Bereiche"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Alias ="Objekt"
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[HAus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    Expression ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn.ID_Gebäudeteil"
    Alias ="Kostenart"
    Expression ="\"Abschreibung\""
    Alias ="Betrag"
    Expression ="[Abschreibung Jahr]*[Anteile]*[Anteil]"
    Alias ="sort"
    Expression ="\"B\""
End
Begin Joins
    LeftTable ="B_Ergebnisse_D"
    RightTable ="Zuordnung_Abschreibung"
    Expression ="B_Ergebnisse_D.ID_Gebäudeteil = Zuordnung_Abschreibung.ID_Gebäudeteil"
    Flag =1
    LeftTable ="Zuordnung_Abschreibung"
    RightTable ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn"
    Expression ="Zuordnung_Abschreibung.ID_Gebäudeteil = M_Berechnung_Faktor_bei_Mietende_Mietbeg"
        "inn.ID_Gebäudeteil"
    Flag =2
    LeftTable ="M_Bereiche"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]"
    Flag =3
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Zuordnung_Abschreibung"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Zuordnung_Abschreibung.ID_Gebäudeteil"
    Flag =3
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =3
End
Begin OrderBy
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[HAus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    Flag =0
End
Begin Groups
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[HAus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    GroupLevel =0
    Expression ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="\"Abschreibung\""
    GroupLevel =0
    Expression ="[Abschreibung Jahr]*[Anteile]*[Anteil]"
    GroupLevel =0
    Expression ="\"B\""
    GroupLevel =0
    Expression ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Anteile"
    GroupLevel =0
    Expression ="Zuordnung_Abschreibung.Anteil"
    GroupLevel =0
    Expression ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Jahr"
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
        dbText "Name" ="Kostenart"
        dbInteger "ColumnWidth" ="3090"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sort"
        dbInteger "ColumnWidth" ="780"
        dbInteger "ColumnOrder" ="7"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag"
        dbInteger "ColumnWidth" ="1245"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="8625"
        dbInteger "ColumnOrder" ="1"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn.ID_Gebäudeteil"
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Kostenart "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sort "
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1598
    Bottom =1004
    Left =-1
    Top =-1
    Right =1574
    Bottom =627
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =34
        Top =71
        Right =277
        Bottom =274
        Top =0
        Name ="B_Ergebnisse_D"
        Name =""
    End
    Begin
        Left =342
        Top =55
        Right =565
        Bottom =191
        Top =0
        Name ="Zuordnung_Abschreibung"
        Name =""
    End
    Begin
        Left =686
        Top =37
        Right =978
        Bottom =229
        Top =0
        Name ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn"
        Name =""
    End
    Begin
        Left =1047
        Top =460
        Right =1293
        Bottom =587
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =691
        Top =263
        Right =930
        Bottom =483
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =1039
        Top =160
        Right =1292
        Bottom =310
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =1042
        Top =322
        Right =1296
        Bottom =439
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
