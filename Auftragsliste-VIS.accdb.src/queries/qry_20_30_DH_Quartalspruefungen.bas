Operation =1
Option =0
Where ="(((tbl_20_30_Q_Prüfung.Kalenderjahr) Like \"*\" & [Formulare]![frm_10_10_Startfo"
    "rmular]![TF_Filter_Jahr] & \"*\"))"
Begin InputTables
    Name ="tbl_20_30_Q_Prüfung"
    Name ="tbl_10_10_User"
End
Begin OutputColumns
    Expression ="tbl_20_30_Q_Prüfung.Kalenderjahr"
    Expression ="tbl_20_30_Q_Prüfung.Quartal"
    Expression ="tbl_20_30_Q_Prüfung.Datum"
    Alias ="Pruefer"
    Expression ="[Anrede] & \" \" & [Username]"
End
Begin Joins
    LeftTable ="tbl_20_30_Q_Prüfung"
    RightTable ="tbl_10_10_User"
    Expression ="tbl_20_30_Q_Prüfung.ID_User = tbl_10_10_User.ID_User"
    Flag =2
End
Begin OrderBy
    Expression ="tbl_20_30_Q_Prüfung.Kalenderjahr"
    Flag =0
    Expression ="tbl_20_30_Q_Prüfung.Quartal"
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
        dbText "Name" ="tbl_20_30_Q_Prüfung.Kalenderjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Pruefer"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3930"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_20_30_Q_Prüfung.Quartal"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_30_Q_Prüfung.Datum"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1587
    Bottom =846
    Left =-1
    Top =-1
    Right =1567
    Bottom =406
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =104
        Top =53
        Right =354
        Bottom =229
        Top =0
        Name ="tbl_20_30_Q_Prüfung"
        Name =""
    End
    Begin
        Left =451
        Top =142
        Right =718
        Bottom =305
        Top =0
        Name ="tbl_10_10_User"
        Name =""
    End
End
