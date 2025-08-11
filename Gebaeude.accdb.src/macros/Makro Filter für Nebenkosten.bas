Version =196611
ColumnsShown =3
Begin
    MacroName ="ÖffnenFilter"
    Action ="OpenForm"
    Argument ="Filter für Nebenkosten"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="-1"
    Argument ="0"
End
Begin
    MacroName ="OhneFilter"
    Action ="SetValue"
    Argument ="[Forms]![Filter für Nebenkosten].[Gebäude]"
    Argument ="\"*\""
End
Begin
    Action ="SetValue"
    Argument ="[Forms]![Filter für Nebenkosten].[Rechnungsaussteller]"
    Argument ="\"*\""
End
Begin
    Action ="SetValue"
    Argument ="[Forms]![Filter für Nebenkosten].[Nebenkostenart]"
    Argument ="\"*\""
End
Begin
    Action ="SetValue"
    Argument ="[Forms]![Filter für Nebenkosten].[Visible]"
    Argument ="No"
End
Begin
    Action ="OpenReport"
    Argument ="Aufstellung Nebenkosten"
    Argument ="2"
End
Begin
    MacroName ="MitFilter"
    Condition ="IsNull([Forms]![Filter für Nebenkosten].[Gebäude])"
    Action ="SetValue"
    Argument ="[Forms]![Filter für Nebenkosten].[Gebäude]"
    Argument ="\"*\""
End
Begin
    Action ="SetValue"
    Argument ="[Forms]![Filter für Nebenkosten].[Visible]"
    Argument ="No"
End
Begin
    Action ="OpenReport"
    Argument ="Aufstellung Nebenkosten"
    Argument ="2"
End
Begin
    MacroName ="SchließenFilter"
    Action ="Close"
    Argument ="2"
    Argument ="Filter für Nebenkosten"
    Argument ="2"
End
