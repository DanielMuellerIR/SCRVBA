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
    Width =8057
    DatasheetFontHeight =11
    ItemSuffix =53
    Left =2970
    Top =525
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
            Height =228
            Name ="Detailbereich"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    OldBorderStyle =0
                    BorderWidth =1
                    OverlapFlags =12
                    TextAlign =3
                    IMESentenceMode =3
                    Left =907
                    Width =1014
                    Height =210
                    ColumnWidth =2092
                    FontSize =7
                    Name ="Kostenstelle_Infoma"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =907
                    LayoutCachedWidth =1921
                    LayoutCachedHeight =210
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OldBorderStyle =0
                    BorderWidth =1
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2036
                    Width =851
                    Height =210
                    ColumnWidth =2213
                    FontSize =7
                    TabIndex =1
                    Name ="Kostentraeger"
                    ControlSource ="Finanzquelle"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =2036
                    LayoutCachedWidth =2887
                    LayoutCachedHeight =210
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
                    Left =3000
                    Width =1581
                    Height =210
                    ColumnWidth =1485
                    FontSize =7
                    TabIndex =2
                    Name ="Inv_Nr"
                    ControlSource ="Finanzherkunft"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =3000
                    LayoutCachedWidth =4581
                    LayoutCachedHeight =210
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
                    Height =210
                    ColumnWidth =1785
                    FontSize =7
                    TabIndex =3
                    BackColor =967423
                    BorderColor =12566463
                    Name ="ID"
                    ControlSource ="ID"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedWidth =170
                    LayoutCachedHeight =210
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
                    Left =4728
                    Width =1881
                    Height =210
                    ColumnWidth =2610
                    FontSize =7
                    TabIndex =4
                    Name ="Finanzquelle"
                    ControlSource ="Maßn_Nr_Infoma"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =4728
                    LayoutCachedWidth =6609
                    LayoutCachedHeight =210
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Line
                    Left =851
                    Width =0
                    Height =211
                    Name ="Linie34"
                    GridlineColor =10921638
                    LayoutCachedLeft =851
                    LayoutCachedWidth =851
                    LayoutCachedHeight =211
                End
                Begin Line
                    Left =1975
                    Width =0
                    Height =211
                    Name ="Linie35"
                    GridlineColor =10921638
                    LayoutCachedLeft =1975
                    LayoutCachedWidth =1975
                    LayoutCachedHeight =211
                End
                Begin Line
                    Left =2940
                    Width =0
                    Height =211
                    Name ="Linie37"
                    GridlineColor =10921638
                    LayoutCachedLeft =2940
                    LayoutCachedWidth =2940
                    LayoutCachedHeight =211
                End
                Begin Line
                    Left =4664
                    Width =0
                    Height =211
                    Name ="Linie38"
                    GridlineColor =10921638
                    LayoutCachedLeft =4664
                    LayoutCachedWidth =4664
                    LayoutCachedHeight =211
                End
                Begin Line
                    Left =851
                    Top =213
                    Width =5817
                    Name ="Linie41"
                    GridlineColor =10921638
                    LayoutCachedLeft =851
                    LayoutCachedTop =213
                    LayoutCachedWidth =6668
                    LayoutCachedHeight =213
                End
                Begin Line
                    LineSlant = NotDefault
                    Left =6663
                    Width =0
                    Height =211
                    Name ="Linie43"
                    GridlineColor =10921638
                    LayoutCachedLeft =6663
                    LayoutCachedWidth =6663
                    LayoutCachedHeight =211
                End
                Begin Line
                    Left =851
                    Width =5817
                    Name ="Linie44"
                    GridlineColor =10921638
                    LayoutCachedLeft =851
                    LayoutCachedWidth =6668
                End
                Begin TextBox
                    HideDuplicates = NotDefault
                    DecimalPlaces =0
                    BorderWidth =1
                    OverlapFlags =4
                    TextAlign =3
                    IMESentenceMode =3
                    Left =6803
                    Width =1254
                    Height =210
                    FontSize =7
                    FontWeight =700
                    TabIndex =5
                    Name ="Text52"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =6803
                    LayoutCachedWidth =8057
                    LayoutCachedHeight =210
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    CurrencySymbol ="€"
                End
            End
        End
    End
End
