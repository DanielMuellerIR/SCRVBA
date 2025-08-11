Operation =3
Name ="Bewertung_Archiv_2"
Option =0
Begin InputTables
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Name ="ID_Gebäudeteil"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Name ="Fassade (11%)"
    Expression ="tbl_100_20_Gebäudeteile.[Fassade (11%)]"
    Name ="Fenster (14%)"
    Expression ="tbl_100_20_Gebäudeteile.[Fenster (14%)]"
    Name ="Dächer (15%)"
    Expression ="tbl_100_20_Gebäudeteile.[Dächer (15%)]"
    Name ="Sanitär (13%)"
    Expression ="tbl_100_20_Gebäudeteile.[Sanitär (13%)]"
    Name ="Innenwände Sanitärbereich (6%)"
    Expression ="tbl_100_20_Gebäudeteile.[Innenwände Sanitärbereich (6%)]"
    Name ="Innentüren (11%)"
    Expression ="tbl_100_20_Gebäudeteile.[Innentüren (11%)]"
    Name ="Heizung (15%)"
    Expression ="tbl_100_20_Gebäudeteile.[Heizung (15%)]"
    Name ="Elektroinstallation (7%)"
    Expression ="tbl_100_20_Gebäudeteile.[Elektroinstallation (7%)]"
    Name ="Bodenbeläge (8 %)"
    Expression ="tbl_100_20_Gebäudeteile.[Bodenbeläge (8 %)]"
    Alias ="Datei"
    Name ="Datei"
    Expression ="[formulare]![Bewertungsdaten archivieren]![Archivdatum]"
    Alias ="Erläuterung"
    Name ="Erläuterung"
    Expression ="[formulare]![Bewertungsdaten archivieren]![Text]"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Datei"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erläuterung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.Kennummer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Fassade (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Fassade (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Fenster (14%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Fenster (14%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Bodenbeläge (8 %)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Bodenbeläge (8 %)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Kennummer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Dächer (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Dächer (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Sanitär (13%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Sanitär (13%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Innenwände Sanitärbereich (6%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Innenwände Sanitärbereich (6%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Innentüren (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Innentüren (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Heizung (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Heizung (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Elektroinstallation (7%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Elektroinstallation (7%)]"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1187
    Bottom =841
    Left =-1
    Top =-1
    Right =1163
    Bottom =361
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =103
        Top =44
        Right =604
        Bottom =304
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
