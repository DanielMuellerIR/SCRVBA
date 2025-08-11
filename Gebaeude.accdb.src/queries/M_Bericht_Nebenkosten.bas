Operation =1
Option =0
Where ="(((M_Objekte.Bezeichnung) Like [Formulare]![Filter für Nebenkosten]![Gebäude]) A"
    "ND ((M_Nebenkosten.Haushaltsjahr) Like [Formulare]![Filter für Nebenkosten]![Hau"
    "shaltsjahr]) AND (([M_Verzeichnis Nebenkosten].Nebenkosten_Art) Like [Formulare]"
    "![Filter für Nebenkosten]![Nebenkostenart]) AND ((M_Nebenkosten.Rechnungsausstel"
    "ler) Like [Formulare]![Filter für Nebenkosten]![Rechnungsaussteller]))"
Begin InputTables
    Name ="M_Nebenkosten"
    Name ="M_Objekte"
    Name ="M_Verzeichnis Nebenkosten"
End
Begin OutputColumns
    Expression ="M_Objekte.Bezeichnung"
    Expression ="M_Nebenkosten.Haushaltsjahr"
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    Expression ="M_Nebenkosten.Rechnungsaussteller"
    Expression ="M_Nebenkosten.Einheit"
    Expression ="M_Nebenkosten.Menge"
    Expression ="M_Nebenkosten.berechnet_von"
    Expression ="M_Nebenkosten.berechnet_bis"
    Expression ="M_Nebenkosten.Betrag"
End
Begin Joins
    LeftTable ="M_Nebenkosten"
    RightTable ="M_Verzeichnis Nebenkosten"
    Expression ="M_Nebenkosten.[ID aus Verzeichnis Nebenkosten] = [M_Verzeichnis Nebenkosten].ID"
    Flag =2
    LeftTable ="M_Nebenkosten"
    RightTable ="M_Objekte"
    Expression ="M_Nebenkosten.[ID aus Objekte] = M_Objekte.ID"
    Flag =2
End
Begin OrderBy
    Expression ="M_Objekte.Bezeichnung"
    Flag =0
    Expression ="M_Nebenkosten.Haushaltsjahr"
    Flag =0
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
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
        dbText "Name" ="M_Objekte.Bezeichnung"
        dbInteger "ColumnWidth" ="4470"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
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
    Bottom =328
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =259
        Bottom =173
        Top =0
        Name ="M_Nebenkosten"
        Name =""
    End
    Begin
        Left =407
        Top =15
        Right =765
        Bottom =197
        Top =0
        Name ="M_Objekte"
        Name =""
    End
    Begin
        Left =476
        Top =238
        Right =572
        Bottom =315
        Top =0
        Name ="M_Verzeichnis Nebenkosten"
        Name =""
    End
End
