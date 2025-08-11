Operation =1
Option =0
Where ="((([Jahr]=F_Variable(\"lng_Kalk_JAhr\") And [Finanzherkunft]<>\"Bauunterhaltung\""
    " And [Maßnahmen].[ID] Is Null)=True))"
Begin InputTables
    Name ="Maßnahmen"
    Name ="Haushaltsdaten"
    Name ="Geplante Finanzierung"
    Name ="Finanzherkunft"
End
Begin OutputColumns
    Expression ="Maßnahmen.ID"
    Alias ="zufVfg"
    Expression ="IIf([Haushaltsdaten].[id] Is Null,0,CCur([HHR])+CCur([Ansatz]))"
    Alias ="Geplant"
    Expression ="[Geplante Finanzierung].Betrag"
End
Begin Joins
    LeftTable ="Maßnahmen"
    RightTable ="Haushaltsdaten"
    Expression ="Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =3
    LeftTable ="Finanzherkunft"
    RightTable ="Haushaltsdaten"
    Expression ="Finanzherkunft.ID_Fin_Her = Haushaltsdaten.ID_Fin_Her"
    Flag =1
    LeftTable ="Maßnahmen"
    RightTable ="Geplante Finanzierung"
    Expression ="Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme"
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
dbBoolean "TotalsRow" ="-1"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Maßnahmen.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="zufVfg"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Geplant "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Geplant"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =3754
    Bottom =868
    Left =-1
    Top =-1
    Right =3719
    Bottom =202
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =301
        Top =108
        Right =561
        Bottom =433
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =674
        Top =41
        Right =937
        Bottom =256
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =672
        Top =262
        Right =941
        Bottom =488
        Top =0
        Name ="Geplante Finanzierung"
        Name =""
    End
    Begin
        Left =1025
        Top =90
        Right =1169
        Bottom =234
        Top =0
        Name ="Finanzherkunft"
        Name =""
    End
End
