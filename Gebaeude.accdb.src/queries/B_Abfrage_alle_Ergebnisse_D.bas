Operation =1
Option =0
Where ="(((B_Abfrage_alle_Ergebnisse_A.Nutzungsdauer)<>0))"
Begin InputTables
    Name ="B_Abfrage_alle_Ergebnisse_A"
    Name ="B_Abfrage_alle_Ergebnisse_C"
End
Begin OutputColumns
    Expression ="B_Abfrage_alle_Ergebnisse_A.ID_Gebäudeteil"
    Expression ="B_Abfrage_alle_Ergebnisse_C.Herstellungskosten"
    Expression ="B_Abfrage_alle_Ergebnisse_A.Nutzungsdauer"
    Alias ="Abschreibung Jahre"
    Expression ="IIf([Formulare]![startformular]![Bewertungsjahr]-[berücksichtigtes Baujahr]>[Nut"
        "zungsdauer],[Nutzungsdauer],[Formulare]![startformular]![Bewertungsjahr]-[berück"
        "sichtigtes Baujahr])"
    Alias ="Abschreibung Jahr"
    Expression ="[Herstellungskosten]/[Nutzungsdauer]"
    Alias ="kumulierte Abschreibung"
    Expression ="[Herstellungskosten]/[Nutzungsdauer]*IIf([Formulare]![startformular]![Bewertungs"
        "jahr]-[berücksichtigtes Baujahr]>[Nutzungsdauer],[Nutzungsdauer],[Formulare]![st"
        "artformular]![Bewertungsjahr]-[berücksichtigtes Baujahr])"
End
Begin Joins
    LeftTable ="B_Abfrage_alle_Ergebnisse_A"
    RightTable ="B_Abfrage_alle_Ergebnisse_C"
    Expression ="B_Abfrage_alle_Ergebnisse_A.ID_Gebäudeteil = B_Abfrage_alle_Ergebnisse_C.ID_Gebä"
        "udeteil"
    Flag =1
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
        dbText "Name" ="Abschreibung Jahr"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschreibung Jahre"
        dbInteger "ColumnWidth" ="2055"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="kumulierte Abschreibung"
        dbInteger "ColumnWidth" ="2535"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse_A.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse_C.Herstellungskosten"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2220"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse_A.Nutzungsdauer"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1830"
        dbBoolean "ColumnHidden" ="0"
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
    Bottom =461
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =37
        Top =67
        Right =445
        Bottom =430
        Top =0
        Name ="B_Abfrage_alle_Ergebnisse_A"
        Name =""
    End
    Begin
        Left =502
        Top =65
        Right =897
        Bottom =220
        Top =0
        Name ="B_Abfrage_alle_Ergebnisse_C"
        Name =""
    End
End
