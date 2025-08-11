Operation =1
Option =0
Where ="(((M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Jahr)=[Haushaltsjahr]+1) AND ((tb"
    "l_100_20_Gebäudeteile.Mietrelevant)=True))"
Begin InputTables
    Name ="M_Fremdmieten"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="M_Bereiche"
    Name ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Betriebe"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Alias ="Planjahr"
    Expression ="M_Fremdmieten.Haushaltsjahr"
    Expression ="M_Betriebe.Betrieb"
    Expression ="M_Bereiche.BereichNr"
    Expression ="M_Bereiche.BereichName"
    Alias ="Objekt"
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Alias ="Kostenart"
    Expression ="\"Fremdmieten\""
    Alias ="Betrag"
    Expression ="[M_Fremdmieten].[Betrag]*[Anteile]"
    Alias ="sort"
    Expression ="\"B\""
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Bereiche"
    Expression ="tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche] = M_Bereiche.Kennummer"
    Flag =2
    LeftTable ="M_Fremdmieten"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="M_Fremdmieten.[ID_Gebäudeteil] = tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = M_Berechnung_Faktor_bei_Mietende_Mietbe"
        "ginn.ID_Gebäudeteil"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="M_Betriebe"
    RightTable ="M_Bereiche"
    Expression ="M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb"
    Flag =3
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =3
End
Begin Groups
    Expression ="M_Fremdmieten.Haushaltsjahr"
    GroupLevel =0
    Expression ="M_Betriebe.Betrieb"
    GroupLevel =0
    Expression ="M_Bereiche.BereichNr"
    GroupLevel =0
    Expression ="M_Bereiche.BereichName"
    GroupLevel =0
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="\"Fremdmieten\""
    GroupLevel =0
    Expression ="[M_Fremdmieten].[Betrag]*[Anteile]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "RecordsetType" ="0"
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Planjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Bereiche.BereichNr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1350"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="M_Bereiche.BereichName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="5685"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Kostenart"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3480"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="sort"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="780"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag"
        dbInteger "ColumnWidth" ="1815"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="7905"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Betriebe.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäude"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1866
    Bottom =491
    Left =-1
    Top =-1
    Right =1834
    Bottom =192
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =26
        Top =43
        Right =248
        Bottom =253
        Top =0
        Name ="M_Fremdmieten"
        Name =""
    End
    Begin
        Left =342
        Top =56
        Right =646
        Bottom =485
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =767
        Top =426
        Right =1059
        Bottom =559
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =765
        Top =51
        Right =1056
        Bottom =184
        Top =0
        Name ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn"
        Name =""
    End
    Begin
        Left =765
        Top =194
        Right =1055
        Bottom =314
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =1119
        Top =468
        Right =1263
        Bottom =578
        Top =0
        Name ="M_Betriebe"
        Name =""
    End
    Begin
        Left =769
        Top =331
        Right =975
        Bottom =416
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
