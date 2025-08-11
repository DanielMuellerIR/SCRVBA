Operation =1
Option =8
Where ="(((M_Objekte.[Kennummer aus Kostenstellenverzeichnis]) In (SELECT [Kennummer aus"
    " Kostenstellenverzeichnis] FROM [M_Objekte] As Tmp GROUP BY [Kennummer aus Koste"
    "nstellenverzeichnis] HAVING Count(*)>1 )))"
Begin InputTables
    Name ="M_Objekte"
End
Begin OutputColumns
    Expression ="M_Objekte.[Kennummer aus Kostenstellenverzeichnis]"
    Expression ="M_Objekte.[ID]"
    Expression ="M_Objekte.[Bezeichnung]"
    Expression ="M_Objekte.[Kennummer aus Straßenverzeichnis]"
    Expression ="M_Objekte.[Hausnummer]"
    Expression ="M_Objekte.[Kennummer aus Bereiche]"
    Expression ="M_Objekte.[Bruttogrundfläche]"
    Expression ="M_Objekte.[Kennummer aus Kostenträgerverzeichnis]"
    Expression ="M_Objekte.[ID aus Sachbearbeiter]"
    Expression ="M_Objekte.[Mietbeginn]"
    Expression ="M_Objekte.[Mietende]"
    Expression ="M_Objekte.[Gebäudewert]"
    Expression ="M_Objekte.[Reinigungsfläche]"
    Expression ="M_Objekte.[Sportfläche]"
    Expression ="M_Objekte.[angemietetes_Gebäude]"
    Expression ="M_Objekte.[extern weitervermietet]"
    Expression ="M_Objekte.[ID aus Bewertung]"
End
Begin OrderBy
    Expression ="M_Objekte.[Kennummer aus Kostenstellenverzeichnis]"
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
    Bottom =660
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="M_Objekte"
        Name =""
    End
End
