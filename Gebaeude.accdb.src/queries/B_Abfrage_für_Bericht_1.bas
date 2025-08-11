Operation =1
Option =0
Where ="(((B_Abfrage_für_Formular.ID_Gebäudeteil)>=F_Variable(\"lng_ID_Geb_Teil_Min\") A"
    "nd (B_Abfrage_für_Formular.ID_Gebäudeteil)<=F_Variable(\"lng_ID_Geb_Teil_Max\"))"
    ")"
Begin InputTables
    Name ="B_Abfrage_für_Formular"
    Name ="B_Abfrage_für_Bericht_0"
End
Begin OutputColumns
    Expression ="B_Abfrage_für_Formular.ID_Gebäudeteil"
    Expression ="B_Abfrage_für_Formular.Bezeichnung"
    Expression ="B_Abfrage_für_Formular.Gebäudeteil"
    Alias ="Straße"
    Expression ="[NAme] & \" \" & [HAus_Nr]"
    Expression ="B_Abfrage_für_Formular.BGF"
    Expression ="B_Abfrage_für_Formular.BRI"
    Expression ="B_Abfrage_für_Formular.Baujahr"
    Expression ="B_Abfrage_für_Formular.Baujahr_real"
    Expression ="B_Abfrage_für_Formular.Baujahr_mod"
    Expression ="B_Abfrage_für_Formular.[gewöhnliche Nutzungsdauer]"
    Expression ="B_Abfrage_für_Formular.[geschätze Nutzungsdauer]"
    Expression ="B_Abfrage_für_Formular.Neubauwert_ab_2000"
    Alias ="PunkteAusstattung"
    Expression ="[Pkt_Fassade]+[Pkt_Fenster]+[Pkt_Dächer]+[Pkt_Sanitär]+[Pkt_Innenwände_S]+[Pkt_B"
        "odenbeläge]+[Pkt_Innentüren]+[Pkt_Heizung]+[PKt_Elektro]"
    Alias ="Ausstattung"
    Expression ="IIf([PunkteAusstattung]<=166.6666,\"einfach\",IIf([PunkteAusstattung]>=233.3332,"
        "\"gehoben\",IIf([PunkteAusstattung]>166.6667 And [PunkteAusstattung]<233.3331,\""
        "mittel\")))"
    Alias ="Range"
    Expression ="IIf([Ausstattung]=\"gehoben\",[PunkteAusstattung]-233.33,IIf([Ausstattung]=\"mit"
        "tel\",[PunkteAusstattung]-166.66,IIf([Ausstattung]=\"einfach\",[PunkteAusstattun"
        "g]-100)))"
    Alias ="Wert von"
    Expression ="IIf([Baujahr]<1925,[von 25],IIf([Baujahr]>1924 And [Baujahr]<1946,[von 25 - 45],"
        "IIf([Baujahr]>1945 And [Baujahr]<1960,[von 46 - 59],IIf([Baujahr]>1959 And [Bauj"
        "ahr]<1970,[von 60 - 69],IIf([Baujahr]>1969 And [Baujahr]<1985,[von 70 - 84],IIf("
        "[Baujahr]>1984 And [Baujahr]<2000,[von 85 - 99],IIf([Baujahr]>1999,[von 2000])))"
        "))))"
    Alias ="Wert bis"
    Expression ="IIf([Baujahr]<1925,[bis 25],IIf([Baujahr]>1924 And [Baujahr]<1946,[bis 25 - 45],"
        "IIf([Baujahr]>1945 And [Baujahr]<1960,[bis 46 - 59],IIf([Baujahr]>1959 And [Bauj"
        "ahr]<1970,[bis 60 - 69],IIf([Baujahr]>1969 And [Baujahr]<1985,[bis 70 - 84],IIf("
        "[Baujahr]>1984 And [Baujahr]<2000,[bis 85 - 99],IIf([Baujahr]>1999,[bis 2000])))"
        "))))"
    Alias ="Euro je BGF"
    Expression ="((([PunkteAusstattung]-100)/200)*([Wert bis]-[Wert von]))+[Wert von]"
    Alias ="Wert1"
    Expression ="[Euro je BGF]*[BGF]"
    Expression ="B_Abfrage_für_Bericht_0.Baunebenkosten"
    Alias ="Erl"
    Expression ="IIf(IsNull([Erläuterungen]),\"keine\",[Erläuterungen])"
    Expression ="B_Abfrage_für_Formular.Zuschuss_Prozent"
    Expression ="B_Abfrage_für_Bericht_0.Typ"
    Expression ="B_Abfrage_für_Formular.Index_manuell"
    Expression ="B_Abfrage_für_Formular.Versicherungswert"
End
Begin Joins
    LeftTable ="B_Abfrage_für_Formular"
    RightTable ="B_Abfrage_für_Bericht_0"
    Expression ="B_Abfrage_für_Formular.Ausstattung = B_Abfrage_für_Bericht_0.Ausstattung"
    Flag =2
    LeftTable ="B_Abfrage_für_Formular"
    RightTable ="B_Abfrage_für_Bericht_0"
    Expression ="B_Abfrage_für_Formular.[Typ aus NHK-Typen] = B_Abfrage_für_Bericht_0.[NHK-Typen]"
        ".Kennummer"
    Flag =2
End
Begin OrderBy
    Expression ="B_Abfrage_für_Formular.Bezeichnung"
    Flag =0
    Expression ="B_Abfrage_für_Formular.Gebäudeteil"
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
        dbText "Name" ="PunkteAusstattung"
        dbInteger "ColumnWidth" ="1905"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="8"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.BGF"
        dbInteger "ColumnOrder" ="3"
        dbText "Format" ="Fixed"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Baujahr"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[gewöhnliche Nutzungsdauer]"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[geschätze Nutzungsdauer]"
        dbInteger "ColumnOrder" ="6"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Neubauwert_ab_2000"
        dbInteger "ColumnWidth" ="2175"
        dbInteger "ColumnOrder" ="7"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausstattung"
        dbInteger "ColumnWidth" ="1245"
        dbInteger "ColumnOrder" ="9"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Range"
        dbInteger "ColumnWidth" ="1440"
        dbInteger "ColumnOrder" ="10"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert von"
        dbInteger "ColumnWidth" ="1170"
        dbInteger "ColumnOrder" ="11"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert bis"
        dbInteger "ColumnOrder" ="12"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Euro je BGF"
        dbInteger "ColumnWidth" ="1545"
        dbInteger "ColumnOrder" ="13"
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
        dbText "Name" ="B_Abfrage_für_Formular.BRI"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Index_manuell"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Versicherungswert"
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
        dbText "Name" ="B_Abfrage_für_Formular.Zuschuss_Prozent"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Bericht_0.Typ"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="14"
    End
    Begin
        dbText "Name" ="Straße "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Straße"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Bezeichnung"
        dbInteger "ColumnOrder" ="1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erl "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Gebäudeteil"
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-4
    Top =-26
    Right =1642
    Bottom =837
    Left =-1
    Top =-1
    Right =1621
    Bottom =560
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =57
        Top =20
        Right =349
        Bottom =647
        Top =0
        Name ="B_Abfrage_für_Formular"
        Name =""
    End
    Begin
        Left =659
        Top =22
        Right =955
        Bottom =430
        Top =0
        Name ="B_Abfrage_für_Bericht_0"
        Name =""
    End
End
