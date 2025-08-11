Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =2
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =12472
    DatasheetFontHeight =10
    ItemSuffix =55
    Left =13395
    Top =5400
    Right =25350
    Bottom =11235
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0xf89849510ed5e240
    End
    RecordSource ="Abfrage für Finanzierungsübersicht"
    Caption ="geplante Finanzierung"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    PictureSizeMode =1
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            FontName ="Arial"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderWidth =1
            BorderLineStyle =0
            Width =1701
        End
        Begin Image
            SpecialEffect =1
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
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin OptionButton
            SpecialEffect =1
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =1
            BorderWidth =3
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderColor =12632256
        End
        Begin BoundObjectFrame
            SpecialEffect =1
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ListBox
            SpecialEffect =1
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontName ="Arial"
        End
        Begin ComboBox
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin Subform
            SpecialEffect =1
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =1
            BackStyle =0
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin FormHeader
            Height =56
            Name ="Formularkopf"
        End
        Begin Section
            Height =3231
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =3
                    Left =1757
                    Top =113
                    Width =2658
                    Height =270
                    Name ="HHSt"
                    ControlSource ="Buchungsstelle"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =56
                            Top =113
                            Width =1590
                            Height =255
                            Name ="Bezeichnungsfeld29"
                            Caption ="Haushaltsstelle"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =5272
                    Top =113
                    Width =2658
                    Height =270
                    TabIndex =1
                    Name ="Text45"
                    ControlSource ="ID aus Maßnahmen"

                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =85
                    TextAlign =3
                    Left =56
                    Top =510
                    Width =10668
                    Height =270
                    TabIndex =2
                    Name ="Text47"
                    ControlSource ="=\"http://172.18.33.27/finanz/index.asp?page=Sachstammdetails&show=ja&Buchungsst"
                        "elle=06500.\" & [HHSt] & \"&Jahr=2006&Gemeinde=1\""

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3571
                    Top =1474
                    Width =5325
                    Height =855
                    FontSize =10
                    FontWeight =700
                    TabIndex =3
                    ForeColor =16711680
                    Name ="Befehl54"
                    Caption ="Finanzauskunft Kämmerei aufrufen"
                    OnClick ="[Event Procedure]"

                End
            End
        End
        Begin FormFooter
            Height =0
            Name ="Formularfuß"
        End
    End
End
CodeBehindForm
' See "Unterformular Mittelabfluss.cls"
