Operation =1
Option =0
Where ="(((Bewertung_Archiv_2.Datei)=F_Variable(\"dt_Fix_Datum\")))"
Begin InputTables
    Name ="Bewertung_Archiv_2"
End
Begin OutputColumns
    Expression ="Bewertung_Archiv_2.ID_Gebäudeteil"
    Expression ="Bewertung_Archiv_2.[Fassade (11%)]"
    Expression ="Bewertung_Archiv_2.[Fenster (14%)]"
    Expression ="Bewertung_Archiv_2.[Dächer (15%)]"
    Expression ="Bewertung_Archiv_2.[Sanitär (13%)]"
    Expression ="Bewertung_Archiv_2.[Innenwände Sanitärbereich (6%)]"
    Expression ="Bewertung_Archiv_2.[Innentüren (11%)]"
    Expression ="Bewertung_Archiv_2.[Heizung (15%)]"
    Expression ="Bewertung_Archiv_2.[Elektroinstallation (7%)]"
    Expression ="Bewertung_Archiv_2.[Bodenbeläge (8 %)]"
    Expression ="Bewertung_Archiv_2.Datei"
    Expression ="Bewertung_Archiv_2.Erläuterung"
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
        dbText "Name" ="Bewertung_Archiv_2.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_2.Erläuterung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_2.[Dächer (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_2.Datei"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_2.[Fassade (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_2.[Fenster (14%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_2.[Sanitär (13%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_2.[Innenwände Sanitärbereich (6%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_2.[Innentüren (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_2.[Heizung (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_2.[Elektroinstallation (7%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_2.[Bodenbeläge (8 %)]"
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
    Bottom =376
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =535
        Top =37
        Right =878
        Bottom =329
        Top =0
        Name ="Bewertung_Archiv_2"
        Name =""
    End
End
