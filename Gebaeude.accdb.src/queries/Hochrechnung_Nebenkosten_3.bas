Operation =1
Option =0
Where ="(((Hochrechnung_Nebenkosten_2.Haushaltsjahr) Between F_Variable(\"lng_Kalk_Jahr_"
    "Min\") And F_Variable(\"lng_Kalk_Jahr_Max\")) AND ((M_Betriebe.ID_Betrieb) Betwe"
    "en F_Variable(\"lng_Betr_Nr_Min\") And F_Variable(\"lng_Betr_Nr_Max\")) AND ((Ho"
    "chrechnung_Nebenkosten_2.[ID aus Kostenstellen]) Between F_Variable(\"lng_ID_Kos"
    "tst_Min\") And F_Variable(\"lng_ID_Kostst_Max\")) AND ((Hochrechnung_Nebenkosten"
    "_2.ID_Zyklus) Between F_Variable(\"lng_ID_ZahlZykl_Min\") And F_Variable(\"lng_I"
    "D_ZahlZykl_Max\")) AND ((Hochrechnung_Nebenkosten_2.ID_Empf) Between F_Variable("
    "\"lng_ID_Empf_Min\") And F_Variable(\"lng_ID_Empf_Max\")) AND ((Hochrechnung_Neb"
    "enkosten_2.ID_Nebenkosten) Between F_Variable(\"lng_ID_Kostart_Min\") And F_Vari"
    "able(\"lng_ID_Kostart_Max\")))"
Begin InputTables
    Name ="Hochrechnung_Nebenkosten_2"
    Name ="M_Kostenstellen"
    Name ="Hochrechnung_Nebenkosten_3a"
    Name ="Zuordnung KoSt zu Bereichen und Betrieben"
    Name ="M_Betriebe"
End
Begin OutputColumns
    Expression ="Hochrechnung_Nebenkosten_2.Haushaltsjahr"
    Expression ="Hochrechnung_Nebenkosten_3a.Kalkulationsjahr"
    Expression ="M_Kostenstellen.Kostenstelle"
    Expression ="M_Kostenstellen.Bezeichnung"
    Expression ="Hochrechnung_Nebenkosten_2.Nebenkosten_Art"
    Expression ="Hochrechnung_Nebenkosten_2.Zyklus"
    Expression ="Hochrechnung_Nebenkosten_2.[Anzahl von Betrag]"
    Expression ="Hochrechnung_Nebenkosten_2.[Summe von Betrag]"
    Expression ="Hochrechnung_Nebenkosten_2.Vervielfältiger"
    Alias ="hochgerechnet"
    Expression ="IIf([vervielfältiger]=1,[summe von betrag],([summe von betrag]/[anzahl von betra"
        "g])*[vervielfältiger])"
    Alias ="Steigerungssatz_"
    Expression ="IIf(IsNull([steigerungssatz]),0,IIf([Hochrechnung_Nebenkosten_2].[Haushaltsjahr]"
        "=[Hochrechnung_Nebenkosten_3a].[Kalkulationsjahr],0,[steigerungssatz]))"
    Alias ="Steigerung"
    Expression ="[steigerungssatz_]*[hochgerechnet]"
    Alias ="Kosten"
    Expression ="[Steigerung]+[hochgerechnet]"
    Expression ="Hochrechnung_Nebenkosten_2.[Name, Vorname]"
    Expression ="[Zuordnung KoSt zu Bereichen und Betrieben].BereichName"
    Expression ="M_Betriebe.ID_Betrieb"
End
Begin Joins
    LeftTable ="Hochrechnung_Nebenkosten_2"
    RightTable ="Hochrechnung_Nebenkosten_3a"
    Expression ="Hochrechnung_Nebenkosten_2.ID_Nebenkosten = Hochrechnung_Nebenkosten_3a.Nebenkos"
        "tenart"
    Flag =2
    LeftTable ="Hochrechnung_Nebenkosten_2"
    RightTable ="M_Kostenstellen"
    Expression ="Hochrechnung_Nebenkosten_2.[ID aus Kostenstellen] = M_Kostenstellen.Kennummer"
    Flag =2
    LeftTable ="M_Kostenstellen"
    RightTable ="Zuordnung KoSt zu Bereichen und Betrieben"
    Expression ="M_Kostenstellen.Kennummer = [Zuordnung KoSt zu Bereichen und Betrieben].Kennumme"
        "r"
    Flag =2
    LeftTable ="Zuordnung KoSt zu Bereichen und Betrieben"
    RightTable ="M_Betriebe"
    Expression ="[Zuordnung KoSt zu Bereichen und Betrieben].Betrieb = M_Betriebe.Betrieb"
    Flag =2
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
        dbText "Name" ="hochgerechnet"
        dbInteger "ColumnWidth" ="1575"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Kosten"
        dbInteger "ColumnWidth" ="1320"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Steigerung"
        dbInteger "ColumnWidth" ="1215"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Steigerungssatz_"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2205"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_2.Haushaltsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Kostenstelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Bezeichnung"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3960"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_2.Nebenkosten_Art"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_2.Zyklus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_2.[Name, Vorname]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Zuordnung KoSt zu Bereichen und Betrieben].BereichName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_2.Vervielfältiger"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_2.[Summe von Betrag]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_2.[Anzahl von Betrag]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_3a.Kalkulationsjahr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3615"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="M_Betriebe.ID_Betrieb"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1890
    Bottom =1004
    Left =-1
    Top =-1
    Right =1866
    Bottom =403
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =308
        Bottom =278
        Top =0
        Name ="Hochrechnung_Nebenkosten_2"
        Name =""
    End
    Begin
        Left =362
        Top =22
        Right =586
        Bottom =177
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =357
        Top =212
        Right =615
        Bottom =329
        Top =0
        Name ="Hochrechnung_Nebenkosten_3a"
        Name =""
    End
    Begin
        Left =656
        Top =22
        Right =1002
        Bottom =162
        Top =0
        Name ="Zuordnung KoSt zu Bereichen und Betrieben"
        Name =""
    End
    Begin
        Left =1094
        Top =37
        Right =1267
        Bottom =140
        Top =0
        Name ="M_Betriebe"
        Name =""
    End
End
