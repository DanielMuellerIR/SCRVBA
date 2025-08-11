Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    RecordLocks =2
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =14853
    DatasheetFontHeight =11
    ItemSuffix =76
    Left =585
    Top =1320
    OnNoData ="[Event Procedure]"
    RecSrcDt = Begin
        0xabd57fedace9e440
    End
    RecordSource ="qry_030_10_40_Rep_Teilm_Finanz_Unstimmigkeiten"
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
            ControlSource ="Objekt"
        End
        Begin PageHeader
            Height =1530
            Name ="Seitenkopfbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    BorderWidth =2
                    TextAlign =3
                    IMESentenceMode =3
                    Left =11535
                    Top =113
                    Width =3180
                    Height =420
                    ColumnOrder =0
                    FontSize =14
                    FontWeight =700
                    BackColor =15921906
                    BorderColor =9211020
                    Name ="Bezeichnungsfeld212"
                    ControlSource ="=\"Betrachtungsjahr:  \" & F_Variable(\"lng_Kalk_Jahr\")"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =11535
                    LayoutCachedTop =113
                    LayoutCachedWidth =14715
                    LayoutCachedHeight =533
                    BackThemeColorIndex =-1
                    BackShade =95.0
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                End
                Begin Line
                    BorderWidth =2
                    Left =56
                    Top =1427
                    Width =14686
                    BorderColor =10855845
                    Name ="Linie18"
                    GridlineColor =10921638
                    LayoutCachedLeft =56
                    LayoutCachedTop =1427
                    LayoutCachedWidth =14742
                    LayoutCachedHeight =1427
                    BorderThemeColorIndex =-1
                End
                Begin Label
                    BackStyle =1
                    BorderWidth =2
                    Top =113
                    Width =7845
                    Height =735
                    FontSize =14
                    FontWeight =700
                    BackColor =15921906
                    BorderColor =9211020
                    Name ="Bezeichnungsfeld20"
                    Caption ="Unstimmigkeiten zwischen den Kostensummen der Teilmaßnahmen \015\012und den zuge"
                        "hörigen Finanzierungssummen"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedTop =113
                    LayoutCachedWidth =7845
                    LayoutCachedHeight =848
                    ThemeFontIndex =-1
                    BackThemeColorIndex =-1
                    BackShade =95.0
                    BorderThemeColorIndex =-1
                    BorderTint =100.0
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                End
                Begin Label
                    Left =30
                    Top =1020
                    Width =5130
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld37"
                    Caption ="Objekt"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =1020
                    LayoutCachedWidth =5160
                    LayoutCachedHeight =1335
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =5220
                    Top =1020
                    Width =6237
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld38"
                    Caption ="Maßnahme"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =5220
                    LayoutCachedTop =1020
                    LayoutCachedWidth =11457
                    LayoutCachedHeight =1335
                    ColumnStart =1
                    ColumnEnd =1
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =2
                    Left =11520
                    Top =1020
                    Width =1065
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld39"
                    Caption ="ID"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =11520
                    LayoutCachedTop =1020
                    LayoutCachedWidth =12585
                    LayoutCachedHeight =1335
                    ColumnStart =2
                    ColumnEnd =2
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =1
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin Label
                    Left =12690
                    Top =1020
                    Width =570
                    Height =285
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =2366701
                    Name ="Bezeichnungsfeld40"
                    Caption ="Unter-"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =12690
                    LayoutCachedTop =1020
                    LayoutCachedWidth =13260
                    LayoutCachedHeight =1305
                    ColumnStart =3
                    ColumnEnd =3
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =13260
                    Top =1020
                    Width =1230
                    Height =285
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =5026082
                    Name ="Bezeichnungsfeld75"
                    Caption ="/ Überdeckung"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =13260
                    LayoutCachedTop =1020
                    LayoutCachedWidth =14490
                    LayoutCachedHeight =1305
                    ColumnStart =3
                    ColumnEnd =3
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =435
            Name ="Detailbereich"
            BackThemeColorIndex =1
            Begin
                Begin Line
                    BorderWidth =1
                    Top =420
                    Width =14686
                    BorderColor =10855845
                    Name ="Linie21"
                    GridlineColor =10921638
                    LayoutCachedTop =420
                    LayoutCachedWidth =14686
                    LayoutCachedHeight =420
                    BorderThemeColorIndex =-1
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =30
                    Top =30
                    Width =5130
                    Height =315
                    ColumnWidth =5505
                    FontSize =10
                    BorderColor =10921638
                    Name ="Objekt"
                    ControlSource ="Objekt"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =30
                    LayoutCachedTop =30
                    LayoutCachedWidth =5160
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =5220
                    Top =30
                    Width =6237
                    Height =315
                    ColumnWidth =9525
                    FontSize =10
                    TabIndex =1
                    BorderColor =10921638
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =5220
                    LayoutCachedTop =30
                    LayoutCachedWidth =11457
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =2
                    IMESentenceMode =3
                    Left =11520
                    Top =30
                    Width =1065
                    Height =315
                    FontSize =10
                    TabIndex =2
                    BorderColor =10921638
                    Name ="ID"
                    ControlSource ="ID"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =11520
                    LayoutCachedTop =30
                    LayoutCachedWidth =12585
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =1
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =13050
                    Top =30
                    Width =1440
                    Height =315
                    FontSize =10
                    TabIndex =3
                    BorderColor =10921638
                    Name ="Unstimmig"
                    ControlSource ="Unstimmig"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x010000006c000000020000000000000005000000000000000200000001010000 ,
                        0xed1c2400ffffff00000000000400000003000000050000000101000022b14c00 ,
                        0xffffff0000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000300000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =13050
                    LayoutCachedTop =30
                    LayoutCachedWidth =14490
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    ConditionalFormat14 = Begin
                        0x010002000000000000000500000001010000ed1c2400ffffff00010000003000 ,
                        0x0000000000000000000000000000000000000000000000000004000000010100 ,
                        0x0022b14c00ffffff000100000030000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    CurrencySymbol ="€"
                End
            End
        End
        Begin PageFooter
            Height =453
            Name ="Seitenfußbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =12990
                    Top =150
                    Height =270
                    FontSize =8
                    BorderColor =10921638
                    Name ="Text327"
                    ControlSource ="=\"S. \" & [Page] & \" / \" & [Pages]"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =12990
                    LayoutCachedTop =150
                    LayoutCachedWidth =14691
                    LayoutCachedHeight =420
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                End
                Begin Line
                    BorderWidth =2
                    Top =60
                    Width =14686
                    BorderColor =10855845
                    Name ="Linie19"
                    GridlineColor =10921638
                    LayoutCachedTop =60
                    LayoutCachedWidth =14686
                    LayoutCachedHeight =60
                    BorderThemeColorIndex =-1
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =1
                    IMESentenceMode =3
                    Left =30
                    Top =150
                    Width =2891
                    Height =225
                    FontSize =8
                    TabIndex =1
                    BorderColor =10921638
                    Name ="Text23"
                    ControlSource ="=Now()"
                    Format ="dd/mm/yyyy  hh:nn"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =30
                    LayoutCachedTop =150
                    LayoutCachedWidth =2921
                    LayoutCachedHeight =375
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_020_10_20_Umstimmigk_TeilmKosten_Finanzg.cls"
