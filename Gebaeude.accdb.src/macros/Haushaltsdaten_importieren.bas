Version =196611
ColumnsShown =3
Begin
    MacroName ="Haushaltsdaten"
    Condition ="DateValue([Forms]![startformular]![Datum_Aktualisierung])=DateValue([Forms]![sta"
        "rtformular]![aktuelles_Datum])"
    Action ="StopMacro"
End
Begin
    Action ="MsgBox"
    Argument ="Moment, hole eben die Daten vom großen Rechner im Rathaus!"
    Argument ="-1"
    Argument ="0"
    Argument ="Aktualisierung!"
End
Begin
    Condition ="fctTableExists(\"Import_Haushaltsdaten\")"
    Action ="DeleteObject"
    Argument ="0"
    Argument ="Import_Haushaltsdaten"
End
Begin
    Action ="TransferText"
    Argument ="0"
    Argument ="Hhstb60 Importspezifikation"
    Argument ="Import_Haushaltsdaten"
    Argument ="s:\\a60\\datenbank\\HHSTB60.txt"
    Argument ="-1"
End
Begin
    Action ="SetValue"
    Argument ="[Forms]![Startformular]![Datum_Aktualisierung]"
    Argument ="Now()"
End
