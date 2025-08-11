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
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    Cycle =1
    GridX =64
    GridY =64
    Width =8895
    DatasheetFontHeight =10
    ItemSuffix =64
    Left =18255
    Top =10650
    Right =26325
    Bottom =11715
    RecSrcDt = Begin
        0xeeaf8076f842e440
    End
    RecordSource ="A_Buchungen_Aufteilung_auf_Buchungsstellen"
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
            Height =327
            BackColor =14277081
            Name ="Formularkopf"
            BackShade =85.0
            Begin
                Begin Label
                    BackStyle =1
                    BorderWidth =1
                    OverlapFlags =85
                    TextAlign =1
                    Width =1845
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld47"
                    Caption ="  Buchungsstelle(n) \015\012"
                    FontName ="Arial"
                    LayoutCachedWidth =1845
                    LayoutCachedHeight =285
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =3153
                    Top =17
                    Width =1545
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld42"
                    Caption ="Sachkonto"
                    FontName ="Arial"
                    LayoutCachedLeft =3153
                    LayoutCachedTop =17
                    LayoutCachedWidth =4698
                    LayoutCachedHeight =302
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =6988
                    Top =17
                    Width =1155
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld43"
                    Caption ="Betrag in €"
                    FontName ="Arial"
                    LayoutCachedLeft =6988
                    LayoutCachedTop =17
                    LayoutCachedWidth =8143
                    LayoutCachedHeight =302
                End
            End
        End
        Begin Section
            Height =389
            BackColor =14277081
            Name ="Detailbereich"
            BackShade =85.0
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    Locked = NotDefault
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =1320
                    Top =45
                    Width =367
                    Height =263
                    FontSize =12
                    FontWeight =700
                    Name ="ID aus Buchungen"
                    ControlSource ="ID aus Buchungen"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"
                    EventProcPrefix ="ID_aus_Buchungen"

                    LayoutCachedLeft =1320
                    LayoutCachedTop =45
                    LayoutCachedWidth =1687
                    LayoutCachedHeight =308
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    FontItalic = NotDefault
                    OverlapFlags =85
                    ColumnCount =3
                    ListRows =50
                    ListWidth =8505
                    Left =3118
                    Top =45
                    Width =3102
                    Height =273
                    FontSize =10
                    TabIndex =1
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="KF_ID_Buchst_Dopik"
                    ControlSource ="ID aus Buchungsstellen"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [Buchungsstellen _Doppik].Kennummer, [Buchungsstellen _Doppik"
                        "].Sachkonto, [Buchungsstellen _Doppik].Bezeichnung FROM [Buchungsstellen _Doppik"
                        "] WHERE ((([Buchungsstellen _Doppik].Stillges_seit) Is Null)) ORDER BY [Buchungs"
                        "stellen _Doppik].Bezeichnung;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =3118
                    LayoutCachedTop =45
                    LayoutCachedWidth =6220
                    LayoutCachedHeight =318
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    OldBorderStyle =1
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6979
                    Top =45
                    Height =255
                    FontSize =10
                    TabIndex =2
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

                    LayoutCachedLeft =6979
                    LayoutCachedTop =45
                    LayoutCachedWidth =8680
                    LayoutCachedHeight =300
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2310
                    Top =45
                    Width =211
                    Height =255
                    TabIndex =3
                    BackColor =967423
                    BorderColor =967423
                    Name ="TF_Sachkonto"
                    ControlSource ="Sachkonto"

                    LayoutCachedLeft =2310
                    LayoutCachedTop =45
                    LayoutCachedWidth =2521
                    LayoutCachedHeight =300
                End
            End
        End
        Begin FormFooter
            Visible = NotDefault
            Height =8
            BackColor =14671839
            Name ="Formularfuß"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =6360
                    Width =2212
                    Height =8
                    FontSize =10
                    BackColor =14671839
                    BorderColor =14671839
                    Name ="Summe_Buchungsstelle"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
            End
        End
    End
End
CodeBehindForm
' See "Buchungsanordnung Unterformular 1.cls"
