Operation =1
Option =0
Begin InputTables
    Name ="B_Ergebnisse_Tabelle"
End
Begin OutputColumns
    Expression ="B_Ergebnisse_Tabelle.Bezeichnung"
    Expression ="B_Ergebnisse_Tabelle.Straße"
    Expression ="B_Ergebnisse_Tabelle.Gebäudeteil"
    Expression ="B_Ergebnisse_Tabelle.[Abschreibung Jahr]"
    Expression ="B_Ergebnisse_Tabelle.Kennummer"
End
Begin OrderBy
    Expression ="B_Ergebnisse_Tabelle.Straße"
    Flag =0
    Expression ="B_Ergebnisse_Tabelle.Gebäudeteil"
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
    Bottom =326
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =331
        Bottom =218
        Top =0
        Name ="B_Ergebnisse_Tabelle"
        Name =""
    End
End
