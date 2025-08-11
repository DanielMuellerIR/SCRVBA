Version =131074
ColumnsShown =3
Begin
    MacroName ="ÖffnenFilter"
    Action ="OpenForm"
    Argument ="Filter für Archiv Gebäudebewertung"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="-1"
    Argument ="0"
End
Begin
    MacroName ="Filter"
    Condition ="IsNull([Forms]![Filter für Archiv Gebäudebewertung].[Objekt])"
    Action ="SetValue"
    Argument ="[Forms]![Filter für Archiv Gebäudebewertung].[Objekt]"
    Argument ="\"*\""
End
Begin
    Action ="SetValue"
    Argument ="[Forms]![Filter für Archiv Gebäudebewertung].[Visible]"
    Argument ="No"
End
Begin
    Action ="OpenReport"
    Argument ="Gebäudebewertung_Archiv"
    Argument ="2"
End
Begin
    MacroName ="SchließenFilter"
    Action ="Close"
    Argument ="2"
    Argument ="Filter für Archiv Gebäudebewertung"
    Argument ="2"
End
