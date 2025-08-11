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
    Width =7823
    DatasheetFontHeight =10
    ItemSuffix =60
    Left =13395
    Top =7125
    Right =23010
    Bottom =13320
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Datenausgabe Controlling"
    OnOpen ="[Event Procedure]"
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
            Height =4138
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =1580
                    Top =113
                    Width =4815
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Datenausgabe Controlling"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2664
                    Top =3401
                    Width =2155
                    Height =343
                    Name ="Befehl51"
                    Caption ="Datenausgabe in Excel"
                    OnClick ="Ausgabe in Excel Gebäudeerfassungsbogen.abfrage"

                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =3
                    ListRows =50
                    ListWidth =7938
                    Left =2770
                    Top =1360
                    Width =4536
                    Height =284
                    TabIndex =1
                    BackColor =8454016
                    Name ="ID"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [Gebäude-Erfassungsbogen].[ID aus Gebäudeliste], [Gebäude-Erf"
                        "assungsbogen].[2 Straße und Hausnummer], [Gebäude-Erfassungsbogen].[1  Gebäudebe"
                        "zeichnung] FROM [Gebäude-Erfassungsbogen] GROUP BY [Gebäude-Erfassungsbogen].[ID"
                        " aus Gebäudeliste], [Gebäude-Erfassungsbogen].[2 Straße und Hausnummer], [Gebäud"
                        "e-Erfassungsbogen].[1  Gebäudebezeichnung] ORDER BY [Gebäude-Erfassungsbogen].[2"
                        " Straße und Hausnummer];"
                    ColumnWidths ="0;2268;3402"
                    DefaultValue ="\"*\""

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =1360
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld59"
                            Caption ="Gebäude"
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Gebäudeerfassungsbogen.cls"
