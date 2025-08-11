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
    ScrollBars =2
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =13039
    DatasheetFontHeight =10
    ItemSuffix =66
    Left =13395
    Top =5400
    Right =25350
    Bottom =8745
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0xe69656830dfce240
    End
    RecordSource ="Aufträge"
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
            Height =340
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Width =63
                    Height =270
                    Name ="Text45"
                    ControlSource ="ID aus Maßnahmen"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =75
                    Width =964
                    Height =284
                    TabIndex =1
                    Name ="Jahr"
                    ControlSource ="Jahr"
                    Format ="Short Date"
                    InputMask ="99/99/00;0;_"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1080
                    Width =3409
                    Height =284
                    TabIndex =2
                    Name ="Firma"
                    ControlSource ="Firma"

                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =4545
                    Width =1474
                    Height =284
                    TabIndex =3
                    Name ="Wert Auftrag"
                    ControlSource ="Wert Auftrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="Wert_Auftrag"

                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    TextAlign =1
                    Left =6075
                    Width =3169
                    Height =284
                    TabIndex =4
                    Name ="Auftragsinhalt"
                    ControlSource ="Auftragsinhalt"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =9864
                    Width =3169
                    Height =284
                    TabIndex =5
                    Name ="Begründung"
                    ControlSource ="Begründung"

                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =9411
                    Top =56
                    Width =233
                    Height =173
                    TabIndex =6
                    Name ="Nachtragsauftrag"
                    ControlSource ="Nachtragsauftrag"

                End
            End
        End
        Begin FormFooter
            Height =396
            Name ="Formularfuß"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =4545
                    Top =30
                    Width =1474
                    Height =284
                    Name ="Text65"
                    ControlSource ="=Sum([Wert Auftrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
            End
        End
    End
End
CodeBehindForm
' See "Unterformular Vergabevorlagen.cls"
