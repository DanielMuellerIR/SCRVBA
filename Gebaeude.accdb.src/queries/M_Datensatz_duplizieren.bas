Operation =3
Name ="M_Objekte"
Option =0
Having ="(((M_Objekte.ID)=[Formulare]![M_Formular_Gebäudedaten].[Gebäudeauswahl]))"
Begin InputTables
    Name ="M_Objekte"
End
Begin OutputColumns
    Alias ="Ausdr1"
    Name ="Bezeichnung"
    Expression ="[Bezeichnung] & \" Duplikat\""
    Name ="Kennummer aus Straßenverzeichnis"
    Expression ="M_Objekte.[Kennummer aus Straßenverzeichnis]"
    Name ="Hausnummer"
    Expression ="M_Objekte.Hausnummer"
    Name ="Kennummer aus Bereiche"
    Expression ="M_Objekte.[Kennummer aus Bereiche]"
    Name ="Bruttogrundfläche"
    Expression ="M_Objekte.Bruttogrundfläche"
    Name ="Kennummer aus Kostenstellenverzeichnis"
    Expression ="M_Objekte.[Kennummer aus Kostenstellenverzeichnis]"
    Name ="Kennummer aus Kostenträgerverzeichnis"
    Expression ="M_Objekte.[Kennummer aus Kostenträgerverzeichnis]"
    Name ="ID aus Sachbearbeiter"
    Expression ="M_Objekte.[ID aus Sachbearbeiter]"
    Name ="Mietbeginn"
    Expression ="M_Objekte.Mietbeginn"
    Name ="Mietende"
    Expression ="M_Objekte.Mietende"
    Name ="Gebäudewert"
    Expression ="M_Objekte.Gebäudewert"
    Name ="Reinigungsfläche"
    Expression ="M_Objekte.Reinigungsfläche"
    Name ="Sportfläche"
    Expression ="M_Objekte.Sportfläche"
End
Begin Groups
    Expression ="[Bezeichnung] & \" Duplikat\""
    GroupLevel =0
    Expression ="M_Objekte.[Kennummer aus Straßenverzeichnis]"
    GroupLevel =0
    Expression ="M_Objekte.Hausnummer"
    GroupLevel =0
    Expression ="M_Objekte.[Kennummer aus Bereiche]"
    GroupLevel =0
    Expression ="M_Objekte.Bruttogrundfläche"
    GroupLevel =0
    Expression ="M_Objekte.[Kennummer aus Kostenstellenverzeichnis]"
    GroupLevel =0
    Expression ="M_Objekte.[Kennummer aus Kostenträgerverzeichnis]"
    GroupLevel =0
    Expression ="M_Objekte.[ID aus Sachbearbeiter]"
    GroupLevel =0
    Expression ="M_Objekte.Mietbeginn"
    GroupLevel =0
    Expression ="M_Objekte.Mietende"
    GroupLevel =0
    Expression ="M_Objekte.Gebäudewert"
    GroupLevel =0
    Expression ="M_Objekte.Reinigungsfläche"
    GroupLevel =0
    Expression ="M_Objekte.Sportfläche"
    GroupLevel =0
    Expression ="M_Objekte.ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbBoolean "UseTransaction" ="0"
dbByte "Orientation" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="M_Objekte.Bezeichnung"
        dbInteger "ColumnWidth" ="3270"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr1"
        dbInteger "ColumnWidth" ="3270"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
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
    Bottom =273
    Left =0
    Top =0
    ColumnsShown =655
    Begin
        Left =38
        Top =6
        Right =501
        Bottom =263
        Top =0
        Name ="M_Objekte"
        Name =""
    End
End
