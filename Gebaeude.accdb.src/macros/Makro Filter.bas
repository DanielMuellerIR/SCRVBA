Version =196611
ColumnsShown =0
Begin
    MacroName ="OhneFilter"
    Action ="SetValue"
    Argument ="[Forms]![Filter für Arbeitsprogramm].[Visible]"
    Argument ="No"
End
Begin
    Action ="OpenReport"
    Argument ="Arbeitsprogramm"
    Argument ="2"
    Argument =""
    Argument =""
    Argument ="0"
End
Begin
    MacroName ="MitFilter"
    Action ="SetValue"
    Argument ="[Forms]![Filter für Arbeitsprogramm].[Visible]"
    Argument ="No"
End
Begin
    Condition ="[Forms]![Filter für Arbeitsprogramm]![Fachingenieur]<>\"*\""
    Action ="OpenReport"
    Argument ="Arbeitsprogramm für Fachingenieuere"
    Argument ="2"
    Argument =""
    Argument =""
    Argument ="0"
End
Begin
    Condition ="[Forms]![Filter für Arbeitsprogramm]![Fachingenieur]=\"*\""
    Action ="OpenReport"
    Argument ="Arbeitsprogramm"
    Argument ="2"
    Argument =""
    Argument =""
    Argument ="0"
End
Begin
    MacroName ="SchließenFilter"
    Action ="Close"
    Argument ="2"
    Argument ="Filter für Arbeitsprogramm"
    Argument ="2"
End
Begin
    Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
        "nterfaceMacro MinimumClientDesignVersion=\"14.0.0000.0000\" xmlns=\"http://schem"
        "as.microsoft.com/office/accessservices/2009/11/application\" xmlns:a=\"http://sc"
        "hemas.microsoft.com/office/acc"
End
Begin
    Comment ="_AXL:essservices/2009/11/forms\"><Statements/><Sub Name=\"OhneFilter\"><Statemen"
        "ts><Action Name=\"SetValue\"><Argument Name=\"Item\">[Forms]![Filter für Arbeits"
        "programm].[Visible]</Argument><Argument Name=\"Expression\">No</Argument></Actio"
        "n><Action Name=\"OpenRe"
End
Begin
    Comment ="_AXL:port\"><Argument Name=\"ReportName\">Arbeitsprogramm</Argument><Argument Na"
        "me=\"View\">Print Preview</Argument></Action></Statements></Sub><Sub Name=\"MitF"
        "ilter\"><Statements><Action Name=\"SetValue\"><Argument Name=\"Item\">[Forms]![F"
        "ilter für Arbeitsprogram"
End
Begin
    Comment ="_AXL:m].[Visible]</Argument><Argument Name=\"Expression\">No</Argument></Action>"
        "<ConditionalBlock><If><Condition>[Forms]![Filter für Arbeitsprogramm]![Fachingen"
        "ieur]&lt;&gt;\"*\"</Condition><Statements><Action Name=\"OpenReport\"><Argument "
        "Name=\"ReportName\">A"
End
Begin
    Comment ="_AXL:rbeitsprogramm für Fachingenieuere</Argument><Argument Name=\"View\">Print "
        "Preview</Argument></Action></Statements></If></ConditionalBlock><ConditionalBloc"
        "k><If><Condition>[Forms]![Filter für Arbeitsprogramm]![Fachingenieur]=\"*\"</Con"
        "dition><Statement"
End
Begin
    Comment ="_AXL:s><Action Name=\"OpenReport\"><Argument Name=\"ReportName\">Arbeitsprogramm"
        "</Argument><Argument Name=\"View\">Print Preview</Argument></Action></Statements"
        "></If></ConditionalBlock></Statements></Sub><Sub Name=\"SchließenFilter\"><State"
        "ments><Action Name=\"C"
End
Begin
    Comment ="_AXL:loseWindow\"><Argument Name=\"ObjectType\">Form</Argument><Argument Name=\""
        "ObjectName\">Filter für Arbeitsprogramm</Argument><Argument Name=\"Save\">No</Ar"
        "gument></Action></Statements></Sub></UserInterfaceMacro>"
End
