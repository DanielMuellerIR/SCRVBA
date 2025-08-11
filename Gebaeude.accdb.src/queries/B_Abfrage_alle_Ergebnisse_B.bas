Operation =1
Option =0
Begin InputTables
    Name ="B_Abfrage_alle_Ergebnisse_A"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="B_Sanierungsstau_Werterhöhung"
End
Begin OutputColumns
    Expression ="B_Abfrage_alle_Ergebnisse_A.ID_Gebäudeteil"
    Alias ="Herstellungskosten3"
    Expression ="IIf(IsNull([Herstellungskosten2]),IIf(IsNull([herstellungskosten1]),0,[Herstellu"
        "ngskosten1]),[Herstellungskosten2])"
    Alias ="Mehrwert_"
    Expression ="Sum(IIf(IsNull([Mehrwert]),0,[Mehrwert]))"
    Expression ="B_Abfrage_alle_Ergebnisse_A.Neubauwert_ab_2000"
End
Begin Joins
    LeftTable ="B_Abfrage_alle_Ergebnisse_A"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="B_Abfrage_alle_Ergebnisse_A.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudet"
        "eil"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="B_Sanierungsstau_Werterhöhung"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.[Kennnumm"
        "er aus B_Gebäudeliste]"
    Flag =2
End
Begin Groups
    Expression ="B_Abfrage_alle_Ergebnisse_A.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="IIf(IsNull([Herstellungskosten2]),IIf(IsNull([herstellungskosten1]),0,[Herstellu"
        "ngskosten1]),[Herstellungskosten2])"
    GroupLevel =0
    Expression ="B_Abfrage_alle_Ergebnisse_A.Neubauwert_ab_2000"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbBoolean "UseTransaction" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Herstellungskosten3"
        dbInteger "ColumnWidth" ="2040"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Mehrwert_"
        dbInteger "ColumnWidth" ="1215"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse_A.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse_A.Neubauwert_ab_2000"
        dbInteger "ColumnWidth" ="2445"
        dbBoolean "ColumnHidden" ="0"
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
    Bottom =459
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =32
        Top =51
        Right =344
        Bottom =443
        Top =0
        Name ="B_Abfrage_alle_Ergebnisse_A"
        Name =""
    End
    Begin
        Left =389
        Top =51
        Right =650
        Bottom =194
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =720
        Top =50
        Right =1168
        Bottom =142
        Top =0
        Name ="B_Sanierungsstau_Werterhöhung"
        Name =""
    End
End
