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
    Width =15363
    DatasheetFontHeight =11
    ItemSuffix =28
    Left =3593
    Top =653
    RecSrcDt = Begin
        0x4bcb83ee6d39e540
    End
    RecordSource ="qry_rpt_030_50_10_Aktiv_bare_Eigenleistungen"
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
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Massn"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1587
            Name ="Berichtskopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    BackStyle =1
                    Left =56
                    Top =60
                    Width =15077
                    Height =360
                    FontSize =14
                    FontWeight =700
                    BackColor =15921906
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld1"
                    Caption ="Aktivierbare Eigenleistungen - Stunden zu Maßnahmen "
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =56
                    LayoutCachedTop =60
                    LayoutCachedWidth =15133
                    LayoutCachedHeight =420
                    ThemeFontIndex =-1
                    BackShade =95.0
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =1
                    Left =56
                    Top =514
                    Width =1885
                    Height =317
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld16"
                    Caption ="Maßnahme(n):"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =56
                    LayoutCachedTop =514
                    LayoutCachedWidth =1941
                    LayoutCachedHeight =831
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =1
                    Left =56
                    Top =831
                    Width =1885
                    Height =317
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld17"
                    Caption ="Sachbearbeiter:"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =56
                    LayoutCachedTop =831
                    LayoutCachedWidth =1941
                    LayoutCachedHeight =1148
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =1
                    Left =56
                    Top =1148
                    Width =1885
                    Height =317
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld18"
                    Caption ="Zeitraum:"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =56
                    LayoutCachedTop =1148
                    LayoutCachedWidth =1941
                    LayoutCachedHeight =1465
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =1
                    Left =2214
                    Top =514
                    Width =12931
                    Height =283
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="BF_Massnahme"
                    Caption =" "
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =2214
                    LayoutCachedTop =514
                    LayoutCachedWidth =15145
                    LayoutCachedHeight =797
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =1
                    Left =2214
                    Top =831
                    Width =12931
                    Height =283
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="BF_SB"
                    Caption =" "
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =2214
                    LayoutCachedTop =831
                    LayoutCachedWidth =15145
                    LayoutCachedHeight =1114
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =1
                    Left =2214
                    Top =1148
                    Width =12931
                    Height =283
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="BF_Zeitraum"
                    Caption =" "
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =2214
                    LayoutCachedTop =1148
                    LayoutCachedWidth =15145
                    LayoutCachedHeight =1431
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
            End
        End
        Begin PageHeader
            Height =907
            Name ="Seitenkopfbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    Left =56
                    Top =60
                    Width =2906
                    Height =317
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld3"
                    Caption ="Maßnahmebeschreibung"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =56
                    LayoutCachedTop =60
                    LayoutCachedWidth =2962
                    LayoutCachedHeight =377
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =1
                    Left =11468
                    Top =60
                    Width =934
                    Height =609
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld4"
                    Caption ="Entgelt-\015\012gruppe"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =11468
                    LayoutCachedTop =60
                    LayoutCachedWidth =12402
                    LayoutCachedHeight =669
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =3
                    Left =12471
                    Top =60
                    Width =1021
                    Height =609
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld5"
                    Caption ="Anz. \015\012Stunden"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =12471
                    LayoutCachedTop =60
                    LayoutCachedWidth =13492
                    LayoutCachedHeight =669
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =3
                    Left =13569
                    Top =60
                    Width =1620
                    Height =609
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld7"
                    Caption ="Aktivierbare\015\012Eigenleistung"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =13569
                    LayoutCachedTop =60
                    LayoutCachedWidth =15189
                    LayoutCachedHeight =669
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Line
                    BorderWidth =1
                    Left =56
                    Top =789
                    Width =15075
                    Name ="Linie10"
                    GridlineColor =10921638
                    LayoutCachedLeft =56
                    LayoutCachedTop =789
                    LayoutCachedWidth =15131
                    LayoutCachedHeight =789
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =113
            Name ="Gruppenkopf0"
            BackThemeColorIndex =1
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =309
            Name ="Detailbereich"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    HideDuplicates = NotDefault
                    CanGrow = NotDefault
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =56
                    Width =11345
                    Height =266
                    ColumnWidth =9506
                    FontSize =10
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="TF_Massn"
                    ControlSource ="Massn"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =56
                    LayoutCachedWidth =11401
                    LayoutCachedHeight =266
                    ThemeFontIndex =-1
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =1
                    IMESentenceMode =3
                    Left =11451
                    Width =934
                    Height =291
                    ColumnWidth =1646
                    FontSize =10
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Entgeldgruppe"
                    ControlSource ="Entgeltgruppe"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =11451
                    LayoutCachedWidth =12385
                    LayoutCachedHeight =291
                    ThemeFontIndex =-1
                End
                Begin TextBox
                    DecimalPlaces =1
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =12471
                    Width =1021
                    Height =291
                    ColumnWidth =1560
                    FontSize =10
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Anz_Stunden"
                    ControlSource ="Anz_Stunden"
                    Format ="Standard"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =12471
                    LayoutCachedWidth =13492
                    LayoutCachedHeight =291
                    ThemeFontIndex =-1
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =13569
                    Width =1620
                    Height =291
                    FontSize =10
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="AE"
                    ControlSource ="AE"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =13569
                    LayoutCachedWidth =15189
                    LayoutCachedHeight =291
                    ThemeFontIndex =-1
                    CurrencySymbol ="€"
                End
                Begin Line
                    Left =60
                    Top =300
                    Width =15093
                    Name ="Linie11"
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =300
                    LayoutCachedWidth =15153
                    LayoutCachedHeight =300
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =510
            Name ="Gruppenfuß1"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =13603
                    Top =26
                    Width =1582
                    Height =291
                    FontSize =10
                    FontWeight =700
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text9"
                    ControlSource ="=Sum([AE])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =13603
                    LayoutCachedTop =26
                    LayoutCachedWidth =15185
                    LayoutCachedHeight =317
                    ThemeFontIndex =-1
                    CurrencySymbol ="€"
                End
                Begin Line
                    BorderWidth =1
                    Left =60
                    Top =334
                    Width =15093
                    Name ="Linie12"
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =334
                    LayoutCachedWidth =15153
                    LayoutCachedHeight =334
                End
                Begin Line
                    BorderWidth =1
                    Left =60
                    Top =377
                    Width =15093
                    Name ="Linie13"
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =377
                    LayoutCachedWidth =15153
                    LayoutCachedHeight =377
                End
                Begin TextBox
                    DecimalPlaces =1
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =12471
                    Width =1021
                    Height =291
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text26"
                    ControlSource ="=Sum([Anz_Stunden])"
                    Format ="Standard"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =12471
                    LayoutCachedWidth =13492
                    LayoutCachedHeight =291
                    ThemeFontIndex =-1
                End
            End
        End
        Begin PageFooter
            Height =396
            Name ="Seitenfußbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =1
                    IMESentenceMode =3
                    Height =270
                    FontSize =8
                    BorderColor =10921638
                    Name ="Text355"
                    ControlSource ="=Now()"
                    Format ="dd/mm/yyyy hh:nn"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedWidth =1701
                    LayoutCachedHeight =270
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =13487
                    Height =270
                    FontSize =8
                    TabIndex =1
                    BorderColor =10921638
                    Name ="Text327"
                    ControlSource ="=\"S. \" & [Page] & \" / \" & [Pages]"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =13487
                    LayoutCachedWidth =15188
                    LayoutCachedHeight =270
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =850
            Name ="Berichtsfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =13603
                    Top =283
                    Width =1582
                    Height =343
                    FontSize =14
                    FontWeight =700
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text14"
                    ControlSource ="=Sum([AE])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =13603
                    LayoutCachedTop =283
                    LayoutCachedWidth =15185
                    LayoutCachedHeight =626
                    ThemeFontIndex =-1
                    CurrencySymbol ="€"
                End
                Begin Label
                    TextAlign =3
                    Left =9977
                    Top =283
                    Width =2314
                    Height =360
                    FontSize =14
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld19"
                    Caption ="Gesamtsummen:"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =9977
                    LayoutCachedTop =283
                    LayoutCachedWidth =12291
                    LayoutCachedHeight =643
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    DecimalPlaces =1
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =12471
                    Top =283
                    Width =1021
                    Height =343
                    FontSize =14
                    FontWeight =700
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text27"
                    ControlSource ="=Sum([Anz_Stunden])"
                    Format ="Standard"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =12471
                    LayoutCachedTop =283
                    LayoutCachedWidth =13492
                    LayoutCachedHeight =626
                    ThemeFontIndex =-1
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_030_50_10_Aktiv_bare_Eigenleistungen.cls"
