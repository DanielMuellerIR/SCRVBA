Operation =4
Option =0
Where ="(((M_Nebenkosten.[ID aus Objekte])=[Formulare]![M_Formular_Gebäudedaten]![Gebäud"
    "eauswahl]))"
Begin InputTables
    Name ="M_Nebenkosten"
End
Begin OutputColumns
    Name ="M_Nebenkosten.in_Kalkulation_übernommen"
    Expression ="Yes"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
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
    Bottom =181
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =38
        Top =6
        Right =480
        Bottom =113
        Top =0
        Name ="M_Nebenkosten"
        Name =""
    End
End
