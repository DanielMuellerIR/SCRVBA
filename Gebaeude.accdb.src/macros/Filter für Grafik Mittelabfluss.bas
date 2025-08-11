Version =131074
ColumnsShown =1
Begin
    MacroName ="Filterformular öffnen"
    Action ="OpenForm"
    Argument ="Filter für Grafik Mittelabfluss"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="-1"
    Argument ="0"
End
Begin
    MacroName ="Bericht öffnen"
    Action ="SetValue"
    Argument ="[Forms]![Filter für Grafik Mittelabfluss].[Visible]"
    Argument ="No"
End
Begin
    Action ="OpenReport"
    Argument ="Bericht monatlicher Mittelabfluss Diagramm"
    Argument ="2"
End
Begin
    MacroName ="Filterformular schließen"
    Action ="Close"
    Argument ="2"
    Argument ="Filter für Grafik Mittelabfluss"
    Argument ="0"
End
