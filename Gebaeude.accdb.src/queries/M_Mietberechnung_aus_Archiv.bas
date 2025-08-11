Operation =1
Option =8
Having ="(((Archiv_Mietberechnungen.Planjahr)=F_Variable(\"lng_Kalk_Jahr\")) AND ((Archiv"
    "_Mietberechnungen.BereichNr) Between F_Variable(\"lng_Ber_Nr_Min\") And F_Variab"
    "le(\"lng_Ber_Nr_Max\")) AND ((Archiv_Mietberechnungen.text)=F_Variable(\"str_Suc"
    "htext\")) AND ((Archiv_Mietberechnungen.ID_Gebäude) Between F_Variable(\"lng_ID_"
    "Geb_Min\") And F_Variable(\"lng_ID_Geb_Max\")))"
Begin InputTables
    Name ="Archiv_Mietberechnungen"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Expression ="Archiv_Mietberechnungen.Planjahr"
    Expression ="Archiv_Mietberechnungen.NK_Grundl_Jahr"
    Expression ="Archiv_Mietberechnungen.Betrieb"
    Expression ="Archiv_Mietberechnungen.BereichNr"
    Expression ="Archiv_Mietberechnungen.BereichName"
    Alias ="Objekt"
    Expression ="[M_Strassenverzeichnis].[Name] & \" \" & [tbl_100_10_Liegenschaften].[Haus_Nr] &"
        " \": \" & [tbl_100_10_Liegenschaften].[Bezeichnung]"
    Expression ="Archiv_Mietberechnungen.Sportfläche"
    Alias ="Sportfl"
    Expression ="IIf([Archiv_Mietberechnungen].[Sportfläche]=True,\"Flächen mit reduziertem NK-Sa"
        "tz\",\" Gebäude der Liegenschaft\")"
    Expression ="Archiv_Mietberechnungen.sort"
    Alias ="Sorttext"
    Expression ="fc_Sort_Text([sort])"
    Expression ="Archiv_Mietberechnungen.Kostenart"
    Expression ="Archiv_Mietberechnungen.Sum_BGF_Sp_Fl"
    Expression ="Archiv_Mietberechnungen.Sum_BGF_Gb_LS"
    Alias ="betrag_"
    Expression ="Sum(Archiv_Mietberechnungen.Betrag)"
    Expression ="Archiv_Mietberechnungen.text"
End
Begin Joins
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="Archiv_Mietberechnungen"
    RightTable ="tbl_100_10_Liegenschaften"
    Expression ="Archiv_Mietberechnungen.ID_Gebäude = tbl_100_10_Liegenschaften.ID_Gebäude"
    Flag =1
End
Begin Groups
    Expression ="Archiv_Mietberechnungen.Planjahr"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.NK_Grundl_Jahr"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.Betrieb"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.BereichNr"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.BereichName"
    GroupLevel =0
    Expression ="[M_Strassenverzeichnis].[Name] & \" \" & [tbl_100_10_Liegenschaften].[Haus_Nr] &"
        " \": \" & [tbl_100_10_Liegenschaften].[Bezeichnung]"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.Sportfläche"
    GroupLevel =0
    Expression ="IIf([Archiv_Mietberechnungen].[Sportfläche]=True,\"Flächen mit reduziertem NK-Sa"
        "tz\",\" Gebäude der Liegenschaft\")"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.sort"
    GroupLevel =0
    Expression ="fc_Sort_Text([sort])"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.Kostenart"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.Sum_BGF_Sp_Fl"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.Sum_BGF_Gb_LS"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.text"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.ID_Gebäude"
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
        dbText "Name" ="Archiv_Mietberechnungen.Planjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.BereichName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.Kostenart"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.sort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="betrag_ "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="betrag_"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3270"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Sorttext"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="7365"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Sportfl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.Sportfläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.Sum_BGF_Sp_Fl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.Sum_BGF_Gb_LS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.Text"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.NK_Grundl_Jahr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1874
    Bottom =991
    Left =-1
    Top =-1
    Right =1850
    Bottom =432
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =308
        Top =54
        Right =624
        Bottom =339
        Top =0
        Name ="Archiv_Mietberechnungen"
        Name =""
    End
    Begin
        Left =812
        Top =53
        Right =1096
        Bottom =397
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =1157
        Top =86
        Right =1301
        Bottom =230
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
