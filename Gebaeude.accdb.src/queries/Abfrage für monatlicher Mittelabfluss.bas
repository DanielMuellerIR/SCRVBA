Operation =1
Option =0
Having ="(((Haushaltsdaten.[ID aus Maßnahmen]) Is Not Null) AND ((Buchungsstellen.Buchung"
    "sstelle) Like [formulare]![Filter für Controllingbericht]![AuswahlBuchungsstelle"
    "]))"
Begin InputTables
    Name ="Maßnahmen"
    Name ="Buchungsstellen"
    Name ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle"
    Name ="Haushaltsdaten"
    Name ="tbl_100_10_Liegenschaften"
    Name ="Finanzquellen"
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Expression ="Haushaltsdaten.[ID aus Maßnahmen]"
    Expression ="Buchungsstellen.Buchungsstelle"
    Expression ="Haushaltsdaten.Jahr"
    Expression ="Haushaltsdaten.Ansatz"
    Expression ="Haushaltsdaten.HHR"
    Expression ="Haushaltsdaten.VE"
    Expression ="Finanzquellen.Finanzquelle"
    Alias ="zufVfg"
    Expression ="IIf([Jahr]=Year(Now())-1 And [HHR]<>0,[HHR],IIf([Jahr]=Year(Now()) And [Ansatz]<"
        ">0,[Ansatz],IIf([Jahr]=Year(Now()) And [VE]<>0,[VE],0)))"
    Alias ="zufVfgohneVE"
    Expression ="IIf([Jahr]=Year(Now())-1 And [HHR]<>0,[HHR],IIf([Jahr]=Year(Now()) And [Ansatz]<"
        ">0,[Ansatz],IIf([Jahr]=Year(Now()) And [VE]<>0,0,0)))"
    Expression ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.[Gesamt_HH-Mittel]"
    Alias ="Massnahme_"
    Expression ="[Bezeichnung] & \":  \" & [Maßnahme]"
    Expression ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.Aufträge"
    Expression ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.sollgesamt"
End
Begin Joins
    LeftTable ="Buchungsstellen"
    RightTable ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle"
    Expression ="Buchungsstellen.Buchungsstelle = Abfrage_für_Import_Haushaltsdaten_in_Tabelle.Bu"
        "chungsstelle"
    Flag =2
    LeftTable ="Buchungsstellen"
    RightTable ="Haushaltsdaten"
    Expression ="Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]"
    Flag =3
    LeftTable ="Maßnahmen"
    RightTable ="Haushaltsdaten"
    Expression ="Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =3
    LeftTable ="Finanzquellen"
    RightTable ="Haushaltsdaten"
    Expression ="Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu"
    Flag =3
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Maßnahmen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil"
    Flag =3
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =3
End
Begin OrderBy
    Expression ="Buchungsstellen.Buchungsstelle"
    Flag =0
End
Begin Groups
    Expression ="Haushaltsdaten.[ID aus Maßnahmen]"
    GroupLevel =0
    Expression ="Buchungsstellen.Buchungsstelle"
    GroupLevel =0
    Expression ="Haushaltsdaten.Jahr"
    GroupLevel =0
    Expression ="Haushaltsdaten.Ansatz"
    GroupLevel =0
    Expression ="Haushaltsdaten.HHR"
    GroupLevel =0
    Expression ="Haushaltsdaten.VE"
    GroupLevel =0
    Expression ="Finanzquellen.Finanzquelle"
    GroupLevel =0
    Expression ="IIf([Jahr]=Year(Now())-1 And [HHR]<>0,[HHR],IIf([Jahr]=Year(Now()) And [Ansatz]<"
        ">0,[Ansatz],IIf([Jahr]=Year(Now()) And [VE]<>0,[VE],0)))"
    GroupLevel =0
    Expression ="IIf([Jahr]=Year(Now())-1 And [HHR]<>0,[HHR],IIf([Jahr]=Year(Now()) And [Ansatz]<"
        ">0,[Ansatz],IIf([Jahr]=Year(Now()) And [VE]<>0,0,0)))"
    GroupLevel =0
    Expression ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.[Gesamt_HH-Mittel]"
    GroupLevel =0
    Expression ="[Bezeichnung] & \":  \" & [Maßnahme]"
    GroupLevel =0
    Expression ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.Aufträge"
    GroupLevel =0
    Expression ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.sollgesamt"
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
        dbText "Name" ="zufVfg"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnWidth" ="1485"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Ansatz"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.HHR"
        dbInteger "ColumnWidth" ="1755"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.VE"
        dbInteger "ColumnWidth" ="1605"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="zufVfgohneVE"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnWidth" ="1485"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Massnahme_"
        dbInteger "ColumnWidth" ="8175"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.sollgesamt"
        dbInteger "ColumnWidth" ="1995"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.[ID aus Maßnahmen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Buchungsstellen.Buchungsstelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Jahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.[Gesamt_HH-Mittel]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.Aufträge"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanzquellen.Finanzquelle"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1873
    Bottom =990
    Left =-1
    Top =-1
    Right =1849
    Bottom =467
    Left =40
    Top =0
    ColumnsShown =543
    Begin
        Left =472
        Top =211
        Right =710
        Bottom =467
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =473
        Top =73
        Right =703
        Bottom =179
        Top =0
        Name ="Buchungsstellen"
        Name =""
    End
    Begin
        Left =758
        Top =72
        Right =1165
        Bottom =198
        Top =0
        Name ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle"
        Name =""
    End
    Begin
        Left =212
        Top =57
        Right =418
        Bottom =224
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =1081
        Top =259
        Right =1353
        Bottom =450
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =22
        Top =90
        Right =152
        Bottom =194
        Top =0
        Name ="Finanzquellen"
        Name =""
    End
    Begin
        Left =775
        Top =242
        Right =1020
        Bottom =390
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
