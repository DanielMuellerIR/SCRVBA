Operation =1
Option =0
Where ="(((A_Buchungen_Aufteilung_auf_Fälligkeiten.sofort)=Yes Or (A_Buchungen_Aufteilun"
    "g_auf_Fälligkeiten.sofort)=Yes))"
Having ="(((A_Buchungen.Verwendungszweck) Is Not Null) AND ((A_Empfänger.[Name, Vorname])"
    " Like [formulare]![monatsanordnung]![firma]))"
Begin InputTables
    Name ="A_Empfänger"
    Name ="A_Buchungen"
    Name ="M_Verzeichnis Nebenkosten"
    Name ="A_Buchungen_Aufteilung_auf_Fälligkeiten"
    Name ="A_Buchungen_Aufteilung_auf_Buchungsstellen"
    Name ="Buchungsstellen _Doppik"
End
Begin OutputColumns
    Expression ="A_Buchungen.Verwendungszweck"
    Alias ="LetzterWert von ID"
    Expression ="Last(A_Buchungen.ID)"
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    Expression ="A_Empfänger.[Name, Vorname]"
    Expression ="[Buchungsstellen _Doppik].Buchungsstelle"
End
Begin Joins
    LeftTable ="A_Empfänger"
    RightTable ="A_Buchungen"
    Expression ="A_Empfänger.ID = A_Buchungen.[ID Empfänger]"
    Flag =3
    LeftTable ="A_Buchungen"
    RightTable ="M_Verzeichnis Nebenkosten"
    Expression ="A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="A_Buchungen_Aufteilung_auf_Fälligkeiten"
    Expression ="A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen]"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="A_Buchungen_Aufteilung_auf_Buchungsstellen"
    Expression ="A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungen]"
    Flag =1
    LeftTable ="A_Buchungen_Aufteilung_auf_Buchungsstellen"
    RightTable ="Buchungsstellen _Doppik"
    Expression ="A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungsstellen] = [Buchungss"
        "tellen _Doppik].Kennummer"
    Flag =1
End
Begin OrderBy
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    Flag =0
End
Begin Groups
    Expression ="A_Buchungen.Verwendungszweck"
    GroupLevel =0
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    GroupLevel =0
    Expression ="A_Empfänger.[Name, Vorname]"
    GroupLevel =0
    Expression ="[Buchungsstellen _Doppik].Buchungsstelle"
    GroupLevel =0
    Expression ="A_Empfänger.[Name, Vorname]"
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
        dbText "Name" ="A_Buchungen.Verwendungszweck"
        dbInteger "ColumnWidth" ="4380"
        dbInteger "ColumnOrder" ="1"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
        dbInteger "ColumnWidth" ="1755"
        dbInteger "ColumnOrder" ="2"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="LetzterWert von ID"
        dbInteger "ColumnWidth" ="1920"
        dbInteger "ColumnOrder" ="3"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Empfänger.[Name, Vorname]"
        dbInteger "ColumnWidth" ="1725"
        dbBoolean "ColumnHidden" ="0"
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
    Bottom =354
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =264
        Bottom =210
        Top =0
        Name ="A_Empfänger"
        Name =""
    End
    Begin
        Left =313
        Top =25
        Right =642
        Bottom =304
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =753
        Top =181
        Right =971
        Bottom =265
        Top =0
        Name ="M_Verzeichnis Nebenkosten"
        Name =""
    End
    Begin
        Left =763
        Top =16
        Right =934
        Bottom =115
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Fälligkeiten"
        Name =""
    End
    Begin
        Left =995
        Top =94
        Right =1222
        Bottom =193
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Buchungsstellen"
        Name =""
    End
    Begin
        Left =1260
        Top =6
        Right =1356
        Bottom =105
        Top =0
        Name ="Buchungsstellen _Doppik"
        Name =""
    End
End
