Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    ShortcutMenu = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =12027
    DatasheetFontHeight =10
    ItemSuffix =131
    Left =8966
    Top =3586
    Right =22415
    Bottom =9768
    RecSrcDt = Begin
        0x68b14f0aafe1e540
    End
    RecordSource ="SELECT B_Abfrage_für_Formular.*, B_Abfrage_für_Formular.ID_Gebäudeteil, [Name] &"
        " \" \" & [HAus_Nr] & \": \" & [Bezeichnung] & \" - > \" & [Gebäudeteil] AS Objek"
        "t FROM B_Abfrage_für_Formular WHERE (((B_Abfrage_für_Formular.ID_Gebäudeteil)=F_"
        "Variable(\"lng_ID_Geb_Teil\")));"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Image
            BackStyle =0
            OldBorderStyle =0
            BorderLineStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =8
            FontWeight =400
            ForeColor =-2147483630
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin TextBox
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin ComboBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin Subform
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =2
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin PageBreak
            Width =283
        End
        Begin Tab
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin Page
            Width =1701
            Height =1701
        End
        Begin Section
            Height =4138
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    AutoTab = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    BackStyle =0
                    Left =6767
                    Top =956
                    Width =1485
                    ColumnWidth =1005
                    TabIndex =3
                    Name ="BGF"
                    ControlSource ="BGF"
                    Format ="Standard"

                    LayoutCachedLeft =6767
                    LayoutCachedTop =956
                    LayoutCachedWidth =8252
                    LayoutCachedHeight =1196
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =5891
                            Top =956
                            Width =780
                            Height =240
                            Name ="Bezeichnungsfeld37"
                            Caption ="BGF (m ²):"
                            LayoutCachedLeft =5891
                            LayoutCachedTop =956
                            LayoutCachedWidth =6671
                            LayoutCachedHeight =1196
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    DecimalPlaces =0
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    BackStyle =0
                    Left =1584
                    Top =949
                    Width =897
                    TabIndex =5
                    Name ="Baujahr"
                    ControlSource ="Baujahr_real"
                    Format ="mm/yyyy"
                    InputMask ="0000"

                    LayoutCachedLeft =1584
                    LayoutCachedTop =949
                    LayoutCachedWidth =2481
                    LayoutCachedHeight =1189
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            TextFontFamily =0
                            Left =730
                            Top =942
                            Width =750
                            Height =240
                            Name ="Bezeichnungsfeld38"
                            Caption ="Baujahr:"
                            LayoutCachedLeft =730
                            LayoutCachedTop =942
                            LayoutCachedWidth =1480
                            LayoutCachedHeight =1182
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =0
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =1573
                    Top =1243
                    Width =909
                    ColumnWidth =2865
                    TabIndex =9
                    Name ="gewöhnliche Nutzungsdauer"
                    ControlSource ="gewöhnliche Nutzungsdauer"
                    Format ="General Number"
                    EventProcPrefix ="gewöhnliche_Nutzungsdauer"

                    LayoutCachedLeft =1573
                    LayoutCachedTop =1243
                    LayoutCachedWidth =2482
                    LayoutCachedHeight =1483
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            TextFontFamily =0
                            Top =1243
                            Width =1477
                            Height =240
                            Name ="Bezeichnungsfeld39"
                            Caption ="gewöhnl. Nutz.-dauer:"
                            LayoutCachedTop =1243
                            LayoutCachedWidth =1477
                            LayoutCachedHeight =1483
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =0
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =4407
                    Top =1257
                    Width =831
                    TabIndex =12
                    Name ="geschätze Nutzungsdauer"
                    ControlSource ="geschätze Nutzungsdauer"
                    Format ="Fixed"
                    EventProcPrefix ="geschätze_Nutzungsdauer"

                    LayoutCachedLeft =4407
                    LayoutCachedTop =1257
                    LayoutCachedWidth =5238
                    LayoutCachedHeight =1497
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =2893
                            Top =1257
                            Width =1367
                            Height =240
                            Name ="Bezeichnungsfeld43"
                            Caption ="gesch. Nutz.-dauer:"
                            LayoutCachedLeft =2893
                            LayoutCachedTop =1257
                            LayoutCachedWidth =4260
                            LayoutCachedHeight =1497
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =3
                    TextFontFamily =0
                    BackStyle =0
                    Left =10541
                    Top =1245
                    Width =1361
                    TabIndex =8
                    Name ="Neubauwert_ab_2000"
                    ControlSource ="Neubauwert_ab_2000"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =10541
                    LayoutCachedTop =1245
                    LayoutCachedWidth =11902
                    LayoutCachedHeight =1485
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =9017
                            Top =1245
                            Width =1466
                            Height =240
                            Name ="Bezeichnungsfeld47"
                            Caption ="Neub.-wert ab 2000:"
                            LayoutCachedLeft =9017
                            LayoutCachedTop =1245
                            LayoutCachedWidth =10483
                            LayoutCachedHeight =1485
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =2723
                    Top =956
                    Width =1594
                    Height =240
                    Name ="Bezeichnungsfeld75"
                    Caption ="Baujahr Modernisierung:"
                    LayoutCachedLeft =2723
                    LayoutCachedTop =956
                    LayoutCachedWidth =4317
                    LayoutCachedHeight =1196
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    DecimalPlaces =0
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =4425
                    Top =956
                    Width =794
                    TabIndex =6
                    Name ="Baujahr_mod"
                    ControlSource ="Baujahr_mod"
                    Format ="mm/yyyy"
                    InputMask ="0000"

                    LayoutCachedLeft =4425
                    LayoutCachedTop =956
                    LayoutCachedWidth =5219
                    LayoutCachedHeight =1196
                    ForeThemeColorIndex =0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    BackStyle =0
                    Left =11114
                    Top =68
                    Width =687
                    Name ="Index_manuell"
                    ControlSource ="Index_manuell"
                    Format ="Standard"

                    LayoutCachedLeft =11114
                    LayoutCachedTop =68
                    LayoutCachedWidth =11801
                    LayoutCachedHeight =308
                    ForeThemeColorIndex =0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =10483
                    Top =68
                    Width =520
                    Height =240
                    Name ="Bezeichnungsfeld101"
                    Caption ="Index:"
                    LayoutCachedLeft =10483
                    LayoutCachedTop =68
                    LayoutCachedWidth =11003
                    LayoutCachedHeight =308
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    BackStyle =0
                    IMESentenceMode =3
                    Left =10542
                    Top =956
                    Width =1361
                    TabIndex =4
                    Name ="BRI"
                    ControlSource ="BRI"
                    Format ="Standard"

                    LayoutCachedLeft =10542
                    LayoutCachedTop =956
                    LayoutCachedWidth =11903
                    LayoutCachedHeight =1196
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =9749
                            Top =956
                            Width =735
                            Height =240
                            Name ="Bezeichnungsfeld102"
                            Caption ="BRI (m ³):"
                            LayoutCachedLeft =9749
                            LayoutCachedTop =956
                            LayoutCachedWidth =10484
                            LayoutCachedHeight =1196
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =3
                    TextFontFamily =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =10542
                    Top =2415
                    Width =1361
                    TabIndex =7
                    Name ="Versicherungswert"
                    ControlSource ="Versicherungswert"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =10542
                    LayoutCachedTop =2415
                    LayoutCachedWidth =11903
                    LayoutCachedHeight =2655
                    ForeThemeColorIndex =0
                    CurrencySymbol ="€"
                    ColLCID =1031
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =9146
                            Top =2415
                            Width =1337
                            Height =240
                            Name ="Bezeichnungsfeld103"
                            Caption ="Versicherungswert:"
                            LayoutCachedLeft =9146
                            LayoutCachedTop =2415
                            LayoutCachedWidth =10483
                            LayoutCachedHeight =2655
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OldBorderStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =0
                    IMESentenceMode =3
                    Left =1536
                    Top =53
                    Width =5558
                    FontWeight =700
                    TabIndex =21
                    Name ="Text104"
                    ControlSource ="Objekt"

                    LayoutCachedLeft =1536
                    LayoutCachedTop =53
                    LayoutCachedWidth =7094
                    LayoutCachedHeight =293
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            TextFontFamily =0
                            Left =689
                            Top =53
                            Width =780
                            Height =240
                            FontWeight =600
                            Name ="Bezeichnungsfeld105"
                            Caption ="Gebäude:"
                            LayoutCachedLeft =689
                            LayoutCachedTop =53
                            LayoutCachedWidth =1469
                            LayoutCachedHeight =293
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =215
                    BackStyle =0
                    IMESentenceMode =3
                    Left =9258
                    Top =631
                    Width =846
                    Height =255
                    ColumnWidth =3060
                    TabIndex =22
                    Name ="Bewertung abgeschlossen"
                    ControlSource ="Bewertung abgeschlossen"
                    Format ="Short Date"
                    EventProcPrefix ="Bewertung_abgeschlossen"

                    LayoutCachedLeft =9258
                    LayoutCachedTop =631
                    LayoutCachedWidth =10104
                    LayoutCachedHeight =886
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =7214
                            Top =631
                            Width =2060
                            Height =240
                            Name ="Bezeichnungsfeld106"
                            Caption ="Bewertung abgeschlossen am:"
                            LayoutCachedLeft =7214
                            LayoutCachedTop =631
                            LayoutCachedWidth =9274
                            LayoutCachedHeight =871
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    BackStyle =0
                    IMESentenceMode =3
                    Left =10543
                    Top =631
                    Width =1361
                    Height =255
                    TabIndex =23
                    Name ="von"
                    ControlSource ="von"

                    LayoutCachedLeft =10543
                    LayoutCachedTop =631
                    LayoutCachedWidth =11904
                    LayoutCachedHeight =886
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =10118
                            Top =631
                            Width =396
                            Height =240
                            Name ="Bezeichnungsfeld107"
                            Caption ="von:"
                            LayoutCachedLeft =10118
                            LayoutCachedTop =631
                            LayoutCachedWidth =10514
                            LayoutCachedHeight =871
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =0
                    Left =1536
                    Top =630
                    Width =5558
                    TabIndex =2
                    Name ="ID aus bebaute Grundstücke"
                    ControlSource ="=fc_Grundst_zu_GebT(F_Variable(\"lng_ID_Geb_Teil\"))"
                    EventProcPrefix ="ID_aus_bebaute_Grundstücke"

                    LayoutCachedLeft =1536
                    LayoutCachedTop =630
                    LayoutCachedWidth =7094
                    LayoutCachedHeight =870
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            TextFontFamily =0
                            Left =163
                            Top =630
                            Width =1305
                            Height =240
                            FontWeight =600
                            Name ="Bezeichnungsfeld81"
                            Caption ="Grundstück:"
                            LayoutCachedLeft =163
                            LayoutCachedTop =630
                            LayoutCachedWidth =1468
                            LayoutCachedHeight =870
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =1574
                    Top =1816
                    Width =1361
                    TabIndex =10
                    Name ="Fassade (11%)"
                    ControlSource ="Fassade (11%)"
                    EventProcPrefix ="Fassade__11__"

                    LayoutCachedLeft =1574
                    LayoutCachedTop =1816
                    LayoutCachedWidth =2935
                    LayoutCachedHeight =2056
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =308
                            Top =1816
                            Width =1170
                            Height =240
                            Name ="Sp1_Label"
                            Caption ="Fassade (11%):"
                            LayoutCachedLeft =308
                            LayoutCachedTop =1816
                            LayoutCachedWidth =1478
                            LayoutCachedHeight =2056
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =1574
                    Top =2116
                    Width =1361
                    TabIndex =13
                    Name ="Sanitär (13%)"
                    ControlSource ="Sanitär (13%)"
                    EventProcPrefix ="Sanitär__13__"

                    LayoutCachedLeft =1574
                    LayoutCachedTop =2116
                    LayoutCachedWidth =2935
                    LayoutCachedHeight =2356
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =413
                            Top =2116
                            Width =1065
                            Height =240
                            Name ="Bezeichnungsfeld64"
                            Caption ="Sanitär (13%):"
                            LayoutCachedLeft =413
                            LayoutCachedTop =2116
                            LayoutCachedWidth =1478
                            LayoutCachedHeight =2356
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =1574
                    Top =2401
                    Width =1361
                    TabIndex =16
                    Name ="Innentüren (11%)"
                    ControlSource ="Innentüren (11%)"
                    EventProcPrefix ="Innentüren__11__"

                    LayoutCachedLeft =1574
                    LayoutCachedTop =2401
                    LayoutCachedWidth =2935
                    LayoutCachedHeight =2641
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =158
                            Top =2401
                            Width =1320
                            Height =240
                            Name ="Bezeichnungsfeld70"
                            Caption ="Innentüren (11%):"
                            LayoutCachedLeft =158
                            LayoutCachedTop =2401
                            LayoutCachedWidth =1478
                            LayoutCachedHeight =2641
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =4363
                    Top =1815
                    Width =1361
                    TabIndex =11
                    Name ="Fenster (14%)"
                    ControlSource ="Fenster (14%)"
                    EventProcPrefix ="Fenster__14__"

                    LayoutCachedLeft =4363
                    LayoutCachedTop =1815
                    LayoutCachedWidth =5724
                    LayoutCachedHeight =2055
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =3203
                            Top =1815
                            Width =1095
                            Height =240
                            Name ="Bezeichnungsfeld60"
                            Caption ="Fenster (14%):"
                            LayoutCachedLeft =3203
                            LayoutCachedTop =1815
                            LayoutCachedWidth =4298
                            LayoutCachedHeight =2055
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =4363
                    Top =2115
                    Width =1361
                    TabIndex =15
                    Name ="Innenwände Sanitärbereich (6%)"
                    ControlSource ="Innenwände Sanitärbereich (6%)"
                    EventProcPrefix ="Innenwände_Sanitärbereich__6__"

                    LayoutCachedLeft =4363
                    LayoutCachedTop =2115
                    LayoutCachedWidth =5724
                    LayoutCachedHeight =2355
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =2948
                            Top =2115
                            Width =1350
                            Height =240
                            Name ="Bezeichnungsfeld66"
                            Caption ="Wände San. (6%):"
                            LayoutCachedLeft =2948
                            LayoutCachedTop =2115
                            LayoutCachedWidth =4298
                            LayoutCachedHeight =2355
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =93
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =4363
                    Top =2400
                    Width =1361
                    TabIndex =19
                    Name ="Heizung (15%)"
                    ControlSource ="Heizung (15%)"
                    EventProcPrefix ="Heizung__15__"

                    LayoutCachedLeft =4363
                    LayoutCachedTop =2400
                    LayoutCachedWidth =5724
                    LayoutCachedHeight =2640
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =3158
                            Top =2400
                            Width =1140
                            Height =240
                            Name ="Bezeichnungsfeld72"
                            Caption ="Heizung (15%):"
                            LayoutCachedLeft =3158
                            LayoutCachedTop =2400
                            LayoutCachedWidth =4298
                            LayoutCachedHeight =2640
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =7253
                    Top =2130
                    Width =1361
                    TabIndex =14
                    Name ="Dächer (15%)"
                    ControlSource ="Dächer (15%)"
                    EventProcPrefix ="Dächer__15__"

                    LayoutCachedLeft =7253
                    LayoutCachedTop =2130
                    LayoutCachedWidth =8614
                    LayoutCachedHeight =2370
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =6098
                            Top =2130
                            Width =1080
                            Height =240
                            Name ="Bezeichnungsfeld62"
                            Caption ="Dächer (15%):"
                            LayoutCachedLeft =6098
                            LayoutCachedTop =2130
                            LayoutCachedWidth =7178
                            LayoutCachedHeight =2370
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =7253
                    Top =2415
                    Width =1361
                    TabIndex =17
                    Name ="Bodenbeläge (8 %)"
                    ControlSource ="Bodenbeläge (8 %)"
                    EventProcPrefix ="Bodenbeläge__8___"

                    LayoutCachedLeft =7253
                    LayoutCachedTop =2415
                    LayoutCachedWidth =8614
                    LayoutCachedHeight =2655
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =87
                            TextAlign =3
                            Left =5723
                            Top =2415
                            Width =1455
                            Height =240
                            Name ="Bezeichnungsfeld68"
                            Caption ="Bodenbeläge (8 %):"
                            LayoutCachedLeft =5723
                            LayoutCachedTop =2415
                            LayoutCachedWidth =7178
                            LayoutCachedHeight =2655
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =7251
                    Top =1815
                    Width =1361
                    TabIndex =18
                    Name ="Elektroinstallation (7%)"
                    ControlSource ="Elektroinstallation (7%)"
                    EventProcPrefix ="Elektroinstallation__7__"

                    LayoutCachedLeft =7251
                    LayoutCachedTop =1815
                    LayoutCachedWidth =8612
                    LayoutCachedHeight =2055
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =6209
                            Top =1815
                            Width =960
                            Height =240
                            Name ="Bezeichnungsfeld74"
                            Caption ="Elektro (7%):"
                            LayoutCachedLeft =6209
                            LayoutCachedTop =1815
                            LayoutCachedWidth =7169
                            LayoutCachedHeight =2055
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =0
                    Left =1536
                    Top =346
                    Width =9627
                    TabIndex =1
                    Name ="Geb_Gruppe"
                    ControlSource ="=DLookUp(\"[Typ]\",\"NHK-Typen\",\"[Kennummer] = \" & [Typ aus NHK-Typen])"
                    SmartTags ="\"=DomWert(\";\"[Nutzungsdauer bis]\";\"NHK-Typen\";\"[Kennummer] = \";\" & [Typ"
                        " aus NHK-Typen])\""

                    LayoutCachedLeft =1536
                    LayoutCachedTop =346
                    LayoutCachedWidth =11163
                    LayoutCachedHeight =586
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            TextFontFamily =0
                            Left =111
                            Top =346
                            Width =1357
                            Height =240
                            FontWeight =600
                            Name ="Bezeichnungsfeld63"
                            Caption ="Gebäudegruppe:"
                            LayoutCachedLeft =111
                            LayoutCachedTop =346
                            LayoutCachedWidth =1468
                            LayoutCachedHeight =586
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    BackStyle =0
                    Left =7379
                    Top =68
                    Width =3001
                    Height =226
                    TabIndex =25
                    Name ="Zuordnung_Bilanz"
                    ControlSource ="=DLookUp(\"[Bezeichnung in Bilanz]\",\"Zuordnung Gebäudebestand zu Bilanz\",\"[I"
                        "D_] = \" & [Zuordnung Bilanz])"

                    LayoutCachedLeft =7379
                    LayoutCachedTop =68
                    LayoutCachedWidth =10380
                    LayoutCachedHeight =294
                    ForeThemeColorIndex =0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =5
                    OverlapFlags =93
                    TextAlign =2
                    BackStyle =0
                    Left =7252
                    Top =1257
                    Width =1361
                    Height =255
                    TabIndex =20
                    Name ="Nutzungsdauer_aus_Daten"
                    ControlSource ="=DLookUp(\"[Nutzungsdauer bis]\",\"NHK-Typen\",\"[Kennummer] = \" & [Typ aus NHK"
                        "-Typen])"
                    Format ="#\"  Jahre\""
                    OnChange ="[Ereignisprozedur]"

                    LayoutCachedLeft =7252
                    LayoutCachedTop =1257
                    LayoutCachedWidth =8613
                    LayoutCachedHeight =1512
                    ForeThemeColorIndex =0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =5902
                    Top =1257
                    Width =1268
                    Height =240
                    Name ="Bezeichnungsfeld108"
                    Caption ="max. Nutz.-dauer:"
                    LayoutCachedLeft =5902
                    LayoutCachedTop =1257
                    LayoutCachedWidth =7170
                    LayoutCachedHeight =1497
                End
                Begin TextBox
                    Visible = NotDefault
                    SpecialEffect =0
                    OverlapFlags =85
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =285
                    Top =53
                    Width =171
                    TabIndex =24
                    Name ="Typ aus NHK-Typen"
                    ControlSource ="Typ aus NHK-Typen"
                    EventProcPrefix ="Typ_aus_NHK_Typen"

                    LayoutCachedLeft =285
                    LayoutCachedTop =53
                    LayoutCachedWidth =456
                    LayoutCachedHeight =293
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2292
                    Top =3401
                    Width =9468
                    Height =592
                    TabIndex =26
                    BackColor =15466495
                    Name ="Text111"
                    ControlSource ="Erläut_Bewertung"

                    LayoutCachedLeft =2292
                    LayoutCachedTop =3401
                    LayoutCachedWidth =11760
                    LayoutCachedHeight =3993
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =224
                            Top =3401
                            Width =1972
                            Height =210
                            Name ="Bezeichnungsfeld112"
                            Caption ="Anmerkung zur Bewertung:"
                            LayoutCachedLeft =224
                            LayoutCachedTop =3401
                            LayoutCachedWidth =2196
                            LayoutCachedHeight =3611
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =3
                    TextFontFamily =0
                    BackStyle =0
                    Left =10541
                    Top =1531
                    Width =1361
                    TabIndex =27
                    Name ="wbw_gebteil"
                    ControlSource ="=[hk]*[faktor]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =10541
                    LayoutCachedTop =1531
                    LayoutCachedWidth =11902
                    LayoutCachedHeight =1771
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            TextFontFamily =0
                            Left =9193
                            Top =1531
                            Width =1298
                            Height =240
                            Name ="Bezeichnungsfeld114"
                            Caption ="HK*Faktor = WBW"
                            LayoutCachedLeft =9193
                            LayoutCachedTop =1531
                            LayoutCachedWidth =10491
                            LayoutCachedHeight =1771
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =1597
                    Top =1531
                    Width =1193
                    TabIndex =28
                    Name ="hk"
                    ControlSource ="=HK_Berechnen_2022(F_Variable(\"lng_ID_Geb_Teil\"))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =1597
                    LayoutCachedTop =1531
                    LayoutCachedWidth =2790
                    LayoutCachedHeight =1771
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            TextFontFamily =0
                            Left =173
                            Top =1531
                            Width =1313
                            Height =240
                            Name ="Bezeichnungsfeld116"
                            Caption ="NHK2009/HK BJ"
                            LayoutCachedLeft =173
                            LayoutCachedTop =1531
                            LayoutCachedWidth =1486
                            LayoutCachedHeight =1771
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =0
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =3510
                    Top =1531
                    Width =557
                    TabIndex =29
                    Name ="bew_jahr"
                    ControlSource ="=F_Variable(\"lng_Kalk_Jahr\")"

                    LayoutCachedLeft =3510
                    LayoutCachedTop =1531
                    LayoutCachedWidth =4067
                    LayoutCachedHeight =1771
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            TextFontFamily =0
                            Left =2898
                            Top =1531
                            Width =577
                            Height =240
                            Name ="Bezeichnungsfeld120"
                            Caption ="Bew.jahr"
                            LayoutCachedLeft =2898
                            LayoutCachedTop =1531
                            LayoutCachedWidth =3475
                            LayoutCachedHeight =1771
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =0
                    SpecialEffect =5
                    OverlapFlags =93
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =6641
                    Top =1531
                    Width =570
                    TabIndex =30
                    Name ="index_bauj"
                    ControlSource ="=DLookUp(\"Index\",\"tbl_200_10_05_Indexe\",\"Jahr = \" & IIf(Year(Nz([Baujahr_r"
                        "eal]))<2000,\"2009\",CStr(Year(Nz([Baujahr_real])))))"

                    LayoutCachedLeft =6641
                    LayoutCachedTop =1531
                    LayoutCachedWidth =7211
                    LayoutCachedHeight =1771
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            TextFontFamily =0
                            Left =5539
                            Top =1531
                            Width =1080
                            Height =240
                            Name ="Bezeichnungsfeld122"
                            Caption ="/  Ind. BJ/2009"
                            LayoutCachedLeft =5539
                            LayoutCachedTop =1531
                            LayoutCachedWidth =6619
                            LayoutCachedHeight =1771
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =0
                    SpecialEffect =5
                    OverlapFlags =215
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =5098
                    Top =1531
                    Width =483
                    TabIndex =31
                    Name ="index_bewj"
                    ControlSource ="=DLookUp(\"Index\",\"tbl_200_10_05_Indexe\",\"Jahr = \" & CStr([bew_jahr]))"

                    LayoutCachedLeft =5098
                    LayoutCachedTop =1531
                    LayoutCachedWidth =5581
                    LayoutCachedHeight =1771
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            TextFontFamily =0
                            Left =4263
                            Top =1531
                            Width =840
                            Height =240
                            Name ="Bezeichnungsfeld124"
                            Caption ="( Ind. Bew.j."
                            LayoutCachedLeft =4263
                            LayoutCachedTop =1531
                            LayoutCachedWidth =5103
                            LayoutCachedHeight =1771
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =0
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    BackStyle =0
                    Left =7885
                    Top =1531
                    Width =804
                    TabIndex =32
                    Name ="faktor"
                    ControlSource ="=([index_bewj]/[index_bauj])"

                    LayoutCachedLeft =7885
                    LayoutCachedTop =1531
                    LayoutCachedWidth =8689
                    LayoutCachedHeight =1771
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            TextFontFamily =0
                            Left =7152
                            Top =1531
                            Width =681
                            Height =240
                            Name ="Bezeichnungsfeld126"
                            Caption =") = Faktor"
                            LayoutCachedLeft =7152
                            LayoutCachedTop =1531
                            LayoutCachedWidth =7833
                            LayoutCachedHeight =1771
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =3
                    TextFontFamily =0
                    BackStyle =0
                    Left =10541
                    Top =1815
                    Width =1361
                    TabIndex =33
                    Name ="wbw_werterh"
                    ControlSource ="=WBW_BerechnenNurWerterh(F_Variable(\"lng_ID_Geb_Teil\"),F_Variable(\"lng_Kalk_J"
                        "ahr\"))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =10541
                    LayoutCachedTop =1815
                    LayoutCachedWidth =11902
                    LayoutCachedHeight =2055
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            TextFontFamily =0
                            Left =9184
                            Top =1815
                            Width =1298
                            Height =240
                            Name ="Bezeichnungsfeld128"
                            Caption ="Werterh. BT WBW"
                            LayoutCachedLeft =9184
                            LayoutCachedTop =1815
                            LayoutCachedWidth =10482
                            LayoutCachedHeight =2055
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =3
                    TextFontFamily =0
                    BackStyle =0
                    Left =10541
                    Top =2130
                    Width =1361
                    TabIndex =34
                    Name ="wbw_gesamt"
                    ControlSource ="=[wbw_werterh]+[wbw_gebteil]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =10541
                    LayoutCachedTop =2130
                    LayoutCachedWidth =11902
                    LayoutCachedHeight =2370
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            TextFontFamily =0
                            Left =9185
                            Top =2130
                            Width =1298
                            Height =240
                            Name ="Bezeichnungsfeld130"
                            Caption ="Gesamt WBW"
                            LayoutCachedLeft =9185
                            LayoutCachedTop =2130
                            LayoutCachedWidth =10483
                            LayoutCachedHeight =2370
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "B_Unterformular_Gebäudedaten.cls"
