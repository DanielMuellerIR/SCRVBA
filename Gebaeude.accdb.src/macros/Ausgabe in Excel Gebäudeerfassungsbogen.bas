Version =131074
ColumnsShown =1
Begin
    MacroName ="öffnen"
    Action ="OpenForm"
    Argument ="Filter für Gebäudeerfassungsbogen"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="-1"
    Argument ="0"
End
Begin
    MacroName ="abfrage"
    Action ="SetValue"
    Argument ="[Forms]![Filter für Gebäudeerfassungsbogen].[Visible]"
    Argument ="No"
End
Begin
    Action ="OutputTo"
    Argument ="1"
    Argument ="Gebäude_Erfassungsbogen_RWE"
    Argument ="MicrosoftExcel(*.xls)"
    Argument =""
    Argument ="0"
End
Begin
    MacroName ="schließen"
    Action ="Close"
    Argument ="2"
    Argument ="Filter für Gebäudeerfassungsbogen"
    Argument ="0"
End
