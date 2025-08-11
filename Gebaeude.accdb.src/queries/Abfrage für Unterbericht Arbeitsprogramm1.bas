Operation =1
Option =0
Having ="(((Maßnahmen.ID)=[Formulare]![Formular Berichte]![ID aus Maßnahme]))"
Begin InputTables
    Name ="Maßnahmen"
    Name ="Buchungsstellen"
    Name ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle"
    Name ="Haushaltsdaten"
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="Finanzquellen"
End
Begin OutputColumns
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
    Expression ="IIf([HHR]>0,[HHR],IIf([Ansatz]>0,[Ansatz],0))"
    Expression ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.[Gesamt_HH-Mittel]"
    Alias ="Massnahme_"
    Expression ="[Bezeichnung] & \":  \" & [Gebäudeteil] & \" -> \" & [Maßnahme]"
    Expression ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.Aufträge"
    Expression ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.sollgesamt"
    Alias ="sort"
    Expression ="IIf([VE]>1,1,IIf([Ansatz]>1,2,3))"
    Expression ="Buchungsstellen.Sammelbuchungsstelle"
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
    Flag =1
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
    Expression ="Maßnahmen.ID"
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
    Expression ="IIf([HHR]>0,[HHR],IIf([Ansatz]>0,[Ansatz],0))"
    GroupLevel =0
    Expression ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.[Gesamt_HH-Mittel]"
    GroupLevel =0
    Expression ="[Bezeichnung] & \":  \" & [Gebäudeteil] & \" -> \" & [Maßnahme]"
    GroupLevel =0
    Expression ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.Aufträge"
    GroupLevel =0
    Expression ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.sollgesamt"
    GroupLevel =0
    Expression ="IIf([VE]>1,1,IIf([Ansatz]>1,2,3))"
    GroupLevel =0
    Expression ="Buchungsstellen.Sammelbuchungsstelle"
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
        dbInteger "ColumnOrder" ="7"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Ansatz"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.HHR"
        dbInteger "ColumnWidth" ="1755"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.VE"
        dbInteger "ColumnWidth" ="1605"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnOrder" ="6"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="zufVfgohneVE"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnWidth" ="1485"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="8"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Massnahme_"
        dbInteger "ColumnWidth" ="8175"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="10"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.sollgesamt"
        dbInteger "ColumnWidth" ="1995"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="12"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Buchungsstellen.Buchungsstelle"
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Jahr"
        dbInteger "ColumnOrder" ="3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.[Gesamt_HH-Mittel]"
        dbInteger "ColumnOrder" ="9"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.Aufträge"
        dbInteger "ColumnOrder" ="11"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Buchungsstellen.Sammelbuchungsstelle"
        dbInteger "ColumnWidth" ="2370"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sort"
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
    Right =1650
    Bottom =854
    Left =-1
    Top =-1
    Right =1626
    Bottom =525
    Left =40
    Top =0
    ColumnsShown =543
    Begin
        Left =350
        Top =255
        Right =550
        Bottom =523
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =345
        Top =4
        Right =548
        Bottom =147
        Top =0
        Name ="Buchungsstellen"
        Name =""
    End
    Begin
        Left =636
        Top =4
        Right =982
        Bottom =187
        Top =0
        Name ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle"
        Name =""
    End
    Begin
        Left =16
        Top =122
        Right =216
        Bottom =338
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =931
        Top =298
        Right =1128
        Bottom =442
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =637
        Top =286
        Right =857
        Bottom =503
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =345
        Top =152
        Right =547
        Bottom =248
        Top =0
        Name ="Finanzquellen"
        Name =""
    End
End
