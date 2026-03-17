Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =10204
    DatasheetFontHeight =11
    ItemSuffix =126
    Left =6510
    Top =2445
    RecSrcDt = Begin
        0xc20e006b1045e540
    End
    RecordSource ="qry_20_30_DH_Quartalspruefungen"
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
            SortOrder = NotDefault
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Kalenderjahr"
        End
        Begin BreakLevel
            SortOrder = NotDefault
            ControlSource ="Quartal"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =510
            Name ="Berichtskopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    Top =60
                    Width =2790
                    Height =390
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld92"
                    Caption ="VIS-Quartalsprüfungen"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedTop =60
                    LayoutCachedWidth =2790
                    LayoutCachedHeight =450
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
            End
        End
        Begin PageHeader
            Height =113
            Name ="Seitenkopfbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            RepeatSection = NotDefault
            Height =1190
            Name ="Gruppenkopf0"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =1
                    BackStyle =0
                    IMESentenceMode =3
                    Top =120
                    Height =330
                    ColumnWidth =5175
                    FontSize =10
                    FontWeight =700
                    Name ="Jahr"
                    ControlSource ="Kalenderjahr"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedTop =120
                    LayoutCachedWidth =1701
                    LayoutCachedHeight =450
                    BorderThemeColorIndex =0
                    BorderTint =50.0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =2
                    Top =630
                    Width =1695
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld104"
                    Caption ="Kalenderjahr"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedTop =630
                    LayoutCachedWidth =1695
                    LayoutCachedHeight =945
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =2
                    Left =1755
                    Top =630
                    Width =735
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld105"
                    Caption ="Quartal"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =1755
                    LayoutCachedTop =630
                    LayoutCachedWidth =2490
                    LayoutCachedHeight =945
                    ColumnStart =1
                    ColumnEnd =1
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =2
                    Left =2550
                    Top =630
                    Width =1695
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld106"
                    Caption ="Datum"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =2550
                    LayoutCachedTop =630
                    LayoutCachedWidth =4245
                    LayoutCachedHeight =945
                    ColumnStart =2
                    ColumnEnd =2
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    Left =4305
                    Top =630
                    Width =2160
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld107"
                    Caption ="Pruefer"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =4305
                    LayoutCachedTop =630
                    LayoutCachedWidth =6465
                    LayoutCachedHeight =945
                    ColumnStart =3
                    ColumnEnd =3
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Line
                    BorderWidth =2
                    Top =1077
                    Width =6463
                    Name ="Linie124"
                    GridlineColor =10921638
                    LayoutCachedTop =1077
                    LayoutCachedWidth =6463
                    LayoutCachedHeight =1077
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =405
            Name ="Detailbereich"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =2
                    IMESentenceMode =3
                    Left =30
                    Width =1695
                    Height =315
                    ColumnWidth =1620
                    FontSize =10
                    BorderColor =10921638
                    Name ="Kalenderjahr"
                    ControlSource ="Kalenderjahr"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =30
                    LayoutCachedWidth =1725
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =2
                    IMESentenceMode =3
                    Left =1785
                    Width =735
                    Height =315
                    ColumnWidth =1980
                    FontSize =10
                    TabIndex =1
                    BorderColor =10921638
                    Name ="Quartal"
                    ControlSource ="Quartal"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =1785
                    LayoutCachedWidth =2520
                    LayoutCachedHeight =315
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
                    Left =2580
                    Width =1695
                    Height =315
                    FontSize =10
                    TabIndex =2
                    BorderColor =10921638
                    Name ="Datum"
                    ControlSource ="Datum"
                    FontName ="Arial"
                    GridlineColor =10921638
                    ShowDatePicker =1

                    LayoutCachedLeft =2580
                    LayoutCachedWidth =4275
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =4335
                    Width =2160
                    Height =315
                    ColumnWidth =3930
                    FontSize =10
                    TabIndex =3
                    BorderColor =10921638
                    Name ="Pruefer"
                    ControlSource ="Pruefer"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =4335
                    LayoutCachedWidth =6495
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Line
                    BorderWidth =1
                    Top =390
                    Width =6463
                    Name ="Linie125"
                    GridlineColor =10921638
                    LayoutCachedTop =390
                    LayoutCachedWidth =6463
                    LayoutCachedHeight =390
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =226
            Name ="Gruppenfuß0"
            BackThemeColorIndex =1
        End
        Begin PageFooter
            Height =435
            Name ="Seitenfußbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =1
                    IMESentenceMode =3
                    Top =113
                    Width =2041
                    Height =315
                    FontSize =10
                    Name ="Text93"
                    ControlSource ="=\"Stand: \" & Now()"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedTop =113
                    LayoutCachedWidth =2041
                    LayoutCachedHeight =428
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7260
                    Top =60
                    Width =2506
                    Height =315
                    FontSize =10
                    TabIndex =1
                    Name ="Text95"
                    ControlSource ="=\"S. \" & [Page] & \" / \" & [Pages]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =7260
                    LayoutCachedTop =60
                    LayoutCachedWidth =9766
                    LayoutCachedHeight =375
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =0
            Name ="Berichtsfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End
CodeBehindForm
' See "rep_20_30_Quartalspruefungen.cls"
