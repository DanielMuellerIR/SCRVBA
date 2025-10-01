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
    AllowAdditions = NotDefault
    ScrollBars =2
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =13005
    DatasheetFontHeight =10
    ItemSuffix =34
    Left =12968
    Top =18398
    Right =26693
    Bottom =20333
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x9ead965e4e6de640
    End
    RecordSource ="Abfrage Anlagen UF"
    Caption ="Anlagen"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    OrderByOnLoad =0
    OrderByOnLoad =0
    ShowPageMargins =0
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
            Height =503
            BackColor =16514043
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =120
                    Top =53
                    Width =1583
                    Height =255
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld22"
                    Caption ="AnlagenNr."
                    LayoutCachedLeft =120
                    LayoutCachedTop =53
                    LayoutCachedWidth =1703
                    LayoutCachedHeight =308
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =1815
                    Top =53
                    Width =8505
                    Height =255
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld23"
                    Caption ="Bezeichnung"
                    LayoutCachedLeft =1815
                    LayoutCachedTop =53
                    LayoutCachedWidth =10320
                    LayoutCachedHeight =308
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =10380
                    Top =53
                    Width =2400
                    Height =218
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld24"
                    Caption ="Beendigungsanzeige nach B20"
                    LayoutCachedLeft =10380
                    LayoutCachedTop =53
                    LayoutCachedWidth =12780
                    LayoutCachedHeight =271
                    ForeShade =50.0
                End
            End
        End
        Begin Section
            Height =340
            BackColor =16514043
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =1815
                    Width =8505
                    Height =255
                    TabIndex =1
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =1815
                    LayoutCachedWidth =10320
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =120
                    Width =1583
                    Height =255
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="AnlagenNr"
                    ControlSource ="AnlagenNr"

                    LayoutCachedLeft =120
                    LayoutCachedWidth =1703
                    LayoutCachedHeight =255
                    ForeShade =50.0
                End
                Begin Line
                    BorderWidth =0
                    OverlapFlags =85
                    Top =288
                    Width =12808
                    BorderColor =14277081
                    Name ="Linie24"
                    LayoutCachedTop =288
                    LayoutCachedWidth =12808
                    LayoutCachedHeight =288
                    BorderShade =85.0
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =10380
                    Width =2400
                    Height =255
                    TabIndex =2
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="BeendetB20"
                    ControlSource ="BeendetB20"
                    InputMask ="99/99/0000;0;_"

                    LayoutCachedLeft =10380
                    LayoutCachedWidth =12780
                    LayoutCachedHeight =255
                    ForeShade =50.0
                End
            End
        End
        Begin FormFooter
            Height =398
            BackColor =16514043
            Name ="Formularfuß"
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =3400
                    Top =53
                    Width =1785
                    Height =345
                    FontSize =9
                    FontWeight =700
                    ForeColor =4138256
                    Name ="bAnlageNeu"
                    Caption ="Neue Anlage"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =3400
                    LayoutCachedTop =53
                    LayoutCachedWidth =5185
                    LayoutCachedHeight =398
                    ForeShade =50.0
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5888
                    Top =53
                    Width =1785
                    Height =345
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    ForeColor =4138256
                    Name ="bAnlageLoeschen"
                    Caption ="Anlage löschen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =5888
                    LayoutCachedTop =53
                    LayoutCachedWidth =7673
                    LayoutCachedHeight =398
                    ForeShade =50.0
                    Overlaps =1
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_020_31_UF_Anlagen.cls"
