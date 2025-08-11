Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    PictureTiling = NotDefault
    DividingLines = NotDefault
    DataEntry = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    PictureAlignment =5
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =5782
    DatasheetFontHeight =10
    ItemSuffix =46
    Left =13395
    Top =5400
    Right =20970
    Bottom =8910
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x3edba4176ae7e240
    End
    RecordSource ="SELECT [Buchungsstellen _Doppik].Kennummer, [Buchungsstellen _Doppik].Buchungsst"
        "elle, [Buchungsstellen _Doppik].Bezeichnung FROM [Buchungsstellen _Doppik];"
    Caption ="Neue Buchungsstelle einrichten"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
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
        Begin FormHeader
            Height =453
            BackColor =12632256
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =56
                    Top =56
                    Width =1353
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld17"
                    Caption ="Nummer"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =1479
                    Top =56
                    Width =3963
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld18"
                    Caption ="Text"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =453
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Left =56
                    Top =56
                    Width =1347
                    Height =284
                    FontSize =10
                    BackColor =16777215
                    Name ="Buchungsstelle"
                    ControlSource ="Buchungsstelle"

                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =1479
                    Top =56
                    Width =3957
                    Height =284
                    FontSize =10
                    TabIndex =1
                    BackColor =16777215
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"
                    DefaultValue ="\"neuer Buchungsstellentext\""

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =5499
                    Top =56
                    Width =177
                    Height =284
                    FontSize =10
                    TabIndex =2
                    BackColor =16777215
                    Name ="Kennummer"
                    ControlSource ="Kennummer"
                    DefaultValue ="0"
                    InputMask ="000,000000;0;#"

                End
            End
        End
        Begin FormFooter
            Height =56
            BackColor =12632256
            Name ="Formularfuß"
        End
    End
End
CodeBehindForm
' See "Formular neue Buchungsstelle einrichten Doppik.cls"
