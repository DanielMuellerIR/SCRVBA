Operation =1
Option =0
Begin InputTables
    Name ="Union_Abfrage_Mietberechnung_mit_Filter"
End
Begin OutputColumns
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.ID_Gebäude"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Planjahr"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Betrieb"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.BereichNr"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.BereichName"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Objekt"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Sportfläche"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Sportfl"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.sort"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Sorttext"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Kostenart"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Kennummer"
    Alias ="Sum_BGF_Gb_LS"
    Expression ="Sum(Union_Abfrage_Mietberechnung_mit_Filter.Sum_BGF_Gb_LS)"
    Alias ="Sum_BGF_Sp_Fl"
    Expression ="Sum(Union_Abfrage_Mietberechnung_mit_Filter.Sum_BGF_Sp_Fl)"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Anteile"
    Alias ="Betrag_"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Betrag_"
    Alias ="Text"
    Expression ="\"\""
End
Begin Groups
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.ID_Gebäude"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Planjahr"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Betrieb"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.BereichNr"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.BereichName"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Objekt"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Sportfläche"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Sportfl"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.sort"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Sorttext"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Kostenart"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Kennummer"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Anteile"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Betrag_"
    GroupLevel =0
    Expression ="\"\""
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
dbBoolean "TotalsRow" ="-1"
Begin
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.sort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Sorttext"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Planjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Kennummer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.BereichName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Objekt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Sportfl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Kostenart"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3030"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Anteile"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag_ "
        dbInteger "ColumnWidth" ="3960"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag_"
        dbInteger "ColumnWidth" ="2895"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Sportfläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.ID_Gebäude"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Text "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sum_BGF_Gb_LS "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sum_BGF_Sp_Fl "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sum_BGF_Gb_LS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Text"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sum_BGF_Sp_Fl"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1447
    Bottom =853
    Left =-1
    Top =-1
    Right =1423
    Bottom =396
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =42
        Top =18
        Right =439
        Bottom =323
        Top =0
        Name ="Union_Abfrage_Mietberechnung_mit_Filter"
        Name =""
    End
End
