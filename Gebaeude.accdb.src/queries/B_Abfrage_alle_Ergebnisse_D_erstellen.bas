Operation =2
Name ="B_Ergebnisse_D"
Option =0
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
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Abschreibung Jahr"
        dbInteger "ColumnWidth" ="2115"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschreibung Jahre"
        dbInteger "ColumnWidth" ="2235"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="kumulierte Abschreibung"
        dbInteger "ColumnWidth" ="2775"
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
    End
    Begin
        dbText "Name" ="B_Abfrage_alle_Ergebnisse_A.Nutzungsdauer"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1444
    Bottom =996
    Left =-1
    Top =-1
    Right =1412
    Bottom =587
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =43
        Top =32
        Right =334
        Bottom =558
        Top =0
        Name ="B_Abfrage_alle_Ergebnisse_A"
        Name =""
    End
    Begin
        Left =453
        Top =32
        Right =735
        Bottom =178
        Top =0
        Name ="B_Abfrage_alle_Ergebnisse_C"
        Name =""
    End
End
