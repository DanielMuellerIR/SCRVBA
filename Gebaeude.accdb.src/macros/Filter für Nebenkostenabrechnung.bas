Version =196611
ColumnsShown =0
Begin
    MacroName ="ÖffnenFilter"
    Action ="OpenForm"
    Argument ="Filter für Nebenkostenabrechnung"
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
    Argument ="Filter für Nebenkostenabrechnung"
    Argument ="2"
End
Begin
    MacroName ="test"
    Action ="SetValue"
    Argument ="[Forms]![Filter für Nebenkostenabrechnung].[Visible]"
    Argument ="No"
End
Begin
    Action ="OpenQuery"
    Argument ="NK_enstanden_ohne_Vorauszahlungen_DS_anfügen"
    Argument ="0"
    Argument ="1"
End
Begin
    Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
        "nterfaceMacro MinimumClientDesignVersion=\"14.0.0000.0000\" xmlns=\"http://schem"
        "as.microsoft.com/office/accessservices/2009/11/application\" xmlns:a=\"http://sc"
        "hemas.microsoft.com/office/acc"
End
Begin
    Comment ="_AXL:essservices/2009/11/forms\"><Statements/><Sub Name=\"ÖffnenFilter\"><Statem"
        "ents><Action Name=\"OpenForm\"><Argument Name=\"FormName\">Filter für Nebenkoste"
        "nabrechnung</Argument></Action></Statements></Sub><Sub Name=\"SchließenFilter\">"
        "<Statements><Action Na"
End
Begin
    Comment ="_AXL:me=\"CloseWindow\"><Argument Name=\"ObjectType\">Form</Argument><Argument N"
        "ame=\"ObjectName\">Filter für Nebenkostenabrechnung</Argument><Argument Name=\"S"
        "ave\">No</Argument></Action></Statements></Sub><Sub Name=\"test\"><Statements><A"
        "ction Name=\"SetValue\"><"
End
Begin
    Comment ="_AXL:Argument Name=\"Item\">[Forms]![Filter für Nebenkostenabrechnung].[Visible]"
        "</Argument><Argument Name=\"Expression\">No</Argument></Action><Action Name=\"Op"
        "enQuery\"><Argument Name=\"QueryName\">NK_enstanden_ohne_Vorauszahlungen_DS_anfü"
        "gen</Argument></Actio"
End
Begin
    Comment ="_AXL:n></Statements></Sub></UserInterfaceMacro>"
End
