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
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowEdits = NotDefault
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =1
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =13492
    DatasheetFontHeight =10
    ItemSuffix =12
    Left =13395
    Top =21705
    Right =28665
    Bottom =25185
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x1d9ee9f60ccae440
    End
    RecordSource ="Abfrage für Unterbericht Arbeitsprogramm"
    Caption ="Unterformular_ Objektdaten"
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
            AutoLabel = NotDefault
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1620
            Height =225
            LabelX =-1701
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
            Height =283
            BackColor =-2147483633
            Name ="Formularkopf"
            Begin
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Width =390
                    Height =255
                    Name ="Bezeichnungsfeld22"
                    Caption ="Jahr"
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =794
                    Width =600
                    Height =255
                    Name ="Bezeichnungsfeld23"
                    Caption ="Ansatz"
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =2268
                    Width =390
                    Height =255
                    Name ="Bezeichnungsfeld24"
                    Caption ="HHR"
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =3742
                    Width =285
                    Height =255
                    Name ="Bezeichnungsfeld25"
                    Caption ="VE"
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =4309
                    Width =600
                    Height =255
                    Name ="Bezeichnungsfeld26"
                    Caption ="Summe"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =5102
                    Width =675
                    Height =165
                    ForeColor =255
                    Name ="ID aus Maßnahmen"
                    ControlSource ="ID aus Maßnahmen"
                    InputMask ="0000"
                    EventProcPrefix ="ID_aus_Maßnahmen"

                End
            End
        End
        Begin Section
            Height =283
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =30
                    Width =540
                    Height =270
                    Name ="Jahr"
                    ControlSource ="Jahr"
                    InputMask ="0000"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =629
                    Width =1200
                    Height =255
                    TabIndex =1
                    Name ="Ansatz"
                    ControlSource ="Ansatz"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    OverlapFlags =93
                    Left =1870
                    Width =1245
                    Height =270
                    TabIndex =2
                    Name ="HHR"
                    ControlSource ="HHR"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    OverlapFlags =87
                    Left =3118
                    Width =1170
                    Height =270
                    TabIndex =3
                    Name ="VE"
                    ControlSource ="VE"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4320
                    Width =1170
                    Height =270
                    TabIndex =4
                    Name ="zufVfg"
                    ControlSource ="zufVfg"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    OverlapFlags =93
                    Left =5557
                    Width =2040
                    Height =270
                    TabIndex =5
                    Name ="Herkunft"
                    ControlSource ="Finanzquelle"

                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =247
                    Left =6633
                    Width =1170
                    Height =270
                    TabIndex =6
                    Name ="Text4"
                    ControlSource ="zufVfgohneVE"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Line
                    BorderWidth =0
                    OverlapFlags =85
                    Width =0
                    Height =272
                    Name ="Linie39"
                End
            End
        End
        Begin FormFooter
            Height =340
            BackColor =-2147483633
            Name ="Formularfuß"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Left =3858
                    Top =56
                    Name ="Betrag"
                    ControlSource ="=Sum([zufVfg])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =30
                    Top =56
                    Width =885
                    Height =225
                    Name ="Bezeichnungsfeld3"
                    Caption ="finanziert"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =963
                    Top =56
                    Width =1065
                    TabIndex =1
                    Name ="Text45"
                    ControlSource ="=Year(Now())"

                End
                Begin Line
                    LineSlant = NotDefault
                    OverlapFlags =85
                    Left =60
                    Width =13422
                    Name ="Linie8"
                End
            End
        End
    End
End
