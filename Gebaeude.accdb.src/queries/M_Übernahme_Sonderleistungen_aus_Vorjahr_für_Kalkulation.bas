Operation =3
Name ="M_Sonderleistungen_Kalkulation_für_Budget"
Option =0
Where ="(((M_Sonderleistungen.ID_Gebäudeteil)=[Formulare]![M_Formular_Gebäudedaten]![Geb"
    "äudeauswahl]))"
Begin InputTables
    Name ="M_Sonderleistungen"
End
Begin OutputColumns
    Alias ="Neues_HHJ"
    Name ="Haushaltsjahr_Kalkulation"
    Expression ="[Haushaltsjahr]+1"
    Name ="erledigte Arbeiten"
    Expression ="M_Sonderleistungen.[erledigte Arbeiten]"
    Name ="Betrag_bezahlt"
    Expression ="M_Sonderleistungen.Betrag"
    Name ="Rechnungsaussteller"
    Expression ="M_Sonderleistungen.Rechnungsaussteller"
    Name ="gezahlt_in"
    Expression ="M_Sonderleistungen.Haushaltsjahr"
    Name ="ID_Gebäudeteil"
    Expression ="M_Sonderleistungen.ID_Gebäudeteil"
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
        dbText "Name" ="Neues_HHJ"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Sonderleistungen.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[M_Sonderleistungen].[ID aus Objekte]"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1352
    Bottom =854
    Left =-1
    Top =-1
    Right =1328
    Bottom =302
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =55
        Top =35
        Right =420
        Bottom =222
        Top =0
        Name ="M_Sonderleistungen"
        Name =""
    End
End
