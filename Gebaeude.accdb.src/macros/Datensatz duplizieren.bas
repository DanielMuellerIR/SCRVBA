Version =196611
ColumnsShown =0
Begin
    Action ="OpenQuery"
    Argument ="M_Datensatz_duplizieren"
    Argument ="0"
    Argument ="1"
End
Begin
    Action ="MsgBox"
    Argument ="Der Datensatz ist jetzt doppelt vorhanden. Der neue Datensatz ist mit  DUPLIKAT "
        "gekennzeichnet! Bitte entsprechend bearbeiten!"
    Argument ="-1"
    Argument ="1"
    Argument ="Dupiziert"
End
Begin
    Action ="SelectObject"
    Argument ="2"
    Argument ="M_Formular_Gebäudedaten"
    Argument ="0"
End
Begin
    Action ="GoToControl"
    Argument ="Gebäudeauswahl"
End
Begin
    Action ="Requery"
    Argument ="Gebäudeauswahl"
End
Begin
    Action ="SendKeys"
    Argument ="{f4}"
    Argument ="0"
End
