Operation =1
Option =2
Where ="(((tbl_100_20_Gebäudeteile.ID_Gebäudeteil) Is Not Null) AND ((Hochrechnung_Neben"
    "kosten_2.Haushaltsjahr)=F_Variable(\"lng_NK_Jahr\")) AND ((Year([Mietende])) Is "
    "Null Or (Year([Mietende]))>=F_Variable(\"lng_Kalk_Jahr\")) AND ((tbl_100_20_Gebä"
    "udeteile.Mietrelevant)=True))"
Begin InputTables
    Name ="Hochrechnung_Nebenkosten_2"
    Name ="M_Kostenstellen"
    Name ="Hochrechnung_Nebenkosten_4a"
    Name ="M_Bereiche"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Betriebe"
    Name ="M_Strassenverzeichnis"
    Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
End
Begin OutputColumns
    Alias ="Planjahr"
    Expression ="F_Variable(\"lng_Kalk_Jahr\")"
    Expression ="M_Betriebe.Betrieb"
    Expression ="M_Bereiche.BereichNr"
    Expression ="M_Bereiche.BereichName"
    Alias ="Objekt"
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Lieg"
        "enschaften].[Bezeichnung] & \" -> \" & [Gebäudeteil]"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Expression ="Hochrechnung_Nebenkosten_2.Nebenkosten_Art"
    Alias ="Kosten"
    Expression ="IIf(IsNull(IIf(IsNull([steigerungssatz]),0,IIf([Hochrechnung_Nebenkosten_2].[Hau"
        "shaltsjahr]=[Hochrechnung_Nebenkosten_4a].[Kalkulationsjahr],0,[steigerungssatz]"
        "))),0,IIf(IsNull([steigerungssatz]),0,IIf([Hochrechnung_Nebenkosten_2].[Haushalt"
        "sjahr]=[Hochrechnung_Nebenkosten_4a].[Kalkulationsjahr],0,[steigerungssatz]))*(I"
        "If([vervielfältiger]=1,[summe von betrag],([summe von betrag]/[anzahl von betrag"
        "])*[vervielfältiger])))+(IIf([vervielfältiger]=1,[summe von betrag],([summe von "
        "betrag]/[anzahl von betrag])*[vervielfältiger]))"
    Alias ="sort"
    Expression ="\"C\""
End
Begin Joins
    LeftTable ="Hochrechnung_Nebenkosten_2"
    RightTable ="M_Kostenstellen"
    Expression ="Hochrechnung_Nebenkosten_2.[ID aus Kostenstellen] = M_Kostenstellen.Kennummer"
    Flag =2
    LeftTable ="Hochrechnung_Nebenkosten_2"
    RightTable ="Hochrechnung_Nebenkosten_4a"
    Expression ="Hochrechnung_Nebenkosten_2.ID_Nebenkosten = Hochrechnung_Nebenkosten_4a.Nebenkos"
        "tenart"
    Flag =2
    LeftTable ="M_Bereiche"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]"
    Flag =3
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="M_Betriebe"
    RightTable ="M_Bereiche"
    Expression ="M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb"
    Flag =3
    LeftTable ="M_Kostenstellen"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen."
        "ID_Gebäudeteil"
    Flag =3
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =3
End
Begin OrderBy
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Lieg"
        "enschaften].[Bezeichnung] & \" -> \" & [Gebäudeteil]"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "RecordsetType" ="0"
dbBoolean "TotalsRow" ="-1"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="M_Bereiche.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Bereiche.BereichName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3810"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_2.Nebenkosten_Art"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4725"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Kosten"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="2310"
        dbBoolean "ColumnHidden" ="0"
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
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="6165"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Betriebe.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Planjahr "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Planjahr"
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
    Right =1516
    Bottom =861
    Left =-1
    Top =-1
    Right =1492
    Bottom =534
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =18
        Top =90
        Right =271
        Bottom =276
        Top =0
        Name ="Hochrechnung_Nebenkosten_2"
        Name =""
    End
    Begin
        Left =325
        Top =107
        Right =546
        Bottom =254
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =328
        Top =270
        Right =601
        Bottom =385
        Top =0
        Name ="Hochrechnung_Nebenkosten_4a"
        Name =""
    End
    Begin
        Left =1283
        Top =340
        Right =1473
        Bottom =466
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =953
        Top =91
        Right =1201
        Bottom =435
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =1272
        Top =107
        Right =1572
        Bottom =214
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =1533
        Top =387
        Right =1703
        Bottom =487
        Top =0
        Name ="M_Betriebe"
        Name =""
    End
    Begin
        Left =1272
        Top =233
        Right =1577
        Bottom =321
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =603
        Top =75
        Right =897
        Bottom =220
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
End
