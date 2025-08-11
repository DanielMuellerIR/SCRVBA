Operation =1
Option =0
Begin InputTables
    Name ="V_Energieverbrauch_3_Verbrauch"
    Name ="Energieverbräuche_Detail_1"
End
Begin OutputColumns
    Expression ="V_Energieverbrauch_3_Verbrauch.von"
    Expression ="V_Energieverbrauch_3_Verbrauch.bis"
    Expression ="V_Energieverbrauch_3_Verbrauch.Zeitraum"
    Expression ="V_Energieverbrauch_3_Verbrauch.Zählerstand_Anfang"
    Expression ="V_Energieverbrauch_3_Verbrauch.Zählerstand_Ende"
    Expression ="Energieverbräuche_Detail_1.Einheit"
    Expression ="V_Energieverbrauch_3_Verbrauch.Verbrauch_"
    Expression ="Energieverbräuche_Detail_1.Energieart"
    Alias ="Verbrauch in KwH"
    Expression ="V_Energieverbrauch_3_Verbrauch.Verbrauch"
    Expression ="Energieverbräuche_Detail_1.Bezeichnung"
    Expression ="Energieverbräuche_Detail_1.Zählernummer"
    Alias ="Verbrauchsjahr"
    Expression ="Year([bis])"
    Alias ="Gradtagszahl Normaljahr"
    Expression ="IIf([Energieart]=\"Fernwärme kWh\" Or [energieart]=\"Gas m³\",3180)"
    Alias ="Jahreszahl Verbrauchsjahr"
    Expression ="IIf([Energieart]=\"Fernwärme kWh\" Or [energieart]=\"Gas m³\",IIf(Year([bis])=20"
        "08,3199,IIf(Year([bis])=2007,2910.2,IIf(Year([bis])=2006,3070.9,IIf(Year([bis])="
        "2005,3187,3180)))))"
    Alias ="witterungsbereinigt"
    Expression ="IIf([Energieart]=\"Fernwärme kWh\" Or [energieart]=\"Gas m³\",[Verbrauch in KwH]"
        "*[Gradtagszahl Normaljahr]/[Jahreszahl Verbrauchsjahr])"
End
Begin Joins
    LeftTable ="V_Energieverbrauch_3_Verbrauch"
    RightTable ="Energieverbräuche_Detail_1"
    Expression ="V_Energieverbrauch_3_Verbrauch.[ID aus Energiezähler] = Energieverbräuche_Detail"
        "_1.ID"
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
        dbText "Name" ="Energieverbräuche_Detail_1.Energieart"
        dbInteger "ColumnWidth" ="1575"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Energieverbräuche_Detail_1.Einheit"
        dbInteger "ColumnWidth" ="810"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Verbrauch in KwH"
        dbInteger "ColumnWidth" ="2460"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="witterungsbereinigt"
        dbText "Format" ="Fixed"
        dbInteger "ColumnWidth" ="1995"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Jahreszahl Verbrauchsjahr"
        dbInteger "ColumnWidth" ="2700"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gradtagszahl Normaljahr"
        dbInteger "ColumnWidth" ="2535"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="bis"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Zeitraum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Verbrauch_"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Verbrauchsjahr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1393
    Bottom =984
    Left =-1
    Top =-1
    Right =1361
    Bottom =239
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =260
        Bottom =180
        Top =0
        Name ="V_Energieverbrauch_3_Verbrauch"
        Name =""
    End
    Begin
        Left =501
        Top =27
        Right =698
        Bottom =141
        Top =0
        Name ="Energieverbräuche_Detail_1"
        Name =""
    End
End
