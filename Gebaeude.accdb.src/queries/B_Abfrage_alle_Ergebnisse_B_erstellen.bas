Operation =2
Name ="B_Ergebnisse_B"
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
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
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
    Bottom =580
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
        Left =417
        Top =51
        Right =662
        Bottom =307
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =758
        Top =49
        Right =1206
        Bottom =141
        Top =0
        Name ="B_Sanierungsstau_Werterhöhung"
        Name =""
    End
End
