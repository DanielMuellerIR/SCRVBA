Operation =1
Option =0
Where ="(((tbl_100_10_Liegenschaften.ID_Gebäude) Between F_Variable(\"lng_ID_Geb_Min\") "
    "And F_Variable(\"lng_ID_Geb_Max\")) AND ((tbl_100_10_Liegenschaften.Nicht_mehr_i"
    "n_Betr_seit) Is Null Or (tbl_100_10_Liegenschaften.Nicht_mehr_in_Betr_seit)=0))"
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
    Name ="Sachbearbeiter"
    Name ="Sachbearbeiter"
    Alias ="Sachbearbeiter_1"
    Name ="Sachbearbeiter"
    Alias ="Sachbearbeiter_2"
    Name ="Sachbearbeiter"
    Alias ="Sachbearbeiter_3"
    Name ="Sachbearbeiter"
    Alias ="Sachbearbeiter_4"
End
Begin OutputColumns
    Alias ="Liegenschaft"
    Expression ="[M_Strassenverzeichnis].[Name] & ' ' & [Haus_Nr] & \": \" & [Bezeichnung]"
    Alias ="obj_V"
    Expression ="IIf([Sachbearbeiter].[Name] Is Null,\"–––\",[Sachbearbeiter].[Name])"
    Alias ="GS_V"
    Expression ="IIf([Sachbearbeiter_1].[Name] Is Null,\"–––\",[Sachbearbeiter_1].[Name])"
    Alias ="FP_El"
    Expression ="IIf([Sachbearbeiter_2].[Name] Is Null,\"–––\",[Sachbearbeiter_2].[Name])"
    Alias ="FP_HLS"
    Expression ="IIf([Sachbearbeiter_3].[Name] Is Null,\"–––\",[Sachbearbeiter_3].[Name])"
    Alias ="Verm_V"
    Expression ="IIf([Sachbearbeiter_4].[Name] Is Null,\"–––\",[Sachbearbeiter_4].[Name])"
End
Begin Joins
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="Sachbearbeiter"
    Expression ="tbl_100_10_Liegenschaften.ID_SB = Sachbearbeiter.ID"
    Flag =2
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="Sachbearbeiter_1"
    Expression ="tbl_100_10_Liegenschaften.ID_SB_Grundst = Sachbearbeiter_1.ID"
    Flag =2
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="Sachbearbeiter_2"
    Expression ="tbl_100_10_Liegenschaften.ID_SB_Fachpl_Elek = Sachbearbeiter_2.ID"
    Flag =2
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="Sachbearbeiter_3"
    Expression ="tbl_100_10_Liegenschaften.ID_SB_Fachpl_HLS = Sachbearbeiter_3.ID"
    Flag =2
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="Sachbearbeiter_4"
    Expression ="tbl_100_10_Liegenschaften.ID_SB_Mietverantw = Sachbearbeiter_4.ID"
    Flag =2
End
Begin OrderBy
    Expression ="[M_Strassenverzeichnis].[Name] & ' ' & [Haus_Nr] & \": \" & [Bezeichnung]"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="GS_V"
        dbInteger "ColumnWidth" ="3735"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="obj_V "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="obj_V"
        dbInteger "ColumnWidth" ="3735"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="GS_V "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FP_El "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FP_HLS "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FP_El"
        dbInteger "ColumnWidth" ="3735"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FP_HLS"
        dbInteger "ColumnWidth" ="3735"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Verm_V "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Verm_V"
        dbInteger "ColumnWidth" ="3735"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Liegenschaft"
        dbInteger "ColumnWidth" ="5835"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Nicht_mehr_in_Betr_seit"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1494
    Bottom =921
    Left =-1
    Top =-1
    Right =1474
    Bottom =422
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =289
        Bottom =301
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =352
        Top =19
        Right =581
        Bottom =117
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =349
        Top =127
        Right =580
        Bottom =216
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
    Begin
        Left =349
        Top =231
        Right =585
        Bottom =308
        Top =0
        Name ="Sachbearbeiter_1"
        Name =""
    End
    Begin
        Left =343
        Top =315
        Right =585
        Bottom =395
        Top =0
        Name ="Sachbearbeiter_2"
        Name =""
    End
    Begin
        Left =342
        Top =402
        Right =586
        Bottom =489
        Top =0
        Name ="Sachbearbeiter_3"
        Name =""
    End
    Begin
        Left =342
        Top =495
        Right =584
        Bottom =578
        Top =0
        Name ="Sachbearbeiter_4"
        Name =""
    End
End
