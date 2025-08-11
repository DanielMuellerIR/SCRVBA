Operation =1
Option =0
Where ="(((A_Buchungen.Haushaltsjahr)=Year(Now())))"
Begin InputTables
    Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Name ="A_Buchungen"
    Name ="M_Kostenstellen"
    Name ="M_Verzeichnis Nebenkosten"
End
Begin OutputColumns
    Expression ="M_Kostenstellen.Kostenstelle"
    Expression ="M_Kostenstellen.Bezeichnung"
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
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
    LeftTable ="A_Buchungen"
    RightTable ="M_Verzeichnis Nebenkosten"
    Expression ="A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID"
    Flag =2
End
Begin OrderBy
    Expression ="M_Kostenstellen.Kostenstelle"
    Flag =0
End
Begin Groups
    Expression ="M_Kostenstellen.Kostenstelle"
    GroupLevel =0
    Expression ="M_Kostenstellen.Bezeichnung"
    GroupLevel =0
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
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
        dbInteger "ColumnWidth" ="5040"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von Betrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Kostenstelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1468
    Bottom =1004
    Left =-1
    Top =-1
    Right =1444
    Bottom =583
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =212
        Top =17
        Right =361
        Bottom =160
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
        Name =""
    End
    Begin
        Left =419
        Top =16
        Right =664
        Bottom =401
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =17
        Top =33
        Right =169
        Bottom =134
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =719
        Top =320
        Right =1021
        Bottom =415
        Top =0
        Name ="M_Verzeichnis Nebenkosten"
        Name =""
    End
End
