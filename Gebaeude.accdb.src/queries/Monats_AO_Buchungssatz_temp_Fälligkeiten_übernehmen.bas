Operation =3
Name ="A_Buchungen_Aufteilung_auf_Fälligkeiten"
Option =0
Begin InputTables
    Name ="MonatsAO_temp_Buchungssatz_fällig"
End
Begin OutputColumns
    Alias ="Ausdr1"
    Name ="ID aus Buchungen"
    Expression ="[formulare]![Monatsanordnung_UF_5].[IDneu]"
    Alias ="Ausdr2"
    Name ="sofort"
    Expression ="[formulare]![Monatsanordnung]![Monatsanordnung_UF_3]![sofort]"
    Alias ="Ausdr3"
    Name ="andere Fälligkeit"
    Expression ="[formulare]![Monatsanordnung]![Monatsanordnung_UF_3]![andere Fälligkeit]"
    Name ="Fälligkeitsdatum"
    Expression ="MonatsAO_temp_Buchungssatz_fällig.Fälligkeitsdatum"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
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
    Bottom =233
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =86
        Top =18
        Right =571
        Bottom =125
        Top =0
        Name ="MonatsAO_temp_Buchungssatz_fällig"
        Name =""
    End
End
