Operation =1
Option =0
Having ="(((A_Buchungen.[ID Nebenkostenart])=31) AND ((A_Buchungen.Haushaltsjahr)>2008))"
Begin InputTables
    Name ="M_Kostenstellen"
    Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Name ="A_Buchungen"
End
Begin OutputColumns
    Expression ="M_Kostenstellen.Kostenstelle"
    Expression ="M_Kostenstellen.Bezeichnung"
    Expression ="A_Buchungen.[ID Nebenkostenart]"
    Expression ="A_Buchungen.Haushaltsjahr"
    Alias ="Summe von Betrag"
    Expression ="Sum(A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag)"
End
Begin Joins
    LeftTable ="M_Kostenstellen"
    RightTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Expression ="M_Kostenstellen.Kennummer = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kos"
        "tenstellen]"
    Flag =2
    LeftTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    RightTable ="A_Buchungen"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen] = A_Buchungen.ID"
    Flag =2
End
Begin OrderBy
    Expression ="M_Kostenstellen.Kostenstelle"
    Flag =0
    Expression ="A_Buchungen.Haushaltsjahr"
    Flag =0
End
Begin Groups
    Expression ="M_Kostenstellen.Kostenstelle"
    GroupLevel =0
    Expression ="M_Kostenstellen.Bezeichnung"
    GroupLevel =0
    Expression ="A_Buchungen.[ID Nebenkostenart]"
    GroupLevel =0
    Expression ="A_Buchungen.Haushaltsjahr"
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
        dbText "Name" ="M_Kostenstellen.Bezeichnung"
        dbInteger "ColumnWidth" ="4575"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.[ID Nebenkostenart]"
        dbInteger "ColumnWidth" ="1890"
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
    Bottom =489
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =177
        Bottom =120
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =215
        Top =6
        Right =407
        Bottom =120
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
        Name =""
    End
    Begin
        Left =512
        Top =21
        Right =806
        Bottom =420
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
End
