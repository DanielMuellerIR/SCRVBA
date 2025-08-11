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
    ItemSuffix =80
    Left =465
    Top =645
    OnNoData ="[Event Procedure]"
    RecSrcDt = Begin
        0xee812f72f802e540
    End
    RecordSource ="SELECT Maßnahmen.ID, [Bezeichnung] & \": \" & [Maßnahme] AS Obj_Massn, CCur(Nz(["
        "zufVfg])) AS tats, CCur(Nz([SummevonBetrag])) AS Gepl, CCur(Nz([zufVfg]))-CCur(N"
        "z([SummevonBetrag])) AS Differenz FROM tbl_100_10_Liegenschaften RIGHT JOIN (tbl"
        "_100_20_Gebäudeteile RIGHT JOIN (qry_030_05_50_Tats_Gepl_Finanz_Unstimmigk_Union"
        " LEFT JOIN Maßnahmen ON qry_030_05_50_Tats_Gepl_Finanz_Unstimmigk_Union.ID = Maß"
        "nahmen.ID) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil)"
        " ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude GR"
        "OUP BY Maßnahmen.ID, [Bezeichnung] & \": \" & [Maßnahme], CCur(Nz([zufVfg])), CC"
        "ur(Nz([SummevonBetrag])), CCur(Nz([zufVfg]))-CCur(Nz([SummevonBetrag])) HAVING ("
        "((CCur(Nz([zufVfg]))-CCur(Nz([SummevonBetrag])))<>0)) ORDER BY [Bezeichnung] & \""
        ": \" & [Maßnahme];"
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
            ControlSource ="Obj_Massn"
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
                    Caption ="Unstimmigkeiten zwischen der tatsächlichen \015\012und der geplanten Finanzierun"
                        "g zu Maßnahmen"
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
                    LayoutCachedTop =1020
                    LayoutCachedWidth =6237
                    LayoutCachedHeight =1335
                    ColumnStart =1
                    ColumnEnd =1
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =2
                    Left =13830
                    Top =1020
                    Width =780
                    Height =285
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld39"
                    Caption ="ID Maßn."
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =13830
                    LayoutCachedTop =1020
                    LayoutCachedWidth =14610
                    LayoutCachedHeight =1305
                    ColumnStart =2
                    ColumnEnd =2
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =1
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin Label
                    Left =12359
                    Top =737
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
                    LayoutCachedLeft =12359
                    LayoutCachedTop =737
                    LayoutCachedWidth =12929
                    LayoutCachedHeight =1022
                    ColumnStart =3
                    ColumnEnd =3
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =12360
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
                    LayoutCachedLeft =12360
                    LayoutCachedTop =1020
                    LayoutCachedWidth =13590
                    LayoutCachedHeight =1305
                    ColumnStart =3
                    ColumnEnd =3
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =9231
                    Top =1050
                    Width =1095
                    Height =285
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld78"
                    Caption ="tats. (zufVfg)"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =9231
                    LayoutCachedTop =1050
                    LayoutCachedWidth =10326
                    LayoutCachedHeight =1335
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =11401
                    Top =1080
                    Width =675
                    Height =285
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld79"
                    Caption ="geplant"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =11401
                    LayoutCachedTop =1080
                    LayoutCachedWidth =12076
                    LayoutCachedHeight =1365
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =340
            Name ="Detailbereich"
            BackThemeColorIndex =1
            Begin
                Begin Line
                    BorderWidth =1
                    Top =315
                    Width =14686
                    BorderColor =10855845
                    Name ="Linie21"
                    GridlineColor =10921638
                    LayoutCachedTop =315
                    LayoutCachedWidth =14686
                    LayoutCachedHeight =315
                    BorderThemeColorIndex =-1
                End
                Begin TextBox
                    CanGrow = NotDefault
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Width =8562
                    Height =285
                    ColumnWidth =9525
                    FontSize =10
                    BorderColor =10921638
                    Name ="Maßnahme"
                    ControlSource ="Obj_Massn"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedWidth =8562
                    LayoutCachedHeight =285
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
                    Left =13662
                    Width =1065
                    Height =285
                    FontSize =10
                    TabIndex =1
                    BorderColor =10921638
                    Name ="ID"
                    ControlSource ="ID"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =13662
                    LayoutCachedWidth =14727
                    LayoutCachedHeight =285
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
                    TextAlign =3
                    IMESentenceMode =3
                    Left =12150
                    Width =1440
                    Height =285
                    FontSize =10
                    TabIndex =2
                    BorderColor =10921638
                    Name ="Unstimmig"
                    ControlSource ="Differenz"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x010000006c000000020000000000000005000000000000000200000001010000 ,
                        0xed1c2400ffffff00000000000400000003000000050000000101000022b14c00 ,
                        0xffffff0000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000300000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =12150
                    LayoutCachedWidth =13590
                    LayoutCachedHeight =285
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
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =8625
                    Height =285
                    FontSize =10
                    TabIndex =3
                    BorderColor =10921638
                    Name ="SummevonzufVfg"
                    ControlSource ="tats"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =8625
                    LayoutCachedWidth =10326
                    LayoutCachedHeight =285
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =10375
                    Height =285
                    FontSize =10
                    TabIndex =4
                    BorderColor =10921638
                    Name ="SummevonFinanz_Jahressumme"
                    ControlSource ="Gepl"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =10375
                    LayoutCachedWidth =12076
                    LayoutCachedHeight =285
                    ThemeFontIndex =-1
                    ForeTint =100.0
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
' See "rpt_020_10_30_Umstimmigk_Tats_Gepl_Finanzg.cls"
