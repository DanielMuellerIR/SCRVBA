Operation =1
Option =0
Where ="(((Sachbearbeiter.Objektverantwortlicher)=True))"
Begin InputTables
    Name ="Sachbearbeiter"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Expression ="Sachbearbeiter.Name"
    Expression ="tbl_100_10_Liegenschaften.Bezeichnung"
    Alias ="Straße_HNr"
    Expression ="[M_Strassenverzeichnis].[Name] & \" \" & [Haus_Nr]"
    Expression ="Sachbearbeiter.Objektverantwortlicher"
End
Begin Joins
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="Sachbearbeiter"
    RightTable ="tbl_100_10_Liegenschaften"
    Expression ="Sachbearbeiter.ID = tbl_100_10_Liegenschaften.ID_SB"
    Flag =1
End
Begin OrderBy
    Expression ="Sachbearbeiter.Name"
    Flag =0
    Expression ="[M_Strassenverzeichnis].[Name] & \" \" & [Haus_Nr]"
    Flag =0
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
        dbText "Name" ="Sachbearbeiter.Name"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Straße_HNr "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Bezeichnung"
        dbInteger "ColumnWidth" ="3150"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gebäudeliste.Bezeichung"
        dbInteger "ColumnWidth" ="3150"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Bezeichung"
        dbInteger "ColumnWidth" ="3150"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gebäudeliste.[Straße Hausnummer]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Strassenverzeichnis.Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Straße_HNr"
        dbInteger "ColumnWidth" ="2730"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sachbearbeiter.[Objektverantwortliche/r]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sachbearbeiter.Objektverantwortlicher"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1634
    Bottom =841
    Left =-1
    Top =-1
    Right =1610
    Bottom =509
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =43
        Top =111
        Right =307
        Bottom =302
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
    Begin
        Left =403
        Top =29
        Right =703
        Bottom =409
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =772
        Top =62
        Right =916
        Bottom =206
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
