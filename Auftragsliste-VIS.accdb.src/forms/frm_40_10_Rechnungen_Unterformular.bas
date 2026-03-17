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
    ItemSuffix =50
    Left =1050
    Top =4140
    Right =20220
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
                    TextAlign =3
                    Left =173
                    Top =53
                    Width =626
                    Height =293
                    BorderColor =8355711
                    Name ="LfdNr_Bezeichnungsfeld"
                    Caption ="Lfd. Nr."
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =173
                    LayoutCachedTop =53
                    LayoutCachedWidth =799
                    LayoutCachedHeight =346
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =908
                    Top =53
                    Width =2432
                    Height =293
                    BorderColor =8355711
                    Name ="RENr_Bezeichnungsfeld"
                    Caption ="Rechnungs-Nr."
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =908
                    LayoutCachedTop =53
                    LayoutCachedWidth =3340
                    LayoutCachedHeight =346
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =3406
                    Top =53
                    Width =1135
                    Height =293
                    BorderColor =8355711
                    Name ="Datum_Bezeichnungsfeld"
                    Caption ="Rg.-Datum"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =3406
                    LayoutCachedTop =53
                    LayoutCachedWidth =4541
                    LayoutCachedHeight =346
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4651
                    Top =53
                    Width =1758
                    Height =293
                    BorderColor =8355711
                    Name ="Brutto_Bezeichnungsfeld"
                    Caption ="Brutto"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =4651
                    LayoutCachedTop =53
                    LayoutCachedWidth =6409
                    LayoutCachedHeight =346
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =3
                    Left =6458
                    Top =53
                    Width =745
                    Height =293
                    BorderColor =8355711
                    Name ="MwSt_Bezeichnungsfeld"
                    Caption ="MwSt"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =6458
                    LayoutCachedTop =53
                    LayoutCachedWidth =7203
                    LayoutCachedHeight =346
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =87
                    TextAlign =3
                    Left =7200
                    Top =53
                    Width =1758
                    Height =293
                    BorderColor =8355711
                    Name ="Netto_Bezeichnungsfeld"
                    Caption ="Netto"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =7200
                    LayoutCachedTop =53
                    LayoutCachedWidth =8958
                    LayoutCachedHeight =346
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =9076
                    Top =53
                    Width =270
                    Height =293
                    BorderColor =8355711
                    Name ="SR_Bezeichnungsfeld"
                    Caption ="SR"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =9076
                    LayoutCachedTop =53
                    LayoutCachedWidth =9346
                    LayoutCachedHeight =346
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =9398
                    Top =53
                    Width =3010
                    Height =293
                    BorderColor =8355711
                    Name ="Bemerkung_Bezeichnungsfeld"
                    Caption ="Bemerkung"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =9398
                    LayoutCachedTop =53
                    LayoutCachedWidth =12408
                    LayoutCachedHeight =346
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =12471
                    Top =53
                    Width =2213
                    Height =293
                    BorderColor =8355711
                    Name ="ID_Bearbeiter_Bezeichnungsfeld"
                    Caption ="Bearbeiter"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =12471
                    LayoutCachedTop =53
                    LayoutCachedWidth =14684
                    LayoutCachedHeight =346
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =16222
                    Top =53
                    Width =2542
                    Height =293
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld42"
                    Caption ="Dateiname"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =16222
                    LayoutCachedTop =53
                    LayoutCachedWidth =18764
                    LayoutCachedHeight =346
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =14744
                    Top =53
                    Width =1364
                    Height =293
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld43"
                    Caption ="bearbeitet am"
                    Tag ="DetachedLabel"
                    GridlineStyleBottom =1
                    GridlineColor =10921638
                    LayoutCachedLeft =14744
                    LayoutCachedTop =53
                    LayoutCachedWidth =16108
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
                    Left =173
                    Top =53
                    Width =626
                    Height =302
                    ColumnWidth =1428
                    ColumnOrder =0
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="LfdNr"
                    ControlSource ="LfdNr"
                    OnDblClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =173
                    LayoutCachedTop =53
                    LayoutCachedWidth =799
                    LayoutCachedHeight =355
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =912
                    Top =53
                    Width =2432
                    Height =302
                    ColumnWidth =3000
                    ColumnOrder =1
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="RENr"
                    ControlSource ="RENr"
                    OnDblClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =912
                    LayoutCachedTop =53
                    LayoutCachedWidth =3344
                    LayoutCachedHeight =355
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3410
                    Top =53
                    Width =1135
                    Height =302
                    ColumnWidth =1495
                    ColumnOrder =2
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Datum"
                    ControlSource ="Datum"
                    Format ="Short Date"
                    OnDblClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =3410
                    LayoutCachedTop =53
                    LayoutCachedWidth =4545
                    LayoutCachedHeight =355
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =4655
                    Top =53
                    Width =1758
                    Height =302
                    ColumnWidth =3000
                    ColumnOrder =3
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Brutto"
                    ControlSource ="Brutto"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    OnDblClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =4655
                    LayoutCachedTop =53
                    LayoutCachedWidth =6413
                    LayoutCachedHeight =355
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6462
                    Top =53
                    Width =513
                    Height =302
                    ColumnWidth =1428
                    ColumnOrder =4
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="MwSt"
                    ControlSource ="MwSt"
                    Format ="General Number"
                    OnDblClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =6462
                    LayoutCachedTop =53
                    LayoutCachedWidth =6975
                    LayoutCachedHeight =355
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7249
                    Top =53
                    Width =1713
                    Height =302
                    ColumnWidth =3000
                    ColumnOrder =5
                    TabIndex =5
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Netto"
                    ControlSource ="Netto"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    OnDblClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =7249
                    LayoutCachedTop =53
                    LayoutCachedWidth =8962
                    LayoutCachedHeight =355
                    CurrencySymbol ="€"
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =9068
                    Top =113
                    ColumnOrder =6
                    TabIndex =10
                    BorderColor =10921638
                    Name ="SR"
                    ControlSource ="SR"
                    GridlineColor =10921638

                    LayoutCachedLeft =9068
                    LayoutCachedTop =113
                    LayoutCachedWidth =9328
                    LayoutCachedHeight =353
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =9402
                    Top =53
                    Width =3010
                    Height =302
                    ColumnWidth =3000
                    ColumnOrder =7
                    TabIndex =6
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Bemerkung"
                    ControlSource ="Bemerkung"
                    OnDblClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =9402
                    LayoutCachedTop =53
                    LayoutCachedWidth =12412
                    LayoutCachedHeight =355
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =12475
                    Top =53
                    Width =2207
                    Height =302
                    ColumnWidth =3000
                    TabIndex =7
                    BorderColor =10921638
                    ForeColor =3484194
                    Name ="ID_Bearbeiter"
                    ControlSource ="ID_Bearbeiter"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_10_10_User.ID_User, [Anrede] & \" \" & [Username] AS Sachb FROM tbl_1"
                        "0_10_User ORDER BY tbl_10_10_User.Username; "
                    ColumnWidths ="0"
                    GridlineColor =10921638

                    LayoutCachedLeft =12475
                    LayoutCachedTop =53
                    LayoutCachedWidth =14682
                    LayoutCachedHeight =355
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =16230
                    Top =60
                    Width =2550
                    Height =300
                    ColumnWidth =2453
                    ColumnOrder =8
                    TabIndex =9
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Dateiname"
                    ControlSource ="Dateiname"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =16230
                    LayoutCachedTop =60
                    LayoutCachedWidth =18780
                    LayoutCachedHeight =360
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    Left =7028
                    Top =53
                    Width =171
                    Height =302
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bezeichnungsfeld44"
                    Caption ="%"
                    GridlineColor =10921638
                    LayoutCachedLeft =7028
                    LayoutCachedTop =53
                    LayoutCachedWidth =7199
                    LayoutCachedHeight =355
                End
                Begin TextBox
                    OverlapFlags =85
                    BackStyle =0
                    IMESentenceMode =3
                    Left =14745
                    Top =60
                    Width =1365
                    Height =300
                    TabIndex =8
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Bearbeitet_am"
                    ControlSource ="Bearbeitet_am"
                    Format ="Short Date"
                    GroupTable =3
                    GridlineColor =10921638

                    LayoutCachedLeft =14745
                    LayoutCachedTop =60
                    LayoutCachedWidth =16110
                    LayoutCachedHeight =360
                    LayoutGroup =2
                    GroupTable =3
                End
            End
        End
        Begin FormFooter
            Height =680
            Name ="Formularfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =4655
                    Top =173
                    Width =1814
                    Height =302
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text22"
                    ControlSource ="=Sum([Brutto])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    GridlineColor =10921638

                    LayoutCachedLeft =4655
                    LayoutCachedTop =173
                    LayoutCachedWidth =6469
                    LayoutCachedHeight =475
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =3120
                            Top =182
                            Width =1530
                            Height =293
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld23"
                            Caption ="Summe Brutto"
                            GridlineColor =10921638
                            LayoutCachedLeft =3120
                            LayoutCachedTop =182
                            LayoutCachedWidth =4650
                            LayoutCachedHeight =475
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7369
                    Top =173
                    Width =1814
                    Height =302
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text24"
                    ControlSource ="=Sum([Netto])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    GridlineColor =10921638

                    LayoutCachedLeft =7369
                    LayoutCachedTop =173
                    LayoutCachedWidth =9183
                    LayoutCachedHeight =475
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =6630
                            Top =182
                            Width =682
                            Height =293
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld25"
                            Caption ="Netto"
                            GridlineColor =10921638
                            LayoutCachedLeft =6630
                            LayoutCachedTop =182
                            LayoutCachedWidth =7312
                            LayoutCachedHeight =475
                            ForeTint =100.0
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_40_10_Rechnungen_Unterformular.cls"
