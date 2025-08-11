Operation =2
Name ="B_Ergebnisse_A"
Option =0
Begin InputTables
    Name ="B_Abfrage_für_Formular"
    Name ="B_Abfrage_für_Bericht_0"
End
Begin OutputColumns
    Expression ="B_Abfrage_für_Formular.ID_Gebäudeteil"
    Expression ="B_Abfrage_für_Formular.Bezeichnung"
    Alias ="Straße"
    Expression ="[Name] & \" \" & [HAus_nr]"
    Expression ="B_Abfrage_für_Formular.Gebäudeteil"
    Expression ="B_Abfrage_für_Formular.[Typ aus NHK-Typen]"
    Expression ="B_Abfrage_für_Formular.BGF"
    Expression ="B_Abfrage_für_Formular.BRI"
    Expression ="B_Abfrage_für_Formular.Baujahr_real"
    Expression ="B_Abfrage_für_Formular.Baujahr_mod"
    Expression ="B_Abfrage_für_Formular.[gewöhnliche Nutzungsdauer]"
    Expression ="B_Abfrage_für_Formular.[geschätze Nutzungsdauer]"
    Alias ="Ausstattung"
    Expression ="IIf([PunkteAusstattung]<=166.6666,\"einfach\",IIf([PunkteAusstattung]>=233.3332,"
        "\"gehoben\",IIf([PunkteAusstattung]>166.6667 And [PunkteAusstattung]<233.3331,\""
        "mittel\")))"
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
    Expression ="(([Wert bis]-[Wert von])/66.66*[Range])+[Wert von]"
    Alias ="Wert NHK x BGF"
    Expression ="[Euro je BGF]*[BGF]"
    Alias ="Index"
    Expression ="IIf(IsNull([Index_manuell]),([Formulare]![startformular]![Index ab 2000]/100)+1,"
        "([Index_manuell]/100)+1)"
    Alias ="hochgerechneter Wert"
    Expression ="[Wert NHK x BGF]*[Index]"
    Expression ="B_Abfrage_für_Bericht_0.Baunebenkosten"
    Alias ="Baunebenkosten €"
    Expression ="[hochgerechneter Wert]*([Baunebenkosten]/100)"
    Alias ="Herstellungskosten1"
    Expression ="[Baunebenkosten €]+[hochgerechneter Wert]"
    Expression ="B_Abfrage_für_Formular.Neubauwert_ab_2000"
    Alias ="Index 2000"
    Expression ="IIf(IsNull([Index_manuell]),IIf([Baujahr]=2000,16.41,IIf([Baujahr]=2001,15.69,II"
        "f([Baujahr]=2002,15.57,IIf([Baujahr]=2003,15.57,IIf([Baujahr]=2004,14.05,IIf([Ba"
        "ujahr]=2005,12.8,IIf([Baujahr]=2006,10.7,IIf([Baujahr]=2007,3.68,IIf([Baujahr]>="
        "2008,0)))))))))+100,([Index_manuell])+100)"
    Alias ="Herstellungskosten2"
    Expression ="([Neubauwert_ab_2000]*([Index 2000]/100))"
    Alias ="berücksichtigtes Baujahr"
    Expression ="B_Abfrage_für_Formular.Baujahr"
    Alias ="Nutzungsdauer"
    Expression ="IIf(IsNull([geschätze Nutzungsdauer]),[gewöhnliche Nutzungsdauer],[geschätze Nut"
        "zungsdauer])"
    Expression ="B_Abfrage_für_Formular.[Bewertung abgeschlossen]"
    Expression ="B_Abfrage_für_Formular.Index_manuell"
    Expression ="B_Abfrage_für_Formular.Versicherungswert"
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
End
Begin OrderBy
    Expression ="[Name] & \" \" & [HAus_nr]"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="0"
dbByte "Orientation" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Euro je BGF"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert NHK x BGF"
        dbInteger "ColumnWidth" ="1710"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="hochgerechneter Wert"
        dbInteger "ColumnWidth" ="2280"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Baunebenkosten €"
        dbInteger "ColumnWidth" ="1905"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Herstellungskosten1"
        dbInteger "ColumnWidth" ="2040"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Neubauwert_ab_2000"
        dbInteger "ColumnWidth" ="2175"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Herstellungskosten2"
        dbInteger "ColumnWidth" ="2040"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="berücksichtigtes Baujahr"
        dbInteger "ColumnWidth" ="2490"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="General Number"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Nutzungsdauer"
        dbInteger "ColumnWidth" ="1575"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausstattung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert von"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert bis"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Index"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Index 2000"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Kennummer"
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
        dbText "Name" ="B_Abfrage_für_Formular.[Typ aus NHK-Typen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.BGF"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[gewöhnliche Nutzungsdauer]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[geschätze Nutzungsdauer]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Baujahr_mod"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Baujahr_real"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Bericht_0.Baunebenkosten"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="STraße "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Straße"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Bewertung abgeschlossen]"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =8
    Top =5
    Right =1419
    Bottom =961
    Left =-1
    Top =-1
    Right =1379
    Bottom =692
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =22
        Right =310
        Bottom =677
        Top =0
        Name ="B_Abfrage_für_Formular"
        Name =""
    End
    Begin
        Left =475
        Top =102
        Right =722
        Bottom =506
        Top =0
        Name ="B_Abfrage_für_Bericht_0"
        Name =""
    End
End
