Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =8956
    DatasheetFontHeight =10
    ItemSuffix =255
    Left =11385
    Top =2415
    RecSrcDt = Begin
        0xc1f0863bcfcde440
    End
    RecordSource ="B_Archivierung_Gebäudebewertung_1_lesen"
    Caption ="Gebäudeliste"
    OnOpen ="= Maxim_Bericht()"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =1
            FontSize =12
            FontName ="Haettenschweiler"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
        End
        Begin Image
            OldBorderStyle =0
            BorderLineStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin BoundObjectFrame
            BorderLineStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin ListBox
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin ComboBox
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin Subform
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            Width =4536
            Height =2835
        End
        Begin PageBreak
            Width =283
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =2
            ControlSource ="Bezeichnung"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Gebäudeteil"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =453
            Name ="Berichtskopf"
            Begin
                Begin Label
                    Left =510
                    Top =113
                    Width =3005
                    Height =283
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld173"
                    Caption ="Bereich 60"
                    FontName ="Arial"
                End
            End
        End
        Begin PageHeader
            Height =283
            Name ="Seitenkopf"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =0
            Name ="Gruppenkopf0"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =0
            BreakLevel =1
            Name ="Gruppenkopf1"
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =18141
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Left =3560
                    Top =1699
                    Width =2931
                    Height =300
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =555
                            Top =1699
                            Width =2730
                            Height =300
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld66"
                            Caption ="Bezeichnung:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    Left =3560
                    Top =2039
                    Width =2931
                    Height =300
                    TabIndex =1
                    Name ="Straße"
                    ControlSource ="Straße"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =555
                            Top =2039
                            Width =2730
                            Height =300
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld67"
                            Caption ="Straße:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    Left =3560
                    Top =2379
                    Width =2931
                    Height =300
                    TabIndex =2
                    Name ="Gebäudeteil"
                    ControlSource ="Gebäudeteil"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =555
                            Top =2379
                            Width =2730
                            Height =300
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld68"
                            Caption ="Gebäudeteil:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3571
                    Top =2777
                    Width =1191
                    Height =255
                    TabIndex =3
                    Name ="BGF"
                    ControlSource ="BGF"
                    Format ="#,##0.00\" m²\""

                    LayoutCachedLeft =3571
                    LayoutCachedTop =2777
                    LayoutCachedWidth =4762
                    LayoutCachedHeight =3032
                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =2777
                            Width =2220
                            Height =300
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld69"
                            Caption ="Bruttogrundfläche:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    Left =3570
                    Top =3112
                    Width =2931
                    Height =300
                    TabIndex =4
                    Name ="Baujahr_real"
                    ControlSource ="Baujahr_real"
                    Format ="Fixed"
                    InputMask ="0000"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =3112
                            Width =1410
                            Height =300
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld70"
                            Caption ="Baujahr:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    Left =3571
                    Top =3797
                    Width =411
                    Height =300
                    TabIndex =5
                    Name ="gewöhnliche Nutzungsdauer"
                    ControlSource ="gewöhnliche Nutzungsdauer"
                    Format ="Fixed"
                    InputMask ="00"
                    EventProcPrefix ="gewöhnliche_Nutzungsdauer"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =3797
                            Width =2955
                            Height =300
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld71"
                            Caption ="gewöhnliche Nutzungsdauer:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    Left =3571
                    Top =4137
                    Width =426
                    Height =270
                    TabIndex =6
                    Name ="geschätze Nutzungsdauer"
                    ControlSource ="geschätze Nutzungsdauer"
                    Format ="Fixed"
                    InputMask ="00"
                    EventProcPrefix ="geschätze_Nutzungsdauer"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =4137
                            Width =2850
                            Height =270
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld72"
                            Caption ="geschätze Nutzungsdauer:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    Left =3928
                    Top =5781
                    Width =3576
                    Height =300
                    TabIndex =7
                    Name ="Ausstattung"
                    ControlSource ="Ausstattung"
                    Format ="Fixed"
                    InputMask ="00"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =5781
                            Width =2790
                            Height =270
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld74"
                            Caption ="Ausstattung nach NHK:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3928
                    Top =6116
                    Width =3576
                    Height =300
                    TabIndex =8
                    Name ="Wert von"
                    ControlSource ="Wert von"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="Wert_von"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =6116
                            Width =2775
                            Height =300
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld76"
                            Caption ="Unterer Wert NHK €/m²:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3928
                    Top =6466
                    Width =3576
                    Height =300
                    TabIndex =9
                    Name ="Wert bis"
                    ControlSource ="Wert bis"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="Wert_bis"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =6466
                            Width =2775
                            Height =300
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld78"
                            Caption ="Oberer Wert NHK €/m²:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3928
                    Top =6807
                    Width =3576
                    Height =300
                    TabIndex =10
                    Name ="Euro je BGF"
                    ControlSource ="Euro je BGF"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="Euro_je_BGF"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =570
                            Top =6818
                            Width =3345
                            Height =270
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld80"
                            Caption ="Ermittelter Wert NHK €/m² 2000:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3923
                    Top =8510
                    Width =3576
                    Height =270
                    TabIndex =11
                    Name ="Wert3"
                    ControlSource ="=[BNK]+[Wert2]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =570
                            Top =8505
                            Width =3285
                            Height =270
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld82"
                            Caption ="Herstellungkosten €/m² 1.1.05 :"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3939
                    Top =8902
                    Width =3576
                    Height =300
                    TabIndex =12
                    Name ="Neubauwert_ab_2000_real"
                    ControlSource ="Neubauwert_ab_2000"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =8900
                            Width =3285
                            Height =300
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld86"
                            Caption ="Herstellungskosten ab BJ 2000:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3968
                    Top =10660
                    Width =3576
                    Height =300
                    TabIndex =13
                    Name ="Herstellungskosten"
                    ControlSource ="=IIf(IsNull([Neubauwert_ab_2000_real]),[Wert3],[Neubauwert_ab_2000])+[Werterhöhu"
                        "ng]+[Außenanlagen]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =10658
                            Width =2715
                            Height =300
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld88"
                            Caption ="Herstellungskosten:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin Rectangle
                    Left =453
                    Top =1586
                    Width =7993
                    Height =3110
                    Name ="Rechteck90"
                End
                Begin Rectangle
                    Left =453
                    Top =5662
                    Width =7993
                    Height =5390
                    Name ="Rechteck92"
                End
                Begin Label
                    TextAlign =0
                    Left =495
                    Top =1140
                    Width =1485
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld95"
                    Caption ="Gebäudedaten:"
                    FontName ="Arial"
                End
                Begin Label
                    TextAlign =0
                    Left =495
                    Top =5273
                    Width =4035
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld97"
                    Caption ="Ermittlung der Herstellungskosten:"
                    FontName ="Arial"
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    Left =6179
                    Top =8162
                    Width =1371
                    Height =270
                    TabIndex =14
                    Name ="BaunebenkostenProzent"
                    ControlSource ="=\"(\" & [Baunebenkosten] & \"%)\""
                    Format ="#,##0.00 €;-#,##0.00 €"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =570
                            Top =8175
                            Width =2895
                            Height =270
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld103"
                            Caption ="Baunebenkosten €/m²:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin Label
                    TextAlign =0
                    Left =4081
                    Top =3803
                    Width =540
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld104"
                    Caption ="Jahre"
                    FontName ="Arial"
                End
                Begin Label
                    TextAlign =0
                    Left =4081
                    Top =4137
                    Width =540
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld105"
                    Caption ="Jahre"
                    FontName ="Arial"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3911
                    Top =7482
                    Width =3576
                    Height =270
                    TabIndex =15
                    Name ="Index"
                    ControlSource ="=IIf(IsNull([Index_manuell]),([Index ab 2000]/100)+1,([Index_manuell]/100)+1)"
                    Format ="Percent"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =7482
                            Width =2895
                            Height =270
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld108"
                            Caption ="Index auf Bewertungsjahr:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3911
                    Top =7142
                    Width =3576
                    Height =270
                    TabIndex =16
                    Name ="Wert1"
                    ControlSource ="=[BGF]*[Euro je BGF]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =7142
                            Width =2880
                            Height =270
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld110"
                            Caption ="Wert NHK x BGF"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    Left =3570
                    Top =3457
                    Width =2931
                    Height =300
                    TabIndex =17
                    Name ="Baujahr_mod"
                    ControlSource ="Baujahr_mod"
                    Format ="Fixed"
                    InputMask ="0000"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =3457
                            Width =2775
                            Height =300
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld115"
                            Caption ="Jahr Modernisierung:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3923
                    Top =8162
                    Width =2106
                    Height =270
                    TabIndex =18
                    Name ="BNK"
                    ControlSource ="=[Wert2]*[Baunebenkosten]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3911
                    Top =7822
                    Width =3576
                    Height =270
                    TabIndex =19
                    Name ="Wert2"
                    ControlSource ="=[Index]*[Wert1]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =7822
                            Width =2895
                            Height =270
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld119"
                            Caption ="hochgerechneter Wert:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin Rectangle
                    Left =453
                    Top =11897
                    Width =7993
                    Height =2270
                    Name ="Rechteck121"
                End
                Begin Label
                    TextAlign =0
                    Left =510
                    Top =11508
                    Width =4035
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld122"
                    Caption ="Ermittlung der Abschreibungen:"
                    FontName ="Arial"
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    Left =3968
                    Top =12075
                    Width =426
                    Height =270
                    TabIndex =20
                    Name ="Nutzungsdauer"
                    ControlSource ="=IIf(IsNull([geschätze Nutzungsdauer]),[gewöhnliche Nutzungsdauer],[geschätze Nu"
                        "tzungsdauer])"
                    Format ="Fixed"
                    InputMask ="00"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =570
                            Top =12075
                            Width =2940
                            Height =270
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld124"
                            Caption ="berücksichtigte Nutzungsdauer:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin Label
                    TextAlign =0
                    Left =4422
                    Top =12075
                    Width =585
                    Height =270
                    FontSize =9
                    Name ="Bezeichnungsfeld125"
                    Caption ="Jahre"
                    FontName ="Arial"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3968
                    Top =12755
                    Width =3576
                    Height =255
                    TabIndex =21
                    Name ="Abschreibung_Jahr"
                    ControlSource ="=[Herstellungskosten]/[Nutzungsdauer]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =12755
                            Width =3180
                            Height =270
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld127"
                            Caption ="Abschreibung / Jahr:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    Left =3968
                    Top =13095
                    Width =3576
                    Height =255
                    TabIndex =22
                    Name ="Abschreibungsjahre"
                    ControlSource ="=IIf([bewertungsjahr]-[Baujahr]>[Nutzungsdauer],[Nutzungsdauer],[bewertungsjahr]"
                        "-[Baujahr])"
                    Format ="Fixed"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =13095
                            Width =3180
                            Height =270
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld129"
                            Caption ="Abschreibung / Jahre:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    Left =3968
                    Top =12415
                    Width =2931
                    Height =300
                    TabIndex =23
                    Name ="Baujahr"
                    ControlSource ="Baujahr"
                    Format ="Fixed"
                    InputMask ="0000"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =12415
                            Width =2775
                            Height =300
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld131"
                            Caption ="berücksichtigtes Baujahr:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3968
                    Top =13435
                    Width =3576
                    Height =255
                    TabIndex =24
                    Name ="Abschreibung"
                    ControlSource ="=IIf([Abschreibungsjahre]*[Abschreibung_Jahr]>[Herstellungskosten],[Herstellungs"
                        "kosten],[Abschreibungsjahre]*[Abschreibung_Jahr])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =13435
                            Width =3180
                            Height =270
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld133"
                            Caption ="kumulierte Abschreibung:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    Left =6519
                    Top =396
                    Width =1588
                    Height =397
                    TabIndex =25
                    Name ="Kennummer"
                    ControlSource ="ID_Gebäudeteil"

                End
                Begin Subform
                    Left =170
                    Top =14400
                    Width =8449
                    Height =110
                    TabIndex =26
                    Name ="Gebäudebewertung_Archiv_Unterbericht_Sanierungsstau"
                    SourceObject ="Report.Gebäudebewertung_Archiv_Unterbericht_Sanierungsstau"
                    LinkChildFields ="ID_Gebäudeteil"
                    LinkMasterFields ="ID_Gebäudeteil"

                End
                Begin TextBox
                    Visible = NotDefault
                    Left =7256
                    Top =14115
                    Width =1693
                    Height =337
                    FontSize =10
                    FontWeight =700
                    TabIndex =27
                    ForeColor =255
                    Name ="Sanierungsstau"
                    ControlSource ="=[Gebäudebewertung_Archiv_Unterbericht_Sanierungsstau].[Report]![Sanierungsstau]"

                End
                Begin Subform
                    Left =170
                    Top =14630
                    Width =8449
                    Height =110
                    TabIndex =28
                    Name ="Gebäudebewertung_Archiv_Unterbericht_Werterhöhung"
                    SourceObject ="Report.Gebäudebewertung_Archiv_Unterbericht_Werterhöhung"
                    LinkChildFields ="ID_Gebäudeteil"
                    LinkMasterFields ="ID_Gebäudeteil"

                End
                Begin TextBox
                    Visible = NotDefault
                    Left =5385
                    Top =14122
                    Width =1693
                    Height =337
                    FontSize =10
                    FontWeight =700
                    TabIndex =29
                    ForeColor =255
                    Name ="WerterhöhungU"
                    ControlSource ="=[Gebäudebewertung_Archiv_Unterbericht_Werterhöhung].[Report]![Werterhöhung]"

                End
                Begin Rectangle
                    Left =468
                    Top =15808
                    Width =7993
                    Height =1940
                    Name ="Rechteck145"
                End
                Begin Label
                    TextAlign =0
                    Left =453
                    Top =15419
                    Width =4035
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld146"
                    Caption ="Gebäudebewertung:"
                    FontName ="Arial"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    Left =3912
                    Top =16043
                    Width =3576
                    Height =255
                    TabIndex =30
                    Name ="a"
                    ControlSource ="=[Herstellungskosten]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =0
                    Left =510
                    Top =16043
                    Width =3180
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld158"
                    Caption ="Herstellungskosten:"
                    FontName ="Arial"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    Left =3912
                    Top =16384
                    Width =3576
                    Height =255
                    TabIndex =31
                    Name ="b"
                    ControlSource ="=[Abschreibung]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =0
                    Left =510
                    Top =16384
                    Width =3180
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld160"
                    Caption ="Kumulierte Abschreibung:"
                    FontName ="Arial"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    Left =3912
                    Top =16724
                    Width =3576
                    Height =255
                    TabIndex =32
                    Name ="c"
                    ControlSource ="=[Sanierungsstau]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =0
                    Left =510
                    Top =16724
                    Width =3180
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld162"
                    Caption ="Sanierungsstau:"
                    FontName ="Arial"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3968
                    Top =10261
                    Width =3576
                    Height =255
                    TabIndex =33
                    Name ="Werterhöhung"
                    ControlSource ="=[WerterhöhungU]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =0
                    Left =566
                    Top =10261
                    Width =3180
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld164"
                    Caption ="Werterhöhungen:"
                    FontName ="Arial"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    Left =3912
                    Top =17404
                    Width =3576
                    Height =255
                    TabIndex =34
                    Name ="ermittelter Gebäudewert"
                    ControlSource ="=IIf([a]-[b]-[c]<=0,1,[a]-[b]-[c])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="ermittelter_Gebäudewert"

                End
                Begin Label
                    TextAlign =0
                    Left =510
                    Top =17404
                    Width =3180
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld166"
                    Caption ="Ermittelter Gebäudewert:"
                    FontName ="Arial"
                End
                Begin Subform
                    Left =170
                    Top =14860
                    Width =8449
                    Height =110
                    TabIndex =35
                    Name ="Gebäudebewertung_Archiv_Unterbericht_Bodenwert"
                    SourceObject ="Report.Gebäudebewertung_Archiv_Unterbericht_Bodenwert"
                    LinkChildFields ="ID_Gebäudeteil"
                    LinkMasterFields ="ID_Gebäudeteil"

                End
                Begin TextBox
                    Visible = NotDefault
                    Left =3514
                    Top =14122
                    Width =1693
                    Height =337
                    FontSize =10
                    FontWeight =700
                    TabIndex =36
                    ForeColor =255
                    Name ="Grundstück"
                    ControlSource ="=[Gebäudebewertung_Archiv_Unterbericht_Bodenwert].[Report]![Grundstückswert]"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    Left =3912
                    Top =17064
                    Width =3576
                    Height =255
                    TabIndex =37
                    Name ="e"
                    ControlSource ="=[Grundstück]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =0
                    Left =510
                    Top =17064
                    Width =3180
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld170"
                    Caption ="Grundstückswert"
                    FontName ="Arial"
                End
                Begin PageBreak
                    Top =11111
                    Name ="Seitenumbruch172"
                End
                Begin PageBreak
                    Top =14796
                    Name ="Seitenumbruch174"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextAlign =3
                    Left =4648
                    Top =15477
                    Width =3576
                    Height =255
                    TabIndex =38
                    ForeColor =255
                    Name ="Wert Einzelgebäude1"
                    ControlSource ="=[ermittelter Gebäudewert]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="Wert_Einzelgebäude1"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3939
                    Top =9242
                    Width =3576
                    Height =300
                    TabIndex =39
                    Name ="Index2000"
                    ControlSource ="=IIf(IsNull([Index_manuell]),IIf([Baujahr]=2000,16.414,IIf([Baujahr]=2001,15.69,"
                        "IIf([Baujahr]=2002,15.57,IIf([Baujahr]=2003,15.57,IIf([Baujahr]=2004,14.05,IIf(["
                        "Baujahr]=2005,12.8,IIf([Baujahr]=2006,10.7,IIf([Baujahr]=2007,3.68,IIf([Baujahr]"
                        ">=2008,0)))))))))+100,([Index_manuell])+100)"
                    Format ="Standard"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =9240
                            Width =3285
                            Height =300
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld186"
                            Caption ="Index auf Bewertungsjahr:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3939
                    Top =9581
                    Width =3576
                    Height =300
                    TabIndex =40
                    Name ="Neubauwert_ab_2000"
                    ControlSource ="=[Neubauwert_ab_2000_real]*([Index2000]/100)"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =9581
                            Width =3285
                            Height =300
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld188"
                            Caption ="Herstellungkosten €/m²:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3968
                    Top =13775
                    Width =3576
                    Height =255
                    TabIndex =41
                    Name ="Restwert"
                    ControlSource ="=IIf([Herstellungskosten]-[Abschreibung]<1,1,[Herstellungskosten]-[Abschreibung]"
                        ")"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    Begin
                        Begin Label
                            TextAlign =0
                            Left =566
                            Top =13775
                            Width =3180
                            Height =270
                            FontSize =10
                            FontWeight =600
                            Name ="Bezeichnungsfeld190"
                            Caption ="Restwert:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin Subform
                    Left =113
                    Top =11224
                    Width =8449
                    Height =110
                    TabIndex =42
                    Name ="Gebäudebewertung_Unterbericht_Ausstattung"
                    SourceObject ="Report.Gebäudebewertung_Archiv_Unterbericht_Ausstattung"
                    LinkChildFields ="ID_Gebäudeteil"
                    LinkMasterFields ="ID_Gebäudeteil"

                End
                Begin Label
                    Left =8220
                    Top =3401
                    Width =195
                    Height =300
                    FontSize =8
                    Name ="Bezeichnungsfeld194"
                    Caption ="1)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =8220
                    Top =3855
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld198"
                    Caption ="2)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =8220
                    Top =4195
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld201"
                    Caption ="3)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =8220
                    Top =5782
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld204"
                    Caption ="4)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =8220
                    Top =6803
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld208"
                    Caption ="5)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =8220
                    Top =7823
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld211"
                    Caption ="6)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =8220
                    Top =8163
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld215"
                    Caption ="7)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =8220
                    Top =9637
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld218"
                    Caption ="8)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =8107
                    Top =17064
                    Width =315
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld226"
                    Caption ="10)"
                    FontName ="Arial"
                End
                Begin TextBox
                    TextAlign =1
                    Left =4754
                    Top =4138
                    Width =3366
                    Height =255
                    TabIndex =43
                    Name ="Ablaufzeit"
                    ControlSource ="=IIf([Baujahr]+[Nutzungsdauer]<[bewertungsjahr],\"Nutzungsdauer abgelaufen!\",\""
                        "(nutzbar noch \" & [Baujahr]+[Nutzungsdauer]-[bewertungsjahr] & \" Jahr/e ab \" "
                        "& [bewertungsjahr] & \")\")"
                    InputMask ="00"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =3968
                    Top =9921
                    Width =3576
                    Height =255
                    TabIndex =44
                    Name ="Außenanlagen"
                    ControlSource ="=IIf(IsNull([Neubauwert_ab_2000_real]),[Wert3]*4/100,0)"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =0
                    Left =566
                    Top =9921
                    Width =3180
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld239"
                    Caption ="Außenanlagen (pauschal 4%):"
                    FontName ="Arial"
                End
                Begin TextBox
                    FontUnderline = NotDefault
                    Left =510
                    Top =340
                    Width =5541
                    Height =405
                    FontSize =14
                    FontWeight =700
                    TabIndex =45
                    Name ="Text249"
                    ControlSource ="=\"Gebäudebewertung zum 01.01.\" & [bewertungsjahr]"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =2
                    TextAlign =3
                    Width =3576
                    Height =255
                    TabIndex =46
                    Name ="wertsumme"
                    ControlSource ="=IIf([a]-[b]-[c]<=0,1,[a]-[b]-[c])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =1
                    Left =7540
                    Top =7483
                    Width =876
                    Height =300
                    TabIndex =47
                    Name ="Index_manuell"
                    ControlSource ="Index_manuell"
                    Format ="General Number"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =0
            BreakLevel =1
            Name ="Gruppenfuß2"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextAlign =3
                    Width =3576
                    Height =0
                    ForeColor =255
                    Name ="Wert Einzelgebäude2"
                    ControlSource ="=[ermittelter Gebäudewert]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="Wert_Einzelgebäude2"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =16270
            Name ="Gruppenfuß1"
            Begin
                Begin Label
                    TextAlign =0
                    Left =623
                    Top =340
                    Width =3180
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld177"
                    Caption ="Ermittelter Objektwert:"
                    FontName ="Arial"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    Left =3911
                    Top =340
                    Width =3576
                    Height =255
                    FontWeight =600
                    Name ="ermittelter Objektwert"
                    ControlSource ="=[ermittelter Gebäudewert]+[e]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="ermittelter_Objektwert"

                End
                Begin Rectangle
                    Left =510
                    Top =226
                    Width =7993
                    Height =567
                    Name ="Rechteck182"
                End
                Begin Label
                    Left =8163
                    Top =340
                    Width =315
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld224"
                    Caption ="11)"
                    FontName ="Arial"
                End
                Begin Label
                    TextAlign =0
                    Left =340
                    Top =1814
                    Width =1080
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld111"
                    Caption ="aufgestellt:"
                    FontName ="Arial"
                End
                Begin Line
                    Left =283
                    Top =3288
                    Width =3536
                    Name ="Linie112"
                End
                Begin Line
                    Left =4479
                    Top =3288
                    Width =3536
                    Name ="Linie113"
                End
                Begin TextBox
                    TextAlign =1
                    Left =340
                    Top =2155
                    Width =5111
                    Height =270
                    FontSize =10
                    FontWeight =600
                    TabIndex =1
                    Name ="Text17"
                    ControlSource ="=\"Castrop-Rauxl, den \" & [Bewertung abgeschlossen]"
                    Format ="Long Date"

                End
                Begin Label
                    Left =226
                    Top =5784
                    Width =195
                    Height =300
                    FontSize =8
                    Name ="Bezeichnungsfeld196"
                    Caption ="1)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =510
                    Top =5443
                    Width =7410
                    Height =975
                    FontSize =8
                    Name ="Bezeichnungsfeld197"
                    Caption ="Erläuterungen:\015\012\015\012Anstelle des tatsächlichen Baujahrs wurde gemäß Zi"
                        "ffer 3.6.1.1.1 der Wertermittlungsrichtlinien für Gebäude, die überdurchschnittl"
                        "ich instandgehalten, instandgesetzt oder modernisiert worden sind, ein entsprech"
                        "end verjüngtes Baujahr der Berechnung  zu Grunde gelegt."
                    FontName ="Arial"
                End
                Begin Label
                    Left =170
                    Top =6413
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld199"
                    Caption ="2)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =505
                    Top =6407
                    Width =7065
                    Height =2085
                    FontSize =8
                    Name ="Bezeichnungsfeld200"
                    Caption ="Als gewöhnliche Nutzungsdauer wurde grundsätzlich der Höchstwert entsprechend de"
                        "n \"Normalherstellungskosten 2000“ - Runderlass des Bundesministeriums für Verke"
                        "hr, Bau und Wohnungswesen vom 01.12.2001 - angesetzt. Nach diesem Runderlass lie"
                        "gen die gewöhnlichen Nutzungsdauern wie folgt:\015\012\015\012- Verwaltungsgebäu"
                        "de: 50 - 80 Jahre\015\012- Bürgerhäuser: 40 - 80 Jahre\015\012- Kindergärten: 50"
                        " - 70 Jahre\015\012- Schulen: 50 - 80 Jahre\015\012- Jugendheime: 40 - 80 Jahre\015"
                        "\012- Mehrfamilienhäuser: 60 - 80 Jahre\015\012"
                    FontName ="Arial"
                End
                Begin Label
                    Left =170
                    Top =8512
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld202"
                    Caption ="3)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =505
                    Top =8499
                    Width =7425
                    Height =780
                    FontSize =8
                    Name ="Bezeichnungsfeld203"
                    Caption ="Soweit nach Ansicht des Objektverantwortlichen des Immobilienmanagements die gem"
                        "äß Ziffer 2 der Erläuterungen angesetzte gewöhnliche Nutzungsdauer mit der Reali"
                        "tät nicht übereinstimmt, wird die gewöhnliche Nutzungsdauer für die weitere Gebä"
                        "udebewertung durch die „geschätzte Nutzungsdauer“ überschrieben."
                    FontName ="Arial"
                End
                Begin Label
                    Left =170
                    Top =9299
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld205"
                    Caption ="4)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =505
                    Top =9294
                    Width =7515
                    Height =2640
                    FontSize =8
                    Name ="Bezeichnungsfeld206"
                    Caption ="Die Einstufung in eine der drei Ausstattungsklassen „einfach“, „mittel“ oder „ge"
                        "hoben“ erfolgte durch die Bewertung der in den NHK 2000 vorgegebenen neun Kosten"
                        "gruppen.\015\012\015\012In der Bewertung wurden die Kostengruppen wie folgt gewi"
                        "chtet:\015\012\015\012Fassade: 11 %\015\012Fenster: 14 %\015\012Dächer: 15 %\015"
                        "\012Sanitär: 13 %\015\012Innenwandbekleidung der Nassräume: 6 %\015\012Bodenbelä"
                        "ge: 8 %\015\012Innentüren: 11 %\015\012Heizung: 15 %\015\012Elektroinstallation:"
                        " 7 %\015\012"
                    FontName ="Arial"
                End
                Begin Label
                    Left =170
                    Top =11963
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld209"
                    Caption ="5)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =510
                    Top =11963
                    Width =7890
                    Height =780
                    FontSize =8
                    Name ="Bezeichnungsfeld210"
                    Caption ="Der „ermittelte Wert NHK €/m² 2000“ wurde aus der in den Normalherstellungskoste"
                        "n 2000 vorgegebenen Spanne entwickelt. Eine mittlere Einschätzung in allen Koste"
                        "ngruppen führt zu einem Ansatz des mittleren Wertes zwischen dem vorgegebenen un"
                        "teren und dem vorgegebenen oberen Wert. Abweichungen innerhalb einer der drei Au"
                        "sstattungsstandards führen zu entsprechenden Zu- oder Abschlägen vom Mittelwert."
                    FontName ="Arial"
                End
                Begin Label
                    Left =170
                    Top =12757
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld213"
                    Caption ="6)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =510
                    Top =12757
                    Width =7380
                    Height =420
                    FontSize =8
                    Name ="Bezeichnungsfeld214"
                    Caption ="Zur Feststellung der auf den 01.01.2005 bezogenen Herstellungskosten wurde der g"
                        "emäß Ziffer 5 der Erläuterungen ermittelte Wert um den veröffentlichten Index fü"
                        "r Baukostensteigerungen erhöht."
                    FontName ="Arial"
                End
                Begin Label
                    Left =170
                    Top =13213
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld216"
                    Caption ="7)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =505
                    Top =13211
                    Width =7470
                    Height =420
                    FontSize =8
                    Name ="Bezeichnungsfeld217"
                    Caption ="Der prozentuale Anteil der Baunebenkosten wurde entsprechend der Vorgabe in den "
                        "NHK 2000 zu den einzelnen Gebäudetypen berechnet."
                    FontName ="Arial"
                End
                Begin Label
                    Left =170
                    Top =13664
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld220"
                    Caption ="8)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =505
                    Top =13665
                    Width =7980
                    Height =420
                    FontSize =8
                    Name ="Bezeichnungsfeld221"
                    Caption ="Bei Gebäuden ab Baujahr 2000 wurden anstelle der nach NHK 2000 ermittelten Norma"
                        "lherstellungskosten die tatsächlichen Herstellungskosten angesetzt und um den In"
                        "dex der Baukostensteigerungen erhöht."
                    FontName ="Arial"
                End
                Begin Label
                    Left =170
                    Top =14118
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld222"
                    Caption ="9)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =510
                    Top =14118
                    Width =7920
                    Height =600
                    FontSize =8
                    Name ="Bezeichnungsfeld223"
                    Caption ="Maßnahmen des Sanierungsstaus wurden nur berücksichtigt, wenn es sich um Mängel "
                        "am Gebäude handelt. Umbauwünsche der Nutzer wurden hier nicht berück-sichtigt. I"
                        "nsoweit sind finanzielle Differenzen zum Arbeitsprogramm des Immobilienmanagemen"
                        "ts für das einzelne Objekt möglich."
                    FontName ="Arial"
                End
                Begin Label
                    Left =56
                    Top =14741
                    Width =315
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld227"
                    Caption ="10)"
                    FontName ="Arial"
                End
                Begin Label
                    Top =15238
                    Width =315
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld228"
                    Caption ="11)"
                    FontName ="Arial"
                End
                Begin Label
                    Left =505
                    Top =14799
                    Width =6060
                    Height =600
                    FontSize =8
                    Name ="Bezeichnungsfeld229"
                    Caption ="Der Grundstückswert wurde mit 32,5 % des jeweiligen Bodenrichtwertes angesetzt, "
                        "also mit dem mittleren zulässigen Wert. \015\012\015\012"
                    FontName ="Arial"
                End
                Begin Label
                    Left =454
                    Top =15238
                    Width =7830
                    Height =780
                    FontSize =8
                    Name ="Bezeichnungsfeld230"
                    Caption ="Unter „Objekt“ wurden mehrere funktional zusammenhängende Gebäude - beispielswei"
                        "se die einer Schule - zusammengeführt. Das zugehörige Grundstück wurde jeweils e"
                        "inem Gebäude aus dem Objekt zugeordnet. Soweit sich der Ausdruck des Berichts au"
                        "f ein Gebäude beschränkt ist hier nur der Wert des einzelnen Gebäudes abgedruckt"
                        "."
                    FontName ="Arial"
                End
                Begin Label
                    TextAlign =0
                    Left =283
                    Top =4082
                    Width =915
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld241"
                    Caption ="gesehen:"
                    FontName ="Arial"
                End
                Begin Label
                    TextAlign =0
                    Left =4422
                    Top =4082
                    Width =915
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld242"
                    Caption ="geprüft:"
                    FontName ="Arial"
                End
                Begin Line
                    Left =283
                    Top =4762
                    Width =3536
                    Name ="Linie243"
                End
                Begin Line
                    Left =4422
                    Top =4762
                    Width =3536
                    Name ="Linie244"
                End
                Begin Label
                    TextAlign =0
                    Left =277
                    Top =3338
                    Width =2745
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld245"
                    Caption ="Techn. Leiter / Techn. Mitarbeiter"
                    FontName ="Arial"
                End
                Begin Label
                    TextAlign =0
                    Left =4479
                    Top =3345
                    Width =870
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld246"
                    Caption ="Controller"
                    FontName ="Arial"
                End
                Begin Label
                    TextAlign =0
                    Left =277
                    Top =4853
                    Width =1545
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld247"
                    Caption ="Bereichsleiter"
                    FontName ="Arial"
                End
                Begin Label
                    TextAlign =0
                    Left =4422
                    Top =4819
                    Width =1545
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld248"
                    Caption ="Prüfer B. 14"
                    FontName ="Arial"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    Left =525
                    Top =960
                    Width =7993
                    Height =291
                    FontSize =10
                    FontWeight =700
                    TabIndex =2
                    Name ="Erläuterungen"
                    ControlSource ="Erläuterungen"

                End
            End
        End
        Begin PageFooter
            Height =283
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =3
                    Left =4535
                    Width =4421
                    Height =270
                    FontSize =8
                    Name ="Text18"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"

                End
            End
        End
        Begin FormFooter
            CanGrow = NotDefault
            Height =470
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    TextAlign =1
                    Left =1644
                    Width =2892
                    Height =255
                    Name ="Text252"
                    ControlSource ="=[wertsumme]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =0
                    Width =1560
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld254"
                    Caption ="Summe Ausdruck:"
                    FontName ="Arial"
                End
            End
        End
    End
End
CodeBehindForm
' See "Gebäudebewertung_Archiv.cls"
