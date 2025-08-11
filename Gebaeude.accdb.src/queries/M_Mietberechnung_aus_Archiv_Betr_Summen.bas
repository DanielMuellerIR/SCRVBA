Operation =1
Option =8
Begin InputTables
    Name ="M_Mietberechnung_aus_Archiv"
End
Begin OutputColumns
    Expression ="M_Mietberechnung_aus_Archiv.Planjahr"
    Expression ="M_Mietberechnung_aus_Archiv.NK_Grundl_Jahr"
    Expression ="M_Mietberechnung_aus_Archiv.Betrieb"
    Expression ="M_Mietberechnung_aus_Archiv.BereichNr"
    Expression ="M_Mietberechnung_aus_Archiv.BereichName"
    Expression ="M_Mietberechnung_aus_Archiv.Objekt"
    Expression ="M_Mietberechnung_aus_Archiv.Sportfläche"
    Expression ="M_Mietberechnung_aus_Archiv.Sportfl"
    Expression ="M_Mietberechnung_aus_Archiv.sort"
    Expression ="M_Mietberechnung_aus_Archiv.Sorttext"
    Expression ="M_Mietberechnung_aus_Archiv.Kostenart"
    Alias ="Sum_BGF_Sp_Fl"
    Expression ="Sum(M_Mietberechnung_aus_Archiv.Sum_BGF_Sp_Fl)"
    Alias ="Sum_BGF_Gb_LS"
    Expression ="Sum(M_Mietberechnung_aus_Archiv.Sum_BGF_Gb_LS)"
    Alias ="betrag_"
    Expression ="M_Mietberechnung_aus_Archiv.betrag_"
    Expression ="M_Mietberechnung_aus_Archiv.text"
End
Begin Groups
    Expression ="M_Mietberechnung_aus_Archiv.Planjahr"
    GroupLevel =0
    Expression ="M_Mietberechnung_aus_Archiv.NK_Grundl_Jahr"
    GroupLevel =0
    Expression ="M_Mietberechnung_aus_Archiv.Betrieb"
    GroupLevel =0
    Expression ="M_Mietberechnung_aus_Archiv.BereichNr"
    GroupLevel =0
    Expression ="M_Mietberechnung_aus_Archiv.BereichName"
    GroupLevel =0
    Expression ="M_Mietberechnung_aus_Archiv.Objekt"
    GroupLevel =0
    Expression ="M_Mietberechnung_aus_Archiv.Sportfläche"
    GroupLevel =0
    Expression ="M_Mietberechnung_aus_Archiv.Sportfl"
    GroupLevel =0
    Expression ="M_Mietberechnung_aus_Archiv.sort"
    GroupLevel =0
    Expression ="M_Mietberechnung_aus_Archiv.Sorttext"
    GroupLevel =0
    Expression ="M_Mietberechnung_aus_Archiv.Kostenart"
    GroupLevel =0
    Expression ="M_Mietberechnung_aus_Archiv.betrag_"
    GroupLevel =0
    Expression ="M_Mietberechnung_aus_Archiv.text"
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
        dbText "Name" ="M_Mietberechnung_aus_Archiv.text"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Mietberechnung_aus_Archiv.Planjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sum_BGF_Sp_Fl "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sum_BGF_Gb_LS "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="betrag_ "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Mietberechnung_aus_Archiv.Objekt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Mietberechnung_aus_Archiv.Sportfläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Mietberechnung_aus_Archiv.Sportfl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Mietberechnung_aus_Archiv.sort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Mietberechnung_aus_Archiv.Sorttext"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Mietberechnung_aus_Archiv.Kostenart"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Mietberechnung_aus_Archiv.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Mietberechnung_aus_Archiv.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Mietberechnung_aus_Archiv.BereichName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sum_BGF_Sp_Fl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sum_BGF_Gb_LS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="betrag_"
        dbInteger "ColumnWidth" ="3030"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="M_Mietberechnung_aus_Archiv.NK_Grundl_Jahr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1874
    Bottom =991
    Left =-1
    Top =-1
    Right =1850
    Bottom =446
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =254
        Top =72
        Right =624
        Bottom =407
        Top =0
        Name ="M_Mietberechnung_aus_Archiv"
        Name =""
    End
End
