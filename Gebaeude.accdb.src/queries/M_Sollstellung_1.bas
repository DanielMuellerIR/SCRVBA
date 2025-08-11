Operation =1
Option =0
Begin InputTables
    Name ="Union_Abfrage_Mietberechnung"
End
Begin OutputColumns
    Expression ="Union_Abfrage_Mietberechnung.Planjahr"
    Expression ="Union_Abfrage_Mietberechnung.Betrieb"
    Expression ="Union_Abfrage_Mietberechnung.BereichNr"
    Expression ="Union_Abfrage_Mietberechnung.BereichName"
    Expression ="Union_Abfrage_Mietberechnung.Bezeichnung"
    Expression ="Union_Abfrage_Mietberechnung.ID"
    Alias ="Summe von Betrag"
    Expression ="Sum(Union_Abfrage_Mietberechnung.Betrag)"
    Expression ="Union_Abfrage_Mietberechnung.sort"
    Expression ="Union_Abfrage_Mietberechnung.Bruttogrundfläche"
End
Begin Groups
    Expression ="Union_Abfrage_Mietberechnung.Planjahr"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung.Betrieb"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung.BereichNr"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung.BereichName"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung.Bezeichnung"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung.ID"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung.sort"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung.Bruttogrundfläche"
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
    Bottom =227
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =259
        Bottom =203
        Top =0
        Name ="Union_Abfrage_Mietberechnung"
        Name =""
    End
End
