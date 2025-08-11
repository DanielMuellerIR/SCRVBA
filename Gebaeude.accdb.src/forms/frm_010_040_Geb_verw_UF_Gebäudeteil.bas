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
    ItemSuffix =131
    Left =8966
    Top =2500
    Right =20364
    Bottom =12675
    RecSrcDt = Begin
        0x32cdfefcb3dee540
    End
    RecordSource ="SELECT tbl_100_20_Gebäudeteile.*, tbl_100_10_Liegenschaften.LiegenschaftsNr_LuGM"
        " FROM tbl_100_10_Liegenschaften INNER JOIN tbl_100_20_Gebäudeteile ON tbl_100_10"
        "_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude WHERE (((tbl_100"
        "_20_Gebäudeteile.ID_Gebäudeteil)=[Formulare]![frm_010_010_Gebäudeverwaltung]![LF"
        "_Zug_Gebaeudeteile]));"
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
            Height =9581
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
                    Height =284
                    FontSize =11
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld2"
                    Caption ="Stammdaten zum Gebäudeteil:"
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =60
                    LayoutCachedWidth =6150
                    LayoutCachedHeight =344
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1940
                    Top =393
                    Width =3513
                    Height =345
                    ColumnWidth =5160
                    FontSize =12
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Gebäudeteil"
                    ControlSource ="Gebäudeteil"
                    GridlineColor =10921638

                    LayoutCachedLeft =1940
                    LayoutCachedTop =393
                    LayoutCachedWidth =5453
                    LayoutCachedHeight =738
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =180
                            Top =393
                            Width =1530
                            Height =345
                            FontSize =12
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld11"
                            Caption ="Gebäudeteil:"
                            GridlineColor =10921638
                            LayoutCachedLeft =180
                            LayoutCachedTop =393
                            LayoutCachedWidth =1710
                            LayoutCachedHeight =738
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1190
                    Top =2633
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

                    LayoutCachedLeft =1190
                    LayoutCachedTop =2633
                    LayoutCachedWidth =2211
                    LayoutCachedHeight =2888
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =169
                            Top =2633
                            Width =900
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld13"
                            Caption ="BGF in m²:"
                            GridlineColor =10921638
                            LayoutCachedLeft =169
                            LayoutCachedTop =2633
                            LayoutCachedWidth =1069
                            LayoutCachedHeight =2888
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3319
                    Top =2633
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

                    LayoutCachedLeft =3319
                    LayoutCachedTop =2633
                    LayoutCachedWidth =4737
                    LayoutCachedHeight =2888
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =2332
                            Top =2633
                            Width =840
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld14"
                            Caption ="BRI in m³:"
                            GridlineColor =10921638
                            LayoutCachedLeft =2332
                            LayoutCachedTop =2633
                            LayoutCachedWidth =3172
                            LayoutCachedHeight =2888
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3319
                    Top =2934
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

                    LayoutCachedLeft =3319
                    LayoutCachedTop =2934
                    LayoutCachedWidth =4737
                    LayoutCachedHeight =3189
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =899
                            Top =2934
                            Width =2246
                            Height =249
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld15"
                            Caption ="Baujahr real (TT.MM.JJJJ):"
                            GridlineColor =10921638
                            LayoutCachedLeft =899
                            LayoutCachedTop =2934
                            LayoutCachedWidth =3145
                            LayoutCachedHeight =3183
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7801
                    Top =2934
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

                    LayoutCachedLeft =7801
                    LayoutCachedTop =2934
                    LayoutCachedWidth =9219
                    LayoutCachedHeight =3189
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =5204
                            Top =2934
                            Width =2490
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld16"
                            Caption ="gewöhnliche Nutzungsdauer:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5204
                            LayoutCachedTop =2934
                            LayoutCachedWidth =7694
                            LayoutCachedHeight =3189
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7801
                    Top =3234
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

                    LayoutCachedLeft =7801
                    LayoutCachedTop =3234
                    LayoutCachedWidth =9219
                    LayoutCachedHeight =3489
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =5413
                            Top =3234
                            Width =2280
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld17"
                            Caption ="geschätze Nutzungsdauer:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5413
                            LayoutCachedTop =3234
                            LayoutCachedWidth =7693
                            LayoutCachedHeight =3489
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3319
                    Top =4201
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

                    LayoutCachedLeft =3319
                    LayoutCachedTop =4201
                    LayoutCachedWidth =4737
                    LayoutCachedHeight =4456
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =1849
                            Top =4201
                            Width =1290
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld18"
                            Caption ="Fassade (11%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =1849
                            LayoutCachedTop =4201
                            LayoutCachedWidth =3139
                            LayoutCachedHeight =4456
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =95
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3319
                    Top =4462
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

                    LayoutCachedLeft =3319
                    LayoutCachedTop =4462
                    LayoutCachedWidth =4737
                    LayoutCachedHeight =4717
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =95
                            TextAlign =3
                            Left =1895
                            Top =4462
                            Width =1245
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld39"
                            Caption ="Fenster (14%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =1895
                            LayoutCachedTop =4462
                            LayoutCachedWidth =3140
                            LayoutCachedHeight =4717
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3323
                    Top =3534
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

                    LayoutCachedLeft =3323
                    LayoutCachedTop =3534
                    LayoutCachedWidth =4741
                    LayoutCachedHeight =3789
                    ForeTint =100.0
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =1133
                            Top =3534
                            Width =1982
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld47"
                            Caption ="Neubauwert ab BJ 2000:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1133
                            LayoutCachedTop =3534
                            LayoutCachedWidth =3115
                            LayoutCachedHeight =3789
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3320
                    Top =3234
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

                    LayoutCachedLeft =3320
                    LayoutCachedTop =3234
                    LayoutCachedWidth =4738
                    LayoutCachedHeight =3489
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =829
                            Top =3234
                            Width =2315
                            Height =257
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld49"
                            Caption ="Baujahr mod. (TT.MM.JJJJ):"
                            GridlineColor =10921638
                            LayoutCachedLeft =829
                            LayoutCachedTop =3234
                            LayoutCachedWidth =3144
                            LayoutCachedHeight =3491
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7794
                    Top =3534
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
                    LayoutCachedTop =3534
                    LayoutCachedWidth =9212
                    LayoutCachedHeight =3789
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =5050
                            Top =3534
                            Width =2606
                            Height =223
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld51"
                            Caption ="Erst-Bewertung abgeschlossen:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5050
                            LayoutCachedTop =3534
                            LayoutCachedWidth =7656
                            LayoutCachedHeight =3757
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7794
                    Top =3835
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
                    LayoutCachedTop =3835
                    LayoutCachedWidth =9212
                    LayoutCachedHeight =4090
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =7236
                            Top =3835
                            Width =420
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld52"
                            Caption ="von:"
                            GridlineColor =10921638
                            LayoutCachedLeft =7236
                            LayoutCachedTop =3835
                            LayoutCachedWidth =7656
                            LayoutCachedHeight =4090
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7794
                    Top =4436
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
                    LayoutCachedTop =4436
                    LayoutCachedWidth =9212
                    LayoutCachedHeight =4691
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =6126
                            Top =4436
                            Width =1530
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld54"
                            Caption ="Zusch.Prozent:"
                            GridlineColor =10921638
                            LayoutCachedLeft =6126
                            LayoutCachedTop =4436
                            LayoutCachedWidth =7656
                            LayoutCachedHeight =4691
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7799
                    Top =5756
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =31
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Index_manuell"
                    ControlSource ="Index_manuell"
                    GridlineColor =10921638

                    LayoutCachedLeft =7799
                    LayoutCachedTop =5756
                    LayoutCachedWidth =9217
                    LayoutCachedHeight =6011
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =6384
                            Top =5756
                            Width =1275
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld55"
                            Caption ="Index manuell:"
                            GridlineColor =10921638
                            LayoutCachedLeft =6384
                            LayoutCachedTop =5756
                            LayoutCachedWidth =7659
                            LayoutCachedHeight =6011
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =95
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3319
                    Top =4717
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

                    LayoutCachedLeft =3319
                    LayoutCachedTop =4717
                    LayoutCachedWidth =4737
                    LayoutCachedHeight =4972
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =95
                            TextAlign =3
                            Left =1970
                            Top =4717
                            Width =1170
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld40"
                            Caption ="Dächer (15%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =1970
                            LayoutCachedTop =4717
                            LayoutCachedWidth =3140
                            LayoutCachedHeight =4972
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =95
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3319
                    Top =4973
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

                    LayoutCachedLeft =3319
                    LayoutCachedTop =4973
                    LayoutCachedWidth =4737
                    LayoutCachedHeight =5228
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =95
                            TextAlign =3
                            Left =1967
                            Top =4973
                            Width =1170
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld41"
                            Caption ="Sanitär (13%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =1967
                            LayoutCachedTop =4973
                            LayoutCachedWidth =3137
                            LayoutCachedHeight =5228
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =95
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3319
                    Top =5234
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

                    LayoutCachedLeft =3319
                    LayoutCachedTop =5234
                    LayoutCachedWidth =4737
                    LayoutCachedHeight =5489
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =95
                            TextAlign =3
                            Left =365
                            Top =5234
                            Width =2775
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld42"
                            Caption ="Innenwände Sanitärbereich (6%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =365
                            LayoutCachedTop =5234
                            LayoutCachedWidth =3140
                            LayoutCachedHeight =5489
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =95
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3319
                    Top =5495
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

                    LayoutCachedLeft =3319
                    LayoutCachedTop =5495
                    LayoutCachedWidth =4737
                    LayoutCachedHeight =5750
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =95
                            TextAlign =3
                            Left =1505
                            Top =5495
                            Width =1635
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld43"
                            Caption ="Bodenbeläge (8 %):"
                            GridlineColor =10921638
                            LayoutCachedLeft =1505
                            LayoutCachedTop =5495
                            LayoutCachedWidth =3140
                            LayoutCachedHeight =5750
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3319
                    Top =5757
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

                    LayoutCachedLeft =3319
                    LayoutCachedTop =5757
                    LayoutCachedWidth =4737
                    LayoutCachedHeight =6012
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =1622
                            Top =5757
                            Width =1515
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld44"
                            Caption ="Innentüren (11%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =1622
                            LayoutCachedTop =5757
                            LayoutCachedWidth =3137
                            LayoutCachedHeight =6012
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =95
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3319
                    Top =6017
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

                    LayoutCachedLeft =3319
                    LayoutCachedTop =6017
                    LayoutCachedWidth =4737
                    LayoutCachedHeight =6272
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =95
                            TextAlign =3
                            Left =1880
                            Top =6017
                            Width =1260
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld45"
                            Caption ="Heizung (15%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =1880
                            LayoutCachedTop =6017
                            LayoutCachedWidth =3140
                            LayoutCachedHeight =6272
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =95
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3319
                    Top =6278
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

                    LayoutCachedLeft =3319
                    LayoutCachedTop =6278
                    LayoutCachedWidth =4737
                    LayoutCachedHeight =6533
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =95
                            TextAlign =3
                            Left =1221
                            Top =6278
                            Width =1920
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld46"
                            Caption ="Elektroinstallation (7%):"
                            GridlineColor =10921638
                            LayoutCachedLeft =1221
                            LayoutCachedTop =6278
                            LayoutCachedWidth =3141
                            LayoutCachedHeight =6533
                        End
                    End
                End
                Begin Rectangle
                    OverlapFlags =255
                    Left =175
                    Top =2157
                    Width =9286
                    Height =4508
                    BorderColor =10921638
                    Name ="Rechteck60"
                    GridlineColor =10921638
                    LayoutCachedLeft =175
                    LayoutCachedTop =2157
                    LayoutCachedWidth =9461
                    LayoutCachedHeight =6665
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =247
                    Left =345
                    Top =2047
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
                    LayoutCachedTop =2047
                    LayoutCachedWidth =3255
                    LayoutCachedHeight =2302
                    ForeShade =100.0
                End
                Begin Rectangle
                    OverlapFlags =93
                    Left =165
                    Top =6844
                    Width =9286
                    Height =867
                    BorderColor =10921638
                    Name ="Rechteck62"
                    GridlineColor =10921638
                    LayoutCachedLeft =165
                    LayoutCachedTop =6844
                    LayoutCachedWidth =9451
                    LayoutCachedHeight =7711
                End
                Begin TextBox
                    OverlapFlags =215
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1647
                    Top =7095
                    Width =1103
                    Height =255
                    ColumnWidth =1785
                    FontSize =8
                    TabIndex =35
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Mietbeginn"
                    ControlSource ="Mietbeginn"
                    Format ="Short Date"
                    GridlineColor =10921638

                    LayoutCachedLeft =1647
                    LayoutCachedTop =7095
                    LayoutCachedWidth =2750
                    LayoutCachedHeight =7350
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =282
                            Top =7095
                            Width =1185
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld68"
                            Caption ="Mietbeginn:"
                            GridlineColor =10921638
                            LayoutCachedLeft =282
                            LayoutCachedTop =7095
                            LayoutCachedWidth =1467
                            LayoutCachedHeight =7350
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =215
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1647
                    Top =7395
                    Width =1103
                    Height =255
                    ColumnWidth =1620
                    FontSize =8
                    TabIndex =36
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Mietende"
                    ControlSource ="Mietende"
                    Format ="Short Date"
                    GridlineColor =10921638

                    LayoutCachedLeft =1647
                    LayoutCachedTop =7395
                    LayoutCachedWidth =2750
                    LayoutCachedHeight =7650
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =432
                            Top =7395
                            Width =1035
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld69"
                            Caption ="Mietende:"
                            GridlineColor =10921638
                            LayoutCachedLeft =432
                            LayoutCachedTop =7395
                            LayoutCachedWidth =1467
                            LayoutCachedHeight =7650
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =215
                    TextAlign =1
                    IMESentenceMode =3
                    Left =4532
                    Top =7395
                    Width =1013
                    Height =255
                    FontSize =8
                    TabIndex =38
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Reinigungsfläche"
                    ControlSource ="Reinigungsfläche"
                    GridlineColor =10921638

                    LayoutCachedLeft =4532
                    LayoutCachedTop =7395
                    LayoutCachedWidth =5545
                    LayoutCachedHeight =7650
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =3176
                            Top =7395
                            Width =1230
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld71"
                            Caption ="Reinig.-fläche:"
                            GridlineColor =10921638
                            LayoutCachedLeft =3176
                            LayoutCachedTop =7395
                            LayoutCachedWidth =4406
                            LayoutCachedHeight =7650
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =215
                    Left =5378
                    Top =6941
                    Width =155
                    Height =210
                    TabIndex =37
                    BorderColor =10921638
                    Name ="Sportfläche"
                    ControlSource ="Sportfläche"
                    GridlineColor =10921638

                    LayoutCachedLeft =5378
                    LayoutCachedTop =6941
                    LayoutCachedWidth =5533
                    LayoutCachedHeight =7151
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =3406
                            Top =6894
                            Width =1806
                            Height =446
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld72"
                            Caption ="Sportfläche oder sonstige Reduzierung:"
                            GridlineColor =10921638
                            LayoutCachedLeft =3406
                            LayoutCachedTop =6894
                            LayoutCachedWidth =5212
                            LayoutCachedHeight =7340
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =215
                    Left =8489
                    Top =7152
                    TabIndex =39
                    BorderColor =10921638
                    Name ="angemietetes_Gebäude"
                    ControlSource ="angemietetes_Gebäude"
                    GridlineColor =10921638

                    LayoutCachedLeft =8489
                    LayoutCachedTop =7152
                    LayoutCachedWidth =8749
                    LayoutCachedHeight =7392
                    Begin
                        Begin Label
                            OverlapFlags =223
                            TextAlign =3
                            Left =6290
                            Top =7152
                            Width =2055
                            Height =255
                            FontSize =8
                            BackColor =15728383
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld73"
                            Caption ="angemietetes Gebäude:"
                            GridlineColor =10921638
                            LayoutCachedLeft =6290
                            LayoutCachedTop =7152
                            LayoutCachedWidth =8345
                            LayoutCachedHeight =7407
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =215
                    Left =8489
                    Top =7395
                    TabIndex =40
                    BorderColor =10921638
                    Name ="extern weitervermietet"
                    ControlSource ="extern weitervermietet"
                    EventProcPrefix ="extern_weitervermietet"
                    GridlineColor =10921638

                    LayoutCachedLeft =8489
                    LayoutCachedTop =7395
                    LayoutCachedWidth =8749
                    LayoutCachedHeight =7635
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =6290
                            Top =7395
                            Width =2055
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld74"
                            Caption ="extern weitervermietet:"
                            GridlineColor =10921638
                            LayoutCachedLeft =6290
                            LayoutCachedTop =7395
                            LayoutCachedWidth =8345
                            LayoutCachedHeight =7650
                        End
                    End
                End
                Begin Rectangle
                    OverlapFlags =93
                    Left =165
                    Top =7890
                    Width =9286
                    Height =905
                    BorderColor =10921638
                    Name ="Rechteck77"
                    GridlineColor =10921638
                    LayoutCachedLeft =165
                    LayoutCachedTop =7890
                    LayoutCachedWidth =9451
                    LayoutCachedHeight =8795
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =215
                    TextAlign =1
                    IMESentenceMode =3
                    Left =345
                    Top =8046
                    Width =8963
                    Height =680
                    FontSize =8
                    TabIndex =43
                    BackColor =15728383
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Erläuterungen"
                    ControlSource ="Erläuterungen"
                    GridlineColor =10921638

                    LayoutCachedLeft =345
                    LayoutCachedTop =8046
                    LayoutCachedWidth =9308
                    LayoutCachedHeight =8726
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =215
                            Left =340
                            Top =7776
                            Width =1412
                            Height =255
                            FontSize =8
                            BackColor =16776187
                            BorderColor =8355711
                            ForeColor =1643706
                            Name ="Bezeichnungsfeld48"
                            Caption ="Besonderheiten:"
                            GridlineColor =10921638
                            LayoutCachedLeft =340
                            LayoutCachedTop =7776
                            LayoutCachedWidth =1752
                            LayoutCachedHeight =8031
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
                    Top =1028
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
                    LayoutCachedTop =1028
                    LayoutCachedWidth =4307
                    LayoutCachedHeight =1283
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =300
                            Top =1028
                            Width =1530
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld78"
                            Caption ="&Straße: | Haus-Nr.:"
                            GridlineColor =10921638
                            LayoutCachedLeft =300
                            LayoutCachedTop =1028
                            LayoutCachedWidth =1830
                            LayoutCachedHeight =1283
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =4415
                    Top =1028
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
                    LayoutCachedTop =1028
                    LayoutCachedWidth =5464
                    LayoutCachedHeight =1283
                    ForeTint =100.0
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =8396
                    Top =1028
                    Width =902
                    Height =255
                    ColumnWidth =2850
                    FontSize =8
                    TabIndex =3
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Gebaeude-Nr-LuGM"
                    ControlSource ="GebäudeteilNr_LuGM"
                    InputMask ="00\\-00,99"
                    EventProcPrefix ="Gebaeude_Nr_LuGM"
                    GridlineColor =10921638

                    LayoutCachedLeft =8396
                    LayoutCachedTop =1028
                    LayoutCachedWidth =9298
                    LayoutCachedHeight =1283
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =5721
                            Top =1028
                            Width =2019
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld80"
                            Caption ="Gebäudeteil-Nr LuGM:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5721
                            LayoutCachedTop =1028
                            LayoutCachedWidth =7740
                            LayoutCachedHeight =1283
                        End
                    End
                End
                Begin Rectangle
                    OverlapFlags =255
                    Left =180
                    Top =855
                    Width =9286
                    Height =1123
                    BorderColor =10921638
                    Name ="Rechteck81"
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =855
                    LayoutCachedWidth =9466
                    LayoutCachedHeight =1978
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =247
                    Left =350
                    Top =743
                    Width =953
                    Height =255
                    FontSize =8
                    BackColor =16776187
                    BorderColor =8355711
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld82"
                    Caption ="Anschrift:"
                    GridlineColor =10921638
                    LayoutCachedLeft =350
                    LayoutCachedTop =743
                    LayoutCachedWidth =1303
                    LayoutCachedHeight =998
                    ForeShade =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =215
                    Left =345
                    Top =6739
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
                    LayoutCachedTop =6739
                    LayoutCachedWidth =3330
                    LayoutCachedHeight =6994
                    ForeShade =100.0
                End
                Begin TextBox
                    OverlapFlags =247
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7798
                    Top =6064
                    Width =1418
                    Height =270
                    FontSize =8
                    TabIndex =32
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Nicht_mehr_in_Betr_seit"
                    ControlSource ="Nicht_mehr_in_Betr_seit"
                    Format ="mm/yyyy"
                    InputMask ="00,0000;0;_"
                    GridlineColor =10921638

                    LayoutCachedLeft =7798
                    LayoutCachedTop =6064
                    LayoutCachedWidth =9216
                    LayoutCachedHeight =6334
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =5440
                            Top =6064
                            Width =2220
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld84"
                            Caption ="Nicht mehr in Betrieb seit:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5440
                            LayoutCachedTop =6064
                            LayoutCachedWidth =7660
                            LayoutCachedHeight =6319
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =247
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7795
                    Top =6350
                    Width =1418
                    Height =270
                    FontSize =8
                    TabIndex =33
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Nicht_mehr_in_Betr_Begründung"
                    ControlSource ="Nicht_mehr_in_Betr_Begründung"
                    GridlineColor =10921638

                    LayoutCachedLeft =7795
                    LayoutCachedTop =6350
                    LayoutCachedWidth =9213
                    LayoutCachedHeight =6620
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =6523
                            Top =6350
                            Width =1140
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld85"
                            Caption ="Begründung:"
                            GridlineColor =10921638
                            LayoutCachedLeft =6523
                            LayoutCachedTop =6350
                            LayoutCachedWidth =7663
                            LayoutCachedHeight =6605
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =247
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =3319
                    Top =2332
                    Width =5930
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

                    LayoutCachedLeft =3319
                    LayoutCachedTop =2332
                    LayoutCachedWidth =9249
                    LayoutCachedHeight =2587
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =1476
                            Top =2332
                            Width =1695
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld12"
                            Caption ="Typ aus NHK-Typen:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1476
                            LayoutCachedTop =2332
                            LayoutCachedWidth =3171
                            LayoutCachedHeight =2587
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
                    Top =1642
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
                    LayoutCachedTop =1642
                    LayoutCachedWidth =9293
                    LayoutCachedHeight =1912
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =655
                            Top =1642
                            Width =1170
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld89"
                            Caption ="Bereich:"
                            GridlineColor =10921638
                            LayoutCachedLeft =655
                            LayoutCachedTop =1642
                            LayoutCachedWidth =1825
                            LayoutCachedHeight =1897
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =215
                    Left =8489
                    Top =6894
                    Width =305
                    Height =246
                    TabIndex =34
                    Name ="Mietrelevant"
                    ControlSource ="Mietrelevant"

                    LayoutCachedLeft =8489
                    LayoutCachedTop =6894
                    LayoutCachedWidth =8794
                    LayoutCachedHeight =7140
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =7190
                            Top =6894
                            Width =1155
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld90"
                            Caption ="Mietrelevant:"
                            GridlineColor =10921638
                            LayoutCachedLeft =7190
                            LayoutCachedTop =6894
                            LayoutCachedWidth =8345
                            LayoutCachedHeight =7149
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
                    Top =1327
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
                    LayoutCachedTop =1327
                    LayoutCachedWidth =7478
                    LayoutCachedHeight =1582
                    BorderTint =50.0
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =265
                            Top =1327
                            Width =1560
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld87"
                            Caption ="jetz. Kostenstelle:"
                            GridlineColor =10921638
                            LayoutCachedLeft =265
                            LayoutCachedTop =1327
                            LayoutCachedWidth =1825
                            LayoutCachedHeight =1582
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
                    TabIndex =44
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
                    Top =1342
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
                    LayoutCachedTop =1342
                    LayoutCachedWidth =9295
                    LayoutCachedHeight =1597
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
                    Top =4747
                    Width =200
                    Height =225
                    TabIndex =29
                    Name ="KK_Bilanz_relevant"
                    ControlSource ="Bilanz_relevant"
                    AfterUpdate ="=Berechne_WE_Abschr_Neu()"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =5466
                    LayoutCachedTop =4747
                    LayoutCachedWidth =5666
                    LayoutCachedHeight =4972
                    Begin
                        Begin Label
                            OverlapFlags =255
                            TextAlign =1
                            Left =5681
                            Top =4747
                            Width =1335
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld94"
                            Caption ="Bilanz-relevant "
                            LayoutCachedLeft =5681
                            LayoutCachedTop =4747
                            LayoutCachedWidth =7016
                            LayoutCachedHeight =5002
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
                    Top =4981
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
                    LayoutCachedTop =4981
                    LayoutCachedWidth =9212
                    LayoutCachedHeight =5236
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =255
                            TextAlign =1
                            Left =7045
                            Top =4747
                            Width =2160
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld98"
                            Caption ="/  oder gehört zu Geb.teil:"
                            GridlineColor =10921638
                            LayoutCachedLeft =7045
                            LayoutCachedTop =4747
                            LayoutCachedWidth =9205
                            LayoutCachedHeight =5002
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =255
                    Left =9025
                    Top =5305
                    TabIndex =41
                    Name ="Zust_B60"
                    ControlSource ="Zust_B60"

                    LayoutCachedLeft =9025
                    LayoutCachedTop =5305
                    LayoutCachedWidth =9285
                    LayoutCachedHeight =5545
                    Begin
                        Begin Label
                            OverlapFlags =255
                            TextFontCharSet =163
                            TextAlign =3
                            Left =6871
                            Top =5305
                            Width =2025
                            Height =216
                            FontSize =8
                            Name ="Bezeichnungsfeld99"
                            Caption ="Zuständigkeit B60:"
                            LayoutCachedLeft =6871
                            LayoutCachedTop =5305
                            LayoutCachedWidth =8896
                            LayoutCachedHeight =5521
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
                    Top =4135
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
                    LayoutCachedTop =4135
                    LayoutCachedWidth =9209
                    LayoutCachedHeight =4390
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =255
                            Left =4986
                            Top =3942
                            Width =1560
                            Height =225
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld53"
                            Caption ="Zuordnung Bilanz:"
                            GridlineColor =10921638
                            LayoutCachedLeft =4986
                            LayoutCachedTop =3942
                            LayoutCachedWidth =6546
                            LayoutCachedHeight =4167
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =247
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7795
                    Top =2633
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
                    LayoutCachedTop =2633
                    LayoutCachedWidth =9214
                    LayoutCachedHeight =2888
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =6254
                            Top =2633
                            Width =1440
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld101"
                            Caption ="Hüllfläche in m²:"
                            GridlineColor =10921638
                            LayoutCachedLeft =6254
                            LayoutCachedTop =2633
                            LayoutCachedWidth =7694
                            LayoutCachedHeight =2888
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =247
                    Left =9014
                    Top =5509
                    TabIndex =42
                    Name ="Geb_Begeh"
                    ControlSource ="Beg_erf"

                    LayoutCachedLeft =9014
                    LayoutCachedTop =5509
                    LayoutCachedWidth =9274
                    LayoutCachedHeight =5749
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =5448
                            Top =5508
                            Width =3437
                            Height =216
                            FontSize =8
                            Name ="Bezeichnungsfeld103"
                            Caption ="Gebäudebegehung erforderlich:"
                            LayoutCachedLeft =5448
                            LayoutCachedTop =5508
                            LayoutCachedWidth =8885
                            LayoutCachedHeight =5724
                        End
                    End
                End
                Begin Label
                    OverlapFlags =247
                    TextAlign =3
                    Left =371
                    Top =3970
                    Width =4371
                    Height =255
                    FontSize =8
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld124"
                    Caption ="Neubauwert bis BJ 2000 über NHK-Typ + Ausstattung"
                    GridlineColor =10921638
                    LayoutCachedLeft =371
                    LayoutCachedTop =3970
                    LayoutCachedWidth =4742
                    LayoutCachedHeight =4225
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7881
                    Top =484
                    Width =1418
                    Height =255
                    FontSize =8
                    TabIndex =45
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Text125"
                    ControlSource ="Gebaeudekennung"
                    GridlineColor =10921638

                    LayoutCachedLeft =7881
                    LayoutCachedTop =484
                    LayoutCachedWidth =9299
                    LayoutCachedHeight =739
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =5722
                            Top =484
                            Width =2019
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld126"
                            Caption ="Gebäudekennung Bilanz:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5722
                            LayoutCachedTop =484
                            LayoutCachedWidth =7741
                            LayoutCachedHeight =739
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =247
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =7766
                    Top =1028
                    Width =617
                    Height =255
                    FontSize =8
                    TabIndex =46
                    BackColor =15728383
                    BorderColor =10921638
                    Name ="Text127"
                    ControlSource ="LiegenschaftsNr_LuGM"
                    InputMask ="00\\-00,"
                    GridlineColor =10921638

                    LayoutCachedLeft =7766
                    LayoutCachedTop =1028
                    LayoutCachedWidth =8383
                    LayoutCachedHeight =1283
                    ForeTint =100.0
                End
                Begin Rectangle
                    OverlapFlags =93
                    Left =170
                    Top =8958
                    Width =9286
                    Height =579
                    BorderColor =10921638
                    Name ="Rechteck129"
                    GridlineColor =10921638
                    LayoutCachedLeft =170
                    LayoutCachedTop =8958
                    LayoutCachedWidth =9456
                    LayoutCachedHeight =9537
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =215
                    Left =345
                    Top =8844
                    Width =2377
                    Height =255
                    FontSize =8
                    BackColor =16776187
                    BorderColor =8355711
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld130"
                    Caption ="Angaben zur Versicherung:"
                    GridlineColor =10921638
                    LayoutCachedLeft =345
                    LayoutCachedTop =8844
                    LayoutCachedWidth =2722
                    LayoutCachedHeight =9099
                    ForeShade =100.0
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_010_040_Geb_verw_UF_Gebäudeteil.cls"
