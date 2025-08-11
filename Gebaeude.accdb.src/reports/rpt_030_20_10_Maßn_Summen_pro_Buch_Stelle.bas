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
    Width =4590
    DatasheetFontHeight =11
    ItemSuffix =36
    Left =1260
    Top =4485
    RecSrcDt = Begin
        0xa48c42866f03e540
    End
    RecordSource ="SELECT IIf(Left([Buch_Stelle],InStr([Buch_Stelle],\" (\"))=\"\",1,99) AS Sort, I"
        "If(Left([Buch_Stelle],InStr([Buch_Stelle],\" (\"))=\"\",\"Sammelbuchungsstelle\""
        ",\"Einzelne Buchungsstellen\") AS Sammel_BS, Left([Buch_Stelle],InStr([Buch_Stel"
        "le],\" (\")) AS Buchst, Sum(IIf([Sammel_BS]=\"Sammelbuchungsstelle\",[voraussich"
        "tliche Kosten],[Tats_Voraus_Kosten])) AS Betrag FROM qry_020_10_10_Rep_Arbeitspr"
        "ogramm GROUP BY IIf(Left([Buch_Stelle],InStr([Buch_Stelle],\" (\"))=\"\",1,99), "
        "Left([Buch_Stelle],InStr([Buch_Stelle],\" (\")) ORDER BY IIf(Left([Buch_Stelle],"
        "InStr([Buch_Stelle],\" (\"))=\"\",1,99);"
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
            ControlSource ="Sort"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Sammel_BS"
        End
        Begin BreakLevel
            ControlSource ="Buchst"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =623
            Name ="Berichtskopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    BackStyle =1
                    Left =167
                    Top =113
                    Width =4305
                    Height =390
                    FontSize =14
                    FontWeight =700
                    BackColor =12566463
                    Name ="Bezeichnungsfeld26"
                    Caption ="Maßn.-Summen pro Buchungsstelle"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =167
                    LayoutCachedTop =113
                    LayoutCachedWidth =4472
                    LayoutCachedHeight =503
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
            Height =453
            BreakLevel =1
            Name ="Gruppenkopf0"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =165
                    Top =60
                    Width =4146
                    Height =315
                    FontSize =12
                    FontWeight =700
                    BorderColor =10921638
                    Name ="Sammel_BS"
                    ControlSource ="Sammel_BS"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =165
                    LayoutCachedTop =60
                    LayoutCachedWidth =4311
                    LayoutCachedHeight =375
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =285
            Name ="Detailbereich"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =2383
                    Height =285
                    FontSize =10
                    BorderColor =10921638
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =2383
                    LayoutCachedWidth =4084
                    LayoutCachedHeight =285
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =285
                    Width =2046
                    Height =285
                    FontSize =10
                    TabIndex =1
                    BorderColor =10921638
                    Name ="Buchst"
                    ControlSource ="Buchst"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =285
                    LayoutCachedWidth =2331
                    LayoutCachedHeight =285
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =566
            BreakLevel =1
            Name ="Gruppenfuß1"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =2383
                    Top =60
                    Height =315
                    FontSize =12
                    FontWeight =700
                    BorderColor =10921638
                    Name ="Text31"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =2383
                    LayoutCachedTop =60
                    LayoutCachedWidth =4084
                    LayoutCachedHeight =375
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    CurrencySymbol ="€"
                End
                Begin Label
                    BackStyle =1
                    Left =570
                    Top =60
                    Width =1725
                    Height =345
                    FontSize =12
                    FontWeight =700
                    Name ="Bezeichnungsfeld34"
                    Caption ="Zwischensumme:"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =570
                    LayoutCachedTop =60
                    LayoutCachedWidth =2295
                    LayoutCachedHeight =405
                    ThemeFontIndex =-1
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =963
            Name ="Berichtsfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    BackStyle =1
                    Left =165
                    Top =225
                    Width =4260
                    Height =390
                    FontSize =14
                    FontWeight =700
                    BackColor =12566463
                    Name ="Bezeichnungsfeld35"
                    Caption ="Ges.Summe:"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =165
                    LayoutCachedTop =225
                    LayoutCachedWidth =4425
                    LayoutCachedHeight =615
                    ThemeFontIndex =-1
                    BackShade =75.0
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
                Begin TextBox
                    DecimalPlaces =0
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =1859
                    Top =225
                    Width =2331
                    Height =390
                    FontSize =14
                    FontWeight =700
                    BackColor =12566463
                    BorderColor =10921638
                    Name ="Text33"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =1859
                    LayoutCachedTop =225
                    LayoutCachedWidth =4190
                    LayoutCachedHeight =615
                    BackShade =75.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    CurrencySymbol ="€"
                End
            End
        End
    End
End
