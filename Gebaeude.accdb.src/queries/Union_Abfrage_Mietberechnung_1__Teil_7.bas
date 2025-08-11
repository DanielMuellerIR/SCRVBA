Operation =1
Option =0
Where ="(((tbl_100_20_Gebäudeteile.Mietrelevant)=True))"
Having ="(((M_Sonderleistungen.Haushaltsjahr)=F_Variable(\"lng_Kalk_Jahr\")) AND ((M_Bere"
    "chnung_Faktor_bei_Mietende_Mietbeginn.Jahr)=F_Variable(\"lng_Kalk_Jahr\")))"
Begin InputTables
    Name ="tbl_100_20_Gebäudeteile"
    Name ="M_Bereiche"
    Name ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn"
    Name ="M_Sonderleistungen"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Betriebe"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Alias ="Planjahr"
    Expression ="M_Sonderleistungen.Haushaltsjahr"
    Expression ="M_Betriebe.Betrieb"
    Expression ="M_Bereiche.BereichNr"
    Expression ="M_Bereiche.BereichName"
    Alias ="Objekt"
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Lieg"
        "enschaften].[Bezeichnung] & \" -> \" & [Gebäudeteil]"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Alias ="Kostenart"
    Expression ="M_Sonderleistungen.Rechnungsaussteller"
    Alias ="Betrag"
    Expression ="[M_Sonderleistungen].[Betrag]*[Anteile]"
    Alias ="sort"
    Expression ="\"D\""
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Bereiche"
    Expression ="tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche] = M_Bereiche.Kennummer"
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
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Sonderleistungen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = M_Sonderleistungen.ID_Gebäudeteil"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =3
End
Begin Groups
    Expression ="M_Sonderleistungen.Haushaltsjahr"
    GroupLevel =0
    Expression ="M_Betriebe.Betrieb"
    GroupLevel =0
    Expression ="M_Bereiche.BereichNr"
    GroupLevel =0
    Expression ="M_Bereiche.BereichName"
    GroupLevel =0
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Lieg"
        "enschaften].[Bezeichnung] & \" -> \" & [Gebäudeteil]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="M_Sonderleistungen.Rechnungsaussteller"
    GroupLevel =0
    Expression ="[M_Sonderleistungen].[Betrag]*[Anteile]"
    GroupLevel =0
    Expression ="\"Gebäudereinigung\""
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
        dbText "Name" ="Planjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Bereiche.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Bereiche.BereichName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Kostenart"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4980"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
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
    State =2
    Left =-8
    Top =-31
    Right =1874
    Bottom =991
    Left =-1
    Top =-1
    Right =1850
    Bottom =585
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =22
        Top =38
        Right =245
        Bottom =279
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =342
        Top =493
        Right =581
        Bottom =591
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =343
        Top =42
        Right =728
        Bottom =161
        Top =0
        Name ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn"
        Name =""
    End
    Begin
        Left =340
        Top =168
        Right =728
        Bottom =267
        Top =0
        Name ="M_Sonderleistungen"
        Name =""
    End
    Begin
        Left =342
        Top =277
        Right =731
        Bottom =388
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =650
        Top =527
        Right =852
        Bottom =613
        Top =0
        Name ="M_Betriebe"
        Name =""
    End
    Begin
        Left =342
        Top =394
        Right =567
        Bottom =486
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
