Operation =1
Option =0
Where ="((([Bericht Sanierungsstau].Gebäude) Like [Formulare]![Filter für Sanierungsstau"
    "]![Gebäude]) AND (([Bericht Sanierungsstau].Maßnahme) Like [Formulare]![Filter f"
    "ür Sanierungsstau]![Massnahme]))"
Begin InputTables
    Name ="Bericht Sanierungsstau"
End
Begin OutputColumns
    Expression ="[Bericht Sanierungsstau].ID"
    Expression ="[Bericht Sanierungsstau].Gebäude"
    Expression ="[Bericht Sanierungsstau].Name"
    Expression ="[Bericht Sanierungsstau].Maßnahme"
    Expression ="[Bericht Sanierungsstau].[voraussichtliche Kosten gesamt]"
    Expression ="[Bericht Sanierungsstau].Summe_finanzier"
    Expression ="[Bericht Sanierungsstau].[ID aus Maßnahmen]"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
End
Begin
    State =0
    Left =0
    Top =40
    Right =1393
    Bottom =984
    Left =-1
    Top =-1
    Right =1361
    Bottom =339
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =403
        Bottom =158
        Top =0
        Name ="Bericht Sanierungsstau"
        Name =""
    End
End
