Operation =1
Option =0
Having ="(((Energieverbräuche.Jahr) Like [Formulare]![Filter für Bericht Energieverbrauch"
    "]![Haushaltsjahr]) AND (([Verzeichnis Energiearten].Energieart) Like [Formulare]"
    "![Filter für Bericht Energieverbrauch]![Energieart]) AND ((M_Bereiche.BereichNr)"
    " Like [Formulare]![Filter für Bericht Energieverbrauch]![Bereich]) AND (([M_Stra"
    "ssenverzeichnis].[Name] & \", \" & [Bezeichnung]) Like [Formulare]![Filter für B"
    "ericht Energieverbrauch]![Gebäude])) OR (((Energieverbräuche.Jahr) Like [Formula"
    "re]![Filter für Bericht Energieverbrauch]![Haushaltsjahr]) AND (([Verzeichnis En"
    "ergiearten].Energieart) Like [Formulare]![Filter für Bericht Energieverbrauch]!["
    "Energieart]) AND ((M_Bereiche.BereichNr) Is Not Null) AND (([M_Strassenverzeichn"
    "is].[Name] & \", \" & [Bezeichnung]) Like [Formulare]![Filter für Bericht Energi"
    "everbrauch]![Gebäude]))"
Begin InputTables
    Name ="Energieverbräuche"
    Name ="M_Objekte"
    Name ="Verzeichnis Energiearten"
    Name ="M_Bereiche"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Expression ="Energieverbräuche.Jahr"
    Expression ="M_Objekte.Bezeichnung"
    Expression ="[Verzeichnis Energiearten].Energieart"
    Alias ="Jahresverbrauch"
    Expression ="IIf([monatlicher Verbrauch]=0,Yes,No)"
    Alias ="Monatsverbrauch"
    Expression ="IIf([monatlicher Verbrauch]=-1,Yes,No)"
    Expression ="[Verzeichnis Energiearten].Einheit"
    Expression ="M_Bereiche.BereichNr"
    Alias ="Gebäude"
    Expression ="[M_Strassenverzeichnis].[Name] & \", \" & [Bezeichnung]"
    Alias ="Summe von Menge"
    Expression ="Sum(Energieverbräuche.Menge)"
End
Begin Joins
    LeftTable ="Energieverbräuche"
    RightTable ="M_Objekte"
    Expression ="Energieverbräuche.[ID aus Objekte] = M_Objekte.ID"
    Flag =2
    LeftTable ="Energieverbräuche"
    RightTable ="Verzeichnis Energiearten"
    Expression ="Energieverbräuche.Energie = [Verzeichnis Energiearten].ID"
    Flag =2
    LeftTable ="M_Objekte"
    RightTable ="M_Bereiche"
    Expression ="M_Objekte.[Kennummer aus Bereiche] = M_Bereiche.Kennummer"
    Flag =2
    LeftTable ="M_Objekte"
    RightTable ="M_Strassenverzeichnis"
    Expression ="M_Objekte.[Kennummer aus Straßenverzeichnis] = M_Strassenverzeichnis.Kennummer"
    Flag =2
End
Begin Groups
    Expression ="Energieverbräuche.Jahr"
    GroupLevel =0
    Expression ="M_Objekte.Bezeichnung"
    GroupLevel =0
    Expression ="[Verzeichnis Energiearten].Energieart"
    GroupLevel =0
    Expression ="IIf([monatlicher Verbrauch]=0,Yes,No)"
    GroupLevel =0
    Expression ="IIf([monatlicher Verbrauch]=-1,Yes,No)"
    GroupLevel =0
    Expression ="[Verzeichnis Energiearten].Einheit"
    GroupLevel =0
    Expression ="M_Bereiche.BereichNr"
    GroupLevel =0
    Expression ="[M_Strassenverzeichnis].[Name] & \", \" & [Bezeichnung]"
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
    Begin
        dbText "Name" ="[Verzeichnis Energiearten].Energieart"
        dbInteger "ColumnWidth" ="1155"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Jahresverbrauch"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gebäude"
        dbInteger "ColumnWidth" ="6795"
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
    Bottom =347
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =246
        Bottom =135
        Top =0
        Name ="Energieverbräuche"
        Name =""
    End
    Begin
        Left =313
        Top =8
        Right =614
        Bottom =227
        Top =0
        Name ="M_Objekte"
        Name =""
    End
    Begin
        Left =789
        Top =245
        Right =930
        Bottom =329
        Top =0
        Name ="Verzeichnis Energiearten"
        Name =""
    End
    Begin
        Left =789
        Top =115
        Right =930
        Bottom =214
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =791
        Top =8
        Right =932
        Bottom =92
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
