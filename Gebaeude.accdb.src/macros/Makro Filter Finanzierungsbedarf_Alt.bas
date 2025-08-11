Version =196611
ColumnsShown =0
Begin
    MacroName ="ÖffnenFilter"
    Action ="OpenForm"
    Argument ="Filter für Sanierungsstau"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="-1"
    Argument ="0"
End
Begin
    MacroName ="OhneFilter"
    Action ="SetValue"
    Argument ="[Forms]![Filter für Sanierungsstau].[Massnahme]"
    Argument ="\"*\""
End
Begin
    Action ="SetValue"
    Argument ="[Forms]![Filter für Sanierungsstau].[Visible]"
    Argument ="No"
End
Begin
    Action ="OpenReport"
    Argument ="Sanierungsstau-neu-"
    Argument ="2"
    Argument =""
    Argument =""
    Argument ="0"
End
Begin
    MacroName ="MitFilter"
    Condition ="[Forms]![Filter für Sanierungsstau].[Massnahme] Is Null"
    Action ="SetValue"
    Argument ="[Forms]![Filter für Sanierungsstau].[Massnahme]"
    Argument ="\"*\""
End
Begin
    Action ="SetValue"
    Argument ="[Forms]![Filter für Sanierungsstau].[Visible]"
    Argument ="No"
End
Begin
    Action ="OpenReport"
    Argument ="Sanierungsstau-neu-"
    Argument ="2"
    Argument =""
    Argument =""
    Argument ="0"
End
Begin
    MacroName ="SchließenFilter"
    Action ="Close"
    Argument ="2"
    Argument ="Filter für Sanierungsstau"
    Argument ="2"
End
Begin
    Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
        "nterfaceMacro MinimumClientDesignVersion=\"14.0.0000.0000\" xmlns=\"http://schem"
        "as.microsoft.com/office/accessservices/2009/11/application\" xmlns:a=\"http://sc"
        "hemas.microsoft.com/office/acc"
End
Begin
    Comment ="_AXL:essservices/2009/11/forms\"><Statements/><Sub Collapsed=\"true\" Name=\"Öff"
        "nenFilter\"><Statements><Action Name=\"OpenForm\"><Argument Name=\"FormName\">Fi"
        "lter für Sanierungsstau</Argument></Action></Statements></Sub><Sub Collapsed=\"t"
        "rue\" Name=\"OhneFilter\">"
End
Begin
    Comment ="_AXL:<Statements><Action Name=\"SetValue\"><Argument Name=\"Item\">[Forms]![Filt"
        "er für Sanierungsstau].[Massnahme]</Argument><Argument Name=\"Expression\">\"*\""
        "</Argument></Action><Action Name=\"SetValue\"><Argument Name=\"Item\">[Forms]![F"
        "ilter für Sanierungsstau]"
End
Begin
    Comment ="_AXL:.[Visible]</Argument><Argument Name=\"Expression\">No</Argument></Action><A"
        "ction Name=\"OpenReport\"><Argument Name=\"ReportName\">Sanierungsstau-neu-</Arg"
        "ument><Argument Name=\"View\">Print Preview</Argument></Action></Statements></Su"
        "b><Sub Collapsed=\"tru"
End
Begin
    Comment ="_AXL:e\" Name=\"MitFilter\"><Statements><ConditionalBlock><If><Condition>[Forms]"
        "![Filter für Sanierungsstau].[Massnahme] Is Null</Condition><Statements><Action "
        "Name=\"SetValue\"><Argument Name=\"Item\">[Forms]![Filter für Sanierungsstau].[M"
        "assnahme]</Argument>"
End
Begin
    Comment ="_AXL:<Argument Name=\"Expression\">\"*\"</Argument></Action></Statements></If></"
        "ConditionalBlock><Action Name=\"SetValue\"><Argument Name=\"Item\">[Forms]![Filt"
        "er für Sanierungsstau].[Visible]</Argument><Argument Name=\"Expression\">No</Arg"
        "ument></Action><Action "
End
Begin
    Comment ="_AXL:Name=\"OpenReport\"><Argument Name=\"ReportName\">Sanierungsstau-neu-</Argu"
        "ment><Argument Name=\"View\">Print Preview</Argument></Action></Statements></Sub"
        "><Sub Name=\"SchließenFilter\"><Statements><Action Name=\"CloseWindow\"><Argumen"
        "t Name=\"ObjectType\">For"
End
Begin
    Comment ="_AXL:m</Argument><Argument Name=\"ObjectName\">Filter für Sanierungsstau</Argume"
        "nt><Argument Name=\"Save\">No</Argument></Action></Statements></Sub></UserInterf"
        "aceMacro>"
End
