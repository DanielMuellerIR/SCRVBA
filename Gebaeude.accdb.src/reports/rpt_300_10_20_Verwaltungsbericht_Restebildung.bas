Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    RecordLocks =2
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =10714
    DatasheetFontHeight =11
    ItemSuffix =65
    Left =10785
    Top =2805
    RecSrcDt = Begin
        0x29d78b3210e2e440
    End
    RecordSource ="qry_rpt_300_10_20_DH_Verwbericht_Restebildung"
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
            FontSize =10
            FontWeight =700
            FontName ="Arial Narrow"
            BackThemeColorIndex =1
            BorderThemeColorIndex =0
            BorderTint =50.0
            ForeThemeColorIndex =0
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
            Height =285
            LabelX =-1701
            FontSize =10
            FontName ="Arial Narrow"
            AsianLineBreak =1
            ShowDatePicker =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin FormHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =1417
            Name ="Berichtskopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    Left =60
                    Top =225
                    Width =7035
                    Height =420
                    FontSize =16
                    BackColor =15921906
                    Name ="Bezeichnungsfeld39"
                    Caption ="Verwaltungsbericht: Restebildung (nur investiv)"
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =225
                    LayoutCachedWidth =7095
                    LayoutCachedHeight =645
                    BackShade =95.0
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =50.0
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7483
                    Top =226
                    Width =2946
                    Height =420
                    FontSize =16
                    FontWeight =700
                    BackColor =15921906
                    BorderColor =8355711
                    Name ="Text48"
                    ControlSource ="=\"Haushaltsjahr \" & F_Variable(\"lng_Kalk_Jahr\")"
                    GridlineColor =10921638

                    LayoutCachedLeft =7483
                    LayoutCachedTop =226
                    LayoutCachedWidth =10429
                    LayoutCachedHeight =646
                    BackShade =95.0
                    BorderShade =50.0
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    BorderWidth =1
                    OverlapFlags =4
                    IMESentenceMode =3
                    Left =60
                    Top =1018
                    Width =8340
                    Height =225
                    TabIndex =1
                    Name ="TF_Hinweis"
                    ControlSource ="=Forms(\"Filter für Verwalt_Kosten_Massnahmen\")![TF_Hinweistext]"
                    GridlineColor =10921638
                    TextFormat =1

                    LayoutCachedLeft =60
                    LayoutCachedTop =1018
                    LayoutCachedWidth =8400
                    LayoutCachedHeight =1243
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    Begin
                        Begin Label
                            Left =60
                            Top =735
                            Width =2490
                            Height =255
                            BorderColor =8355711
                            Name ="BF_Hinweis"
                            Caption ="Hinweis zu dieser Auswertung:"
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =735
                            LayoutCachedWidth =2550
                            LayoutCachedHeight =990
                        End
                    End
                End
            End
        End
        Begin PageHeader
            Height =737
            Name ="Seitenkopfbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    Left =30
                    Top =390
                    Width =5130
                    Height =285
                    FontSize =9
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld48"
                    Caption ="Buchungsstelle"
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =390
                    LayoutCachedWidth =5160
                    LayoutCachedHeight =675
                End
                Begin Label
                    Left =5220
                    Top =390
                    Width =3975
                    Height =285
                    FontSize =9
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld49"
                    Caption ="Maßnahme"
                    GridlineColor =10921638
                    LayoutCachedLeft =5220
                    LayoutCachedTop =390
                    LayoutCachedWidth =9195
                    LayoutCachedHeight =675
                    ColumnStart =1
                    ColumnEnd =1
                End
                Begin Label
                    TextAlign =2
                    Left =9255
                    Top =390
                    Width =1380
                    Height =285
                    FontSize =9
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld50"
                    Caption ="offene Auträge"
                    GridlineColor =10921638
                    LayoutCachedLeft =9255
                    LayoutCachedTop =390
                    LayoutCachedWidth =10635
                    LayoutCachedHeight =675
                    ColumnStart =2
                    ColumnEnd =2
                End
                Begin Line
                    BorderWidth =2
                    Top =720
                    Width =10617
                    Name ="Linie63"
                    GridlineColor =10921638
                    LayoutCachedTop =720
                    LayoutCachedWidth =10617
                    LayoutCachedHeight =720
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =315
            Name ="Detailbereich"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =30
                    Width =5130
                    Height =255
                    ColumnWidth =6900
                    FontSize =9
                    BorderColor =10921638
                    Name ="Buch_stelle"
                    ControlSource ="Buch_stelle"
                    GridlineColor =10921638

                    LayoutCachedLeft =30
                    LayoutCachedWidth =5160
                    LayoutCachedHeight =255
                    RowStart =1
                    RowEnd =1
                End
                Begin TextBox
                    CanGrow = NotDefault
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =5220
                    Width =3975
                    Height =255
                    ColumnWidth =7620
                    FontSize =9
                    TabIndex =1
                    BorderColor =10921638
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"
                    GridlineColor =10921638

                    LayoutCachedLeft =5220
                    LayoutCachedWidth =9195
                    LayoutCachedHeight =255
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =9255
                    Width =1380
                    Height =255
                    ColumnWidth =1830
                    FontSize =9
                    TabIndex =2
                    BorderColor =10921638
                    Name ="offene Auträge"
                    ControlSource ="offene Auträge"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="offene_Auträge"
                    GridlineColor =10921638

                    LayoutCachedLeft =9255
                    LayoutCachedWidth =10635
                    LayoutCachedHeight =255
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    CurrencySymbol ="€"
                End
                Begin Line
                    BorderWidth =1
                    Top =300
                    Width =10692
                    Name ="Linie24"
                    GridlineColor =10921638
                    LayoutCachedTop =300
                    LayoutCachedWidth =10692
                    LayoutCachedHeight =300
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
            End
        End
        Begin PageFooter
            Height =450
            Name ="Seitenfußbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =8844
                    Top =113
                    Height =225
                    FontSize =9
                    FontWeight =700
                    BorderColor =10921638
                    Name ="Text45"
                    ControlSource ="=\"S. \" & [Page] & \" / \" & [Pages]"
                    GridlineColor =10921638

                    LayoutCachedLeft =8844
                    LayoutCachedTop =113
                    LayoutCachedWidth =10545
                    LayoutCachedHeight =338
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =1
                    IMESentenceMode =3
                    Top =165
                    Height =225
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    BorderColor =10921638
                    Name ="Text47"
                    ControlSource ="=\"Stand: \" & Format(Now(),\"dd/mm/yyyy hh:nn\")"
                    GridlineColor =10921638

                    LayoutCachedTop =165
                    LayoutCachedWidth =1701
                    LayoutCachedHeight =390
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =1077
            Name ="Berichtsfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Rectangle
                    Left =5835
                    Top =285
                    Width =4811
                    Height =567
                    BackColor =15921906
                    BorderColor =8355711
                    Name ="Rechteck44"
                    GridlineColor =10921638
                    LayoutCachedLeft =5835
                    LayoutCachedTop =285
                    LayoutCachedWidth =10646
                    LayoutCachedHeight =852
                    BackShade =95.0
                    BorderShade =50.0
                End
                Begin Label
                    TextAlign =3
                    Left =6047
                    Top =455
                    Width =825
                    Height =285
                    FontSize =8
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld41"
                    Caption ="Summen:"
                    GridlineColor =10921638
                    LayoutCachedLeft =6047
                    LayoutCachedTop =455
                    LayoutCachedWidth =6872
                    LayoutCachedHeight =740
                End
                Begin Line
                    BorderWidth =2
                    Top =30
                    Width =10617
                    Name ="Linie40"
                    GridlineColor =10921638
                    LayoutCachedTop =30
                    LayoutCachedWidth =10617
                    LayoutCachedHeight =30
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =9240
                    Top =455
                    Width =1380
                    Height =255
                    FontSize =9
                    BorderColor =10921638
                    Name ="Text64"
                    ControlSource ="=Sum([offene Auträge])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    GridlineColor =10921638

                    LayoutCachedLeft =9240
                    LayoutCachedTop =455
                    LayoutCachedWidth =10620
                    LayoutCachedHeight =710
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    CurrencySymbol ="€"
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_300_10_20_Verwaltungsbericht_Restebildung.cls"
