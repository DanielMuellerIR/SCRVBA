Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =64
    GridY =64
    Width =8931
    DatasheetFontHeight =10
    ItemSuffix =70
    Left =13395
    Top =5325
    Right =24105
    Bottom =8610
    RecSrcDt = Begin
        0x1be15041eee6e240
    End
    RecordSource ="A_Buchungen_Aufteilung_auf_Fälligkeiten"
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
        Begin Line
            BorderLineStyle =0
            Width =1701
        End
        Begin CheckBox
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
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
        Begin UnboundObjectFrame
            SpecialEffect =2
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin FormHeader
            Height =362
            Name ="Formularkopf"
            Begin
                Begin Label
                    BackStyle =1
                    BorderWidth =1
                    OverlapFlags =93
                    TextAlign =1
                    Width =8895
                    Height =345
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld47"
                    Caption ="Fälligkeit\015\012\015\012"
                    FontName ="Arial"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =215
                    TextAlign =2
                    Left =2295
                    Width =1852
                    Height =293
                    FontSize =12
                    FontWeight =700
                    Name ="Text60"
                    ControlSource ="=IIf([sofort]=-1,\"sofort\",\"\")"
                    Format ="Short Date"
                    FontName ="Arial"

                End
                Begin TextBox
                    AutoTab = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =215
                    TextAlign =2
                    Left =5775
                    Width =1852
                    Height =293
                    FontSize =12
                    TabIndex =1
                    Name ="andere Fälligkeit"
                    ControlSource ="andere Fälligkeit"
                    Format ="Short Date"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    InputMask ="99/99/00;0;#"
                    EventProcPrefix ="andere_Fälligkeit"

                End
                Begin CheckBox
                    OverlapFlags =215
                    Left =1169
                    Top =88
                    Width =177
                    Height =186
                    TabIndex =2
                    Name ="sofort"
                    ControlSource ="sofort"
                    DefaultValue ="Yes"

                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =215
                    TextAlign =2
                    Left =4186
                    Width =1560
                    Height =293
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld64"
                    Caption ="andere Fälligkeit:"
                    FontName ="Arial"
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    FontItalic = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =215
                    Left =1440
                    Width =607
                    Height =293
                    FontSize =12
                    FontWeight =700
                    TabIndex =3
                    Name ="ID aus Buchungen"
                    ControlSource ="ID aus Buchungen"
                    FontName ="Arial"
                    EventProcPrefix ="ID_aus_Buchungen"

                End
                Begin TextBox
                    OverlapFlags =215
                    Left =8114
                    Top =61
                    Width =256
                    Height =213
                    TabIndex =4
                    Name ="gebucht"

                End
            End
        End
        Begin Section
            Height =362
            BackColor =14277081
            Name ="Detailbereich"
            BackShade =85.0
            Begin
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =4699
                    Top =30
                    Width =1020
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld43"
                    Caption ="Betrag in €"
                    FontName ="Arial"
                    LayoutCachedLeft =4699
                    LayoutCachedTop =30
                    LayoutCachedWidth =5719
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =5795
                    Top =30
                    Width =1852
                    Height =293
                    FontSize =12
                    TabIndex =1
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    OnExit ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="=NumLock_An()"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =5795
                    LayoutCachedTop =30
                    LayoutCachedWidth =7647
                    LayoutCachedHeight =323
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    AutoTab = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =2315
                    Top =30
                    Width =1852
                    Height =293
                    FontSize =12
                    Name ="Fälligkeitsdatum"
                    ControlSource ="Fälligkeitsdatum"
                    Format ="Short Date"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    InputMask ="99/99/00;0;#"
                    OnGotFocus ="=NumLock_An()"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =2315
                    LayoutCachedTop =30
                    LayoutCachedWidth =4167
                    LayoutCachedHeight =323
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =1200
                    Top =30
                    Width =1020
                    Height =255
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld59"
                    Caption ="Datum"
                    FontName ="Arial"
                    LayoutCachedLeft =1200
                    LayoutCachedTop =30
                    LayoutCachedWidth =2220
                    LayoutCachedHeight =285
                End
            End
        End
        Begin FormFooter
            Height =7
            Name ="Formularfuß"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =5775
                    Top =-7
                    Width =1852
                    Height =7
                    FontSize =12
                    Name ="SummeFälligkeiten"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =2311
                    Width =1852
                    Height =7
                    FontSize =12
                    TabIndex =1
                    Name ="KontrolleDatum"
                    ControlSource ="=IIf(IsNull([Fälligkeitsdatum]),Null,1)"
                    FontName ="Arial"

                End
            End
        End
    End
End
CodeBehindForm
' See "Buchungsanordnung Unterformular 4.cls"
