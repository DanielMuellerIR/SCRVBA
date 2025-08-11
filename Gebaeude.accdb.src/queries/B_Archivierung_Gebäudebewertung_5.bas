Operation =3
Name ="Bewertung_Archiv_5"
Option =0
Begin InputTables
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
    Name ="tbl_050_10_Gemarkungen"
    Name ="tbl_070_10_Flure"
End
Begin OutputColumns
    Name ="ID_Gebäudeteil"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude"
    Name ="Gebäudeteil"
    Expression ="tbl_100_20_Gebäudeteile.Gebäudeteil"
    Alias ="Lage des Gebäudes"
    Name ="Lage des Gebäudes"
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr]"
    Name ="Gemarkung"
    Expression ="tbl_050_10_Gemarkungen.Gemarkung"
    Name ="Flur"
    Expression ="tbl_070_10_Flure.Flur"
    Alias ="Flurstücke"
    Name ="Flurstücke"
    Expression ="\" \" & Nz(fc_Flurstuecke([tbl_100_10_Liegenschaften].[ID_Gebäude]))"
    Name ="Fläche"
    Expression ="tbl_100_10_Liegenschaften.Fläche"
    Name ="Bodenrichtwert"
    Expression ="tbl_100_10_Liegenschaften.Bodenrichtwert"
    Name ="Bezeichnung"
    Expression ="tbl_100_10_Liegenschaften.Bezeichnung"
    Alias ="Datei"
    Name ="Datei"
    Expression ="[formulare]![Bewertungsdaten archivieren]![Archivdatum]"
    Alias ="Erläuterung"
    Name ="Erläuterung"
    Expression ="[formulare]![Bewertungsdaten archivieren]![Text]"
    Alias ="Anteil Bodenrichtwert"
    Name ="Anteil Bodenrichtwert"
    Expression ="[formulare]![Startformular]![Anteil Bodenrichtwert]"
End
Begin Joins
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =3
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="tbl_050_10_Gemarkungen"
    RightTable ="tbl_100_10_Liegenschaften"
    Expression ="tbl_050_10_Gemarkungen.ID_Gemarkung = tbl_100_10_Liegenschaften.ID_Gemarkung"
    Flag =3
    LeftTable ="tbl_070_10_Flure"
    RightTable ="tbl_100_10_Liegenschaften"
    Expression ="tbl_070_10_Flure.ID_Flur = tbl_100_10_Liegenschaften.ID_Flur"
    Flag =3
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
        dbText "Name" ="B_Abfrage_Zuordnung_Grundstück.B_Gebäudebestand.Gebäudeteil"
        dbInteger "ColumnWidth" ="6585"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.Gebäudeteil"
        dbInteger "ColumnWidth" ="3240"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Datei"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2055"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Erläuterung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Anteil Bodenrichtwert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.Kennummer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.ID_Gebäude"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebäudeteil"
        dbInteger "ColumnWidth" ="3240"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_bebaute_Grundstücke.[Lage des Gebäudes]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.[Lage des Gebäudes]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Lage des Gebäudes "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_bebaute_Grundstücke.Gemarkung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Gemarkung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_070_10_Flure.Flur"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_bebaute_Grundstücke.Flur"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_bebaute_Grundstücke.Flurstücke"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Flurstücke "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Fläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_bebaute_Grundstücke.Fläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_bebaute_Grundstücke.Bodenrichtwert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Bodenrichtwert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_Zuordnung_Grundstück.Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_bebaute_Grundstücke.[voll berechnen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_050_10_Gemarkungen.Gemarkung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Lage des Gebäudes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Flurstücke"
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
    Bottom =578
    Left =0
    Top =6
    ColumnsShown =651
    Begin
        Left =136
        Top =24
        Right =375
        Bottom =387
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =494
        Top =40
        Right =737
        Bottom =322
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =499
        Top =350
        Right =754
        Bottom =485
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =854
        Top =95
        Right =1057
        Bottom =220
        Top =0
        Name ="tbl_050_10_Gemarkungen"
        Name =""
    End
    Begin
        Left =853
        Top =232
        Right =1052
        Bottom =371
        Top =0
        Name ="tbl_070_10_Flure"
        Name =""
    End
End
