Operation =1
Option =0
Where ="(((B_Sanierungsstau_Werterhöhung.DS_Typ)=1))"
Begin InputTables
    Name ="B_Sanierungsstau_Werterhöhung"
End
Begin OutputColumns
    Expression ="B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil"
    Expression ="B_Sanierungsstau_Werterhöhung.Herstellkosten"
    Expression ="B_Sanierungsstau_Werterhöhung.DS_Typ"
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
Begin
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Herstellkosten"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.DS_Typ"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =5341
    Bottom =2834
    Left =-1
    Top =-1
    Right =5298
    Bottom =2222
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =96
        Top =24
        Right =1022
        Bottom =988
        Top =0
        Name ="B_Sanierungsstau_Werterhöhung"
        Name =""
    End
End
