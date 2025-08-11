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
    Width =8737
    DatasheetFontHeight =10
    ItemSuffix =82
    Left =11715
    Top =2355
    RecSrcDt = Begin
        0x6d3cecf591ece240
    End
    RecordSource ="Abfrage für monatlicher Mittelabfluss"
    OnOpen ="= Maxim_Bericht()"
    OnClose ="Makro Filter Controllingbericht.SchließenFilter"
    MenuBar ="CAISY"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextFontFamily =2
            FontName ="Arial"
        End
        Begin Rectangle
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
        End
        Begin TextBox
            OldBorderStyle =0
            TextFontFamily =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Arial"
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin BreakLevel
            GroupFooter = NotDefault
            ControlSource ="Buchungsstelle"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="ID aus Maßnahmen"
        End
        Begin BreakLevel
            GroupFooter = NotDefault
            ControlSource ="Jahr"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =963
            Name ="Berichtskopf"
            Begin
                Begin Label
                    TextAlign =1
                    TextFontFamily =34
                    Left =2891
                    Top =56
                    Width =5160
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld16"
                    Caption ="Mittelabfluss Vermögenshaushalt"
                End
                Begin Label
                    FontItalic = NotDefault
                    SpecialEffect =1
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =513
                    Top =67
                    Width =1865
                    Height =401
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    Name ="Caisy"
                    Caption ="Caisy Bau"
                End
                Begin Label
                    FontItalic = NotDefault
                    TextAlign =2
                    TextFontFamily =34
                    Width =2840
                    Height =799
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    ForeColor =65535
                    Name ="Bezeichnungsfeld18"
                    Caption ="Caisy Bau"
                End
            End
        End
        Begin PageHeader
            Height =0
            Name ="Seitenkopf"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =672
            BreakLevel =1
            Name ="Gruppenkopf0"
            Begin
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    Left =113
                    Top =396
                    Width =390
                    Height =255
                    Name ="Bezeichnungsfeld22"
                    Caption ="Jahr"
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    Left =907
                    Top =396
                    Width =600
                    Height =255
                    Name ="Bezeichnungsfeld23"
                    Caption ="Ansatz"
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    Left =2381
                    Top =396
                    Width =390
                    Height =255
                    Name ="Bezeichnungsfeld24"
                    Caption ="HHR"
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    Left =3855
                    Top =396
                    Width =285
                    Height =255
                    Name ="Bezeichnungsfeld25"
                    Caption ="VE"
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    Left =4422
                    Top =396
                    Width =600
                    Height =255
                    Name ="Bezeichnungsfeld26"
                    Caption ="Summe"
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =45
                    Top =60
                    Width =2325
                    Height =270
                    FontWeight =700
                    Name ="Text18"
                    ControlSource ="=\"Buchungsstelle \" & [Buchungsstelle]"
                    InputMask ="0000"

                End
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =5045
                    Top =453
                    Width =675
                    Height =165
                    TabIndex =1
                    ForeColor =255
                    Name ="ID aus Maßnahmen"
                    ControlSource ="ID aus Maßnahmen"
                    InputMask ="0000"
                    EventProcPrefix ="ID_aus_Maßnahmen"

                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =2486
                    Top =56
                    Width =5775
                    Height =270
                    FontWeight =700
                    TabIndex =2
                    Name ="Massnahme_"
                    ControlSource ="Massnahme_"
                    InputMask ="0000"

                End
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =6576
                    Top =226
                    Width =675
                    Height =165
                    TabIndex =3
                    ForeColor =255
                    Name ="Text22"
                    ControlSource ="Buchungsstelle"
                    InputMask ="0000"

                End
                Begin Line
                    Width =8674
                    Name ="Linie34"
                End
                Begin Line
                    LineSlant = NotDefault
                    Left =8670
                    Top =15
                    Width =0
                    Height =657
                    Name ="Linie40"
                End
                Begin Line
                    LineSlant = NotDefault
                    Width =0
                    Height =657
                    Name ="Linie42"
                End
                Begin Line
                    Top =360
                    Width =8674
                    Name ="Linie45"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =287
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =30
                    Width =735
                    Height =270
                    Name ="Jahr"
                    ControlSource ="Jahr"
                    InputMask ="0000"

                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =629
                    Width =1200
                    Height =255
                    TabIndex =1
                    Name ="Ansatz"
                    ControlSource ="Ansatz"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =1870
                    Width =1245
                    Height =270
                    TabIndex =2
                    Name ="HHR"
                    ControlSource ="HHR"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =3118
                    Width =1140
                    Height =270
                    TabIndex =3
                    Name ="VE"
                    ControlSource ="VE"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =4308
                    Width =1170
                    Height =270
                    TabIndex =4
                    Name ="zufVfg"
                    ControlSource ="zufVfg"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =5557
                    Width =2040
                    Height =270
                    TabIndex =5
                    Name ="Herkunft"
                    ControlSource ="Herkunft"

                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =6633
                    Width =1170
                    Height =270
                    TabIndex =6
                    Name ="Text4"
                    ControlSource ="zufVfgohneVE"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Line
                    Left =8670
                    Top =15
                    Width =0
                    Height =272
                    Name ="Linie38"
                End
                Begin Line
                    Width =0
                    Height =272
                    Name ="Linie39"
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =0
            BreakLevel =2
            Name ="Gruppenfuß2"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    TextFontFamily =34
                    BackStyle =0
                    Width =2790
                    Height =0
                    Name ="summeansätze"
                    ControlSource ="=IIf([jahr]=Year(Now()),Sum([Ansatz]),0)"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =2834
                    Width =2790
                    Height =0
                    TabIndex =1
                    Name ="SummeHHR"
                    ControlSource ="=IIf([jahr]=Year(Now())-1,Sum([HHR]),0)"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =5782
                    Width =2790
                    Height =0
                    TabIndex =2
                    Name ="SummeVE"
                    ControlSource ="=IIf([jahr]=Year(Now()),Sum([VE]),0)"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =0
            BreakLevel =1
            Name ="Gruppenfuß1"
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =1700
            Name ="Gruppenfuß0"
            Begin
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =3858
                    Top =56
                    Width =1620
                    Height =225
                    Name ="Betrag"
                    ControlSource ="=Sum([zufVfg])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =1
                    TextFontFamily =34
                    Left =30
                    Top =56
                    Width =720
                    Height =225
                    Name ="Bezeichnungsfeld3"
                    Caption ="finanziert"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =2097
                    Top =340
                    Width =1620
                    Height =225
                    TabIndex =1
                    Name ="Betrag1"
                    ControlSource ="=Sum([zufVfgohneVE])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =3858
                    Top =283
                    Width =1620
                    Height =225
                    TabIndex =2
                    Name ="offene Auträge"
                    ControlSource ="Aufträge"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="offene_Auträge"

                End
                Begin Label
                    TextAlign =1
                    TextFontFamily =34
                    Left =30
                    Top =283
                    Width =1185
                    Height =225
                    Name ="Bezeichnungsfeld7"
                    Caption ="offene Auträge:"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =3858
                    Top =528
                    Width =1620
                    Height =225
                    TabIndex =3
                    Name ="bezahlte Rechnungen"
                    ControlSource ="sollgesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="bezahlte_Rechnungen"

                End
                Begin Label
                    TextAlign =1
                    TextFontFamily =34
                    Left =30
                    Top =528
                    Width =1695
                    Height =225
                    Name ="Bezeichnungsfeld9"
                    Caption ="bezahlte Rechnungen:"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =3858
                    Top =793
                    Width =1620
                    Height =225
                    FontWeight =600
                    TabIndex =4
                    Name ="nochfrei"
                    ControlSource ="=[Betrag]-[bezahlte Rechnungen]-[offene Auträge]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =1
                    TextFontFamily =34
                    Left =30
                    Top =793
                    Width =2205
                    Height =225
                    FontWeight =600
                    Name ="Bezeichnungsfeld11"
                    Caption ="noch zur Verfügung:"
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =5732
                    Top =793
                    Width =2775
                    Height =225
                    FontWeight =700
                    TabIndex =5
                    Name ="Text12"
                    ControlSource ="=IIf([Betrag]=0,\"Keine Mittel zur Verfügung\",IIf([nochfrei]<=0,\"Keine Mittel "
                        "mehr vorhanden\",[nochfrei]/[Betrag]))"
                    Format ="Percent"

                End
                Begin Line
                    Left =4260
                    Width =1239
                    Name ="Linie17"
                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =2267
                    Top =793
                    Width =1620
                    Height =225
                    FontWeight =600
                    TabIndex =6
                    ForeColor =255
                    Name ="lfdsummenochfrei"
                    ControlSource ="=[Betrag]-[bezahlte Rechnungen]-[offene Auträge]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =2267
                    Top =566
                    Width =1620
                    Height =225
                    TabIndex =7
                    ForeColor =255
                    Name ="summezurvfg"
                    ControlSource ="=Sum([zufVfg])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    Left =2097
                    Top =56
                    Width =1131
                    TabIndex =8
                    Name ="Gesamt_HH-Mittel"
                    ControlSource ="Gesamt_HH-Mittel"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="Gesamt_HH_Mittel"

                End
                Begin Line
                    LineSlant = NotDefault
                    Left =8674
                    Width =0
                    Height =1265
                    Name ="Linie36"
                End
                Begin Line
                    LineSlant = NotDefault
                    Width =0
                    Height =1265
                    Name ="Linie37"
                End
                Begin Line
                    Top =1247
                    Width =8674
                    Name ="Linie43"
                End
                Begin TextBox
                    TextAlign =1
                    Left =5555
                    Top =56
                    Width =3021
                    Height =225
                    TabIndex =9
                    ForeColor =255
                    Name ="Text32"
                    ControlSource ="=IIf(CCur([Gesamt_HH-Mittel])<>CCur([Betrag]),\"(Mittel lt. Finanzauskunft \" & "
                        "CCur([Gesamt_HH-Mittel]) & \" €)\",\"\")"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =0
                    Left =6292
                    Top =793
                    Width =1590
                    Height =225
                    FontWeight =700
                    TabIndex =10
                    Name ="Text44"
                    ControlSource ="=IIf([betrag]=0,\"\",IIf([nochfrei]/[Betrag]>0,\"der Mittel noch frei\",\"\"))"

                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =6009
                    Top =340
                    Width =1620
                    Height =225
                    TabIndex =11
                    Name ="summeAufträge"
                    ControlSource ="Aufträge"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =6009
                    Top =566
                    Width =1620
                    Height =225
                    TabIndex =12
                    Name ="SummeSollgesamt"
                    ControlSource ="sollgesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =793
                    Top =56
                    Width =900
                    Height =225
                    TabIndex =13
                    Name ="Text81"
                    ControlSource ="=Year(Now())"

                End
            End
        End
        Begin PageFooter
            Height =396
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Width =4421
                    Height =270
                    Name ="Text17"
                    ControlSource ="=Now()"
                    Format ="Long Date"

                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =0
                    Left =4535
                    Width =3971
                    Height =270
                    TabIndex =1
                    Name ="Text19"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"

                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =3571
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2603
                    Top =2895
                    Width =1620
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Text20"
                    ControlSource ="=[lfdsummenochfrei]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2609
                    Top =794
                    Width =1620
                    Height =285
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    Name ="Text24"
                    ControlSource ="=[summezurvfg]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =1
                    TextFontFamily =34
                    Left =171
                    Top =794
                    Width =1530
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld27"
                    Caption ="finanziert 2007:"
                End
                Begin Label
                    TextAlign =1
                    TextFontFamily =34
                    Left =165
                    Top =2895
                    Width =2025
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld28"
                    Caption ="noch zur Verfügung:"
                End
                Begin Rectangle
                    BackStyle =0
                    Top =680
                    Width =5484
                    Height =2606
                    Name ="Rechteck29"
                End
                Begin TextBox
                    RunningSum =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =2609
                    Top =1190
                    Width =1470
                    Height =225
                    TabIndex =2
                    Name ="Text49"
                    ControlSource ="=[summeansätze]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    RunningSum =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =2609
                    Top =1465
                    Width =1470
                    Height =225
                    TabIndex =3
                    Name ="Text50"
                    ControlSource ="=[SummeHHR]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    RunningSum =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =2609
                    Top =1745
                    Width =1470
                    Height =225
                    TabIndex =4
                    Name ="Text51"
                    ControlSource ="=[SummeVE]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    Left =1020
                    Top =1190
                    Width =660
                    Height =225
                    Name ="Bezeichnungsfeld52"
                    Caption ="Ansätze"
                End
                Begin Label
                    Left =1020
                    Top =1745
                    Width =300
                    Height =225
                    Name ="Bezeichnungsfeld53"
                    Caption ="VE"
                End
                Begin Label
                    Left =1020
                    Top =1465
                    Width =420
                    Height =225
                    Name ="Bezeichnungsfeld54"
                    Caption ="HHR"
                End
                Begin TextBox
                    RunningSum =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =2609
                    Top =2205
                    Width =1470
                    Height =225
                    TabIndex =5
                    Name ="Text58"
                    ControlSource ="=[SummeSollgesamt]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    Left =1020
                    Top =2205
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld59"
                    Caption ="bezahlt"
                End
                Begin TextBox
                    RunningSum =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =2609
                    Top =2475
                    Width =1470
                    Height =225
                    TabIndex =6
                    Name ="Text60"
                    ControlSource ="=[summeAufträge]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    Left =1020
                    Top =2475
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld61"
                    Caption ="offene Aufträge"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =4592
                    Top =2891
                    Width =855
                    Height =285
                    FontSize =10
                    FontWeight =700
                    TabIndex =7
                    Name ="Text62"
                    ControlSource ="=[lfdsummenochfrei]/[summezurvfg]"
                    Format ="Percent"

                End
            End
        End
    End
End
