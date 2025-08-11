Operation =3
Name ="tbl_200_30_10_Bew_Bilanz_Sanierungsstau"
Option =0
Where ="(((Maßnahmen.Bilanz_relevant)=True) AND ((tbl_200_05_10_Bewertungsläufe.id_Bewer"
    "t)=F_Variable(\"lng_id_Bewert\")) AND ((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)="
    "F_Variable(\"lng_ID_Geb_Teil\")) AND ((Maßnahmen.[erledigt im Jahr]) Is Null))"
Begin InputTables
    Name ="tbl_200_10_10_Bewertungsbilanzen"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_200_05_10_Bewertungsläufe"
    Name ="Maßnahmen"
End
Begin OutputColumns
    Name ="ID_Bew_Bil"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil"
    Name ="Maßnahme"
    Expression ="Maßnahmen.Maßnahme"
    Name ="Bilanz_relevant"
    Expression ="Maßnahmen.Bilanz_relevant"
    Name ="voraussichtliche Kosten gesamt"
    Expression ="Maßnahmen.[voraussichtliche Kosten gesamt]"
End
Begin Joins
    LeftTable ="tbl_200_10_10_Bewertungsbilanzen"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Geb"
        "äudeteil"
    Flag =1
    LeftTable ="tbl_200_05_10_Bewertungsläufe"
    RightTable ="tbl_200_10_10_Bewertungsbilanzen"
    Expression ="tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Be"
        "wert"
    Flag =1
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Maßnahmen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Mehrwert"
        dbInteger "ColumnWidth" ="5145"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Datei"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erläuterung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.Kennummer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Bauteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Bauteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebaeudekennung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="idbwbil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.id_Bewert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.Maßnahme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.Bilanz_relevant"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.[voraussichtliche Kosten gesamt]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.[erledigt im Jahr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1000"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-13
    Top =-58
    Right =2992
    Bottom =1749
    Left =-1
    Top =-1
    Right =2946
    Bottom =826
    Left =0
    Top =6
    ColumnsShown =651
    Begin
        Left =1241
        Top =37
        Right =1831
        Bottom =273
        Top =0
        Name ="tbl_200_10_10_Bewertungsbilanzen"
        Name =""
    End
    Begin
        Left =131
        Top =220
        Right =597
        Bottom =449
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =114
        Top =33
        Right =581
        Bottom =198
        Top =0
        Name ="tbl_200_05_10_Bewertungsläufe"
        Name =""
    End
    Begin
        Left =1241
        Top =326
        Right =1805
        Bottom =550
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
End
