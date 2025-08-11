Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9411
    DatasheetFontHeight =11
    ItemSuffix =52
    Top =598
    RecSrcDt = Begin
        0x9680ac87d176e540
    End
    RecordSource ="qry_020_10_15_Rep_Arbeitsprogr_UB_Kontierungen"
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
        Begin Section
            KeepTogether = NotDefault
            Height =240
            Name ="Detailbereich"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    BorderWidth =1
                    TextAlign =1
                    IMESentenceMode =3
                    Left =285
                    Width =680
                    Height =211
                    FontSize =7
                    Name ="Sachkonto"
                    ControlSource ="Sachkonto"
                    Format ="0000000"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =285
                    LayoutCachedWidth =965
                    LayoutCachedHeight =211
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    BorderWidth =1
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1069
                    Width =567
                    Height =211
                    ColumnWidth =2092
                    FontSize =7
                    TabIndex =1
                    Name ="Kostenstelle_Infoma"
                    ControlSource ="Kostenstelle_Infoma"
                    Format ="00000"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =1069
                    LayoutCachedWidth =1636
                    LayoutCachedHeight =211
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    BorderWidth =1
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1752
                    Width =567
                    Height =211
                    ColumnWidth =2213
                    FontSize =7
                    TabIndex =2
                    Name ="Kostentraeger"
                    ControlSource ="Kostentraeger"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =1752
                    LayoutCachedWidth =2319
                    LayoutCachedHeight =211
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    BorderWidth =1
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2433
                    Width =730
                    Height =211
                    ColumnWidth =1485
                    FontSize =7
                    TabIndex =3
                    Name ="Inv_Nr"
                    ControlSource ="Inv_Nr"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =2433
                    LayoutCachedWidth =3163
                    LayoutCachedHeight =211
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    Visible = NotDefault
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Width =170
                    Height =211
                    ColumnWidth =1785
                    FontSize =7
                    TabIndex =4
                    BackColor =967423
                    BorderColor =12566463
                    Name ="ID"
                    ControlSource ="ID"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedWidth =170
                    LayoutCachedHeight =211
                    BackThemeColorIndex =-1
                    BorderShade =75.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    BorderWidth =1
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3288
                    Width =662
                    Height =211
                    ColumnWidth =1373
                    FontSize =7
                    TabIndex =5
                    Name ="Anlagen_Nr"
                    ControlSource ="Anlagen_Nr"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =3288
                    LayoutCachedWidth =3950
                    LayoutCachedHeight =211
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    BorderWidth =1
                    TextAlign =1
                    IMESentenceMode =3
                    Left =4073
                    Width =567
                    Height =211
                    FontSize =7
                    TabIndex =6
                    Name ="FP_Nr"
                    ControlSource ="FP_Nr"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =4073
                    LayoutCachedWidth =4640
                    LayoutCachedHeight =211
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    BorderWidth =1
                    TextAlign =1
                    IMESentenceMode =3
                    Left =4916
                    Width =2447
                    Height =211
                    ColumnWidth =2610
                    FontSize =7
                    TabIndex =7
                    Name ="Finanzquelle"
                    ControlSource ="Kontierung"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =4916
                    LayoutCachedWidth =7363
                    LayoutCachedHeight =211
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    Left =4751
                    Width =143
                    Height =211
                    FontSize =7
                    Name ="Bezeichnungsfeld33"
                    Caption ="->"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =4751
                    LayoutCachedWidth =4894
                    LayoutCachedHeight =211
                    ThemeFontIndex =-1
                    BorderTint =100.0
                    ForeTint =100.0
                End
                Begin Line
                    Left =1020
                    Width =0
                    Height =211
                    Name ="Linie34"
                    GridlineColor =10921638
                    LayoutCachedLeft =1020
                    LayoutCachedWidth =1020
                    LayoutCachedHeight =211
                End
                Begin Line
                    Left =1690
                    Width =0
                    Height =211
                    Name ="Linie35"
                    GridlineColor =10921638
                    LayoutCachedLeft =1690
                    LayoutCachedWidth =1690
                    LayoutCachedHeight =211
                End
                Begin Line
                    Left =226
                    Width =0
                    Height =211
                    Name ="Linie36"
                    GridlineColor =10921638
                    LayoutCachedLeft =226
                    LayoutCachedWidth =226
                    LayoutCachedHeight =211
                End
                Begin Line
                    Left =2371
                    Width =0
                    Height =211
                    Name ="Linie37"
                    GridlineColor =10921638
                    LayoutCachedLeft =2371
                    LayoutCachedWidth =2371
                    LayoutCachedHeight =211
                End
                Begin Line
                    Left =3220
                    Width =0
                    Height =211
                    Name ="Linie38"
                    GridlineColor =10921638
                    LayoutCachedLeft =3220
                    LayoutCachedWidth =3220
                    LayoutCachedHeight =211
                End
                Begin Line
                    Left =4016
                    Width =0
                    Height =211
                    Name ="Linie39"
                    GridlineColor =10921638
                    LayoutCachedLeft =4016
                    LayoutCachedWidth =4016
                    LayoutCachedHeight =211
                End
                Begin Line
                    Left =225
                    Top =226
                    Width =7111
                    Name ="Linie41"
                    GridlineColor =10921638
                    LayoutCachedLeft =225
                    LayoutCachedTop =226
                    LayoutCachedWidth =7336
                    LayoutCachedHeight =226
                End
                Begin Line
                    Left =4691
                    Width =0
                    Height =211
                    Name ="Linie42"
                    GridlineColor =10921638
                    LayoutCachedLeft =4691
                    LayoutCachedWidth =4691
                    LayoutCachedHeight =211
                End
                Begin Line
                    Left =7346
                    Width =0
                    Height =211
                    Name ="Linie43"
                    GridlineColor =10921638
                    LayoutCachedLeft =7346
                    LayoutCachedWidth =7346
                    LayoutCachedHeight =211
                End
                Begin Line
                    Left =225
                    Width =7111
                    Name ="Linie44"
                    GridlineColor =10921638
                    LayoutCachedLeft =225
                    LayoutCachedWidth =7336
                End
                Begin TextBox
                    HideDuplicates = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =4
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7417
                    Width =1938
                    Height =211
                    FontSize =7
                    FontWeight =700
                    TabIndex =8
                    BorderColor =12566463
                    Name ="Text51"
                    ControlSource ="=Sum([Summ])"
                    Format ="\"Summe:  \"#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =7417
                    LayoutCachedWidth =9355
                    LayoutCachedHeight =211
                    BorderShade =75.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
            End
        End
    End
End
