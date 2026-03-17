Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =2
    ScrollBars =0
    ViewsAllowed =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =5896
    DatasheetFontHeight =11
    ItemSuffix =6
    Left =3773
    Top =11175
    Right =20378
    Bottom =12713
    RecSrcDt = Begin
        0xae9218ab5282e640
    End
    OnCurrent ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    AllowFormView =0
    FilterOnLoad =0
    ShowPageMargins =0
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
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
            AsianLineBreak =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin ComboBox
            AddColon = NotDefault
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =2
            ForeShade =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            Height =3174
            Name ="Detailbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2494
                    Top =623
                    Width =2601
                    Height =315
                    ColumnWidth =1620
                    Name ="Kalenderjahr"
                    ControlSource ="Kalenderjahr"

                    LayoutCachedLeft =2494
                    LayoutCachedTop =623
                    LayoutCachedWidth =5095
                    LayoutCachedHeight =938
                    Begin
                        Begin Label
                            BackStyle =1
                            OldBorderStyle =1
                            OverlapFlags =85
                            Left =793
                            Top =623
                            Width =1275
                            Height =315
                            ForeColor =4210752
                            Name ="Bezeichnungsfeld0"
                            Caption ="Kalenderjahr"
                            LayoutCachedLeft =793
                            LayoutCachedTop =623
                            LayoutCachedWidth =2068
                            LayoutCachedHeight =938
                            BorderThemeColorIndex =1
                            BorderTint =100.0
                            BorderShade =65.0
                            ForeTint =75.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2494
                    Top =1019
                    Width =2601
                    Height =315
                    ColumnWidth =1110
                    TabIndex =1
                    Name ="Quartal"
                    ControlSource ="Quartal"

                    LayoutCachedLeft =2494
                    LayoutCachedTop =1019
                    LayoutCachedWidth =5095
                    LayoutCachedHeight =1334
                    Begin
                        Begin Label
                            BackStyle =1
                            OldBorderStyle =1
                            OverlapFlags =85
                            Left =793
                            Top =1019
                            Width =1275
                            Height =315
                            ForeColor =4210752
                            Name ="Bezeichnungsfeld1"
                            Caption ="Quartal"
                            LayoutCachedLeft =793
                            LayoutCachedTop =1019
                            LayoutCachedWidth =2068
                            LayoutCachedHeight =1334
                            BorderThemeColorIndex =1
                            BorderTint =100.0
                            BorderShade =65.0
                            ForeTint =75.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2494
                    Top =1416
                    Width =2601
                    Height =315
                    ColumnWidth =1680
                    TabIndex =2
                    Name ="Datum"
                    ControlSource ="Datum"

                    LayoutCachedLeft =2494
                    LayoutCachedTop =1416
                    LayoutCachedWidth =5095
                    LayoutCachedHeight =1731
                    Begin
                        Begin Label
                            BackStyle =1
                            OldBorderStyle =1
                            OverlapFlags =85
                            Left =793
                            Top =1416
                            Width =1275
                            Height =315
                            ForeColor =4210752
                            Name ="Bezeichnungsfeld2"
                            Caption ="Datum"
                            LayoutCachedLeft =793
                            LayoutCachedTop =1416
                            LayoutCachedWidth =2068
                            LayoutCachedHeight =1731
                            BorderThemeColorIndex =1
                            BorderTint =100.0
                            BorderShade =65.0
                            ForeTint =75.0
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2496
                    Top =1815
                    Width =2601
                    Height =315
                    ColumnWidth =3825
                    TabIndex =3
                    Name ="ID_User"
                    ControlSource ="ID_User"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_10_10_User.ID_User, [Anrede] & \" \" & [Username] AS Sachb FROM tbl_1"
                        "0_10_User WHERE (((tbl_10_10_User.[Q-Pruefung])=True) AND (Not (tbl_10_10_User.n"
                        "ur_lesen)=True)) ORDER BY tbl_10_10_User.Username; "
                    ColumnWidths ="0"

                    LayoutCachedLeft =2496
                    LayoutCachedTop =1815
                    LayoutCachedWidth =5097
                    LayoutCachedHeight =2130
                    Begin
                        Begin Label
                            BackStyle =1
                            OldBorderStyle =1
                            OverlapFlags =93
                            Left =799
                            Top =1820
                            Width =3573
                            Height =314
                            ForeColor =4210752
                            Name ="Bezeichnungsfeld5"
                            Caption ="Bereichsleitung / stv. Bereichsleitung"
                            LayoutCachedLeft =799
                            LayoutCachedTop =1820
                            LayoutCachedWidth =4372
                            LayoutCachedHeight =2134
                            BorderThemeColorIndex =1
                            BorderTint =100.0
                            BorderShade =65.0
                            ForeTint =75.0
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_20_30_UF_Quartalspruefungen.cls"
