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
    Width =5896
    DatasheetFontHeight =11
    ItemSuffix =55
    Left =4470
    Top =480
    RecSrcDt = Begin
        0xa57fe66acf92e540
    End
    RecordSource ="SELECT IIf([ID_SB] Is Null,\"noch keine SB-Zuordnung\",\"mit SB-Zuordnung\") AS "
        "SB_Zuordnung, qry_020_10_10_Rep_Arbeitsprogramm.Name, Count(qry_020_10_10_Rep_Ar"
        "beitsprogramm.ID_Teilm) AS Anz_Teilm, Sum(qry_020_10_10_Rep_Arbeitsprogramm.[vor"
        "aussichtliche Kosten]) AS Vorauss_Kosten FROM qry_020_10_10_Rep_Arbeitsprogramm "
        "GROUP BY IIf([ID_SB] Is Null,\"noch keine SB-Zuordnung\",\"mit SB-Zuordnung\"), "
        "qry_020_10_10_Rep_Arbeitsprogramm.Name HAVING (((qry_020_10_10_Rep_Arbeitsprogra"
        "mm.Name)<>\"Alle\"));"
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
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
            BorderThemeColorIndex =1
            BorderShade =65.0
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
            ControlSource ="SB_Zuordnung"
        End
        Begin BreakLevel
            ControlSource ="Name"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =963
            Name ="Berichtskopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    BackStyle =1
                    Left =390
                    Top =113
                    Width =3015
                    Height =735
                    FontSize =14
                    FontWeight =700
                    BackColor =12566463
                    Name ="Bezeichnungsfeld26"
                    Caption ="Maßnahmen-Summen \015\012pro Sachbearbeiter"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =390
                    LayoutCachedTop =113
                    LayoutCachedWidth =3405
                    LayoutCachedHeight =848
                    ThemeFontIndex =-1
                    BackShade =75.0
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =1360
            Name ="Gruppenkopf0"
            BackThemeColorIndex =1
            Begin
                Begin Label
                    Left =390
                    Top =567
                    Width =1170
                    Height =285
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld4"
                    Caption ="Sachbearbeiter"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =390
                    LayoutCachedTop =567
                    LayoutCachedWidth =1560
                    LayoutCachedHeight =852
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =2
                    Left =3712
                    Top =567
                    Width =540
                    Height =285
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld5"
                    Caption ="Betrag"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =3712
                    LayoutCachedTop =567
                    LayoutCachedWidth =4252
                    LayoutCachedHeight =852
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Line
                    BorderWidth =1
                    Left =397
                    Top =895
                    Width =3796
                    BorderColor =10855845
                    Name ="Linie25"
                    GridlineColor =10921638
                    LayoutCachedLeft =397
                    LayoutCachedTop =895
                    LayoutCachedWidth =4193
                    LayoutCachedHeight =895
                    BorderThemeColorIndex =-1
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =1
                    IMESentenceMode =3
                    Left =390
                    Top =165
                    Width =3066
                    Height =315
                    FontSize =9
                    FontWeight =700
                    BackColor =15921906
                    BorderColor =10921638
                    Name ="Text30"
                    ControlSource ="SB_Zuordnung"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =390
                    LayoutCachedTop =165
                    LayoutCachedWidth =3456
                    LayoutCachedHeight =480
                    BackShade =95.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =390
                    Top =963
                    Width =1170
                    Height =285
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld48"
                    Caption ="Alle"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =390
                    LayoutCachedTop =963
                    LayoutCachedWidth =1560
                    LayoutCachedHeight =1248
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =2025
                    Top =567
                    Width =885
                    Height =285
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld50"
                    Caption ="Anz. Teilm."
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =2025
                    LayoutCachedTop =567
                    LayoutCachedWidth =2910
                    LayoutCachedHeight =852
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    DecimalPlaces =0
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =3061
                    Top =963
                    Width =1191
                    Height =285
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    BackColor =15921906
                    BorderColor =10921638
                    Name ="TF_Alle"
                    ControlSource ="=dsum(\"[Alle]\",\"qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP_pro_SB\")"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =3061
                    LayoutCachedTop =963
                    LayoutCachedWidth =4252
                    LayoutCachedHeight =1248
                    BackShade =95.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    CurrencySymbol ="€"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =270
            Name ="Detailbereich"
            BackThemeColorIndex =1
            Begin
                Begin Line
                    BorderWidth =1
                    Left =397
                    Top =255
                    Width =3796
                    BorderColor =10855845
                    Name ="Linie23"
                    GridlineColor =10921638
                    LayoutCachedLeft =397
                    LayoutCachedTop =255
                    LayoutCachedWidth =4193
                    LayoutCachedHeight =255
                    BorderThemeColorIndex =-1
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =390
                    Width =1536
                    Height =255
                    ColumnWidth =4080
                    FontSize =9
                    Name ="Buchungsstelle"
                    ControlSource ="Name"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000088000000010000000100000000000000000000001300000001000000 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x5b0056006f00720061007500730073005f004b006f007300740065006e005d00 ,
                        0x3d00300000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =390
                    LayoutCachedWidth =1926
                    LayoutCachedHeight =255
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    ConditionalFormat14 = Begin
                        0x010001000000010000000000000001000000ffffff00ffffff00120000005b00 ,
                        0x56006f00720061007500730073005f004b006f007300740065006e005d003d00 ,
                        0x3000000000000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =3061
                    Width =1191
                    Height =255
                    FontSize =9
                    TabIndex =2
                    BorderColor =10921638
                    Name ="TF_TatsK"
                    ControlSource ="Vorauss_Kosten"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000088000000010000000100000000000000000000001300000001000000 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x5b0056006f00720061007500730073005f004b006f007300740065006e005d00 ,
                        0x3d00300000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =3061
                    LayoutCachedWidth =4252
                    LayoutCachedHeight =255
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    ConditionalFormat14 = Begin
                        0x010001000000010000000000000001000000ffffff00ffffff00120000005b00 ,
                        0x56006f00720061007500730073005f004b006f007300740065006e005d003d00 ,
                        0x3000000000000000000000000000000000000000000000
                    End
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =2274
                    Width =636
                    Height =255
                    FontSize =9
                    TabIndex =1
                    BorderColor =10921638
                    Name ="Anz_Teilm"
                    ControlSource ="Anz_Teilm"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000088000000010000000100000000000000000000001300000001000000 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x5b0056006f00720061007500730073005f004b006f007300740065006e005d00 ,
                        0x3d00300000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =2274
                    LayoutCachedWidth =2910
                    LayoutCachedHeight =255
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    ConditionalFormat14 = Begin
                        0x010001000000010000000000000001000000ffffff00ffffff00120000005b00 ,
                        0x56006f00720061007500730073005f004b006f007300740065006e005d003d00 ,
                        0x3000000000000000000000000000000000000000000000
                    End
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =510
            Name ="Gruppenfuß1"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =3061
                    Top =120
                    Width =1191
                    Height =285
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    BackColor =15921906
                    BorderColor =10921638
                    Name ="TF_VorausK_Zw_Sum"
                    ControlSource ="=Sum([Vorauss_Kosten])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =3061
                    LayoutCachedTop =120
                    LayoutCachedWidth =4252
                    LayoutCachedHeight =405
                    BackShade =95.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    CurrencySymbol ="€"
                End
                Begin Label
                    TextAlign =3
                    Left =690
                    Top =120
                    Width =1410
                    Height =285
                    FontSize =9
                    FontWeight =700
                    BackColor =15921906
                    Name ="Bezeichnungsfeld29"
                    Caption ="Anz. / Zw.-Summe:"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =690
                    LayoutCachedTop =120
                    LayoutCachedWidth =2100
                    LayoutCachedHeight =405
                    ThemeFontIndex =-1
                    BackShade =95.0
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =2274
                    Top =120
                    Width =636
                    Height =255
                    FontSize =9
                    FontWeight =700
                    BackColor =15921906
                    BorderColor =10921638
                    Name ="Text51"
                    ControlSource ="=Sum([Anz_Teilm])"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =2274
                    LayoutCachedTop =120
                    LayoutCachedWidth =2910
                    LayoutCachedHeight =375
                    BackShade =95.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =623
            Name ="Berichtsfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    Left =1245
                    Top =120
                    Width =3015
                    Height =450
                    FontSize =12
                    FontWeight =700
                    BackColor =14277081
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld22"
                    Caption ="Summe:"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =1245
                    LayoutCachedTop =120
                    LayoutCachedWidth =4260
                    LayoutCachedHeight =570
                    ThemeFontIndex =-1
                    BackShade =85.0
                    ForeTint =100.0
                End
                Begin TextBox
                    DecimalPlaces =0
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =2446
                    Top =170
                    Width =1806
                    Height =330
                    FontSize =12
                    FontWeight =700
                    BackColor =15921906
                    BorderColor =10921638
                    Name ="Text54"
                    ControlSource ="=[TF_Alle]+[TF_VorausK_Zw_Sum]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =2446
                    LayoutCachedTop =170
                    LayoutCachedWidth =4252
                    LayoutCachedHeight =500
                    BackShade =95.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    CurrencySymbol ="€"
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_030_20_20_Maßn_Summen_pro_SB.cls"
