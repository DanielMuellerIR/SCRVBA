Operation =2
Name ="B_Ergebnisse_E"
Option =0
Having ="(((B_Abfrage_für_Bericht_4.Flur) Is Not Null))"
Begin InputTables
    Name ="B_Abfrage_für_Bericht_4"
End
Begin OutputColumns
    Expression ="B_Abfrage_für_Bericht_4.ID_Gebäudeteil"
    Expression ="B_Abfrage_für_Bericht_4.Flur"
    Expression ="B_Abfrage_für_Bericht_4.Flurstücke"
    Expression ="B_Abfrage_für_Bericht_4.Fläche"
    Expression ="B_Abfrage_für_Bericht_4.Bodenrichtwert"
    Alias ="Grundstückswert"
    Expression ="IIf([voll berechnen]=Yes,[Bodenrichtwert]*[Fläche],[Bodenrichtwert]*[Fläche]*([F"
        "ormulare]![startformular]![Anteil Bodenrichtwert]/100))"
End
Begin Groups
    Expression ="B_Abfrage_für_Bericht_4.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="B_Abfrage_für_Bericht_4.Flur"
    GroupLevel =0
    Expression ="B_Abfrage_für_Bericht_4.Flurstücke"
    GroupLevel =0
    Expression ="B_Abfrage_für_Bericht_4.Fläche"
    GroupLevel =0
    Expression ="B_Abfrage_für_Bericht_4.Bodenrichtwert"
    GroupLevel =0
    Expression ="IIf([voll berechnen]=Yes,[Bodenrichtwert]*[Fläche],[Bodenrichtwert]*[Fläche]*([F"
        "ormulare]![startformular]![Anteil Bodenrichtwert]/100))"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="0"
dbByte "Orientation" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="B_Abfrage_für_Bericht_4.Flurstücke"
        dbInteger "ColumnWidth" ="2640"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Grundstückswert"
        dbInteger "ColumnWidth" ="1725"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Bericht_4.Kennummer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Bericht_4.ID_Gebäude"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Bericht_4.Flur"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Bericht_4.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1197
    Bottom =854
    Left =-1
    Top =-1
    Right =1173
    Bottom =338
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =98
        Top =81
        Right =590
        Bottom =278
        Top =0
        Name ="B_Abfrage_für_Bericht_4"
        Name =""
    End
End
