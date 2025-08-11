Operation =3
Name ="Archiv_Mietberechnungen"
Option =0
Begin InputTables
    Name ="Union_Abfrage_Mietberechnung_mit_Filter"
End
Begin OutputColumns
    Name ="ID_Gebäude"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.ID_Gebäude"
    Name ="Bezeichnung"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Objekt"
    Name ="Planjahr"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Planjahr"
    Alias ="NKGL_Jahr"
    Name ="NK_Grundl_Jahr"
    Expression ="F_VAriable(\"lng_NK_Jahr\")"
    Name ="Betrieb"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Betrieb"
    Name ="BereichNr"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.BereichNr"
    Name ="BereichName"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.BereichName"
    Name ="Kostenart"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Kostenart"
    Name ="Sum_BGF_Gb_LS"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Sum_BGF_Gb_LS"
    Name ="Sum_BGF_Sp_Fl"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Sum_BGF_Sp_Fl"
    Name ="Betrag"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Betrag_"
    Name ="sort"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.sort"
    Name ="Sportfläche"
    Expression ="Union_Abfrage_Mietberechnung_mit_Filter.Sportfläche"
    Alias ="dat"
    Name ="datum"
    Expression ="Now()"
    Alias ="Hinweis"
    Name ="Text"
    Expression ="F_Variable(\"str_Suchtext\")"
    Alias ="n_2017"
    Name ="Neu_ab_2017"
    Expression ="True"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.Objekt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.Planjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.BereichName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.Kostenart"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.Betrag_"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.sort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.SummevonBGF"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.Sportfläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dat "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hinweis"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.ID_Gebäude"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.Sportfl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter_Betr_Summen.Sum_BGF_Sp_Fl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter_Betr_Summen.ID_Gebäude"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter_Betr_Summen.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter_Betr_Summen.Objekt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter_Betr_Summen.Planjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter_Betr_Summen.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter_Betr_Summen.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter_Betr_Summen.BereichName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter_Betr_Summen.Kostenart"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter_Betr_Summen.Betrag_"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter_Betr_Summen.sort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter_Betr_Summen.Sum_BGF_Gb_LS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter_Betr_Summen.Sportfläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.Sum_BGF_Gb_LS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter_Betr_Summen.Sum_BGF_Sp_Fl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="n_2017"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter.ID_Gebäude"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter.Objekt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter.Planjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter.BereichName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter.Kostenart"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter.Sum_BGF_Gb_LS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter.Sum_BGF_Sp_Fl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter.Betrag_"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter.sort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter.Sportfläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.ID_Gebäude"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Objekt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Planjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.BereichName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Kostenart"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Sum_BGF_Gb_LS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Sum_BGF_Sp_Fl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Betrag_"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.sort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_mit_Filter.Sportfläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NKGL_Jahr "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NKGL_Jahr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1874
    Bottom =1079
    Left =-1
    Top =-1
    Right =1850
    Bottom =393
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =103
        Top =84
        Right =527
        Bottom =340
        Top =0
        Name ="Union_Abfrage_Mietberechnung_mit_Filter"
        Name =""
    End
End
