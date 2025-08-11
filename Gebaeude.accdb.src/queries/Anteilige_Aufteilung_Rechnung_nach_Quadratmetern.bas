Operation =3
Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
Option =0
Where ="(((fc_Round([Formulare]![Buchungsanordnung]![Betrag]*([Fiktive Flächen berechnen"
    "].[berechnungsfläche]/DSum(\"[Berechnungsfläche]\",\"[Fiktive Flächen berechnen]"
    "\"))))>0) AND ((Date())>=[Datum_von] And (Date())<=[Datum_bis]) AND ((tbl_100_20"
    "_Gebäudeteile.Mietrelevant)=True))"
Begin InputTables
    Name ="Fiktive Flächen berechnen"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="M_Kostenstellen"
    Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
End
Begin OutputColumns
    Alias ="Ausdr1"
    Name ="ID aus Buchungen"
    Expression ="[formulare]![Buchungsanordnung]![ID]"
    Alias ="Anteil"
    Name ="Betrag"
    Expression ="fc_Round([Formulare]![Buchungsanordnung]![Betrag]*([Fiktive Flächen berechnen].["
        "berechnungsfläche]/DSum(\"[Berechnungsfläche]\",\"[Fiktive Flächen berechnen]\")"
        "))"
    Name ="ID_Gebäudeteil"
    Expression ="[Fiktive Flächen berechnen].ID_Gebäudeteil"
    Name ="ID aus Kostenstellen"
    Expression ="M_Kostenstellen.Kennummer"
    Alias ="Ausdr2"
    Name ="ID aus Kostenträger"
    Expression ="112"
End
Begin Joins
    LeftTable ="Fiktive Flächen berechnen"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="[Fiktive Flächen berechnen].ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudet"
        "eil"
    Flag =1
    LeftTable ="M_Kostenstellen"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst"
    Flag =1
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen."
        "ID_Gebäudeteil"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="-1"
dbBoolean "UseTransaction" ="-1"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Anteil"
        dbInteger "ColumnWidth" ="2190"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="[Fiktive Flächen berechnen].ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Fiktive Flächen berechnen].Berechnungsfläche"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="ID_BU"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="IDTR"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Kennummer"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3855"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="[formulare]![Buchungsanordnung]![ID]"
        dbInteger "ColumnWidth" ="2700"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Date()"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="112"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Anteil "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1004"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr2"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1882
    Bottom =861
    Left =-1
    Top =-1
    Right =1858
    Bottom =604
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =15
        Top =20
        Right =272
        Bottom =274
        Top =0
        Name ="Fiktive Flächen berechnen"
        Name =""
    End
    Begin
        Left =392
        Top =23
        Right =660
        Bottom =562
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =1195
        Top =40
        Right =1406
        Bottom =195
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =788
        Top =8
        Right =1105
        Bottom =184
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
End
