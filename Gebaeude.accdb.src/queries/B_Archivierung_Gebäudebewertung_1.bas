Operation =3
Name ="Bewertung_Archiv_1"
Option =0
Begin InputTables
    Name ="B_Abfrage_für_Formular"
    Name ="B_Abfrage_für_Bericht_0"
    Name ="M_Strassenverzeichnis"
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Name ="ID_Gebäudeteil"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Name ="Bezeichnung"
    Expression ="B_Abfrage_für_Formular.Bezeichnung"
    Alias ="Straße"
    Name ="Straße"
    Expression ="B_Abfrage_für_Formular.NAme"
    Name ="Haus_Nr"
    Expression ="tbl_100_20_Gebäudeteile.Haus_Nr"
    Name ="Gebäudeteil"
    Expression ="B_Abfrage_für_Formular.Gebäudeteil"
    Name ="BGF"
    Expression ="tbl_100_20_Gebäudeteile.BGF"
    Name ="Baujahr"
    Expression ="B_Abfrage_für_Formular.Baujahr"
    Name ="Baujahr_real"
    Expression ="B_Abfrage_für_Formular.Baujahr_real"
    Name ="Baujahr_mod"
    Expression ="B_Abfrage_für_Formular.Baujahr_mod"
    Name ="gewöhnliche Nutzungsdauer"
    Expression ="B_Abfrage_für_Formular.[gewöhnliche Nutzungsdauer]"
    Name ="geschätze Nutzungsdauer"
    Expression ="B_Abfrage_für_Formular.[geschätze Nutzungsdauer]"
    Name ="Neubauwert_ab_2000"
    Expression ="B_Abfrage_für_Formular.Neubauwert_ab_2000"
    Alias ="PunkteAusstattung"
    Name ="PunkteAusstattung"
    Expression ="[Pkt_Fassade]+[Pkt_Fenster]+[Pkt_Dächer]+[Pkt_Sanitär]+[Pkt_Innenwände_S]+[Pkt_B"
        "odenbeläge]+[Pkt_Innentüren]+[Pkt_Heizung]+[PKt_Elektro]"
    Alias ="Ausstattung"
    Name ="Ausstattung"
    Expression ="IIf([PunkteAusstattung]<=166.6666,\"einfach\",IIf([PunkteAusstattung]>=233.3332,"
        "\"gehoben\",IIf([PunkteAusstattung]>166.6667 And [PunkteAusstattung]<233.3331,\""
        "mittel\")))"
    Alias ="Range"
    Name ="Range"
    Expression ="IIf([Ausstattung]=\"gehoben\",[PunkteAusstattung]-233.33,IIf([Ausstattung]=\"mit"
        "tel\",[PunkteAusstattung]-166.66,IIf([Ausstattung]=\"einfach\",[PunkteAusstattun"
        "g]-100)))"
    Alias ="Wert von"
    Name ="Wert von"
    Expression ="IIf([Baujahr]<1925,[von 25],IIf([Baujahr]>1924 And [Baujahr]<1946,[von 25 - 45],"
        "IIf([Baujahr]>1945 And [Baujahr]<1960,[von 46 - 59],IIf([Baujahr]>1959 And [Bauj"
        "ahr]<1970,[von 60 - 69],IIf([Baujahr]>1969 And [Baujahr]<1985,[von 70 - 84],IIf("
        "[Baujahr]>1984 And [Baujahr]<2000,[von 85 - 99],IIf([Baujahr]>1999,[von 2000])))"
        "))))"
    Alias ="Wert bis"
    Name ="Wert bis"
    Expression ="IIf([Baujahr]<1925,[bis 25],IIf([Baujahr]>1924 And [Baujahr]<1946,[bis 25 - 45],"
        "IIf([Baujahr]>1945 And [Baujahr]<1960,[bis 46 - 59],IIf([Baujahr]>1959 And [Bauj"
        "ahr]<1970,[bis 60 - 69],IIf([Baujahr]>1969 And [Baujahr]<1985,[bis 70 - 84],IIf("
        "[Baujahr]>1984 And [Baujahr]<2000,[bis 85 - 99],IIf([Baujahr]>1999,[bis 2000])))"
        "))))"
    Alias ="Euro je BGF"
    Name ="Euro je BGF"
    Expression ="((([PunkteAusstattung]-100)/200)*([Wert bis]-[Wert von]))+[Wert von]"
    Alias ="Wert1"
    Name ="Wert1"
    Expression ="[Euro je BGF]*[tbl_100_20_Gebäudeteile].[BGF]"
    Name ="Baunebenkosten"
    Expression ="B_Abfrage_für_Bericht_0.Baunebenkosten"
    Name ="Erläuterungen"
    Expression ="B_Abfrage_für_Formular.Erläuterungen"
    Alias ="Datei"
    Name ="Datei"
    Expression ="[formulare]![Bewertungsdaten archivieren]![Archivdatum]"
    Alias ="Erläuterung"
    Name ="Erläuterung"
    Expression ="[formulare]![Bewertungsdaten archivieren]![Text]"
    Alias ="Bewertungsjahr"
    Name ="Bewertungsjahr"
    Expression ="[formulare]![startformular]![bewertungsjahr]"
    Alias ="index ab 2000"
    Name ="index ab 2000"
    Expression ="[formulare]![startformular]![Index ab 2000]"
    Name ="Bewertung abgeschlossen"
    Expression ="B_Abfrage_für_Formular.[Bewertung abgeschlossen]"
    Name ="Index_manuell"
    Expression ="B_Abfrage_für_Formular.Index_manuell"
End
Begin Joins
    LeftTable ="B_Abfrage_für_Formular"
    RightTable ="B_Abfrage_für_Bericht_0"
    Expression ="B_Abfrage_für_Formular.[Typ aus NHK-Typen] = B_Abfrage_für_Bericht_0.[NHK-Typen]"
        ".Kennummer"
    Flag =2
    LeftTable ="B_Abfrage_für_Formular"
    RightTable ="B_Abfrage_für_Bericht_0"
    Expression ="B_Abfrage_für_Formular.Ausstattung = B_Abfrage_für_Bericht_0.Ausstattung"
    Flag =2
    LeftTable ="B_Abfrage_für_Formular"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="B_Abfrage_für_Formular.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
End
Begin OrderBy
    Expression ="B_Abfrage_für_Formular.NAme"
    Flag =0
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
        dbText "Name" ="PunkteAusstattung"
        dbInteger "ColumnWidth" ="1905"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="11"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Kennummer"
        dbInteger "ColumnOrder" ="1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Bezeichnung"
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Straße"
        dbInteger "ColumnOrder" ="3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Gebäudeteil"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.BGF"
        dbInteger "ColumnOrder" ="6"
        dbText "Format" ="Fixed"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Baujahr"
        dbInteger "ColumnOrder" ="7"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[gewöhnliche Nutzungsdauer]"
        dbInteger "ColumnOrder" ="8"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[geschätze Nutzungsdauer]"
        dbInteger "ColumnOrder" ="9"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Neubauwert_ab_2000"
        dbInteger "ColumnWidth" ="2175"
        dbInteger "ColumnOrder" ="10"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausstattung"
        dbInteger "ColumnWidth" ="1245"
        dbInteger "ColumnOrder" ="12"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Range"
        dbInteger "ColumnWidth" ="1440"
        dbInteger "ColumnOrder" ="13"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert von"
        dbInteger "ColumnWidth" ="1170"
        dbInteger "ColumnOrder" ="14"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert bis"
        dbInteger "ColumnOrder" ="15"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Euro je BGF"
        dbInteger "ColumnWidth" ="1545"
        dbInteger "ColumnOrder" ="16"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert1"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Bericht_0.Baunebenkosten"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Datei"
        dbInteger "ColumnWidth" ="1005"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erläuterung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertungsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="index ab 2000"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Straße "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.tbl_100_20_Gebäudeteile.BGF"
        dbInteger "ColumnOrder" ="6"
        dbText "Format" ="Fixed"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.BGF"
        dbInteger "ColumnOrder" ="6"
        dbText "Format" ="Fixed"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Baujahr_real"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Baujahr_mod"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Erläuterungen"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Bewertung abgeschlossen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Index_manuell"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Straße"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Haus_Nr"
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
    Bottom =472
    Left =0
    Top =16
    ColumnsShown =651
    Begin
        Left =619
        Top =26
        Right =911
        Bottom =495
        Top =0
        Name ="B_Abfrage_für_Formular"
        Name =""
    End
    Begin
        Left =1109
        Top =52
        Right =1349
        Bottom =376
        Top =0
        Name ="B_Abfrage_für_Bericht_0"
        Name =""
    End
    Begin
        Left =34
        Top =77
        Right =178
        Bottom =221
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =262
        Top =10
        Right =496
        Bottom =451
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
