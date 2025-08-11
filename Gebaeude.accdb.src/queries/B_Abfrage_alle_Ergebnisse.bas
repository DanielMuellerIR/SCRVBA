Operation =1
Option =0
Begin InputTables
    Name ="B_Ergebnisse_A"
    Name ="B_Ergebnisse_b"
    Name ="B_Ergebnisse_E"
    Name ="B_Ergebnisse_G"
    Name ="B_Ergebnisse_C"
    Name ="B_Ergebnisse_F"
    Name ="B_Ergebnisse_D"
End
Begin OutputColumns
    Expression ="B_Ergebnisse_A.ID_Gebäudeteil"
    Expression ="B_Ergebnisse_A.Bezeichnung"
    Expression ="B_Ergebnisse_A.Straße"
    Expression ="B_Ergebnisse_A.Gebäudeteil"
    Expression ="B_Ergebnisse_A.[Typ aus NHK-Typen]"
    Expression ="B_Ergebnisse_A.BGF"
    Expression ="B_Ergebnisse_A.BRI"
    Expression ="B_Ergebnisse_A.Baujahr_real"
    Expression ="B_Ergebnisse_A.Baujahr_mod"
    Expression ="B_Ergebnisse_A.[gewöhnliche Nutzungsdauer]"
    Expression ="B_Ergebnisse_A.[geschätze Nutzungsdauer]"
    Expression ="B_Ergebnisse_A.Ausstattung"
    Expression ="B_Ergebnisse_A.[Wert von]"
    Expression ="B_Ergebnisse_A.[Wert bis]"
    Expression ="B_Ergebnisse_A.[Euro je BGF]"
    Expression ="B_Ergebnisse_A.[Wert NHK x BGF]"
    Expression ="B_Ergebnisse_A.Index"
    Expression ="B_Ergebnisse_A.[hochgerechneter Wert]"
    Expression ="B_Ergebnisse_A.Baunebenkosten"
    Expression ="B_Ergebnisse_A.[Baunebenkosten €]"
    Expression ="B_Ergebnisse_A.Herstellungskosten1"
    Expression ="B_Ergebnisse_A.Neubauwert_ab_2000"
    Expression ="B_Ergebnisse_A.[Index 2000]"
    Expression ="B_Ergebnisse_A.Herstellungskosten2"
    Expression ="B_Ergebnisse_C.Außenanlagen"
    Expression ="B_Ergebnisse_C.Mehrwert_"
    Expression ="B_Ergebnisse_C.Herstellungskosten"
    Expression ="B_Ergebnisse_G.[Fassade (11%)]"
    Expression ="B_Ergebnisse_G.[Fenster (14%)]"
    Expression ="B_Ergebnisse_G.[Dächer (15%)]"
    Expression ="B_Ergebnisse_G.[Sanitär (13%)]"
    Expression ="B_Ergebnisse_G.[Bodenbeläge (8 %)]"
    Expression ="B_Ergebnisse_G.[Innenwände Sanitärbereich (6%)]"
    Expression ="B_Ergebnisse_G.[Innentüren (11%)]"
    Expression ="B_Ergebnisse_G.[Heizung (15%)]"
    Expression ="B_Ergebnisse_G.[Elektroinstallation (7%)]"
    Expression ="B_Ergebnisse_D.Nutzungsdauer"
    Expression ="B_Ergebnisse_A.[berücksichtigtes Baujahr]"
    Expression ="B_Ergebnisse_D.[Abschreibung Jahre]"
    Expression ="B_Ergebnisse_D.[Abschreibung Jahr]"
    Expression ="B_Ergebnisse_D.[kumulierte Abschreibung]"
    Alias ="Sanierungsstau"
    Expression ="B_Ergebnisse_F.[Summe von voraussichtliche Kosten gesamt]"
    Expression ="B_Ergebnisse_E.Flur"
    Expression ="B_Ergebnisse_E.Flurstücke"
    Expression ="B_Ergebnisse_E.Fläche"
    Expression ="B_Ergebnisse_E.Bodenrichtwert"
    Expression ="B_Ergebnisse_E.Grundstückswert"
    Alias ="ermittelter Wert"
    Expression ="[B_Ergebnisse_C].[Herstellungskosten]-[kumulierte Abschreibung]-IIf(IsNull([Summ"
        "e von voraussichtliche Kosten gesamt]),0,[Summe von voraussichtliche Kosten gesa"
        "mt])"
    Expression ="B_Ergebnisse_A.[Bewertung abgeschlossen]"
    Expression ="B_Ergebnisse_A.Versicherungswert"
End
Begin Joins
    LeftTable ="B_Ergebnisse_A"
    RightTable ="B_Ergebnisse_b"
    Expression ="B_Ergebnisse_A.ID_Gebäudeteil = B_Ergebnisse_b.ID_Gebäudeteil"
    Flag =2
    LeftTable ="B_Ergebnisse_A"
    RightTable ="B_Ergebnisse_E"
    Expression ="B_Ergebnisse_A.ID_Gebäudeteil = B_Ergebnisse_E.ID_Gebäudeteil"
    Flag =2
    LeftTable ="B_Ergebnisse_A"
    RightTable ="B_Ergebnisse_G"
    Expression ="B_Ergebnisse_A.ID_Gebäudeteil = B_Ergebnisse_G.ID_Gebäudeteil"
    Flag =2
    LeftTable ="B_Ergebnisse_A"
    RightTable ="B_Ergebnisse_C"
    Expression ="B_Ergebnisse_A.ID_Gebäudeteil = B_Ergebnisse_C.ID_Gebäudeteil"
    Flag =2
    LeftTable ="B_Ergebnisse_A"
    RightTable ="B_Ergebnisse_F"
    Expression ="B_Ergebnisse_A.ID_Gebäudeteil = B_Ergebnisse_F.ID_Gebäudeteil"
    Flag =2
    LeftTable ="B_Ergebnisse_A"
    RightTable ="B_Ergebnisse_D"
    Expression ="B_Ergebnisse_A.ID_Gebäudeteil = B_Ergebnisse_D.ID_Gebäudeteil"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="2"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="B_Ergebnisse_A.[Wert von]"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.[Wert bis]"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.[Euro je BGF]"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.[Wert NHK x BGF]"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.[hochgerechneter Wert]"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnWidth" ="2280"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.[Baunebenkosten €]"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnWidth" ="1905"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.Herstellungskosten1"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnWidth" ="2040"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.Neubauwert_ab_2000"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.Herstellungskosten2"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_E.Bodenrichtwert"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnWidth" ="1605"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_E.Grundstückswert"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnWidth" ="1725"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.Bezeichnung"
        dbInteger "ColumnWidth" ="3210"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.Straße"
        dbInteger "ColumnWidth" ="2460"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.BGF"
        dbInteger "ColumnWidth" ="945"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.[gewöhnliche Nutzungsdauer]"
        dbInteger "ColumnWidth" ="2865"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sanierungsstau"
        dbInteger "ColumnWidth" ="1620"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ermittelter Wert"
        dbInteger "ColumnWidth" ="1650"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_C.Herstellungskosten"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_D.[Abschreibung Jahr]"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_D.[Abschreibung Jahre]"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_D.[kumulierte Abschreibung]"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.Gebäudeteil"
        dbInteger "ColumnWidth" ="3045"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.[Bewertung abgeschlossen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.BRI"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.Versicherungswert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.[geschätze Nutzungsdauer]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.Ausstattung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.Index"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.[Index 2000]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_C.Außenanlagen"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_G.[Fassade (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_G.[Bodenbeläge (8 %)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_G.[Innentüren (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.[berücksichtigtes Baujahr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.Baujahr_mod"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_G.[Sanitär (13%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_G.[Elektroinstallation (7%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_D.Nutzungsdauer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_E.Flur"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_E.Fläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.Baujahr_real"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.Baunebenkosten"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_G.[Dächer (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_G.[Innenwände Sanitärbereich (6%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_G.[Heizung (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_E.Flurstücke"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_C.Mehrwert_"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_G.[Fenster (14%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.[Typ aus NHK-Typen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_A.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1336
    Bottom =992
    Left =-1
    Top =-1
    Right =1312
    Bottom =484
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =202
        Bottom =391
        Top =0
        Name ="B_Ergebnisse_A"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =501
        Bottom =104
        Top =0
        Name ="B_Ergebnisse_b"
        Name =""
    End
    Begin
        Left =251
        Top =323
        Right =502
        Bottom =423
        Top =0
        Name ="B_Ergebnisse_E"
        Name =""
    End
    Begin
        Left =267
        Top =553
        Right =522
        Bottom =667
        Top =0
        Name ="B_Ergebnisse_G"
        Name =""
    End
    Begin
        Left =246
        Top =112
        Right =495
        Bottom =215
        Top =0
        Name ="B_Ergebnisse_C"
        Name =""
    End
    Begin
        Left =255
        Top =431
        Right =515
        Bottom =546
        Top =0
        Name ="B_Ergebnisse_F"
        Name =""
    End
    Begin
        Left =248
        Top =226
        Right =498
        Bottom =313
        Top =0
        Name ="B_Ergebnisse_D"
        Name =""
    End
End
