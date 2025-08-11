Operation =1
Option =8
Having ="(((Count([V_Vergleichsobjekte_Zuordnung_M-Objekte].[ID aus M_Objekte]))>1))"
Begin InputTables
    Name ="V_Vergleichsobjekte_Zuordnung_M-Objekte"
    Name ="M_Objekte"
End
Begin OutputColumns
    Expression ="M_Objekte.Bezeichnung"
    Alias ="Fehler"
    Expression ="\"doppelt zurgeordnet\""
End
Begin Joins
    LeftTable ="V_Vergleichsobjekte_Zuordnung_M-Objekte"
    RightTable ="M_Objekte"
    Expression ="[V_Vergleichsobjekte_Zuordnung_M-Objekte].[ID aus M_Objekte] = M_Objekte.ID"
    Flag =2
End
Begin Groups
    Expression ="M_Objekte.Bezeichnung"
    GroupLevel =0
    Expression ="\"doppelt zurgeordnet\""
    GroupLevel =0
    Expression ="[V_Vergleichsobjekte_Zuordnung_M-Objekte].[ID aus M_Objekte]"
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
    Bottom =224
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =354
        Bottom =83
        Top =0
        Name ="V_Vergleichsobjekte_Zuordnung_M-Objekte"
        Name =""
    End
    Begin
        Left =392
        Top =6
        Right =816
        Bottom =143
        Top =0
        Name ="M_Objekte"
        Name =""
    End
End
