Operation =1
Option =0
Having ="((([Zusammenstellung NK_0].Haushaltsjahr)=[welches Jahr?]))"
Begin InputTables
    Name ="Zusammenstellung NK_0"
    Name ="M_Bereiche"
    Name ="M_Betriebe"
End
Begin OutputColumns
    Expression ="[Zusammenstellung NK_0].Haushaltsjahr"
    Expression ="M_Betriebe.Betrieb"
    Expression ="M_Bereiche.BereichNr"
    Expression ="M_Bereiche.BereichName"
    Expression ="[Zusammenstellung NK_0].Kostenstelle"
    Expression ="[Zusammenstellung NK_0].Kostenstelle_Infoma"
    Expression ="[Zusammenstellung NK_0].Bezeichnung"
    Expression ="[Zusammenstellung NK_0].Nebenkosten_Art"
    Alias ="Summe von Betrag"
    Expression ="Sum([Zusammenstellung NK_0].Betrag)"
End
Begin Joins
    LeftTable ="Zusammenstellung NK_0"
    RightTable ="M_Bereiche"
    Expression ="[Zusammenstellung NK_0].BereichNr = M_Bereiche.BereichNr"
    Flag =1
    LeftTable ="M_Betriebe"
    RightTable ="M_Bereiche"
    Expression ="M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb"
    Flag =1
End
Begin OrderBy
    Expression ="[Zusammenstellung NK_0].Haushaltsjahr"
    Flag =0
    Expression ="M_Bereiche.BereichNr"
    Flag =0
    Expression ="M_Bereiche.BereichName"
    Flag =0
    Expression ="[Zusammenstellung NK_0].Kostenstelle"
    Flag =0
    Expression ="[Zusammenstellung NK_0].Bezeichnung"
    Flag =0
    Expression ="[Zusammenstellung NK_0].Nebenkosten_Art"
    Flag =0
End
Begin Groups
    Expression ="[Zusammenstellung NK_0].Haushaltsjahr"
    GroupLevel =0
    Expression ="M_Betriebe.Betrieb"
    GroupLevel =0
    Expression ="M_Bereiche.BereichNr"
    GroupLevel =0
    Expression ="M_Bereiche.BereichName"
    GroupLevel =0
    Expression ="[Zusammenstellung NK_0].Kostenstelle"
    GroupLevel =0
    Expression ="[Zusammenstellung NK_0].Kostenstelle_Infoma"
    GroupLevel =0
    Expression ="[Zusammenstellung NK_0].Bezeichnung"
    GroupLevel =0
    Expression ="[Zusammenstellung NK_0].Nebenkosten_Art"
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
        dbText "Name" ="[Zusammenstellung NK_0].Nebenkosten_Art"
        dbInteger "ColumnWidth" ="3675"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Bereiche.BereichName"
        dbInteger "ColumnWidth" ="1455"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von Betrag"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Zusammenstellung NK_0].Haushaltsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Betriebe.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Bereiche.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Zusammenstellung NK_0].Kostenstelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Zusammenstellung NK_0].Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Zusammenstellung NK_0].Kostenstelle_Infoma"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1882
    Bottom =861
    Left =-1
    Top =-1
    Right =1858
    Bottom =502
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =1054
        Top =28
        Right =1314
        Bottom =355
        Top =0
        Name ="Zusammenstellung NK_0"
        Name =""
    End
    Begin
        Left =772
        Top =245
        Right =929
        Bottom =477
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =376
        Top =297
        Right =633
        Bottom =491
        Top =0
        Name ="M_Betriebe"
        Name =""
    End
End
