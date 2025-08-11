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
    Width =4705
    DatasheetFontHeight =11
    ItemSuffix =98
    Left =5760
    Top =1680
    RecSrcDt = Begin
        0x8457cc457003e540
    End
    RecordSource ="SELECT IIf([Finanzquelle] Is Null,\"nicht festgel.\",[Finanzquelle]) AS FIn_quel"
        "le, Sum([Geplante Finanzierung].Betrag) AS SummevonBetrag, IIf([Finanzquelle] Is"
        " Null,99,1) AS Sort, Finanzquellen.Finanzquelle FROM Finanzquellen RIGHT JOIN (F"
        "inanzherkunft RIGHT JOIN [Geplante Finanzierung] ON Finanzherkunft.ID_Fin_Her = "
        "[Geplante Finanzierung].ID_Fin_Her) ON Finanzquellen.ID_Fin_Qu = [Geplante Finan"
        "zierung].ID_Fin_Qu WHERE ((([Geplante Finanzierung].Kalenderjahr)=F_VAriable(\"l"
        "ng_Kalk_JAhr\")) AND ((([Finanzherkunft]<>\"Bauunterhaltung\" Or [Geplante Finan"
        "zierung].[Sammelbuchungsstelle]=True) Or [Geplante Finanzierung].[ID_Fin_Her] Is"
        " Null)=True)) GROUP BY IIf([Finanzquelle] Is Null,\"nicht festgel.\",[Finanzquel"
        "le]), IIf([Finanzquelle] Is Null,99,1), Finanzquellen.Finanzquelle ORDER BY IIf("
        "[Finanzquelle] Is Null,99,1), Finanzquellen.Finanzquelle;"
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
            ControlSource ="sort"
        End
        Begin BreakLevel
            ControlSource ="Finanzquelle"
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
                    Top =120
                    Width =4035
                    Height =705
                    FontSize =14
                    FontWeight =700
                    BackColor =14277081
                    Name ="Bezeichnungsfeld26"
                    Caption ="Geplante Finanzierung \015\012pro Mittelart"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =390
                    LayoutCachedTop =120
                    LayoutCachedWidth =4425
                    LayoutCachedHeight =825
                    ThemeFontIndex =-1
                    BackShade =85.0
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
            End
        End
        Begin PageHeader
            Height =566
            Name ="Seitenkopfbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    Left =420
                    Top =60
                    Width =2235
                    Height =315
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld82"
                    Caption ="FInanz-Herkunft"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =420
                    LayoutCachedTop =60
                    LayoutCachedWidth =2655
                    LayoutCachedHeight =375
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =3
                    Left =2715
                    Top =60
                    Width =1770
                    Height =315
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld83"
                    Caption ="Summe tats. Kosten"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =2715
                    LayoutCachedTop =60
                    LayoutCachedWidth =4485
                    LayoutCachedHeight =375
                    ColumnStart =1
                    ColumnEnd =1
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Line
                    BorderWidth =2
                    Left =480
                    Top =453
                    Width =4025
                    BorderColor =9211020
                    Name ="Linie95"
                    GridlineColor =10921638
                    LayoutCachedLeft =480
                    LayoutCachedTop =453
                    LayoutCachedWidth =4505
                    LayoutCachedHeight =453
                    BorderThemeColorIndex =-1
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =345
            Name ="Detailbereich"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =420
                    Top =30
                    Width =1275
                    Height =255
                    FontSize =9
                    BackColor =14277081
                    BorderColor =10921638
                    Name ="FIn_Herkunft"
                    ControlSource ="FIn_Quelle"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =420
                    LayoutCachedTop =30
                    LayoutCachedWidth =1695
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    BackShade =85.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    DecimalPlaces =0
                    OldBorderStyle =0
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =2715
                    Top =30
                    Width =1770
                    Height =255
                    FontSize =9
                    TabIndex =1
                    BackColor =14277081
                    BorderColor =10921638
                    Name ="SummevonTats_Voraus_Kosten"
                    ControlSource ="SummevonBetrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =2715
                    LayoutCachedTop =30
                    LayoutCachedWidth =4485
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    BackShade =85.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    CurrencySymbol ="€"
                End
                Begin Line
                    BorderWidth =1
                    Left =480
                    Top =330
                    Width =4025
                    BorderColor =9211020
                    Name ="Linie97"
                    GridlineColor =10921638
                    LayoutCachedLeft =480
                    LayoutCachedTop =330
                    LayoutCachedWidth =4505
                    LayoutCachedHeight =330
                    BorderThemeColorIndex =-1
                End
            End
        End
        Begin PageFooter
            Height =0
            Name ="Seitenfußbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
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
                    Left =1755
                    Top =165
                    Width =2730
                    Height =315
                    FontSize =12
                    FontWeight =700
                    BackColor =14277081
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld89"
                    Caption ="Summe:"
                    FontName ="Arial Narrow"
                    GroupTable =4
                    GridlineColor =10921638
                    LayoutCachedLeft =1755
                    LayoutCachedTop =165
                    LayoutCachedWidth =4485
                    LayoutCachedHeight =480
                    LayoutGroup =2
                    ThemeFontIndex =-1
                    BackShade =85.0
                    ForeTint =100.0
                    GroupTable =4
                End
                Begin TextBox
                    DecimalPlaces =0
                    OldBorderStyle =0
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =2670
                    Top =165
                    Width =1770
                    Height =315
                    FontSize =12
                    FontWeight =700
                    BackColor =14277081
                    BorderColor =10921638
                    Name ="Text88"
                    ControlSource ="=Sum([SummevonBetrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =2670
                    LayoutCachedTop =165
                    LayoutCachedWidth =4440
                    LayoutCachedHeight =480
                    LayoutGroup =1
                    BackShade =85.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                    CurrencySymbol ="€"
                End
                Begin Line
                    BorderWidth =2
                    Left =480
                    Top =60
                    Width =4025
                    BorderColor =9211020
                    Name ="Linie96"
                    GridlineColor =10921638
                    LayoutCachedLeft =480
                    LayoutCachedTop =60
                    LayoutCachedWidth =4505
                    LayoutCachedHeight =60
                    BorderThemeColorIndex =-1
                End
            End
        End
    End
End
