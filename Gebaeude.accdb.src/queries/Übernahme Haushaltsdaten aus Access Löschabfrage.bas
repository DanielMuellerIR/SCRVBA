Operation =5
Option =0
Begin InputTables
    Name ="Import_Haushaltsdaten"
End
Begin OutputColumns
    Expression ="Import_Haushaltsdaten.Haushaltsjahr"
    Expression ="Import_Haushaltsdaten.Buchungsstelle"
    Expression ="Import_Haushaltsdaten.buchstelle"
    Expression ="Import_Haushaltsdaten.Ansatz"
    Expression ="Import_Haushaltsdaten.HHR_aus_Vorjahren"
    Expression ="Import_Haushaltsdaten.[Gesamt_HH-Mittel]"
    Expression ="Import_Haushaltsdaten.Aufträge"
    Expression ="Import_Haushaltsdaten.Sollbuchung"
    Expression ="Import_Haushaltsdaten.Sollerfassung"
    Expression ="Import_Haushaltsdaten.Verfügbar"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
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
    Bottom =219
    Left =0
    Top =0
    ColumnsShown =771
    Begin
        Left =38
        Top =6
        Right =512
        Bottom =214
        Top =0
        Name ="Import_Haushaltsdaten"
        Name =""
    End
End
