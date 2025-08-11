Operation =3
Name ="Import_Haushaltsdaten"
Option =0
Where ="(((Hhstb60_doppik.Buchungsstelle) Like \"11.14*\"))"
Begin InputTables
    Name ="Hhstb60_doppik"
    Name ="Übernahme Haushaltsdaten aus Access max von Zeitstempel"
End
Begin OutputColumns
    Name ="Haushaltsjahr"
    Expression ="Hhstb60_doppik.Haushaltsjahr"
    Name ="Buchungsstelle"
    Expression ="Hhstb60_doppik.Buchungsstelle"
    Name ="buchstelle"
    Expression ="Hhstb60_doppik.buchstelle"
    Name ="Ansatz"
    Expression ="Hhstb60_doppik.Ansatz"
    Name ="HHR_aus_Vorjahren"
    Expression ="Hhstb60_doppik.HHR_aus_Vorjahren"
    Name ="Gesamt_HH-Mittel"
    Expression ="Hhstb60_doppik.[Gesamt-HH-Mittel]"
    Alias ="auf"
    Name ="Aufträge"
    Expression ="IIf(IsNull([Aufträge]),0,[Aufträge])"
    Alias ="vfgb"
    Name ="Verfügbar"
    Expression ="IIf(IsNull([Verfügbar]),0,[Verfügbar])"
    Alias ="soll"
    Name ="Sollbuchung"
    Expression ="IIf(IsNull([Sollbuchung]),0,[Sollbuchung])"
End
Begin Joins
    LeftTable ="Hhstb60_doppik"
    RightTable ="Übernahme Haushaltsdaten aus Access max von Zeitstempel"
    Expression ="Hhstb60_doppik.Zeitstempel = [Übernahme Haushaltsdaten aus Access max von Zeitst"
        "empel].[Max von Zeitstempel]"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Hhstb60_doppik.GesamtHHMittel"
        dbInteger "ColumnWidth" ="1665"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="auf"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="vfgb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="soll"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hhstb60_doppik.Haushaltsjahr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1503
    Bottom =861
    Left =-1
    Top =-1
    Right =1479
    Bottom =434
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =38
        Top =6
        Right =403
        Bottom =316
        Top =0
        Name ="Hhstb60_doppik"
        Name =""
    End
    Begin
        Left =502
        Top =208
        Right =873
        Bottom =287
        Top =0
        Name ="Übernahme Haushaltsdaten aus Access max von Zeitstempel"
        Name =""
    End
End
