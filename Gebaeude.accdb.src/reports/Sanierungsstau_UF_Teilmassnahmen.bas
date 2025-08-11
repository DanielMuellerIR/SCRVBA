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
    Width =7772
    DatasheetFontHeight =11
    ItemSuffix =2
    Left =5130
    Top =6645
    RecSrcDt = Begin
        0x2ebb9ce98bcae440
    End
    RecordSource ="SELECT [Teile der Maßnahmen].*, Finanzquellen.Finanzquelle FROM [Teile der Maßna"
        "hmen] LEFT JOIN Finanzquellen ON [Teile der Maßnahmen].ID_Fin_Qu = Finanzquellen"
        ".ID_Fin_Qu ORDER BY [Teile der Maßnahmen].Teilmaßname;"
    DatasheetFontName ="Calibri"
    FilterOnLoad =0
    FitToPage =1
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    AlternateBackShade =95.0
    Begin
        Begin Line
            BorderLineStyle =0
            Width =1701
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
            BorderShade =65.0
            ForeTint =75.0
            GridlineShade =65.0
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =0
            Name ="Berichtskopf"
            AlternateBackShade =95.0
        End
        Begin Section
            KeepTogether = NotDefault
            Height =255
            Name ="Detailbereich"
            AlternateBackColor =16777215
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    FELineBreak = NotDefault
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =6416
                    Width =1356
                    Height =255
                    FontSize =9
                    Name ="TF_Voraus_Kosten_TM"
                    ControlSource ="voraussichtliche Kosten"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    AsianLineBreak =0

                    LayoutCachedLeft =6416
                    LayoutCachedWidth =7772
                    LayoutCachedHeight =255
                    BorderShade =100.0
                    ForeTint =100.0
                    GridlineShade =100.0
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    FELineBreak = NotDefault
                    OldBorderStyle =0
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =3302
                    Width =1551
                    Height =255
                    FontSize =9
                    TabIndex =1
                    Name ="Finanzquelle"
                    ControlSource ="Finanzquelle"
                    FontName ="Arial Narrow"
                    AsianLineBreak =0

                    LayoutCachedLeft =3302
                    LayoutCachedWidth =4853
                    LayoutCachedHeight =255
                    BorderShade =100.0
                    ForeTint =100.0
                    GridlineShade =100.0
                End
                Begin TextBox
                    FontItalic = NotDefault
                    FELineBreak = NotDefault
                    OldBorderStyle =0
                    TextAlign =1
                    BackStyle =0
                    IMESentenceMode =3
                    Width =3066
                    Height =255
                    FontSize =9
                    TabIndex =2
                    Name ="Teilmaßname"
                    ControlSource ="Teilmaßname"
                    FontName ="Arial Narrow"
                    AsianLineBreak =0

                    LayoutCachedWidth =3066
                    LayoutCachedHeight =255
                    BorderShade =100.0
                    ForeTint =100.0
                    GridlineShade =100.0
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =396
            Name ="Berichtsfuß"
            AlternateBackShade =95.0
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    FELineBreak = NotDefault
                    OldBorderStyle =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =5835
                    Top =45
                    Width =1926
                    Height =255
                    FontSize =9
                    FontWeight =700
                    Name ="TF_Sum_TM_Kost"
                    ControlSource ="=ccur(Nz(Sum([voraussichtliche Kosten])))"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    AsianLineBreak =0

                    LayoutCachedLeft =5835
                    LayoutCachedTop =45
                    LayoutCachedWidth =7761
                    LayoutCachedHeight =300
                    BorderShade =100.0
                    ForeTint =100.0
                    GridlineShade =100.0
                    CurrencySymbol ="€"
                End
                Begin Line
                    BorderWidth =1
                    Left =5835
                    Top =45
                    Width =1926
                    BorderColor =10855845
                    Name ="Linie1"
                    GridlineColor =10921638
                    LayoutCachedLeft =5835
                    LayoutCachedTop =45
                    LayoutCachedWidth =7761
                    LayoutCachedHeight =45
                End
            End
        End
    End
End
