Operation =3
Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
Option =0
Begin InputTables
    Name ="MonatsAO_temp_Buchungssatz_Kostenstellen"
End
Begin OutputColumns
    Alias ="Ausdr1"
    Name ="ID aus Buchungen"
    Expression ="[formulare]![Monatsanordnung_UF_5].[IDneu]"
    Name ="ID aus Kostenstellen"
    Expression ="MonatsAO_temp_Buchungssatz_Kostenstellen.[ID aus Kostenstellen]"
    Name ="ID aus Kostenträger"
    Expression ="MonatsAO_temp_Buchungssatz_Kostenstellen.[ID aus Kostenträger]"
    Name ="Kostenstelle_Infoma"
    Expression ="MonatsAO_temp_Buchungssatz_Kostenstellen.Kostenstelle_Infoma"
    Name ="Betrag"
    Expression ="MonatsAO_temp_Buchungssatz_Kostenstellen.Betrag"
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
        dbText "Name" ="MonatsAO_temp_Buchungssatz_Kostenstellen.Kostenstelle_Infoma"
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
    Right =1369
    Bottom =216
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =82
        Top =5
        Right =504
        Bottom =155
        Top =0
        Name ="MonatsAO_temp_Buchungssatz_Kostenstellen"
        Name =""
    End
End
