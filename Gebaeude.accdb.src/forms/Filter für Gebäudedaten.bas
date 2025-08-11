Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    PictureTiling = NotDefault
    DividingLines = NotDefault
    DataEntry = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =5
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7540
    DatasheetFontHeight =10
    ItemSuffix =91
    Left =13395
    Top =6090
    Right =22725
    Bottom =12345
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Datenausgabe Gebäudedaten"
    OnCurrent ="[Event Procedure]"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            SpecialEffect =1
            FontWeight =700
            BackColor =12632256
            ForeColor =128
            FontName ="Arial"
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            SpecialEffect =3
            Width =1701
        End
        Begin Image
            SpecialEffect =3
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
            ForeColor =128
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin OptionButton
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =2
            BorderWidth =3
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            BackStyle =1
            BorderLineStyle =0
            Width =1701
            Height =1701
            BackColor =12632256
        End
        Begin BoundObjectFrame
            SpecialEffect =3
            BorderLineStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
            BorderColor =12632256
            BackColor =12632256
        End
        Begin TextBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ListBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ComboBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin Subform
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderColor =12632256
        End
        Begin UnboundObjectFrame
            SpecialEffect =3
            BackStyle =0
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            ForeColor =128
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            FontWeight =700
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Section
            Height =4195
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =4455
                    Left =2770
                    Top =964
                    Width =4536
                    Height =284
                    Name ="Anschrift"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Gebäudedaten.Anschrift FROM Gebäudedaten GROUP BY Gebäudedate"
                        "n.Anschrift;"
                    ColumnWidths ="4456"
                    OnClick ="[Event Procedure]"
                    OnChange ="[Event Procedure]"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =964
                            Width =2160
                            Height =270
                            Name ="Gebäude_Label"
                            Caption ="Anschrift"
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =3402
                    Left =2770
                    Top =1587
                    Width =4536
                    Height =284
                    TabIndex =1
                    Name ="Gebäude"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Gebäudedaten.Gebäude FROM Gebäudedaten GROUP BY Gebäudedaten."
                        "Gebäude, Gebäudedaten.Anschrift HAVING (((Gebäudedaten.Anschrift) Like [Formular"
                        "e]![Startformular]![Filter für Gebäudedaten]![Anschrift]));"
                    ColumnWidths ="3402"
                    AfterUpdate ="[Event Procedure]"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =1587
                            Width =2160
                            Height =270
                            Name ="GebäudeN"
                            Caption ="Gebäude"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =1580
                    Top =113
                    Width =4815
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Datenausgabe Gebäudedaten"
                End
                Begin ComboBox
                    TabStop = NotDefault
                    SpecialEffect =0
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =3402
                    Left =283
                    Top =2891
                    Width =7041
                    Height =0
                    TabIndex =2
                    Name ="Pfad"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Gebäudedaten.Pfad FROM Gebäudedaten GROUP BY Gebäudedaten.Pfa"
                        "d, Gebäudedaten.Gebäude, Gebäudedaten.Anschrift HAVING (((Gebäudedaten.Gebäude) "
                        "Like [Formulare]![Startformular]![Filter für Gebäudedaten]![Gebäude]) AND ((Gebä"
                        "udedaten.Anschrift) Like [Formulare]![Startformular]![Filter für Gebäudedaten]!["
                        "Anschrift]));"
                    ColumnWidths ="3402"
                    OnChange ="[Event Procedure]"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1927
                    Top =3174
                    Width =3630
                    Height =675
                    FontSize =10
                    TabIndex =3
                    ForeColor =16711680
                    Name ="Starten"
                    Caption ="Daten anzeigen"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"

                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Gebäudedaten.cls"
