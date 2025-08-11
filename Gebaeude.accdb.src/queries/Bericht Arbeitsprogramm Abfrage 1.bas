Operation =1
Option =0
Where ="(((Maßnahmen.ID) Like [Formulare]![Filter für Arbeitsprogramm]![Massnahme]) AND "
    "((Haushaltsdaten.[ID aus Maßnahmen]) Is Not Null) AND ((Maßnahmen.Bearbeiter) Li"
    "ke [Formulare]![Filter für Arbeitsprogramm]![Bearbeiter]) AND ((Maßnahmen.[erled"
    "igt im Jahr]) Is Null) AND (([Gebäudeliste].[Bezeichung]+[Straße Hausnummer]) Li"
    "ke [Formulare]![Filter für Arbeitsprogramm]![Gebäude]))"
Begin InputTables
    Name ="Sachbearbeiter"
    Name ="Maßnahmen"
    Name ="Haushaltsdaten"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Expression ="Maßnahmen.ID"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude"
    Alias ="Gebäude"
    Expression ="[M_Strassenverzeichnis].[Name] & \" \" & [Haus_Nr] & \",  \" & [Bezeichnung]"
    Expression ="Sachbearbeiter.Name"
    Expression ="Maßnahmen.Maßnahme"
    Expression ="Maßnahmen.[voraussichtliche Kosten gesamt]"
    Expression ="Haushaltsdaten.[ID aus Maßnahmen]"
    Expression ="Maßnahmen.Bearbeiter"
    Expression ="Maßnahmen.[erledigt im Jahr]"
    Alias ="text"
    Expression ="[Maßnahme] & \"                     \" & [Bearbeiter]"
End
Begin Joins
    LeftTable ="Maßnahmen"
    RightTable ="Haushaltsdaten"
    Expression ="Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =2
    LeftTable ="Sachbearbeiter"
    RightTable ="tbl_100_10_Liegenschaften"
    Expression ="Sachbearbeiter.ID = tbl_100_10_Liegenschaften.ID_SB"
    Flag =3
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="Maßnahmen"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = Maßnahmen.ID_Gebäude"
    Flag =3
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
End
Begin OrderBy
    Expression ="[M_Strassenverzeichnis].[Name] & \" \" & [Haus_Nr] & \",  \" & [Bezeichnung]"
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
        dbText "Name" ="Gebäude"
        dbInteger "ColumnWidth" ="5595"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.ID"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="text"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.ID_Gebäude"
        dbInteger "ColumnWidth" ="1665"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
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
    Bottom =542
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =688
        Top =322
        Right =897
        Bottom =449
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
    Begin
        Left =71
        Top =75
        Right =281
        Bottom =272
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =378
        Top =25
        Right =596
        Bottom =192
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =378
        Top =211
        Right =603
        Bottom =440
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =687
        Top =205
        Right =895
        Bottom =313
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
