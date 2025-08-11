Version =131074
ColumnsShown =3
Begin
    MacroName ="ÖffnenFilter"
    Action ="OpenForm"
    Argument ="Filter für Buchungen_Historik"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="-1"
    Argument ="3"
End
Begin
    MacroName ="OhneFilter"
    Action ="SetValue"
    Argument ="[Forms]![Filter für Buchungen_Historik].[Visible]"
    Argument ="No"
End
Begin
    Action ="OpenForm"
    Argument ="Buchungsanordnung_Historik"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="-1"
    Argument ="0"
End
Begin
    MacroName ="SchließenFilter"
    Action ="Close"
    Argument ="2"
    Argument ="Filter für Buchungen_Historik"
    Argument ="2"
End
