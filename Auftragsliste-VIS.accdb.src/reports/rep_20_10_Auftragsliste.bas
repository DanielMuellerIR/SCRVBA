Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    PageHeader =1
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =15533
    DatasheetFontHeight =11
    ItemSuffix =115
    Left =5940
    Top =3270
    RecSrcDt = Begin
        0x5d5ba0f40d45e540
    End
    RecordSource ="qry_20_15_DH_VIS_Auftr_Liste_Bericht"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    FilterOnLoad =0
    FitToPage =1
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    DatasheetBackThemeColorIndex =1
    BorderThemeColorIndex =3
    ThemeFontIndex =1
    ForeThemeColorIndex =0
    AlternateBackThemeColorIndex =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            FontSize =11
            FontName ="Calibri"
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =0
            BorderTint =50.0
            ForeThemeColorIndex =0
            ForeTint =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Rectangle
            BorderLineStyle =0
            Width =850
            Height =850
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
            BorderThemeColorIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
            AsianLineBreak =1
            ShowDatePicker =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Jahr"
        End
        Begin BreakLevel
            ControlSource ="AufNr"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =510
            Name ="Berichtskopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    Top =60
                    Width =2085
                    Height =390
                    FontSize =14
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld92"
                    Caption ="VIS-Auftragsliste"
                    GridlineColor =10921638
                    LayoutCachedTop =60
                    LayoutCachedWidth =2085
                    LayoutCachedHeight =450
                    ForeTint =100.0
                End
            End
        End
        Begin PageHeader
            Height =345
            Name ="Seitenkopfbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    Width =1695
                    Height =345
                    FontSize =12
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld114"
                    Caption ="VIS-Auftragsliste"
                    GridlineColor =10921638
                    LayoutCachedWidth =1695
                    LayoutCachedHeight =345
                    ForeTint =100.0
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            RepeatSection = NotDefault
            Height =1155
            Name ="Gruppenkopf0"
            BackThemeColorIndex =1
            Begin
                Begin Label
                    Left =30
                    Top =750
                    Width =992
                    Height =315
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld0"
                    Caption ="Auftragsnr"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =750
                    LayoutCachedWidth =1022
                    LayoutCachedHeight =1065
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =3
                    Left =3967
                    Top =750
                    Width =1052
                    Height =315
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld1"
                    Caption ="Schätzkosten"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =3967
                    LayoutCachedTop =750
                    LayoutCachedWidth =5019
                    LayoutCachedHeight =1065
                    ColumnStart =1
                    ColumnEnd =1
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =5108
                    Top =750
                    Width =1695
                    Height =315
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld2"
                    Caption ="Produktbezeichnung"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =5108
                    LayoutCachedTop =750
                    LayoutCachedWidth =6803
                    LayoutCachedHeight =1065
                    ColumnStart =2
                    ColumnEnd =2
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =6860
                    Top =750
                    Width =1350
                    Height =315
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld3"
                    Caption ="Teilnehmer"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =6860
                    LayoutCachedTop =750
                    LayoutCachedWidth =8210
                    LayoutCachedHeight =1065
                    ColumnStart =3
                    ColumnEnd =3
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =13287
                    Top =750
                    Width =2205
                    Height =315
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld4"
                    Caption ="Bemerkungen"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =13287
                    LayoutCachedTop =750
                    LayoutCachedWidth =15492
                    LayoutCachedHeight =1065
                    ColumnStart =8
                    ColumnEnd =8
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =8273
                    Top =747
                    Width =1005
                    Height =315
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld5"
                    Caption ="Auftr.-Datum"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =8273
                    LayoutCachedTop =747
                    LayoutCachedWidth =9278
                    LayoutCachedHeight =1062
                    ColumnStart =4
                    ColumnEnd =4
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =9360
                    Top =747
                    Width =1320
                    Height =315
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld6"
                    Caption ="beauftr. Firma"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =9360
                    LayoutCachedTop =747
                    LayoutCachedWidth =10680
                    LayoutCachedHeight =1062
                    ColumnStart =5
                    ColumnEnd =5
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =3
                    Left =10718
                    Top =750
                    Width =1231
                    Height =315
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld7"
                    Caption ="Auftragssumme"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =10718
                    LayoutCachedTop =750
                    LayoutCachedWidth =11949
                    LayoutCachedHeight =1065
                    ColumnStart =6
                    ColumnEnd =6
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =2445
                    Top =750
                    Width =1470
                    Height =315
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld8"
                    Caption ="Verg.-art"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =2445
                    LayoutCachedTop =750
                    LayoutCachedWidth =3915
                    LayoutCachedHeight =1065
                    ColumnStart =7
                    ColumnEnd =7
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Top =120
                    Height =330
                    ColumnWidth =5175
                    FontSize =12
                    FontWeight =700
                    Name ="Jahr"
                    ControlSource ="Jahr"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedTop =120
                    LayoutCachedWidth =1701
                    LayoutCachedHeight =450
                    BorderThemeColorIndex =0
                    BorderTint =50.0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Line
                    BorderWidth =2
                    Top =1140
                    Width =15438
                    Name ="Linie96"
                    GridlineColor =10921638
                    LayoutCachedTop =1140
                    LayoutCachedWidth =15438
                    LayoutCachedHeight =1140
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
                Begin Label
                    Left =1087
                    Top =750
                    Width =1305
                    Height =315
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld102"
                    Caption ="Sachb."
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =1087
                    LayoutCachedTop =750
                    LayoutCachedWidth =2392
                    LayoutCachedHeight =1065
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =3
                    Left =12009
                    Top =750
                    Width =1204
                    Height =315
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld110"
                    Caption ="SR-Summe"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =12009
                    LayoutCachedTop =750
                    LayoutCachedWidth =13213
                    LayoutCachedHeight =1065
                    ColumnStart =6
                    ColumnEnd =6
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =453
            Name ="Detailbereich"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =30
                    Top =60
                    Width =992
                    Height =315
                    ColumnWidth =5175
                    FontSize =9
                    Name ="Auftragsnr"
                    ControlSource ="Auftragsnr"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =30
                    LayoutCachedTop =60
                    LayoutCachedWidth =1022
                    LayoutCachedHeight =375
                    RowStart =1
                    RowEnd =1
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =3967
                    Top =60
                    Width =1052
                    Height =315
                    FontSize =9
                    TabIndex =1
                    Name ="Schätzkosten"
                    ControlSource ="Schätzkosten"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000002000000000000000200000001000000 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =3967
                    LayoutCachedTop =60
                    LayoutCachedWidth =5019
                    LayoutCachedHeight =375
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001000000ffffff00ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                    CurrencySymbol ="€"
                    ColLCID =1031
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =5108
                    Top =60
                    Width =1695
                    Height =315
                    ColumnWidth =3285
                    FontSize =9
                    TabIndex =2
                    Name ="Produktbezeichnung"
                    ControlSource ="Produktbezeichnung"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =5108
                    LayoutCachedTop =60
                    LayoutCachedWidth =6803
                    LayoutCachedHeight =375
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    CanGrow = NotDefault
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =6860
                    Top =60
                    Width =1350
                    Height =315
                    FontSize =9
                    TabIndex =3
                    Name ="Teilnehmer"
                    ControlSource ="Teilnehmer"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =6860
                    LayoutCachedTop =60
                    LayoutCachedWidth =8210
                    LayoutCachedHeight =375
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =8273
                    Top =54
                    Width =1005
                    Height =315
                    ColumnWidth =1920
                    FontSize =9
                    TabIndex =4
                    Name ="Auftrags_Datum"
                    ControlSource ="Auftrags_Dat"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    ShowDatePicker =1

                    LayoutCachedLeft =8273
                    LayoutCachedTop =54
                    LayoutCachedWidth =9278
                    LayoutCachedHeight =369
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    CanGrow = NotDefault
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =9360
                    Top =54
                    Width =1320
                    Height =315
                    FontSize =9
                    TabIndex =5
                    Name ="beauftragte_Firma"
                    ControlSource ="beauftr_Firma"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =9360
                    LayoutCachedTop =54
                    LayoutCachedWidth =10680
                    LayoutCachedHeight =369
                    RowStart =1
                    RowEnd =1
                    ColumnStart =5
                    ColumnEnd =5
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =10718
                    Top =60
                    Width =1218
                    Height =315
                    FontSize =9
                    TabIndex =6
                    Name ="Auftragssumme"
                    ControlSource ="Auftragssumme"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000002000000000000000200000001000000 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =10718
                    LayoutCachedTop =60
                    LayoutCachedWidth =11936
                    LayoutCachedHeight =375
                    RowStart =1
                    RowEnd =1
                    ColumnStart =6
                    ColumnEnd =6
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001000000ffffff00ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                    CurrencySymbol ="€"
                    ColLCID =1031
                End
                Begin TextBox
                    CanGrow = NotDefault
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =2445
                    Top =52
                    Width =1470
                    Height =315
                    FontSize =9
                    TabIndex =7
                    Name ="Verg_art"
                    ControlSource ="Verg_art"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =2445
                    LayoutCachedTop =52
                    LayoutCachedWidth =3915
                    LayoutCachedHeight =367
                    RowStart =1
                    RowEnd =1
                    ColumnStart =7
                    ColumnEnd =7
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    CanGrow = NotDefault
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =13287
                    Top =60
                    Width =2205
                    Height =315
                    ColumnWidth =3660
                    FontSize =9
                    TabIndex =8
                    Name ="Bemerkungen"
                    ControlSource ="Bemerkungen"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =13287
                    LayoutCachedTop =60
                    LayoutCachedWidth =15492
                    LayoutCachedHeight =375
                    RowStart =1
                    RowEnd =1
                    ColumnStart =8
                    ColumnEnd =8
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Line
                    BorderWidth =1
                    Top =405
                    Width =15438
                    Name ="Linie97"
                    GridlineColor =10921638
                    LayoutCachedTop =405
                    LayoutCachedWidth =15438
                    LayoutCachedHeight =405
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =1087
                    Top =60
                    Width =1305
                    Height =315
                    FontSize =9
                    TabIndex =9
                    Name ="Text103"
                    ControlSource ="SB"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =1087
                    LayoutCachedTop =60
                    LayoutCachedWidth =2392
                    LayoutCachedHeight =375
                    RowStart =1
                    RowEnd =1
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =12009
                    Top =56
                    Width =1204
                    Height =315
                    FontSize =9
                    TabIndex =10
                    Name ="Text111"
                    ControlSource ="SR_Summe"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000002000000000000000200000001000000 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =12009
                    LayoutCachedTop =56
                    LayoutCachedWidth =13213
                    LayoutCachedHeight =371
                    RowStart =1
                    RowEnd =1
                    ColumnStart =6
                    ColumnEnd =6
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001000000ffffff00ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                    CurrencySymbol ="€"
                    ColLCID =1031
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =56
            Name ="Gruppenfuß1"
            BackThemeColorIndex =1
        End
        Begin PageFooter
            Height =435
            Name ="Seitenfußbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =1
                    IMESentenceMode =3
                    Top =113
                    Width =2041
                    Height =315
                    FontSize =9
                    Name ="Text93"
                    ControlSource ="=\"Stand: \" & Now()"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedTop =113
                    LayoutCachedWidth =2041
                    LayoutCachedHeight =428
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =12959
                    Top =120
                    Width =2506
                    Height =315
                    FontSize =9
                    TabIndex =1
                    Name ="Text95"
                    ControlSource ="=\"S. \" & [Page] & \" / \" & [Pages]"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =12959
                    LayoutCachedTop =120
                    LayoutCachedWidth =15465
                    LayoutCachedHeight =435
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =571
            Name ="Berichtsfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Rectangle
                    Top =120
                    Width =13385
                    Height =451
                    BackColor =15921906
                    BorderColor =10921638
                    Name ="Rechteck101"
                    GridlineColor =10921638
                    LayoutCachedTop =120
                    LayoutCachedWidth =13385
                    LayoutCachedHeight =571
                    BackShade =95.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =1
                    BackStyle =0
                    IMESentenceMode =3
                    Left =56
                    Top =180
                    Width =1695
                    Height =330
                    FontSize =9
                    FontWeight =700
                    Name ="Text106"
                    ControlSource ="=Count(*)"
                    Format ="#\" Aufträge\""
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000002000000000000000200000001000000 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =56
                    LayoutCachedTop =180
                    LayoutCachedWidth =1751
                    LayoutCachedHeight =510
                    RowStart =1
                    RowEnd =1
                    ColumnStart =7
                    ColumnEnd =7
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001000000ffffff00ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =10247
                    Top =180
                    Width =1695
                    Height =315
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    Name ="Text115"
                    ControlSource ="=Sum([Auftragssumme])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000002000000000000000200000001000000 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =10247
                    LayoutCachedTop =180
                    LayoutCachedWidth =11942
                    LayoutCachedHeight =495
                    RowStart =1
                    RowEnd =1
                    ColumnStart =7
                    ColumnEnd =7
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001000000ffffff00ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                    CurrencySymbol ="€"
                    ColLCID =1031
                End
                Begin TextBox
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =3288
                    Top =180
                    Width =1695
                    Height =315
                    FontSize =9
                    FontWeight =700
                    TabIndex =2
                    Name ="Text116"
                    ControlSource ="=Sum([Schätzkosten])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000002000000000000000200000001000000 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =3288
                    LayoutCachedTop =180
                    LayoutCachedWidth =4983
                    LayoutCachedHeight =495
                    RowStart =1
                    RowEnd =1
                    ColumnStart =7
                    ColumnEnd =7
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001000000ffffff00ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                    CurrencySymbol ="€"
                    ColLCID =1031
                End
                Begin TextBox
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =12018
                    Top =180
                    Width =1261
                    Height =315
                    FontSize =9
                    FontWeight =700
                    TabIndex =3
                    Name ="Text117"
                    ControlSource ="=Sum([SR_Summe])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000002000000000000000200000001000000 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =12018
                    LayoutCachedTop =180
                    LayoutCachedWidth =13279
                    LayoutCachedHeight =495
                    RowStart =1
                    RowEnd =1
                    ColumnStart =7
                    ColumnEnd =7
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001000000ffffff00ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                    CurrencySymbol ="€"
                    ColLCID =1031
                End
                Begin Label
                    TextAlign =3
                    Left =2325
                    Top =180
                    Width =750
                    Height =285
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld118"
                    Caption ="Summen:"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =2325
                    LayoutCachedTop =180
                    LayoutCachedWidth =3075
                    LayoutCachedHeight =465
                    ThemeFontIndex =-1
                    BorderTint =100.0
                    ForeTint =100.0
                End
            End
        End
    End
End
CodeBehindForm
' See "rep_20_10_Auftragsliste.cls"
