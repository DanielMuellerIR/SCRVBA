Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    ShortcutMenu = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =11111
    DatasheetFontHeight =10
    ItemSuffix =58
    Left =13395
    Top =7665
    Right =26295
    Bottom =10860
    RecSrcDt = Begin
        0xdaf21a5af5e3e240
    End
    RecordSource ="B_Sanierungsbedarf_für_Bewertung"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Image
            BackStyle =0
            OldBorderStyle =0
            BorderLineStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =8
            FontWeight =400
            ForeColor =-2147483630
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin TextBox
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin ComboBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin Subform
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =2
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin PageBreak
            Width =283
        End
        Begin Tab
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin Page
            Width =1701
            Height =1701
        End
        Begin FormHeader
            Height =0
            BackColor =-2147483633
            Name ="Formularkopf"
        End
        Begin Section
            CanGrow = NotDefault
            Height =341
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =93
                    Left =8900
                    Top =56
                    Width =966
                    ColumnWidth =3390
                    Name ="Kennnummer aus B_Gebäudeliste"
                    ControlSource ="Kennnummer aus B_Gebäudeliste"
                    EventProcPrefix ="Kennnummer_aus_B_Gebäudeliste"

                End
                Begin ComboBox
                    OverlapFlags =247
                    ColumnCount =6
                    ListRows =50
                    ListWidth =12474
                    Left =56
                    Top =56
                    Width =9361
                    Height =283
                    TabIndex =1
                    BoundColumn =4
                    Name ="Kombinationsfeld54"
                    ControlSource ="Kennnummer aus Maßnahmen"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW B_Abfrage_für_Zuordnung_Sanierungsstau.Maßnahme, B_Abfrage_fü"
                        "r_Zuordnung_Sanierungsstau.[Straße Hausnummer], B_Abfrage_für_Zuordnung_Sanierun"
                        "gsstau.Bezeichung, B_Abfrage_für_Zuordnung_Sanierungsstau.[voraussichtliche Kost"
                        "en gesamt], B_Abfrage_für_Zuordnung_Sanierungsstau.[Kennummer aus Maßnahmen], B_"
                        "Abfrage_für_Zuordnung_Sanierungsstau.[Kennnummer aus B_Gebäudeliste] FROM B_Abfr"
                        "age_für_Zuordnung_Sanierungsstau ORDER BY B_Abfrage_für_Zuordnung_Sanierungsstau"
                        ".[Straße Hausnummer];"
                    ColumnWidths ="5103;2268;3402;2268;0;0"

                End
                Begin CommandButton
                    OverlapFlags =247
                    Left =9467
                    Top =56
                    Width =1560
                    Height =285
                    TabIndex =2
                    Name ="Befehl57"
                    Caption ="Datensatz löschen"
                    OnClick ="[Event Procedure]"

                    Overlaps =1
                End
            End
        End
        Begin FormFooter
            Height =283
            BackColor =-2147483633
            Name ="Formularfuß"
        End
    End
End
CodeBehindForm
' See "B_Unterformular_Sanierungsbedarf1.cls"
