Version =131074
ColumnsShown =2
Begin
    Action ="OpenForm"
    Argument ="Formular archivieren monatlicher Mittelabfluss"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="-1"
    Argument ="1"
End
Begin
    Condition ="[Forms]![Formular archivieren monatlicher Mittelabfluss]![archivieren]=1"
    Action ="OpenQuery"
    Argument ="Abfrage für monatlicher Mittelabfluss Daten archivieren"
    Argument ="0"
    Argument ="1"
End
Begin
    Action ="Close"
    Argument ="2"
    Argument ="Formular archivieren monatlicher Mittelabfluss"
    Argument ="0"
End
