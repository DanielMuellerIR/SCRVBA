Operation =1
Option =0
Begin InputTables
    Name ="B_Abfrage_alle_Ergebnisse_B"
End
Begin OutputColumns
    Expression ="B_Abfrage_alle_Ergebnisse_B.ID_Gebäudeteil"
    Expression ="B_Abfrage_alle_Ergebnisse_B.Herstellungskosten3"
    Alias ="Außenanlagen"
    Expression ="IIf(IsNull([Neubauwert_ab_2000]),IIf(IsNull([Herstellungskosten3]),0,[Herstellun"
        "gskosten3]*4/100),0)"
    Expression ="B_Abfrage_alle_Ergebnisse_B.Mehrwert_"
    Alias ="Herstellungskosten"
    Expression ="[Herstellungskosten3]+IIf(IsNull([Neubauwert_ab_2000]),IIf(IsNull([Herstellungsk"
        "osten3]),0,[Herstellungskosten3]*4/100),0)+[Mehrwert_]"
End
Begin Groups
    Expression ="B_Abfrage_alle_Ergebnisse_B.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="B_Abfrage_alle_Ergebnisse_B.Herstellungskosten3"
    GroupLevel =0
    Expression ="IIf(IsNull([Neubauwert_ab_2000]),IIf(IsNull([Herstellungskosten3]),0,[Herstellun"
        "gskosten3]*4/100),0)"
    GroupLevel =0
    Expression ="B_Abfrage_alle_Ergebnisse_B.Mehrwert_"
    GroupLevel =0
    Expression ="[Herstellungskosten3]+IIf(IsNull([Neubauwert_ab_2000]),IIf(IsNull([Herstellungsk"
        "osten3]),0,[Herstellungskosten3]*4/100),0)+[Mehrwert_]"
    GroupLevel =0
    Expression ="B_Abfrage_alle_Ergebnisse_B.Neubauwert_ab_2000"
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
Begin
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse_B.Herstellungskosten3"
        dbInteger "ColumnWidth" ="2040"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Außenanlagen"
        dbInteger "ColumnWidth" ="1545"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse_B.Mehrwert_"
        dbInteger "ColumnWidth" ="1215"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Herstellungskosten"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse_B.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1393
    Bottom =984
    Left =-1
    Top =-1
    Right =1361
    Bottom =253
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =283
        Bottom =113
        Top =0
        Name ="B_Abfrage_alle_Ergebnisse_B"
        Name =""
    End
End
