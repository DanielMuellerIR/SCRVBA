Version =20
VersionRequired =20
Begin Form
    AllowFilters = NotDefault
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =18878
    DatasheetFontHeight =11
    ItemSuffix =45
    Left =360
    Top =3855
    Right =19530
    Bottom =9315
    OrderBy ="LfdNr"
    RecSrcDt = Begin
        0x16a419636fb8e540
    End
    RecordSource ="tbl_40_10_Rechnungen"
    Caption ="frm_40_10_Rechnungen_Unterformular"
    DatasheetFontName ="Calibri"
    FilterOnLoad =0
    OrderByOnLoad =0
    OrderByOnLoad =0
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
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin FormHeader
            Height =396
            Name ="Formularkopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =5716
                    Top =53
                    Width =9250
                    Height =293
                    BorderColor =8355711
                    Name ="Bemerkung_Bezeichnungsfeld"
                    Caption ="Bemerkung"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =5716
                    LayoutCachedTop =53
                    LayoutCachedWidth =14966
                    LayoutCachedHeight =346
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =15075
                    Top =53
                    Width =2213
                    Height =293
                    BorderColor =8355711
                    Name ="ID_Bearbeiter_Bezeichnungsfeld"
                    Caption ="Bearbeiter"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =15075
                    LayoutCachedTop =53
                    LayoutCachedWidth =17288
                    LayoutCachedHeight =346
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =113
                    Top =53
                    Width =5437
                    Height =293
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld42"
                    Caption ="Dateiname"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =113
                    LayoutCachedTop =53
                    LayoutCachedWidth =5550
                    LayoutCachedHeight =346
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =17348
                    Top =53
                    Width =1364
                    Height =293
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld43"
                    Caption ="bearbeitet am"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =17348
                    LayoutCachedTop =53
                    LayoutCachedWidth =18712
                    LayoutCachedHeight =346
                    ForeTint =100.0
                End
            End
        End
        Begin Section
            Height =453
            Name ="Detailbereich"
            OnDblClick ="[Event Procedure]"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5720
                    Top =53
                    Width =9250
                    Height =302
                    ColumnWidth =3000
                    ColumnOrder =7
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Bemerkung"
                    ControlSource ="Bemerkung"
                    OnDblClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =5720
                    LayoutCachedTop =53
                    LayoutCachedWidth =14970
                    LayoutCachedHeight =355
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =15079
                    Top =53
                    Width =2207
                    Height =302
                    ColumnWidth =3000
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =3484194
                    Name ="ID_Bearbeiter"
                    ControlSource ="ID_Bearbeiter"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_10_10_User.ID_User, [Anrede] & \" \" & [Username] AS Sachb FROM tbl_1"
                        "0_10_User ORDER BY tbl_10_10_User.Username; "
                    ColumnWidths ="0"
                    OnDblClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =15079
                    LayoutCachedTop =53
                    LayoutCachedWidth =17286
                    LayoutCachedHeight =355
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =150
                    Top =60
                    Width =5445
                    Height =300
                    ColumnWidth =2453
                    ColumnOrder =8
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Dateiname"
                    ControlSource ="Dateiname"
                    OnDblClick ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =150
                    LayoutCachedTop =60
                    LayoutCachedWidth =5595
                    LayoutCachedHeight =360
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    BackStyle =0
                    IMESentenceMode =3
                    Left =17340
                    Top =60
                    Width =1365
                    Height =300
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Bearbeitet_am"
                    ControlSource ="Bearbeitet_am"
                    Format ="Short Date"
                    OnDblClick ="[Event Procedure]"
                    GroupTable =3
                    GridlineColor =10921638

                    LayoutCachedLeft =17340
                    LayoutCachedTop =60
                    LayoutCachedWidth =18705
                    LayoutCachedHeight =360
                    LayoutGroup =2
                    GroupTable =3
                End
            End
        End
        Begin FormFooter
            Height =0
            Name ="Formularfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End
CodeBehindForm
' See "frm_50_10_AuftrDok_Unterformular.cls"
