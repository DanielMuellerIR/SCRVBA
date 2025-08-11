Operation =1
Option =0
Where ="(((tbl_100_20_Gebäudeteile.angemietetes_Gebäude)=False) AND ((tbl_100_20_Gebäude"
    "teile.Bilanz_relevant)=False) AND ((tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT) Is"
    " Null) AND ((tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz) Is Null Or (tbl_200"
    "_05_10_Bewertungsläufe.Erst_Folgebilanz)<>1) AND ((tbl_100_20_Gebäudeteile.Nicht"
    "_mehr_in_Betr_seit) Is Null) AND ((tbl_100_20_Gebäudeteile.Zust_B60)=True)) OR ("
    "((tbl_100_20_Gebäudeteile.angemietetes_Gebäude)=False) AND ((tbl_100_20_Gebäudet"
    "eile.Bilanz_relevant)=False) AND ((tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT) Is "
    "Null) AND ((tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz)=1) AND ((tbl_100_20_"
    "Gebäudeteile.Nicht_mehr_in_Betr_seit) Is Null) AND ((tbl_100_20_Gebäudeteile.Zus"
    "t_B60)=True)) OR (((tbl_100_20_Gebäudeteile.Bilanz_relevant)=False) AND ((tbl_10"
    "0_20_Gebäudeteile.ID_GebT_Zug_GebT) Is Not Null) AND ((tbl_200_05_10_Bewertungsl"
    "äufe.Erst_Folgebilanz)=1) AND ((tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_seit)"
    " Is Null) AND ((tbl_100_20_Gebäudeteile.Zust_B60)=True)) OR (((tbl_100_20_Gebäud"
    "eteile.Bilanz_relevant)=True) AND ((tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT) Is"
    " Null) AND ((tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz) Is Null Or (tbl_200"
    "_05_10_Bewertungsläufe.Erst_Folgebilanz)<>1) AND ((tbl_100_20_Gebäudeteile.Nicht"
    "_mehr_in_Betr_seit) Is Null) AND ((tbl_100_20_Gebäudeteile.Zust_B60)=True)) OR ("
    "((tbl_100_20_Gebäudeteile.Bilanz_relevant)=True) AND ((tbl_100_20_Gebäudeteile.I"
    "D_GebT_Zug_GebT) Is Not Null) AND ((tbl_200_05_10_Bewertungsläufe.Erst_Folgebila"
    "nz) Is Null Or (tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz)<>1) AND ((tbl_10"
    "0_20_Gebäudeteile.Nicht_mehr_in_Betr_seit) Is Null) AND ((tbl_100_20_Gebäudeteil"
    "e.Zust_B60)=True)) OR (((tbl_100_20_Gebäudeteile.Bilanz_relevant)=True) AND ((tb"
    "l_100_20_Gebäudeteile.ID_GebT_Zug_GebT) Is Not Null) AND ((tbl_200_05_10_Bewertu"
    "ngsläufe.Erst_Folgebilanz)=1) AND ((tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_s"
    "eit) Is Null) AND ((tbl_100_20_Gebäudeteile.Zust_B60)=True))"
Begin InputTables
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_200_10_10_Bewertungsbilanzen"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
    Name ="tbl_200_05_10_Bewertungsläufe"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Alias ="Obj"
    Expression ="[NAme] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Lieg"
        "enschaften].[Bezeichnung] & \" -> \" & [tbl_100_20_Gebäudeteile].[Gebäudeteil]"
    Alias ="Status"
    Expression ="fc_GebT_Status([Bilanz_relevant],[ID_GebT_Zug_GebT],[tbl_200_05_10_Bewertungsläu"
        "fe].[Erst_Folgebilanz],[tbl_100_20_Gebäudeteile].[ID_Gebäudeteil])"
    Alias ="Erstb_zulssg"
    Expression ="fc_Erstbewert_zulaessig([Bilanz_relevant],[ID_GebT_Zug_GebT],[tbl_200_05_10_Bewe"
        "rtungsläufe].[Erst_Folgebilanz])"
    Expression ="tbl_100_20_Gebäudeteile.angemietetes_Gebäude"
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="tbl_200_10_10_Bewertungsbilanzen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_200_10_10_Bewertungsbilanzen.ID_Geb"
        "äudeteil"
    Flag =2
    LeftTable ="M_Strassenverzeichnis"
    RightTable ="tbl_100_10_Liegenschaften"
    Expression ="M_Strassenverzeichnis.Kennummer = tbl_100_10_Liegenschaften.Kennummer_Straße"
    Flag =3
    LeftTable ="tbl_200_05_10_Bewertungsläufe"
    RightTable ="tbl_200_10_10_Bewertungsbilanzen"
    Expression ="tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Be"
        "wert"
    Flag =3
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
End
Begin OrderBy
    Expression ="[NAme] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Lieg"
        "enschaften].[Bezeichnung] & \" -> \" & [tbl_100_20_Gebäudeteile].[Gebäudeteil]"
    Flag =0
    Expression ="fc_GebT_Status([Bilanz_relevant],[ID_GebT_Zug_GebT],[tbl_200_05_10_Bewertungsläu"
        "fe].[Erst_Folgebilanz],[tbl_100_20_Gebäudeteile].[ID_Gebäudeteil])"
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
dbMemo "Filter" ="([qry_200_05_10_Fehlende_Erstbewertungen].[Status]=\"Erstbil. zum Geb.teil fehlt"
    "\")"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Obj "
        dbInteger "ColumnWidth" ="4905"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Obj"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="7740"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="Status "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Status"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="5385"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="Erstb_zulssg "
        dbLong "AggregateType" ="-1"
        dbText "Format" ="On/Off"
    End
    Begin
        dbText "Name" ="Erstb_zulssg"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.angemietetes_Gebäude"
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
    Bottom =426
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =387
        Top =89
        Right =674
        Bottom =280
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =798
        Top =40
        Right =1075
        Bottom =371
        Top =0
        Name ="tbl_200_10_10_Bewertungsbilanzen"
        Name =""
    End
    Begin
        Left =35
        Top =104
        Right =299
        Bottom =346
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =400
        Top =301
        Right =624
        Bottom =414
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =1200
        Top =58
        Right =1406
        Bottom =228
        Top =0
        Name ="tbl_200_05_10_Bewertungsläufe"
        Name =""
    End
End
