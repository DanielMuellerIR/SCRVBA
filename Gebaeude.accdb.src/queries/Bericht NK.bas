Operation =1
Option =0
Begin InputTables
    Name ="A_Buchungen"
    Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Name ="A_Empfänger"
    Name ="M_Verzeichnis Nebenkosten"
    Name ="M_Kostenstellen"
    Name ="Zahlungszyklen"
    Name ="M_Bereiche"
    Name ="M_Objekte"
    Name ="Sachbearbeiter"
End
Begin OutputColumns
    Alias ="Gesamtbetrag"
    Expression ="A_Buchungen.Betrag"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
    Alias ="Empfänger"
    Expression ="[Anrede] & IIf(IsNull([Anrede]),\"\",\" \") & [Name, Vorname]"
    Expression ="A_Empfänger.[Name, Vorname]"
    Expression ="A_Buchungen.angelegt"
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    Expression ="Sachbearbeiter.Name"
    Expression ="M_Kostenstellen.Kostenstelle"
    Expression ="M_Kostenstellen.Bezeichnung"
    Expression ="A_Buchungen.Haushaltsjahr"
    Expression ="Zahlungszyklen.Zyklus"
    Alias ="Ausdr1"
    Expression ="IIf(Right(Left([Kostenstelle],4),2)=0,60,Right(Left([Kostenstelle],4),2))"
    Alias ="Ausdr2"
    Expression ="M_Bereiche.Betrieb"
End
Begin Joins
    LeftTable ="A_Buchungen"
    RightTable ="A_Empfänger"
    Expression ="A_Buchungen.[ID Empfänger] = A_Empfänger.ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="M_Verzeichnis Nebenkosten"
    Expression ="A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID"
    Flag =1
    LeftTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    RightTable ="M_Kostenstellen"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen] = M_Kostenstelle"
        "n.Kennummer"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="Zahlungszyklen"
    Expression ="A_Buchungen.[ID Fälligkeiten] = Zahlungszyklen.ID"
    Flag =1
    LeftTable ="M_Kostenstellen"
    RightTable ="M_Objekte"
    Expression ="M_Kostenstellen.Kennummer = M_Objekte.[Kennummer aus Kostenstellenverzeichnis]"
    Flag =2
    LeftTable ="M_Objekte"
    RightTable ="M_Bereiche"
    Expression ="M_Objekte.[Kennummer aus Bereiche] = M_Bereiche.Kennummer"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Expression ="A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="Sachbearbeiter"
    Expression ="A_Buchungen.[ID Sachbearbeiter] = Sachbearbeiter.ID"
    Flag =2
End
Begin Groups
    Expression ="A_Buchungen.Betrag"
    GroupLevel =0
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
    GroupLevel =0
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
    GroupLevel =0
    Expression ="[Anrede] & IIf(IsNull([Anrede]),\"\",\" \") & [Name, Vorname]"
    GroupLevel =0
    Expression ="A_Empfänger.[Name, Vorname]"
    GroupLevel =0
    Expression ="A_Buchungen.angelegt"
    GroupLevel =0
    Expression ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
    GroupLevel =0
    Expression ="Sachbearbeiter.Name"
    GroupLevel =0
    Expression ="M_Kostenstellen.Kostenstelle"
    GroupLevel =0
    Expression ="M_Kostenstellen.Bezeichnung"
    GroupLevel =0
    Expression ="A_Buchungen.Haushaltsjahr"
    GroupLevel =0
    Expression ="Zahlungszyklen.Zyklus"
    GroupLevel =0
    Expression ="IIf(Right(Left([Kostenstelle],4),2)=0,60,Right(Left([Kostenstelle],4),2))"
    GroupLevel =0
    Expression ="M_Bereiche.Betrieb"
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
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
        dbInteger "ColumnWidth" ="2070"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Kostenstelle"
        dbInteger "ColumnWidth" ="1305"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.angelegt"
        dbText "Format" ="Short Date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[M_Verzeichnis Nebenkosten].Nebenkosten_Art"
        dbInteger "ColumnWidth" ="2130"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gesamtbetrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Empfänger"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sachbearbeiter.Name"
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
    Right =1368
    Bottom =569
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =30
        Top =7
        Right =251
        Bottom =339
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =350
        Top =4
        Right =661
        Bottom =111
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
        Name =""
    End
    Begin
        Left =470
        Top =180
        Right =566
        Bottom =287
        Top =0
        Name ="A_Empfänger"
        Name =""
    End
    Begin
        Left =471
        Top =333
        Right =716
        Bottom =410
        Top =0
        Name ="M_Verzeichnis Nebenkosten"
        Name =""
    End
    Begin
        Left =739
        Top =12
        Right =902
        Bottom =104
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =288
        Top =204
        Right =384
        Bottom =281
        Top =0
        Name ="Zahlungszyklen"
        Name =""
    End
    Begin
        Left =1169
        Top =46
        Right =1265
        Bottom =153
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =931
        Top =325
        Right =1167
        Bottom =567
        Top =0
        Name ="M_Objekte"
        Name =""
    End
    Begin
        Left =712
        Top =134
        Right =877
        Bottom =299
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
End
