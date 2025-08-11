Operation =1
Option =0
Where ="(((Bewertung_Archiv_5.Datei)=F_Variable(\"dt_Fix_Datum\")))"
Begin InputTables
    Name ="Bewertung_Archiv_5"
End
Begin OutputColumns
    Expression ="Bewertung_Archiv_5.ID_Gebäudeteil"
    Expression ="Bewertung_Archiv_5.Gebäudeteil"
    Expression ="Bewertung_Archiv_5.[Lage des Gebäudes]"
    Expression ="Bewertung_Archiv_5.Gemarkung"
    Expression ="Bewertung_Archiv_5.Flur"
    Expression ="Bewertung_Archiv_5.Flurstücke"
    Expression ="Bewertung_Archiv_5.Fläche"
    Expression ="Bewertung_Archiv_5.Bodenrichtwert"
    Expression ="Bewertung_Archiv_5.Bezeichnung"
    Expression ="Bewertung_Archiv_5.Datei"
    Expression ="Bewertung_Archiv_5.Erläuterung"
    Expression ="Bewertung_Archiv_5.[anteil bodenrichtwert]"
    Expression ="Bewertung_Archiv_5.GebäudeteilB"
    Expression ="Bewertung_Archiv_5.[voll berechnen]"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbBoolean "UseTransaction" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Bewertung_Archiv_5.[Lage des Gebäudes]"
        dbInteger "ColumnWidth" ="2805"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_5.Fläche"
        dbInteger "ColumnWidth" ="795"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_5.Bodenrichtwert"
        dbInteger "ColumnWidth" ="1605"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_5.Bezeichnung"
        dbInteger "ColumnWidth" ="3210"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_5.Gebäudeteil"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_5.Datei"
        dbInteger "ColumnWidth" ="1920"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_5.GebäudeteilB"
        dbInteger "ColumnWidth" ="1695"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_5.[voll berechnen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_5.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_5.Gemarkung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_5.Flur"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_5.Flurstücke"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_5.Erläuterung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_5.[anteil bodenrichtwert]"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1650
    Bottom =854
    Left =-1
    Top =-1
    Right =1626
    Bottom =334
    Left =0
    Top =6
    ColumnsShown =539
    Begin
        Left =282
        Top =6
        Right =760
        Bottom =346
        Top =0
        Name ="Bewertung_Archiv_5"
        Name =""
    End
End
