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
    Width =10605
    DatasheetFontHeight =11
    ItemSuffix =12
    Left =3660
    Top =510
    RecSrcDt = Begin
        0x28416beecd00e540
    End
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
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin PageBreak
            Width =283
        End
        Begin PageHeader
            Height =680
            Name ="Seitenkopfbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Rectangle
                    Left =113
                    Top =113
                    Width =10428
                    Height =453
                    BackColor =15921906
                    BorderColor =10921638
                    Name ="Rechteck6"
                    GridlineColor =10921638
                    LayoutCachedLeft =113
                    LayoutCachedTop =113
                    LayoutCachedWidth =10541
                    LayoutCachedHeight =566
                    BackShade =95.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =7774
                    Top =158
                    Width =1296
                    Height =360
                    ColumnOrder =0
                    FontSize =14
                    FontWeight =700
                    BorderColor =10921638
                    Name ="Text4"
                    ControlSource ="=F_Variable(\"lng_Kalk_Jahr\")"
                    GridlineColor =10921638

                    LayoutCachedLeft =7774
                    LayoutCachedTop =158
                    LayoutCachedWidth =9070
                    LayoutCachedHeight =518
                    ForeTint =100.0
                    Begin
                        Begin Label
                            Left =169
                            Top =158
                            Width =7605
                            Height =360
                            FontSize =14
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld5"
                            Caption ="Gesamtauswertung der Maßnahmensummen zum Kalenderjahr"
                            GridlineColor =10921638
                            LayoutCachedLeft =169
                            LayoutCachedTop =158
                            LayoutCachedWidth =7774
                            LayoutCachedHeight =518
                            ForeTint =100.0
                        End
                    End
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =3344
            Name ="Detailbereich"
            BackThemeColorIndex =1
            Begin
                Begin Subform
                    Left =2614
                    Top =1869
                    Width =4879
                    Height =1075
                    Name ="rpt_030_20_20_Maßn_Summen_pro_SB"
                    SourceObject ="Report.rpt_030_20_20_Maßn_Summen_pro_SB"
                    GridlineColor =10921638

                    LayoutCachedLeft =2614
                    LayoutCachedTop =1869
                    LayoutCachedWidth =7493
                    LayoutCachedHeight =2944
                End
                Begin Subform
                    Left =113
                    Top =120
                    Width =5149
                    Height =1575
                    TabIndex =1
                    Name ="rpt_030_20_30_Maßn_Summen_pro_Fin_Herk"
                    SourceObject ="Report.rpt_030_20_30_Maßn_Summen_pro_Fin_Herk"
                    GridlineColor =10921638

                    LayoutCachedLeft =113
                    LayoutCachedTop =120
                    LayoutCachedWidth =5262
                    LayoutCachedHeight =1695
                End
                Begin Subform
                    Left =5415
                    Top =120
                    Width =5149
                    Height =1575
                    TabIndex =2
                    Name ="rpt_030_20_30_Maßn_Summen_pro_Fin_Quelle"
                    SourceObject ="Report.rpt_030_20_30_Maßn_Summen_pro_Fin_Quelle"
                    GridlineColor =10921638

                    LayoutCachedLeft =5415
                    LayoutCachedTop =120
                    LayoutCachedWidth =10564
                    LayoutCachedHeight =1695
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
                    BackStyle =0
                    IMESentenceMode =3
                    Left =6916
                    Top =56
                    Width =3600
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text7"
                    ControlSource ="=\"S. \" & [Page] & \" / \" & [Pages]"
                    GridlineColor =10921638

                    LayoutCachedLeft =6916
                    LayoutCachedTop =56
                    LayoutCachedWidth =10516
                    LayoutCachedHeight =371
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =1
                    BackStyle =0
                    IMESentenceMode =3
                    Left =113
                    Top =56
                    Width =3600
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text8"
                    ControlSource ="=Now()"
                    Format ="\"Stand: \"dd/mm/yyyy hh:nn"
                    GridlineColor =10921638

                    LayoutCachedLeft =113
                    LayoutCachedTop =56
                    LayoutCachedWidth =3713
                    LayoutCachedHeight =371
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_030_20_50_Maßn_Summen_Alle.cls"
