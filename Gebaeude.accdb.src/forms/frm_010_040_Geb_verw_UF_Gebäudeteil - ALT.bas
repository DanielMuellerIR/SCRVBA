Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    RecordLocks =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9742
    DatasheetFontHeight =11
    ItemSuffix =104
    Left =9496
    Top =4035
    Right =18802
    Bottom =12987
    RecSrcDt = Begin
        0x4ef1f3e16cece440
    End
    RecordSource ="SELECT tbl_100_20_Gebäudeteile.* FROM tbl_100_20_Gebäudeteile WHERE (((tbl_100_2"
        "0_Gebäudeteile.ID_Gebäudeteil)=[Formulare]![frm_010_010_Gebäudeverwaltung]![LF_Z"
        "ug_Gebaeudeteile]));"
    DatasheetFontName ="Calibri"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    AllowLayoutView =0
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            FontSize =9
            FontWeight =700
            ForeColor =4072463
            FontName ="Arial"
            BorderTint =50.0
            ForeShade =50.0
            GridlineShade =65.0
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
            BorderShade =65.0
            GridlineShade =65.0
        End
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =11
            FontWeight =400
            FontName ="Calibri"
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =1
            Gradient =12
            BackThemeColorIndex =4
            BackTint =60.0
            BorderLineStyle =0
            BorderThemeColorIndex =4
            BorderTint =60.0
            ThemeFontIndex =1
            HoverThemeColorIndex =4
            HoverTint =40.0
            PressedThemeColorIndex =4
            PressedShade =75.0
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =0
            PressedForeTint =75.0
        End
        Begin CheckBox
            BorderLineStyle =0
            LabelX =-1304
            LabelY =27
            BorderShade =65.0
            GridlineShade =65.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            BorderLineStyle =0
            Width =1701
            Height =315
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
            AsianLineBreak =1
            BorderShade =65.0
            ForeTint =75.0
            GridlineShade =65.0
        End
        Begin ListBox
            BorderLineStyle =0
            Width =6627
            Height =516
            LabelX =-1588
            LabelY =57
            FontSize =9
            ForeColor =4072463
            FontName ="Arial"
            AllowValueListEdits =1
            InheritValueList =1
            BorderShade =65.0
            ForeShade =50.0
            GridlineShade =65.0
        End
        Begin ComboBox
            BorderLineStyle =0
            Width =3462
            Height =315
            LabelX =-1701
            LabelY =39
            FontSize =9
            FontName ="Arial"
            AllowValueListEdits =1
            InheritValueList =1
            BorderShade =65.0
            ForeTint =75.0
            GridlineShade =65.0
        End
        Begin Section
            Height =9637
            BackColor =16776187
            Name ="Detailbereich"
            AlternateBackColor =15921906
            AlternateBackShade =95.0
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =180
                    Top =60
                    Width =5970
                    Height =315
                    FontSize =11
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld2"
                    Caption ="Daten zum Gebäudeteil:"
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =60
                    LayoutCachedWidth =6150
                    LayoutCachedHeight =375
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1986
                    Top =450
                    Width =7452
                    Height =345
                    ColumnWidth =5160
                    FontSize =12
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Gebäudeteil"
                    ControlSource ="Gebäudeteil"
                    GridlineColor =10921638

                    LayoutCachedLeft =1986
                    LayoutCachedTop =450
                    LayoutCachedWidth =9438
                    LayoutCachedHeight =795
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =165
                            Top =450
                            Width =1530
                            Height =345
                            FontSize =12
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld11"
                            Caption ="Gebäudeteil:"
                            GridlineColor =10921638
                            LayoutCachedLeft =165
                            LayoutCachedTop =450
                            LayoutCachedWidth =1695
                            LayoutCachedHeight =795
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1246
                    Top =2775
                    Width =1021
                    Height =255
                    FontSize =8
                    TabIndex =8
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="BGF"
                    ControlSource ="BGF"
                    Format ="Standard"
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    GridlineColor =10921638

                    LayoutCachedLeft =1246
                    LayoutCachedTop =2775
                    LayoutCachedWidth =2267
                    LayoutCachedHeight =3030
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =225
                            Top =2775
                            Width =900
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld13"
                            Caption ="BGF in m²:"
                            GridlineColor =10921638
                            LayoutCachedLeft =225
                            LayoutCachedTop =2775
                            LayoutCachedWidth =1125
                            LayoutCachedHeight =3030
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3431
                    Top =2787
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =10
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="BRI"
                    ControlSource ="BRI"
                    Format ="Standard"
                    GridlineColor =10921638

                    LayoutCachedLeft =3431
                    LayoutCachedTop =2787
                    LayoutCachedWidth =4849
                    LayoutCachedHeight =3042
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =2445
                            Top =2785
                            Width =840
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld14"
                            Caption ="BRI in m³:"
                            GridlineColor =10921638
                            LayoutCachedLeft =2445
                            LayoutCachedTop =2785
                            LayoutCachedWidth =3285
                            LayoutCachedHeight =3040
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3431
                    Top =3390
                    Width =1418
                    Height =255
                    ColumnWidth =1815
                    FontSize =8
                    TabIndex =11
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Baujahr_real"
                    ControlSource ="Baujahr_real"
                    Format ="Short Date"
                    ValidationRule ="Dat_Eing_01_letzter([Baujahr_real])=True"
                    ValidationText ="Bitte geben Sie nur den 01. oder den letzten des Monats ein"
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    GridlineColor =10921638

                    LayoutCachedLeft =3431
                    LayoutCachedTop =3390
                    LayoutCachedWidth =4849
                    LayoutCachedHeight =3645
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =1011
                            Top =3396
                            Width =2246
                            Height =249
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld15"
                            Caption ="Baujahr real (TT.MM.JJJJ):"
                            GridlineColor =10921638
                            LayoutCachedLeft =1011
                            LayoutCachedTop =3396
                            LayoutCachedWidth =3257
                            LayoutCachedHeight =3645
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3431
                    Top =3685
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =12
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="gewöhnliche Nutzungsdauer"
                    ControlSource ="gewöhnliche Nutzungsdauer"
                    Format ="Fixed"
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    EventProcPrefix ="gewöhnliche_Nutzungsdauer"
                    GridlineColor =10921638

                    LayoutCachedLeft =3431
                    LayoutCachedTop =3685
                    LayoutCachedWidth =4849
                    LayoutCachedHeight =3940
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =763
                            Top =3690
                            Width =2490
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld16"
                            Caption ="gewöhnliche Nutzungsdauer:"
                            GridlineColor =10921638
                            LayoutCachedLeft =763
                            LayoutCachedTop =3690
                            LayoutCachedWidth =3253
                            LayoutCachedHeight =3945
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3431
                    Top =3981
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =13
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="geschätze Nutzungsdauer"
                    ControlSource ="geschätze Nutzungsdauer"
                    Format ="Fixed"
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    EventProcPrefix ="geschätze_Nutzungsdauer"
                    GridlineColor =10921638

                    LayoutCachedLeft =3431
                    LayoutCachedTop =3981
                    LayoutCachedWidth =4849
                    LayoutCachedHeight =4236
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =973
                            Top =3976
                            Width =2280
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld17"
                            Caption ="geschätze Nutzungsdauer:"
                            GridlineColor =10921638
                            LayoutCachedLeft =973
                            LayoutCachedTop =3976
                            LayoutCachedWidth =3253
                            LayoutCachedHeight =4231
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3431
                    Top =4275
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =14
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Fassade (11%)"
                    ControlSource ="Fassade (11%)"
                    RowSourceType ="Value List"
                    RowSource ="\"einfach\";\"mittel\";\"gehoben\""
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    EventProcPrefix ="Fassade__11__"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =3431
                    LayoutCachedTop =4275
                    LayoutCachedWidth =4849
                    LayoutCachedHeight =4530
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =1963
                            Top =4314
                            Width =1290
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld18"
                            Caption ="Fassade (11%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =1963
                            LayoutCachedTop =4314
                            LayoutCachedWidth =3253
                            LayoutCachedHeight =4569
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3431
                    Top =4570
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =15
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Fenster (14%)"
                    ControlSource ="Fenster (14%)"
                    RowSourceType ="Value List"
                    RowSource ="\"einfach\";\"mittel\";\"gehoben\""
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    EventProcPrefix ="Fenster__14__"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =3431
                    LayoutCachedTop =4570
                    LayoutCachedWidth =4849
                    LayoutCachedHeight =4825
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =95
                            TextAlign =3
                            Left =2008
                            Top =4570
                            Width =1245
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld39"
                            Caption ="Fenster (14%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =2008
                            LayoutCachedTop =4570
                            LayoutCachedWidth =3253
                            LayoutCachedHeight =4825
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3431
                    Top =3102
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =23
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Neubauwert_ab_2000"
                    ControlSource ="Neubauwert_ab_2000"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    GridlineColor =10921638

                    LayoutCachedLeft =3431
                    LayoutCachedTop =3102
                    LayoutCachedWidth =4849
                    LayoutCachedHeight =3357
                    ForeTint =100.0
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =1413
                            Top =3102
                            Width =1860
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld47"
                            Caption ="Neubauwert ab 2000:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1413
                            LayoutCachedTop =3102
                            LayoutCachedWidth =3273
                            LayoutCachedHeight =3357
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7795
                    Top =3105
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =24
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Baujahr_mod"
                    ControlSource ="Baujahr_mod"
                    Format ="Short Date"
                    ValidationRule ="Dat_Eing_01_letzter([Baujahr_mod])=True"
                    ValidationText ="Bitte geben Sie nur den 01. oder den letzten des Monats ein"
                    GridlineColor =10921638

                    LayoutCachedLeft =7795
                    LayoutCachedTop =3105
                    LayoutCachedWidth =9213
                    LayoutCachedHeight =3360
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =5340
                            Top =3103
                            Width =2315
                            Height =257
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld49"
                            Caption ="Baujahr mod. (TT.MM.JJJJ):"
                            GridlineColor =10921638
                            LayoutCachedLeft =5340
                            LayoutCachedTop =3103
                            LayoutCachedWidth =7655
                            LayoutCachedHeight =3360
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7794
                    Top =3425
                    Width =1418
                    Height =255
                    ColumnWidth =3060
                    FontSize =8
                    TabIndex =25
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Bewertung abgeschlossen"
                    ControlSource ="Bewertung abgeschlossen"
                    Format ="Short Date"
                    EventProcPrefix ="Bewertung_abgeschlossen"
                    GridlineColor =10921638

                    LayoutCachedLeft =7794
                    LayoutCachedTop =3425
                    LayoutCachedWidth =9212
                    LayoutCachedHeight =3680
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =5050
                            Top =3425
                            Width =2606
                            Height =223
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld51"
                            Caption ="Erst-Bewertung abgeschlossen:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5050
                            LayoutCachedTop =3425
                            LayoutCachedWidth =7656
                            LayoutCachedHeight =3648
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7794
                    Top =3718
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =26
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="von"
                    ControlSource ="von"
                    GridlineColor =10921638

                    LayoutCachedLeft =7794
                    LayoutCachedTop =3718
                    LayoutCachedWidth =9212
                    LayoutCachedHeight =3973
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =7236
                            Top =3718
                            Width =420
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld52"
                            Caption ="von:"
                            GridlineColor =10921638
                            LayoutCachedLeft =7236
                            LayoutCachedTop =3718
                            LayoutCachedWidth =7656
                            LayoutCachedHeight =3973
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7794
                    Top =4304
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =28
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Zuschuss_Prozent"
                    ControlSource ="Zuschuss_Prozent"
                    GridlineColor =10921638

                    LayoutCachedLeft =7794
                    LayoutCachedTop =4304
                    LayoutCachedWidth =9212
                    LayoutCachedHeight =4559
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =6126
                            Top =4304
                            Width =1530
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld54"
                            Caption ="Zusch.Prozent:"
                            GridlineColor =10921638
                            LayoutCachedLeft =6126
                            LayoutCachedTop =4304
                            LayoutCachedWidth =7656
                            LayoutCachedHeight =4559
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7786
                    Top =5782
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =31
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Index_manuell"
                    ControlSource ="Index_manuell"
                    GridlineColor =10921638

                    LayoutCachedLeft =7786
                    LayoutCachedTop =5782
                    LayoutCachedWidth =9204
                    LayoutCachedHeight =6037
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =6373
                            Top =5782
                            Width =1275
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld55"
                            Caption ="Index manuell:"
                            GridlineColor =10921638
                            LayoutCachedLeft =6373
                            LayoutCachedTop =5782
                            LayoutCachedWidth =7648
                            LayoutCachedHeight =6037
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7786
                    Top =6077
                    Width =1418
                    Height =255
                    ColumnWidth =2400
                    FontSize =8
                    TabIndex =32
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Versicherungswert"
                    ControlSource ="Versicherungswert"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    GridlineColor =10921638

                    LayoutCachedLeft =7786
                    LayoutCachedTop =6077
                    LayoutCachedWidth =9204
                    LayoutCachedHeight =6332
                    ForeTint =100.0
                    CurrencySymbol ="€"
                    ColLCID =1031
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =5893
                            Top =6077
                            Width =1755
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld56"
                            Caption ="Versicherungswert:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5893
                            LayoutCachedTop =6077
                            LayoutCachedWidth =7648
                            LayoutCachedHeight =6332
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3431
                    Top =4890
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =16
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Dächer (15%)"
                    ControlSource ="Dächer (15%)"
                    RowSourceType ="Value List"
                    RowSource ="\"einfach\";\"mittel\";\"gehoben\""
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    EventProcPrefix ="Dächer__15__"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =3431
                    LayoutCachedTop =4890
                    LayoutCachedWidth =4849
                    LayoutCachedHeight =5145
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =2083
                            Top =4890
                            Width =1170
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld40"
                            Caption ="Dächer (15%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =2083
                            LayoutCachedTop =4890
                            LayoutCachedWidth =3253
                            LayoutCachedHeight =5145
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3431
                    Top =5190
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =17
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Sanitär (13%)"
                    ControlSource ="Sanitär (13%)"
                    RowSourceType ="Value List"
                    RowSource ="\"einfach\";\"mittel\";\"gehoben\""
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    EventProcPrefix ="Sanitär__13__"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =3431
                    LayoutCachedTop =5190
                    LayoutCachedWidth =4849
                    LayoutCachedHeight =5445
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =2080
                            Top =5190
                            Width =1170
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld41"
                            Caption ="Sanitär (13%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =2080
                            LayoutCachedTop =5190
                            LayoutCachedWidth =3250
                            LayoutCachedHeight =5445
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3431
                    Top =5512
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =18
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Innenwände Sanitärbereich (6%)"
                    ControlSource ="Innenwände Sanitärbereich (6%)"
                    RowSourceType ="Value List"
                    RowSource ="\"einfach\";\"mittel\";\"gehoben\""
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    EventProcPrefix ="Innenwände_Sanitärbereich__6__"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =3431
                    LayoutCachedTop =5512
                    LayoutCachedWidth =4849
                    LayoutCachedHeight =5767
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =478
                            Top =5512
                            Width =2775
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld42"
                            Caption ="Innenwände Sanitärbereich (6%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =478
                            LayoutCachedTop =5512
                            LayoutCachedWidth =3253
                            LayoutCachedHeight =5767
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3431
                    Top =5807
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =19
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Bodenbeläge (8 %)"
                    ControlSource ="Bodenbeläge (8 %)"
                    RowSourceType ="Value List"
                    RowSource ="\"einfach\";\"mittel\";\"gehoben\""
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    EventProcPrefix ="Bodenbeläge__8___"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =3431
                    LayoutCachedTop =5807
                    LayoutCachedWidth =4849
                    LayoutCachedHeight =6062
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =1618
                            Top =5807
                            Width =1635
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld43"
                            Caption ="Bodenbeläge (8 %):"
                            GridlineColor =10921638
                            LayoutCachedLeft =1618
                            LayoutCachedTop =5807
                            LayoutCachedWidth =3253
                            LayoutCachedHeight =6062
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3431
                    Top =6114
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =20
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Innentüren (11%)"
                    ControlSource ="Innentüren (11%)"
                    RowSourceType ="Value List"
                    RowSource ="\"einfach\";\"mittel\";\"gehoben\""
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    EventProcPrefix ="Innentüren__11__"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =3431
                    LayoutCachedTop =6114
                    LayoutCachedWidth =4849
                    LayoutCachedHeight =6369
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =1735
                            Top =6114
                            Width =1515
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld44"
                            Caption ="Innentüren (11%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =1735
                            LayoutCachedTop =6114
                            LayoutCachedWidth =3250
                            LayoutCachedHeight =6369
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3431
                    Top =6397
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =21
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Heizung (15%)"
                    ControlSource ="Heizung (15%)"
                    RowSourceType ="Value List"
                    RowSource ="\"einfach\";\"mittel\";\"gehoben\""
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    EventProcPrefix ="Heizung__15__"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =3431
                    LayoutCachedTop =6397
                    LayoutCachedWidth =4849
                    LayoutCachedHeight =6652
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =1993
                            Top =6397
                            Width =1260
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld45"
                            Caption ="Heizung (15%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =1993
                            LayoutCachedTop =6397
                            LayoutCachedWidth =3253
                            LayoutCachedHeight =6652
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3431
                    Top =6675
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =22
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Elektroinstallation (7%)"
                    ControlSource ="Elektroinstallation (7%)"
                    RowSourceType ="Value List"
                    RowSource ="\"einfach\";\"mittel\";\"gehoben\""
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    EventProcPrefix ="Elektroinstallation__7__"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =3431
                    LayoutCachedTop =6675
                    LayoutCachedWidth =4849
                    LayoutCachedHeight =6930
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =1330
                            Top =6675
                            Width =1920
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld46"
                            Caption ="Elektroinstallation (7%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =1330
                            LayoutCachedTop =6675
                            LayoutCachedWidth =3250
                            LayoutCachedHeight =6930
                        End
                    End
                End
                Begin Rectangle
                    OverlapFlags =255
                    Left =175
                    Top =2270
                    Width =9267
                    Height =4736
                    BorderColor =10921638
                    Name ="Rechteck60"
                    GridlineColor =10921638
                    LayoutCachedLeft =175
                    LayoutCachedTop =2270
                    LayoutCachedWidth =9442
                    LayoutCachedHeight =7006
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =247
                    Left =345
                    Top =2160
                    Width =2910
                    Height =255
                    FontSize =8
                    BackColor =16776187
                    BorderColor =8355711
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld61"
                    Caption ="Daten zur Gebäudeteil-Bewertung:"
                    GridlineColor =10921638
                    LayoutCachedLeft =345
                    LayoutCachedTop =2160
                    LayoutCachedWidth =3255
                    LayoutCachedHeight =2415
                    ForeShade =100.0
                End
                Begin Rectangle
                    OverlapFlags =93
                    Left =165
                    Top =7153
                    Width =9267
                    Height =1210
                    BorderColor =10921638
                    Name ="Rechteck62"
                    GridlineColor =10921638
                    LayoutCachedLeft =165
                    LayoutCachedTop =7153
                    LayoutCachedWidth =9432
                    LayoutCachedHeight =8363
                End
                Begin TextBox
                    OverlapFlags =215
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1647
                    Top =7686
                    Width =1103
                    Height =255
                    ColumnWidth =1785
                    FontSize =8
                    TabIndex =36
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Mietbeginn"
                    ControlSource ="Mietbeginn"
                    Format ="Short Date"
                    GridlineColor =10921638

                    LayoutCachedLeft =1647
                    LayoutCachedTop =7686
                    LayoutCachedWidth =2750
                    LayoutCachedHeight =7941
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =282
                            Top =7686
                            Width =1185
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld68"
                            Caption ="Mietbeginn:"
                            GridlineColor =10921638
                            LayoutCachedLeft =282
                            LayoutCachedTop =7686
                            LayoutCachedWidth =1467
                            LayoutCachedHeight =7941
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =215
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1647
                    Top =7986
                    Width =1103
                    Height =255
                    ColumnWidth =1620
                    FontSize =8
                    TabIndex =37
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Mietende"
                    ControlSource ="Mietende"
                    Format ="Short Date"
                    GridlineColor =10921638

                    LayoutCachedLeft =1647
                    LayoutCachedTop =7986
                    LayoutCachedWidth =2750
                    LayoutCachedHeight =8241
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =432
                            Top =7986
                            Width =1035
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld69"
                            Caption ="Mietende:"
                            GridlineColor =10921638
                            LayoutCachedLeft =432
                            LayoutCachedTop =7986
                            LayoutCachedWidth =1467
                            LayoutCachedHeight =8241
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =215
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1636
                    Top =7388
                    Width =1314
                    Height =255
                    ColumnWidth =1980
                    FontSize =8
                    TabIndex =40
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Gebäudewert"
                    ControlSource ="Gebäudewert"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    GridlineColor =10921638

                    LayoutCachedLeft =1636
                    LayoutCachedTop =7388
                    LayoutCachedWidth =2950
                    LayoutCachedHeight =7643
                    ForeTint =100.0
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =218
                            Top =7388
                            Width =1245
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld70"
                            Caption ="Gebäudewert:"
                            GridlineColor =10921638
                            LayoutCachedLeft =218
                            LayoutCachedTop =7388
                            LayoutCachedWidth =1463
                            LayoutCachedHeight =7643
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =215
                    TextAlign =1
                    IMESentenceMode =3
                    Left =4249
                    Top =7986
                    Width =1013
                    Height =255
                    FontSize =8
                    TabIndex =39
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Reinigungsfläche"
                    ControlSource ="Reinigungsfläche"
                    GridlineColor =10921638

                    LayoutCachedLeft =4249
                    LayoutCachedTop =7986
                    LayoutCachedWidth =5262
                    LayoutCachedHeight =8241
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =2892
                            Top =7986
                            Width =1230
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld71"
                            Caption ="Reinig.-fläche:"
                            GridlineColor =10921638
                            LayoutCachedLeft =2892
                            LayoutCachedTop =7986
                            LayoutCachedWidth =4122
                            LayoutCachedHeight =8241
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =215
                    Left =5088
                    Top =7493
                    Width =155
                    Height =210
                    TabIndex =38
                    BorderColor =10921638
                    Name ="Sportfläche"
                    ControlSource ="Sportfläche"
                    GridlineColor =10921638

                    LayoutCachedLeft =5088
                    LayoutCachedTop =7493
                    LayoutCachedWidth =5243
                    LayoutCachedHeight =7703
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =3173
                            Top =7389
                            Width =1806
                            Height =446
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld72"
                            Caption ="Sportfläche oder sonstige Reduzierung:"
                            GridlineColor =10921638
                            LayoutCachedLeft =3173
                            LayoutCachedTop =7389
                            LayoutCachedWidth =4979
                            LayoutCachedHeight =7835
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =215
                    Left =8499
                    Top =7518
                    TabIndex =41
                    BorderColor =10921638
                    Name ="angemietetes_Gebäude"
                    ControlSource ="angemietetes_Gebäude"
                    GridlineColor =10921638

                    LayoutCachedLeft =8499
                    LayoutCachedTop =7518
                    LayoutCachedWidth =8759
                    LayoutCachedHeight =7758
                    Begin
                        Begin Label
                            OverlapFlags =223
                            TextAlign =3
                            Left =6300
                            Top =7518
                            Width =2055
                            Height =255
                            FontSize =8
                            BackColor =15728383
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld73"
                            Caption ="angemietetes Gebäude:"
                            GridlineColor =10921638
                            LayoutCachedLeft =6300
                            LayoutCachedTop =7518
                            LayoutCachedWidth =8355
                            LayoutCachedHeight =7773
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =215
                    Left =8499
                    Top =7770
                    TabIndex =42
                    BorderColor =10921638
                    Name ="extern weitervermietet"
                    ControlSource ="extern weitervermietet"
                    EventProcPrefix ="extern_weitervermietet"
                    GridlineColor =10921638

                    LayoutCachedLeft =8499
                    LayoutCachedTop =7770
                    LayoutCachedWidth =8759
                    LayoutCachedHeight =8010
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =6300
                            Top =7770
                            Width =2055
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld74"
                            Caption ="extern weitervermietet:"
                            GridlineColor =10921638
                            LayoutCachedLeft =6300
                            LayoutCachedTop =7770
                            LayoutCachedWidth =8355
                            LayoutCachedHeight =8025
                        End
                    End
                End
                Begin Rectangle
                    OverlapFlags =93
                    Left =165
                    Top =8572
                    Width =9267
                    Height =956
                    BorderColor =10921638
                    Name ="Rechteck77"
                    GridlineColor =10921638
                    LayoutCachedLeft =165
                    LayoutCachedTop =8572
                    LayoutCachedWidth =9432
                    LayoutCachedHeight =9528
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =215
                    TextAlign =1
                    IMESentenceMode =3
                    Left =340
                    Top =8679
                    Width =8963
                    Height =735
                    FontSize =8
                    TabIndex =45
                    BackColor =15728383
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Erläuterungen"
                    ControlSource ="Erläuterungen"
                    GridlineColor =10921638

                    LayoutCachedLeft =340
                    LayoutCachedTop =8679
                    LayoutCachedWidth =9303
                    LayoutCachedHeight =9414
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =215
                            Left =335
                            Top =8409
                            Width =1290
                            Height =255
                            FontSize =8
                            BackColor =16776187
                            BorderColor =8355711
                            ForeColor =1643706
                            Name ="Bezeichnungsfeld48"
                            Caption ="Besonderheiten:"
                            GridlineColor =10921638
                            LayoutCachedLeft =335
                            LayoutCachedTop =8409
                            LayoutCachedWidth =1625
                            LayoutCachedHeight =8664
                            ForeShade =100.0
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =93
                    AccessKey =83
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =1940
                    Top =1140
                    Width =2367
                    Height =255
                    FontSize =8
                    TabIndex =1
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Kennummer_Straße"
                    ControlSource ="Kennummer_Straße"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT M_Strassenverzeichnis.Kennummer, M_Strassenverzeichnis.Name FROM M_Strass"
                        "enverzeichnis ORDER BY M_Strassenverzeichnis.Name;"
                    ColumnWidths ="0"
                    UnicodeAccessKey =83
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =1940
                    LayoutCachedTop =1140
                    LayoutCachedWidth =4307
                    LayoutCachedHeight =1395
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =300
                            Top =1140
                            Width =1530
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld78"
                            Caption ="&Straße: | Haus-Nr.:"
                            GridlineColor =10921638
                            LayoutCachedLeft =300
                            LayoutCachedTop =1140
                            LayoutCachedWidth =1830
                            LayoutCachedHeight =1395
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =4415
                    Top =1140
                    Width =1049
                    Height =255
                    FontSize =8
                    TabIndex =2
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Haus_Nr"
                    ControlSource ="Haus_Nr"
                    GridlineColor =10921638

                    LayoutCachedLeft =4415
                    LayoutCachedTop =1140
                    LayoutCachedWidth =5464
                    LayoutCachedHeight =1395
                    ForeTint =100.0
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =7880
                    Top =1140
                    Width =1418
                    Height =255
                    ColumnWidth =2850
                    FontSize =8
                    TabIndex =3
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Gebaeudekennung"
                    ControlSource ="Gebaeudekennung"
                    GridlineColor =10921638

                    LayoutCachedLeft =7880
                    LayoutCachedTop =1140
                    LayoutCachedWidth =9298
                    LayoutCachedHeight =1395
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =6060
                            Top =1140
                            Width =1680
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld80"
                            Caption ="Gebäudekennung:"
                            GridlineColor =10921638
                            LayoutCachedLeft =6060
                            LayoutCachedTop =1140
                            LayoutCachedWidth =7740
                            LayoutCachedHeight =1395
                        End
                    End
                End
                Begin Rectangle
                    OverlapFlags =255
                    Left =180
                    Top =968
                    Width =9286
                    Height =1121
                    BorderColor =10921638
                    Name ="Rechteck81"
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =968
                    LayoutCachedWidth =9466
                    LayoutCachedHeight =2089
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =247
                    Left =350
                    Top =855
                    Width =885
                    Height =255
                    FontSize =8
                    BackColor =16776187
                    BorderColor =8355711
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld82"
                    Caption ="Anschrift:"
                    GridlineColor =10921638
                    LayoutCachedLeft =350
                    LayoutCachedTop =855
                    LayoutCachedWidth =1235
                    LayoutCachedHeight =1110
                    ForeShade =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =215
                    Left =345
                    Top =7048
                    Width =2985
                    Height =255
                    FontSize =8
                    BackColor =16776187
                    BorderColor =8355711
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld83"
                    Caption ="Daten zur Gebäudeteil-Vermietung:"
                    GridlineColor =10921638
                    LayoutCachedLeft =345
                    LayoutCachedTop =7048
                    LayoutCachedWidth =3330
                    LayoutCachedHeight =7303
                    ForeShade =100.0
                End
                Begin TextBox
                    OverlapFlags =255
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7798
                    Top =6382
                    Width =1418
                    Height =270
                    FontSize =8
                    TabIndex =33
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Nicht_mehr_in_Betr_seit"
                    ControlSource ="Nicht_mehr_in_Betr_seit"
                    Format ="mm/yyyy"
                    InputMask ="00,0000;0;_"
                    GridlineColor =10921638

                    LayoutCachedLeft =7798
                    LayoutCachedTop =6382
                    LayoutCachedWidth =9216
                    LayoutCachedHeight =6652
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =5440
                            Top =6397
                            Width =2220
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld84"
                            Caption ="Nicht mehr in Betrieb seit:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5440
                            LayoutCachedTop =6397
                            LayoutCachedWidth =7660
                            LayoutCachedHeight =6652
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =247
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7795
                    Top =6660
                    Width =1418
                    Height =270
                    FontSize =8
                    TabIndex =34
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Nicht_mehr_in_Betr_Begründung"
                    ControlSource ="Nicht_mehr_in_Betr_Begründung"
                    GridlineColor =10921638

                    LayoutCachedLeft =7795
                    LayoutCachedTop =6660
                    LayoutCachedWidth =9213
                    LayoutCachedHeight =6930
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =6523
                            Top =6675
                            Width =1140
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld85"
                            Caption ="Begründung:"
                            GridlineColor =10921638
                            LayoutCachedLeft =6523
                            LayoutCachedTop =6675
                            LayoutCachedWidth =7663
                            LayoutCachedHeight =6930
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =247
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =3431
                    Top =2445
                    Width =5753
                    Height =255
                    FontSize =8
                    TabIndex =7
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Typ aus NHK-Typen"
                    ControlSource ="Typ aus NHK-Typen"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT [NHK-Typen].Kennummer, [Typ-Nr] & \": \" & [Typ] AS Tp FROM [NHK-Typen] O"
                        "RDER BY [NHK-Typen].Kennummer;"
                    ColumnWidths ="0"
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    EventProcPrefix ="Typ_aus_NHK_Typen"
                    GridlineColor =10921638

                    LayoutCachedLeft =3431
                    LayoutCachedTop =2445
                    LayoutCachedWidth =9184
                    LayoutCachedHeight =2700
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =1590
                            Top =2445
                            Width =1695
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld12"
                            Caption ="Typ aus NHK-Typen:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1590
                            LayoutCachedTop =2445
                            LayoutCachedWidth =3285
                            LayoutCachedHeight =2700
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =247
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =1935
                    Top =1755
                    Width =7358
                    Height =270
                    FontSize =8
                    TabIndex =6
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Kombinationsfeld88"
                    ControlSource ="Kennummer aus Bereiche"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT M_Bereiche.Kennummer, [Betrieb] & \": \" & [BereichNr] & \" - \" & [Berei"
                        "chName] AS Ber FROM M_Betriebe INNER JOIN M_Bereiche ON M_Betriebe.ID_Betrieb = "
                        "M_Bereiche.ID_Betrieb ORDER BY M_Betriebe.Betrieb, M_Bereiche.BereichNr;"
                    ColumnWidths ="0"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =1935
                    LayoutCachedTop =1755
                    LayoutCachedWidth =9293
                    LayoutCachedHeight =2025
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =655
                            Top =1755
                            Width =1170
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld89"
                            Caption ="Bereich:"
                            GridlineColor =10921638
                            LayoutCachedLeft =655
                            LayoutCachedTop =1755
                            LayoutCachedWidth =1825
                            LayoutCachedHeight =2010
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =215
                    Left =8499
                    Top =7260
                    Width =305
                    Height =246
                    TabIndex =35
                    Name ="Mietrelevant"
                    ControlSource ="Mietrelevant"

                    LayoutCachedLeft =8499
                    LayoutCachedTop =7260
                    LayoutCachedWidth =8804
                    LayoutCachedHeight =7506
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =7200
                            Top =7260
                            Width =1155
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld90"
                            Caption ="Mietrelevant:"
                            GridlineColor =10921638
                            LayoutCachedLeft =7200
                            LayoutCachedTop =7260
                            LayoutCachedWidth =8355
                            LayoutCachedHeight =7515
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    BorderWidth =3
                    OverlapFlags =247
                    TextAlign =1
                    BackStyle =0
                    IMESentenceMode =3
                    Left =1935
                    Top =1440
                    Width =5543
                    Height =255
                    FontSize =8
                    TabIndex =4
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="TF_Kostenstelle"
                    ControlSource ="=fc_Akt_Kostenst([ID_Gebäudeteil])"
                    GridlineColor =10921638

                    LayoutCachedLeft =1935
                    LayoutCachedTop =1440
                    LayoutCachedWidth =7478
                    LayoutCachedHeight =1695
                    BorderTint =50.0
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =265
                            Top =1440
                            Width =1560
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld87"
                            Caption ="jetz. Kostenstelle:"
                            GridlineColor =10921638
                            LayoutCachedLeft =265
                            LayoutCachedTop =1440
                            LayoutCachedWidth =1825
                            LayoutCachedHeight =1695
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6179
                    Top =56
                    Height =270
                    ColumnWidth =1575
                    TabIndex =46
                    Name ="TF_ID_Gebäudeteil"
                    ControlSource ="ID_Gebäudeteil"
                    StatusBarText ="Primärschlüssel"

                    LayoutCachedLeft =6179
                    LayoutCachedTop =56
                    LayoutCachedWidth =7880
                    LayoutCachedHeight =326
                    ForeThemeColorIndex =1
                    ForeTint =100.0
                    ForeShade =65.0
                End
                Begin CommandButton
                    OverlapFlags =247
                    Left =7555
                    Top =1455
                    Width =1740
                    Height =255
                    FontSize =8
                    TabIndex =5
                    ForeColor =4138256
                    Name ="BS_KS_zurordnen"
                    Caption ="Kost.stellen zuordnen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =7555
                    LayoutCachedTop =1455
                    LayoutCachedWidth =9295
                    LayoutCachedHeight =1710
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                    UseTheme =0
                    Shape =0
                    Gradient =0
                    BackThemeColorIndex =-1
                    BackTint =100.0
                    BorderColor =0
                    BorderThemeColorIndex =-1
                    BorderTint =100.0
                    ThemeFontIndex =-1
                    HoverThemeColorIndex =-1
                    HoverTint =100.0
                    PressedThemeColorIndex =-1
                    PressedShade =100.0
                    HoverForeThemeColorIndex =-1
                    HoverForeTint =100.0
                    PressedForeThemeColorIndex =-1
                    PressedForeTint =100.0
                    Overlaps =1
                End
                Begin CheckBox
                    OverlapFlags =247
                    Left =5466
                    Top =4640
                    Width =200
                    Height =225
                    TabIndex =29
                    Name ="KK_Bilanz_relevant"
                    ControlSource ="Bilanz_relevant"
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =5466
                    LayoutCachedTop =4640
                    LayoutCachedWidth =5666
                    LayoutCachedHeight =4865
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =1
                            Left =5681
                            Top =4640
                            Width =1335
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld94"
                            Caption ="Bilanz-relevant "
                            LayoutCachedLeft =5681
                            LayoutCachedTop =4640
                            LayoutCachedWidth =7016
                            LayoutCachedHeight =4895
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =247
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =5454
                    Top =4936
                    Width =3758
                    Height =255
                    FontSize =8
                    TabIndex =30
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="KF_ID_GebT_Zug_GebT"
                    ControlSource ="ID_GebT_Zug_GebT"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_20_Gebäudeteile.Gebäudete"
                        "il FROM tbl_100_20_Gebäudeteile WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäudeteil)"
                        "<>F_Variable(\"lng_id_Geb_Teil\")) AND ((tbl_100_20_Gebäudeteile.ID_Gebäude)=F_V"
                        "ariable(\"lng_ID_Gebaeude\")) AND ((tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT) Is"
                        " Null));"
                    ColumnWidths ="0"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =5454
                    LayoutCachedTop =4936
                    LayoutCachedWidth =9212
                    LayoutCachedHeight =5191
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =1
                            Left =7045
                            Top =4640
                            Width =2160
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld98"
                            Caption ="/  oder gehört zu Geb.teil:"
                            GridlineColor =10921638
                            LayoutCachedLeft =7045
                            LayoutCachedTop =4640
                            LayoutCachedWidth =9205
                            LayoutCachedHeight =4895
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =247
                    Left =9025
                    Top =5249
                    TabIndex =43
                    Name ="Zust_B60"
                    ControlSource ="Zust_B60"

                    LayoutCachedLeft =9025
                    LayoutCachedTop =5249
                    LayoutCachedWidth =9285
                    LayoutCachedHeight =5489
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextFontCharSet =163
                            TextAlign =3
                            Left =6871
                            Top =5226
                            Width =2025
                            Height =216
                            FontSize =8
                            Name ="Bezeichnungsfeld99"
                            Caption ="Zuständigkeit B60:"
                            LayoutCachedLeft =6871
                            LayoutCachedTop =5226
                            LayoutCachedWidth =8896
                            LayoutCachedHeight =5442
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =247
                    TextFontCharSet =163
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =4986
                    Top =4011
                    Width =4223
                    Height =255
                    FontSize =8
                    TabIndex =27
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Zuordnung Bilanz"
                    ControlSource ="Zuordnung Bilanz"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT [Zuordnung Gebäudebestand zu Bilanz].ID_, [Code] & \": \" & [Bezeichnung "
                        "in Bilanz] & IIf([Grundstück]=True,\" nur Grundstück\",\" nur Aufbauten\") AS Be"
                        "z FROM [Zuordnung Gebäudebestand zu Bilanz] ORDER BY [Code] & \": \" & [Bezeichn"
                        "ung in Bilanz] & IIf([Grundstück]=True,\" nur Grundstück\",\" nur Aufbauten\");"
                    ColumnWidths ="0"
                    EventProcPrefix ="Zuordnung_Bilanz"
                    GridlineColor =10921638

                    LayoutCachedLeft =4986
                    LayoutCachedTop =4011
                    LayoutCachedWidth =9209
                    LayoutCachedHeight =4266
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =255
                            Left =4986
                            Top =3786
                            Width =1560
                            Height =225
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld53"
                            Caption ="Zuordnung Bilanz:"
                            GridlineColor =10921638
                            LayoutCachedLeft =4986
                            LayoutCachedTop =3786
                            LayoutCachedWidth =6546
                            LayoutCachedHeight =4011
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =247
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7795
                    Top =2785
                    Width =1419
                    Height =255
                    FontSize =8
                    TabIndex =9
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Text100"
                    ControlSource ="Hüllfläche"
                    Format ="Standard"
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    GridlineColor =10921638

                    LayoutCachedLeft =7795
                    LayoutCachedTop =2785
                    LayoutCachedWidth =9214
                    LayoutCachedHeight =3040
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =6215
                            Top =2785
                            Width =1440
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld101"
                            Caption ="Hüllfläche in m²:"
                            GridlineColor =10921638
                            LayoutCachedLeft =6215
                            LayoutCachedTop =2785
                            LayoutCachedWidth =7655
                            LayoutCachedHeight =3040
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =247
                    Left =9014
                    Top =5525
                    TabIndex =44
                    Name ="Geb_Begeh"
                    ControlSource ="Beg_erf"

                    LayoutCachedLeft =9014
                    LayoutCachedTop =5525
                    LayoutCachedWidth =9274
                    LayoutCachedHeight =5765
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =5448
                            Top =5502
                            Width =3437
                            Height =216
                            FontSize =8
                            Name ="Bezeichnungsfeld103"
                            Caption ="Gebäudebegehung erforderlich:"
                            LayoutCachedLeft =5448
                            LayoutCachedTop =5502
                            LayoutCachedWidth =8885
                            LayoutCachedHeight =5718
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_010_040_Geb_verw_UF_Gebäudeteil - ALT.cls"
