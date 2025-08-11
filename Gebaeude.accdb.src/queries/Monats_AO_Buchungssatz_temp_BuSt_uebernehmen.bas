Operation =3
Name ="A_Buchungen_Aufteilung_auf_Buchungsstellen"
Option =0
Begin InputTables
    Name ="MonatsAO_temp_Buchungssatz_BuSt"
    Name ="Buchungsstellen _Doppik"
    Name ="tbl_Prod_Nummern"
End
Begin OutputColumns
    Alias ="Ausdr1"
    Name ="ID aus Buchungen"
    Expression ="[formulare]![Monatsanordnung_UF_5].[IDneu]"
    Alias ="Ausdr2"
    Name ="Betrag"
    Expression ="[formulare]![Monatsanordnung]![Anordnungsbetrag]"
    Name ="ID aus Buchungsstellen"
    Expression ="MonatsAO_temp_Buchungssatz_BuSt.[ID aus Buchungsstellen]"
    Name ="Prod_Nr"
    Expression ="tbl_Prod_Nummern.Prod_Nr"
    Name ="Sachkonto"
    Expression ="[Buchungsstellen _Doppik].Sachkonto"
End
Begin Joins
    LeftTable ="MonatsAO_temp_Buchungssatz_BuSt"
    RightTable ="Buchungsstellen _Doppik"
    Expression ="MonatsAO_temp_Buchungssatz_BuSt.[ID aus Buchungsstellen] = [Buchungsstellen _Dop"
        "pik].Kennummer"
    Flag =2
    LeftTable ="tbl_Prod_Nummern"
    RightTable ="Buchungsstellen _Doppik"
    Expression ="tbl_Prod_Nummern.ID_Pr_Nr = [Buchungsstellen _Doppik].ID_Pr_Nr"
    Flag =3
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Ausdr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Prod_Nummern.Prod_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Buchungsstellen _Doppik].Sachkonto"
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
    Bottom =482
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =62
        Top =76
        Right =356
        Bottom =233
        Top =0
        Name ="MonatsAO_temp_Buchungssatz_BuSt"
        Name =""
    End
    Begin
        Left =474
        Top =75
        Right =618
        Bottom =219
        Top =0
        Name ="Buchungsstellen _Doppik"
        Name =""
    End
    Begin
        Left =769
        Top =92
        Right =913
        Bottom =236
        Top =0
        Name ="tbl_Prod_Nummern"
        Name =""
    End
End
