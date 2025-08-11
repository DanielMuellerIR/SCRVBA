Operation =3
Name ="tbl_200_30_20_Bew_Bilanz_Werterhoehungen"
Option =0
Where ="(((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)=F_Variable(\"lng_ID_Geb_Teil\")) AND "
    "((tbl_200_05_10_Bewertungsläufe.id_Bewert)=F_Variable(\"lng_id_Bewert\")))"
Begin InputTables
    Name ="B_Sanierungsstau_Werterhöhung"
    Name ="tbl_200_10_10_Bewertungsbilanzen"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_200_05_10_Bewertungsläufe"
End
Begin OutputColumns
    Name ="ID_Bew_Bil"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil"
    Name ="DS_Typ"
    Expression ="B_Sanierungsstau_Werterhöhung.DS_Typ"
    Name ="Bauteil"
    Expression ="B_Sanierungsstau_Werterhöhung.Bauteil"
    Name ="Aktivierungs_Datum"
    Expression ="B_Sanierungsstau_Werterhöhung.Aktivierungs_Datum"
    Name ="Index_Vor_DS_bis_jetzt"
    Expression ="B_Sanierungsstau_Werterhöhung.Index_Vor_DS_bis_jetzt"
    Name ="Herstellkosten"
    Expression ="B_Sanierungsstau_Werterhöhung.Herstellkosten"
    Name ="Wiederbesch_Wert"
    Expression ="B_Sanierungsstau_Werterhöhung.Wiederbesch_Wert"
    Name ="Nutzungs_Monate_ab_jetzt"
    Expression ="B_Sanierungsstau_Werterhöhung.Nutzungs_Monate_ab_jetzt"
    Name ="Abschr_pro_Mon_Vor_DS_bis_jetzt"
    Expression ="B_Sanierungsstau_Werterhöhung.Abschr_pro_Mon_Vor_DS_bis_jetzt"
    Name ="Abschr_Monate_Vor_DS_bis_jetzt"
    Expression ="B_Sanierungsstau_Werterhöhung.Abschr_Monate_Vor_DS_bis_jetzt"
    Name ="Abschr_Vor_DS_bis_Jetzt"
    Expression ="B_Sanierungsstau_Werterhöhung.Abschr_Vor_DS_bis_Jetzt"
    Name ="Restwert_vor_Werterh"
    Expression ="B_Sanierungsstau_Werterhöhung.Restwert_vor_Werterh"
    Name ="Mehrwert"
    Expression ="B_Sanierungsstau_Werterhöhung.Mehrwert"
    Name ="Nutz_dauer_Jahre_Verl"
    Expression ="B_Sanierungsstau_Werterhöhung.Nutz_dauer_Jahre_Verl"
    Name ="Beruecks_Wiederbesch_Wert"
    Expression ="B_Sanierungsstau_Werterhöhung.Beruecks_Wiederbesch_Wert"
    Name ="Restwert_nach_Werterh"
    Expression ="B_Sanierungsstau_Werterhöhung.Restwert_nach_Werterh"
End
Begin Joins
    LeftTable ="tbl_200_10_10_Bewertungsbilanzen"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Geb"
        "äudeteil"
    Flag =1
    LeftTable ="tbl_200_10_10_Bewertungsbilanzen"
    RightTable ="B_Sanierungsstau_Werterhöhung"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung."
        "ID_Gebäudeteil"
    Flag =1
    LeftTable ="tbl_200_05_10_Bewertungsläufe"
    RightTable ="tbl_200_10_10_Bewertungsbilanzen"
    Expression ="tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Be"
        "wert"
    Flag =1
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="B_Sanierungsstau_Werterhöhung"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäud"
        "eteil"
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
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Abschr_Vor_DS_bis_Jetzt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Restwert_vor_Werterh"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Nutz_dauer_Jahre_Verl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Beruecks_Wiederbesch_Wert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Restwert_nach_Werterh"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.DS_Typ"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Aktivierungs_Datum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Index_Vor_DS_bis_jetzt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Wiederbesch_Wert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Nutzungs_Monate_ab_jetzt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Abschr_pro_Mon_Vor_DS_bis_jetzt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Abschr_Monate_Vor_DS_bis_jetzt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Herstellkosten"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1871
    Bottom =992
    Left =-1
    Top =-1
    Right =1847
    Bottom =555
    Left =0
    Top =6
    ColumnsShown =651
    Begin
        Left =1101
        Top =207
        Right =1456
        Bottom =570
        Top =0
        Name ="B_Sanierungsstau_Werterhöhung"
        Name =""
    End
    Begin
        Left =676
        Top =33
        Right =1038
        Bottom =457
        Top =0
        Name ="tbl_200_10_10_Bewertungsbilanzen"
        Name =""
    End
    Begin
        Left =131
        Top =220
        Right =396
        Bottom =370
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =114
        Top =33
        Right =419
        Bottom =175
        Top =0
        Name ="tbl_200_05_10_Bewertungsläufe"
        Name =""
    End
End
