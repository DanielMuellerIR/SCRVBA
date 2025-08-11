Operation =3
Name ="Bewertung_Archiv_4"
Option =0
Begin InputTables
    Name ="B_Sanierungsstau_Werterhöhung"
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Name ="ID_Gebäudeteil"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Name ="Mehrwert"
    Expression ="B_Sanierungsstau_Werterhöhung.Mehrwert"
    Alias ="Datei"
    Name ="Datei"
    Expression ="[formulare]![Bewertungsdaten archivieren]![Archivdatum]"
    Alias ="Erläuterung"
    Name ="Erläuterung"
    Expression ="[formulare]![Bewertungsdaten archivieren]![Text]"
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="B_Sanierungsstau_Werterhöhung"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäud"
        "eteil"
    Flag =2
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
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Mehrwert"
        dbInteger "ColumnWidth" ="1050"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
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
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Bauteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Bauteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebaeudekennung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1634
    Bottom =841
    Left =-1
    Top =-1
    Right =1610
    Bottom =466
    Left =0
    Top =6
    ColumnsShown =651
    Begin
        Left =464
        Top =37
        Right =819
        Bottom =200
        Top =0
        Name ="B_Sanierungsstau_Werterhöhung"
        Name =""
    End
    Begin
        Left =81
        Top =52
        Right =384
        Bottom =344
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
