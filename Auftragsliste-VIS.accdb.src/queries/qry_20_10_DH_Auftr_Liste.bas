Operation =1
Option =0
Where ="((Nz([objekt])) Like ('*' & '' & '*')) AND ((Nz(Mid([Auftragsnr],4,4))) Like ('*"
    "' & '2026' & '*'))"
Begin InputTables
    Name ="tbl_10_40_Firmen"
    Alias ="f"
    Name ="tbl_10_30_Objekte"
    Alias ="o"
    Name ="tbl_20_10_Aufträge"
    Alias ="a"
    Name ="tbl_10_10_User"
    Alias ="u"
End
Begin OutputColumns
    Expression ="a.ID_Auftrag"
    Expression ="a.Auftragsnr"
    Expression ="a.Best_Nr_Infoma"
    Alias ="beauftr_Firma"
    Expression ="f.Name"
    Alias ="Leistungs_Ort"
    Expression ="Nz([objekt])"
    Alias ="Produkt_Bez"
    Expression ="Nz([Produktbezeichnung])"
    Expression ="a.AS_brutto"
    Expression ="a.ID_Fa"
    Expression ="f.PersID"
End
Begin Joins
    LeftTable ="a"
    RightTable ="u"
    Expression ="a.ID_User = u.ID_User"
    Flag =2
    LeftTable ="o"
    RightTable ="a"
    Expression ="o.ID_Obj = a.ID_Obj"
    Flag =3
    LeftTable ="f"
    RightTable ="a"
    Expression ="f.ID_Fa = a.ID_Fa"
    Flag =3
End
Begin OrderBy
    Expression ="Nz(Mid([Auftragsnr],4,4))"
    Flag =1
    Expression ="Nz(Mid([Auftragsnr],9,4))"
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
dbSingle "ECLScaleFactor" ="1"
Begin
    Begin
        dbText "Name" ="tbl_10_40_Firmen.ID_Fa"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_10_40_Firmen.Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_10_40_Firmen.Straße"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_10_40_Firmen.Ort"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =3996
    Bottom =1765
    Left =-1
    Top =-1
    Right =3953
    Bottom =425
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =127
        Top =132
        Right =440
        Bottom =379
        Top =0
        Name ="tbl_10_40_Firmen"
        Name =""
    End
End
