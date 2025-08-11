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
    Width =9030
    DatasheetFontHeight =10
    ItemSuffix =118
    Left =14730
    Top =2190
    RecSrcDt = Begin
        0x952d30d7d6cce440
    End
    RecordSource ="Abfrage für Buchungsanordnung_Historik"
    OnOpen ="[Event Procedure]"
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
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin TextBox
            OldBorderStyle =0
            TextFontFamily =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Arial"
            ShowDatePicker =0
        End
        Begin ComboBox
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
        Begin UnboundObjectFrame
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin PageHeader
            Height =270
            Name ="Seitenkopf"
            Begin
                Begin TextBox
                    TabStop = NotDefault
                    TextAlign =3
                    TextFontFamily =34
                    Left =6236
                    Width =2262
                    Height =270
                    FontSize =10
                    ForeColor =8421504
                    Name ="angelegt"
                    ControlSource ="angelegt"
                    Format ="General Date"
                    InputMask ="99,99,00;0;_"

                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =8560
                    Width =446
                    Height =270
                    FontSize =10
                    TabIndex =1
                    ForeColor =8421504
                    Name ="Text18"
                    ControlSource ="=[Page] & \"/\" & [Pages]"

                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =13856
            Name ="Detailbereich"
            Begin
                Begin Line
                    Left =4
                    Top =360
                    Width =9014
                    Name ="Linie8"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =5670
                    Top =20
                    Width =3345
                    Height =383
                    FontSize =10
                    FontWeight =500
                    BackColor =14671839
                    ForeColor =8421504
                    Name ="Bezeichnungsfeld13"
                    Caption ="   Bearbeitungsvermerke Bereich 20"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =335
                    Width =5655
                    Height =458
                    FontSize =16
                    FontWeight =700
                    BackColor =14671839
                    Name ="Bezeichnungsfeld14"
                    Caption ="Auszahlungsanordnung"
                End
                Begin Rectangle
                    BorderWidth =1
                    Left =15
                    Top =20
                    Width =5657
                    Height =340
                    Name ="Rechteck15"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =5670
                    Top =365
                    Width =3345
                    Height =428
                    FontWeight =500
                    ForeColor =8421504
                    Name ="Bezeichnungsfeld18"
                    Caption ="   Eingang        EDV erfasst         Ausgang"
                End
                Begin Line
                    Left =6630
                    Top =365
                    Width =0
                    Height =453
                    Name ="Linie20"
                End
                Begin Line
                    Left =7770
                    Top =365
                    Width =0
                    Height =453
                    Name ="Linie21"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4
                    Top =810
                    Width =2910
                    Height =293
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld22"
                    Caption ="Haushaltsjahr"
                    LayoutCachedLeft =4
                    LayoutCachedTop =810
                    LayoutCachedWidth =2914
                    LayoutCachedHeight =1103
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =1173
                    Width =2895
                    Height =293
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld23"
                    Caption ="Anordnender Bereich"
                    LayoutCachedTop =1173
                    LayoutCachedWidth =2895
                    LayoutCachedHeight =1466
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =1473
                    Width =2895
                    Height =293
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld24"
                    Caption ="Bearbeiter/in, Telefonnummer"
                    LayoutCachedTop =1473
                    LayoutCachedWidth =2895
                    LayoutCachedHeight =1766
                End
                Begin Label
                    FontItalic = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =1743
                    Width =9000
                    Height =293
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld25"
                    Caption ="An die Stadtkasse ergeht die Anweisung zur Vornahme der nachfolgenden Buchung/en"
                        ":"
                    LayoutCachedLeft =15
                    LayoutCachedTop =1743
                    LayoutCachedWidth =9015
                    LayoutCachedHeight =2036
                End
                Begin Label
                    FontItalic = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =2895
                    Top =1173
                    Width =1425
                    Height =293
                    FontSize =12
                    FontWeight =600
                    Name ="Bezeichnungsfeld26"
                    Caption ="60"
                    LayoutCachedLeft =2895
                    LayoutCachedTop =1173
                    LayoutCachedWidth =4320
                    LayoutCachedHeight =1466
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =2043
                    Width =2895
                    Height =278
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld34"
                    Caption ="Ausgabe"
                    LayoutCachedTop =2043
                    LayoutCachedWidth =2895
                    LayoutCachedHeight =2321
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =2298
                    Width =2895
                    Height =263
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld35"
                    Caption ="auf Auftrags-Nr."
                    LayoutCachedTop =2298
                    LayoutCachedWidth =2895
                    LayoutCachedHeight =2561
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =2568
                    Width =2895
                    Height =263
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld36"
                    Caption ="Skonto"
                    LayoutCachedTop =2568
                    LayoutCachedWidth =2895
                    LayoutCachedHeight =2831
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4
                    Top =2844
                    Width =2895
                    Height =615
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld37"
                    Caption ="Einnahme\015\012falls zutreffend, Ausgabeart"
                    LayoutCachedLeft =4
                    LayoutCachedTop =2844
                    LayoutCachedWidth =2899
                    LayoutCachedHeight =3459
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4
                    Top =3460
                    Width =2895
                    Height =383
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld38"
                    Caption ="Absetzung"
                    LayoutCachedLeft =4
                    LayoutCachedTop =3460
                    LayoutCachedWidth =2899
                    LayoutCachedHeight =3843
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4
                    Top =3844
                    Width =2895
                    Height =293
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld39"
                    Caption ="Verrechnung"
                    LayoutCachedLeft =4
                    LayoutCachedTop =3844
                    LayoutCachedWidth =2899
                    LayoutCachedHeight =4137
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4
                    Top =4115
                    Width =2895
                    Height =308
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld40"
                    Caption ="Niederschlagung"
                    LayoutCachedLeft =4
                    LayoutCachedTop =4115
                    LayoutCachedWidth =2899
                    LayoutCachedHeight =4423
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =4428
                    Width =2880
                    Height =263
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld41"
                    Caption ="Auftragsvormerkung"
                    LayoutCachedLeft =15
                    LayoutCachedTop =4428
                    LayoutCachedWidth =2895
                    LayoutCachedHeight =4691
                End
                Begin TextBox
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =2910
                    Top =813
                    Width =2721
                    Height =385
                    FontSize =16
                    FontWeight =600
                    Name ="Haushaltsjahr"
                    ControlSource ="Haushaltsjahr"

                    LayoutCachedLeft =2910
                    LayoutCachedTop =813
                    LayoutCachedWidth =5631
                    LayoutCachedHeight =1198
                End
                Begin CheckBox
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =3105
                    Top =2103
                    Width =291
                    Height =291
                    TabIndex =1
                    Name ="Ausgabe_ja_nein"
                    ControlSource ="Ausgabe_ja_nein"
                    DefaultValue ="Yes"

                    LayoutCachedLeft =3105
                    LayoutCachedTop =2103
                    LayoutCachedWidth =3396
                    LayoutCachedHeight =2394
                End
                Begin CheckBox
                    SpecialEffect =2
                    Left =3105
                    Top =2619
                    Width =170
                    Height =170
                    TabIndex =2
                    Name ="Skonto"
                    ControlSource ="Skonto"
                    DefaultValue ="No"

                    LayoutCachedLeft =3105
                    LayoutCachedTop =2619
                    LayoutCachedWidth =3275
                    LayoutCachedHeight =2789
                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =3105
                    Top =3557
                    Width =170
                    Height =170
                    TabIndex =3
                    Name ="Kontrollkästchen21"
                    DefaultValue ="No"

                    LayoutCachedLeft =3105
                    LayoutCachedTop =3557
                    LayoutCachedWidth =3275
                    LayoutCachedHeight =3727
                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =3105
                    Top =3903
                    Width =170
                    Height =170
                    TabIndex =4
                    Name ="Kontrollkästchen22"
                    DefaultValue ="No"

                    LayoutCachedLeft =3105
                    LayoutCachedTop =3903
                    LayoutCachedWidth =3275
                    LayoutCachedHeight =4073
                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =3105
                    Top =4203
                    Width =170
                    Height =170
                    TabIndex =5
                    Name ="Kontrollkästchen23"
                    DefaultValue ="No"

                    LayoutCachedLeft =3105
                    LayoutCachedTop =4203
                    LayoutCachedWidth =3275
                    LayoutCachedHeight =4373
                End
                Begin Label
                    BackStyle =1
                    TextFontFamily =34
                    Left =4650
                    Top =4143
                    Width =960
                    Height =240
                    Name ="Bezeichnungsfeld27"
                    Caption ="befristet bis"
                    LayoutCachedLeft =4650
                    LayoutCachedTop =4143
                    LayoutCachedWidth =5610
                    LayoutCachedHeight =4383
                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =4441
                    Top =4203
                    Width =170
                    Height =170
                    TabIndex =6
                    Name ="Kontrollkästchen28"
                    DefaultValue ="No"

                    LayoutCachedLeft =4441
                    LayoutCachedTop =4203
                    LayoutCachedWidth =4611
                    LayoutCachedHeight =4373
                End
                Begin Label
                    BackStyle =1
                    TextFontFamily =34
                    Left =3510
                    Top =4158
                    Width =855
                    Height =240
                    Name ="Bezeichnungsfeld29"
                    Caption ="unbefristet"
                    LayoutCachedLeft =3510
                    LayoutCachedTop =4158
                    LayoutCachedWidth =4365
                    LayoutCachedHeight =4398
                End
                Begin Label
                    BackStyle =1
                    TextFontFamily =34
                    Left =5670
                    Top =4128
                    Width =870
                    Height =255
                    Name ="Bezeichnungsfeld30"
                    LayoutCachedLeft =5670
                    LayoutCachedTop =4128
                    LayoutCachedWidth =6540
                    LayoutCachedHeight =4383
                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =3105
                    Top =4473
                    Width =170
                    Height =170
                    TabIndex =7
                    Name ="Kontrollkästchen31"
                    DefaultValue ="No"

                    LayoutCachedLeft =3105
                    LayoutCachedTop =4473
                    LayoutCachedWidth =3275
                    LayoutCachedHeight =4643
                End
                Begin Line
                    Left =2895
                    Top =3453
                    Width =3753
                    Name ="Linie34"
                    LayoutCachedLeft =2895
                    LayoutCachedTop =3453
                    LayoutCachedWidth =6648
                    LayoutCachedHeight =3453
                End
                Begin Line
                    Left =2895
                    Top =3843
                    Width =3753
                    Name ="Linie35"
                    LayoutCachedLeft =2895
                    LayoutCachedTop =3843
                    LayoutCachedWidth =6648
                    LayoutCachedHeight =3843
                End
                Begin Line
                    Left =2895
                    Top =4113
                    Width =3753
                    Name ="Linie36"
                    LayoutCachedLeft =2895
                    LayoutCachedTop =4113
                    LayoutCachedWidth =6648
                    LayoutCachedHeight =4113
                End
                Begin Line
                    Left =2895
                    Top =4428
                    Width =3753
                    Height =15
                    Name ="Linie37"
                    LayoutCachedLeft =2895
                    LayoutCachedTop =4428
                    LayoutCachedWidth =6648
                    LayoutCachedHeight =4443
                End
                Begin Label
                    Visible = NotDefault
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =7086
                    Top =3458
                    Width =1530
                    Height =105
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld44"
                    Caption ="Gesamtbetrag in Worten"
                End
                Begin TextBox
                    Visible = NotDefault
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    OldBorderStyle =1
                    TextFontFamily =34
                    Left =7426
                    Top =2948
                    Width =922
                    Height =143
                    FontSize =12
                    FontWeight =600
                    TabIndex =8
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =2
                    TextAlign =1
                    TextFontFamily =34
                    Left =7483
                    Top =2494
                    Width =862
                    Height =233
                    FontSize =9
                    FontWeight =600
                    TabIndex =9
                    BackColor =14671839
                    Name ="Text49"
                    ControlSource ="=\"Gesamtbetrag: \" & [Betrag] & \" €\""
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =6757
                    Width =9000
                    Height =338
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld50"
                    Caption ="Kassenzeichen / Kassenkonto"
                    LayoutCachedTop =6757
                    LayoutCachedWidth =9000
                    LayoutCachedHeight =7095
                End
                Begin Label
                    BackStyle =1
                    TextFontFamily =34
                    Left =2878
                    Top =6765
                    Width =6126
                    Height =293
                    Name ="Bezeichnungsfeld51"
                    LayoutCachedLeft =2878
                    LayoutCachedTop =6765
                    LayoutCachedWidth =9004
                    LayoutCachedHeight =7058
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    SpecialEffect =2
                    TextFontFamily =34
                    Left =1303
                    Top =71
                    Width =1053
                    Height =274
                    TabIndex =10
                    Name ="ID"
                    ControlSource ="ID"
                    FontName ="MS Sans Serif"

                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =6397
                    Width =9000
                    Height =308
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld57"
                    Caption ="Verwendungszweck"
                    LayoutCachedLeft =15
                    LayoutCachedTop =6397
                    LayoutCachedWidth =9015
                    LayoutCachedHeight =6705
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2970
                    Top =6409
                    Width =6052
                    Height =278
                    FontSize =12
                    FontWeight =600
                    TabIndex =11
                    Name ="Verwendungszweck"
                    ControlSource ="Verwendungszweck"

                    LayoutCachedLeft =2970
                    LayoutCachedTop =6409
                    LayoutCachedWidth =9022
                    LayoutCachedHeight =6687
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =7133
                    Width =8955
                    Height =1598
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld59"
                    Caption ="Empfänger / Einzahler"
                    LayoutCachedLeft =15
                    LayoutCachedTop =7133
                    LayoutCachedWidth =8970
                    LayoutCachedHeight =8731
                End
                Begin Line
                    Left =2892
                    Top =2317
                    Width =0
                    Height =265
                    Name ="Linie64"
                    LayoutCachedLeft =2892
                    LayoutCachedTop =2317
                    LayoutCachedWidth =2892
                    LayoutCachedHeight =2582
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextFontFamily =34
                    Left =2910
                    Top =1473
                    Width =3742
                    Height =269
                    FontSize =12
                    FontWeight =600
                    TabIndex =12
                    Name ="Sachbearbeiter"
                    ControlSource ="Sachbearbeiter"

                    LayoutCachedLeft =2910
                    LayoutCachedTop =1473
                    LayoutCachedWidth =6652
                    LayoutCachedHeight =1742
                End
                Begin TextBox
                    FontItalic = NotDefault
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =4380
                    Top =2058
                    Width =2257
                    Height =278
                    FontSize =11
                    FontWeight =600
                    TabIndex =13
                    Name ="Ausgabe"
                    ControlSource ="Ausgabe"

                    LayoutCachedLeft =4380
                    LayoutCachedTop =2058
                    LayoutCachedWidth =6637
                    LayoutCachedHeight =2336
                End
                Begin TextBox
                    FontItalic = NotDefault
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =2955
                    Top =2313
                    Width =1387
                    Height =263
                    FontSize =11
                    FontWeight =600
                    TabIndex =14
                    Name ="Auftragsnummer"
                    ControlSource ="Auftragsnummer"

                    LayoutCachedLeft =2955
                    LayoutCachedTop =2313
                    LayoutCachedWidth =4342
                    LayoutCachedHeight =2576
                End
                Begin TextBox
                    FontItalic = NotDefault
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =4380
                    Top =2583
                    Width =2257
                    Height =263
                    FontSize =11
                    FontWeight =600
                    TabIndex =15
                    Name ="Text5"

                    LayoutCachedLeft =4380
                    LayoutCachedTop =2583
                    LayoutCachedWidth =6637
                    LayoutCachedHeight =2846
                End
                Begin TextBox
                    FontItalic = NotDefault
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =4380
                    Top =2853
                    Width =2257
                    Height =593
                    FontSize =11
                    FontWeight =600
                    TabIndex =16
                    Name ="Text6"

                    LayoutCachedLeft =4380
                    LayoutCachedTop =2853
                    LayoutCachedWidth =6637
                    LayoutCachedHeight =3446
                End
                Begin Line
                    Left =2895
                    Top =2298
                    Width =3753
                    Name ="Linie7"
                    LayoutCachedLeft =2895
                    LayoutCachedTop =2298
                    LayoutCachedWidth =6648
                    LayoutCachedHeight =2298
                End
                Begin Line
                    Left =2895
                    Top =2568
                    Width =3753
                    Name ="Linie9"
                    LayoutCachedLeft =2895
                    LayoutCachedTop =2568
                    LayoutCachedWidth =6648
                    LayoutCachedHeight =2568
                End
                Begin Line
                    Left =2895
                    Top =2838
                    Width =3753
                    Name ="Linie10"
                    LayoutCachedLeft =2895
                    LayoutCachedTop =2838
                    LayoutCachedWidth =6648
                    LayoutCachedHeight =2838
                End
                Begin Line
                    LineSlant = NotDefault
                    Left =6633
                    Top =2047
                    Width =0
                    Height =2665
                    Name ="Linie12"
                    LayoutCachedLeft =6633
                    LayoutCachedTop =2047
                    LayoutCachedWidth =6633
                    LayoutCachedHeight =4712
                End
                Begin Subform
                    BorderWidth =1
                    Top =5093
                    Width =9030
                    Height =604
                    TabIndex =17
                    Name ="Buchungsanordnung_Unterbericht_Buchungsstelle"
                    SourceObject ="Report.Buchungsanordnung_Unterbericht_Buchungsstelle"
                    LinkChildFields ="ID"
                    LinkMasterFields ="ID"

                    LayoutCachedTop =5093
                    LayoutCachedWidth =9030
                    LayoutCachedHeight =5697
                End
                Begin Subform
                    BorderWidth =1
                    Top =5782
                    Width =9030
                    Height =544
                    TabIndex =18
                    Name ="Eingebettet16"
                    SourceObject ="Report.Buchungsanordnung_Unterbericht_Kostenrechnung"
                    LinkChildFields ="ID"
                    LinkMasterFields ="ID"

                    LayoutCachedTop =5782
                    LayoutCachedWidth =9030
                    LayoutCachedHeight =6326
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2940
                    Top =7148
                    Width =1410
                    Height =270
                    FontSize =10
                    BackColor =14671839
                    Name ="P"
                    Caption ="Pers.ID"
                    LayoutCachedLeft =2940
                    LayoutCachedTop =7148
                    LayoutCachedWidth =4350
                    LayoutCachedHeight =7418
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =7148
                    Width =4237
                    Height =255
                    FontSize =11
                    FontWeight =600
                    TabIndex =19
                    Name ="PersID"
                    ControlSource ="PersID"

                    LayoutCachedLeft =4785
                    LayoutCachedTop =7148
                    LayoutCachedWidth =9022
                    LayoutCachedHeight =7403
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2940
                    Top =7403
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld21"
                    Caption ="Anrede"
                    LayoutCachedLeft =2940
                    LayoutCachedTop =7403
                    LayoutCachedWidth =4350
                    LayoutCachedHeight =7688
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =7388
                    Width =4237
                    Height =270
                    FontSize =12
                    FontWeight =600
                    TabIndex =20
                    Name ="Anrede"
                    ControlSource ="Anrede"

                    LayoutCachedLeft =4785
                    LayoutCachedTop =7388
                    LayoutCachedWidth =9022
                    LayoutCachedHeight =7658
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2933
                    Top =7919
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld28"
                    Caption ="PLZ, Ort"
                    LayoutCachedLeft =2933
                    LayoutCachedTop =7919
                    LayoutCachedWidth =4343
                    LayoutCachedHeight =8204
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =7898
                    Width =4237
                    Height =270
                    FontSize =12
                    FontWeight =600
                    TabIndex =21
                    Name ="PLZ, Ort"
                    ControlSource ="PLZ, Ort"
                    EventProcPrefix ="PLZ__Ort"

                    LayoutCachedLeft =4785
                    LayoutCachedTop =7898
                    LayoutCachedWidth =9022
                    LayoutCachedHeight =8168
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2933
                    Top =8189
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld31"
                    Caption ="Straße, Nr"
                    LayoutCachedLeft =2933
                    LayoutCachedTop =8189
                    LayoutCachedWidth =4343
                    LayoutCachedHeight =8474
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =8168
                    Width =4237
                    Height =270
                    FontSize =12
                    FontWeight =600
                    TabIndex =22
                    Name ="Straße, Nr"
                    ControlSource ="Straße, Nr"
                    EventProcPrefix ="Straße__Nr"

                    LayoutCachedLeft =4785
                    LayoutCachedTop =8168
                    LayoutCachedWidth =9022
                    LayoutCachedHeight =8438
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2933
                    Top =8459
                    Width =1410
                    Height =255
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld33"
                    Caption ="Postfach"
                    LayoutCachedLeft =2933
                    LayoutCachedTop =8459
                    LayoutCachedWidth =4343
                    LayoutCachedHeight =8714
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =8438
                    Width =4237
                    Height =285
                    FontSize =12
                    FontWeight =600
                    TabIndex =23
                    Name ="Postfach"
                    ControlSource ="Postfach"

                    LayoutCachedLeft =4785
                    LayoutCachedTop =8438
                    LayoutCachedWidth =9022
                    LayoutCachedHeight =8723
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2940
                    Top =7673
                    Width =1755
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld49"
                    Caption ="Name, Vorname"
                    LayoutCachedLeft =2940
                    LayoutCachedTop =7673
                    LayoutCachedWidth =4695
                    LayoutCachedHeight =7958
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =7658
                    Width =4237
                    Height =270
                    FontSize =12
                    FontWeight =600
                    TabIndex =24
                    Name ="Text50"
                    ControlSource ="Name, Vorname"

                    LayoutCachedLeft =4785
                    LayoutCachedTop =7658
                    LayoutCachedWidth =9022
                    LayoutCachedHeight =7928
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =8732
                    Width =8985
                    Height =1703
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld52"
                    Caption ="Bankverbindung"
                    LayoutCachedLeft =15
                    LayoutCachedTop =8732
                    LayoutCachedWidth =9000
                    LayoutCachedHeight =10435
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2940
                    Top =8754
                    Width =1050
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld53"
                    Caption ="Bankname"
                    LayoutCachedLeft =2940
                    LayoutCachedTop =8754
                    LayoutCachedWidth =3990
                    LayoutCachedHeight =9039
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =8739
                    Width =4207
                    Height =270
                    FontSize =10
                    FontWeight =600
                    TabIndex =25
                    Name ="Bankname"
                    ControlSource ="Bankname"

                    LayoutCachedLeft =4785
                    LayoutCachedTop =8739
                    LayoutCachedWidth =8992
                    LayoutCachedHeight =9009
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2940
                    Top =9002
                    Width =450
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld55"
                    Caption ="BLZ"
                    LayoutCachedLeft =2940
                    LayoutCachedTop =9002
                    LayoutCachedWidth =3390
                    LayoutCachedHeight =9287
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =8994
                    Width =4207
                    Height =270
                    FontSize =10
                    FontWeight =600
                    TabIndex =26
                    Name ="BLZ"
                    ControlSource ="BLZ"

                    LayoutCachedLeft =4785
                    LayoutCachedTop =8994
                    LayoutCachedWidth =8992
                    LayoutCachedHeight =9264
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2933
                    Top =9518
                    Width =945
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld58"
                    Caption ="Abbucher"
                    LayoutCachedLeft =2933
                    LayoutCachedTop =9518
                    LayoutCachedWidth =3878
                    LayoutCachedHeight =9803
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2940
                    Top =9272
                    Width =885
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld64"
                    Caption ="Konto-Nr"
                    LayoutCachedLeft =2940
                    LayoutCachedTop =9272
                    LayoutCachedWidth =3825
                    LayoutCachedHeight =9557
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =9264
                    Width =4207
                    Height =270
                    FontSize =10
                    FontWeight =600
                    TabIndex =27
                    Name ="Konto-Nr"
                    ControlSource ="Konto-Nr"
                    EventProcPrefix ="Konto_Nr"

                    LayoutCachedLeft =4785
                    LayoutCachedTop =9264
                    LayoutCachedWidth =8992
                    LayoutCachedHeight =9534
                End
                Begin Label
                    FontItalic = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =9534
                    Width =2445
                    Height =285
                    FontSize =10
                    FontWeight =600
                    BackColor =14671839
                    Name ="Bezeichnungsfeld67"
                    Caption ="         ja               nein"
                    LayoutCachedLeft =4785
                    LayoutCachedTop =9534
                    LayoutCachedWidth =7230
                    LayoutCachedHeight =9819
                End
                Begin Subform
                    BorderWidth =1
                    Top =10454
                    Width =9030
                    Height =439
                    TabIndex =28
                    Name ="Eingebettet68"
                    SourceObject ="Report.Buchungsanordnung_Unterbericht_Fälligkeiten"
                    LinkChildFields ="ID aus Buchungen"
                    LinkMasterFields ="ID"

                    LayoutCachedTop =10454
                    LayoutCachedWidth =9030
                    LayoutCachedHeight =10893
                End
                Begin Line
                    Top =15
                    Width =9014
                    Name ="Linie83"
                End
                Begin Line
                    Top =13547
                    Width =9014
                    Name ="Linie84"
                    LayoutCachedTop =13547
                    LayoutCachedWidth =9014
                    LayoutCachedHeight =13547
                End
                Begin Line
                    BorderWidth =1
                    Left =9015
                    Top =540
                    Width =0
                    Height =12730
                    Name ="Linie86"
                End
                Begin Line
                    BorderWidth =2
                    Top =540
                    Width =0
                    Height =12793
                    Name ="Linie87"
                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =4932
                    Top =9592
                    Width =170
                    Height =170
                    TabIndex =29
                    Name ="Abbucher"
                    ControlSource ="Abbucher"
                    DefaultValue ="No"

                    LayoutCachedLeft =4932
                    LayoutCachedTop =9592
                    LayoutCachedWidth =5102
                    LayoutCachedHeight =9762
                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =6066
                    Top =9592
                    Width =170
                    Height =170
                    TabIndex =30
                    Name ="Kontrollkästchen89"
                    ControlSource ="=IIf([Abbucher]=-1,0,-1)"
                    DefaultValue ="No"

                    LayoutCachedLeft =6066
                    LayoutCachedTop =9592
                    LayoutCachedWidth =6236
                    LayoutCachedHeight =9762
                End
                Begin Line
                    BorderWidth =1
                    Left =4308
                    Top =1197
                    Width =0
                    Height =283
                    Name ="Linie90"
                    LayoutCachedLeft =4308
                    LayoutCachedTop =1197
                    LayoutCachedWidth =4308
                    LayoutCachedHeight =1480
                End
                Begin Line
                    BorderWidth =1
                    Left =4305
                    Top =1473
                    Width =2325
                    Name ="Linie91"
                    LayoutCachedLeft =4305
                    LayoutCachedTop =1473
                    LayoutCachedWidth =6630
                    LayoutCachedHeight =1473
                End
                Begin Line
                    BorderWidth =1
                    Left =6633
                    Top =1480
                    Width =0
                    Height =284
                    Name ="Linie92"
                    LayoutCachedLeft =6633
                    LayoutCachedTop =1480
                    LayoutCachedWidth =6633
                    LayoutCachedHeight =1764
                End
                Begin Line
                    BorderWidth =1
                    Left =6645
                    Top =2043
                    Width =0
                    Height =2665
                    Name ="Linie93"
                    LayoutCachedLeft =6645
                    LayoutCachedTop =2043
                    LayoutCachedWidth =6645
                    LayoutCachedHeight =4708
                End
                Begin Line
                    BorderWidth =1
                    Left =56
                    Top =4697
                    Width =6577
                    Name ="Linie94"
                    LayoutCachedLeft =56
                    LayoutCachedTop =4697
                    LayoutCachedWidth =6633
                    LayoutCachedHeight =4697
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =11628
                    Width =9015
                    Height =2228
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld97"
                    Caption ="."
                    LayoutCachedTop =11628
                    LayoutCachedWidth =9015
                    LayoutCachedHeight =13856
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =11626
                    Width =2940
                    Height =855
                    FontSize =9
                    Name ="Bezeichnungsfeld71"
                    Caption ="  fachtechnisch u. sachlich richtig"
                    LayoutCachedLeft =15
                    LayoutCachedTop =11626
                    LayoutCachedWidth =2955
                    LayoutCachedHeight =12481
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =3108
                    Top =11626
                    Width =2835
                    Height =855
                    FontSize =9
                    Name ="Bezeichnungsfeld72"
                    Caption ="  sachlich u. rechnerisch richtig"
                    LayoutCachedLeft =3108
                    LayoutCachedTop =11626
                    LayoutCachedWidth =5943
                    LayoutCachedHeight =12481
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =6105
                    Top =11626
                    Width =2895
                    Height =855
                    FontSize =9
                    Name ="Bezeichnungsfeld73"
                    Caption ="        Vermerke der Stadtkasse"
                    LayoutCachedLeft =6105
                    LayoutCachedTop =11626
                    LayoutCachedWidth =9000
                    LayoutCachedHeight =12481
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =15
                    Top =12476
                    Width =2940
                    Height =225
                    Name ="Bezeichnungsfeld74"
                    Caption ="Datum, Unterschrift"
                    LayoutCachedLeft =15
                    LayoutCachedTop =12476
                    LayoutCachedWidth =2955
                    LayoutCachedHeight =12701
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =3105
                    Top =12481
                    Width =2835
                    Height =225
                    Name ="Bezeichnungsfeld75"
                    Caption ="Datum, Unterschrift"
                    LayoutCachedLeft =3105
                    LayoutCachedTop =12481
                    LayoutCachedWidth =5940
                    LayoutCachedHeight =12706
                End
                Begin TextBox
                    Left =3150
                    Top =12226
                    Width =1007
                    Height =225
                    TabIndex =31
                    Name ="Text77"
                    ControlSource ="=Date()"
                    Format ="Short Date"

                    LayoutCachedLeft =3150
                    LayoutCachedTop =12226
                    LayoutCachedWidth =4157
                    LayoutCachedHeight =12451
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =6120
                    Top =12811
                    Width =2880
                    Height =810
                    FontSize =9
                    Name ="Bezeichnungsfeld79"
                    Caption =" Vermerke der Rechnungsprüfung"
                    LayoutCachedLeft =6120
                    LayoutCachedTop =12811
                    LayoutCachedWidth =9000
                    LayoutCachedHeight =13621
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =6120
                    Top =13621
                    Width =2880
                    Height =225
                    Name ="Bezeichnungsfeld80"
                    LayoutCachedLeft =6120
                    LayoutCachedTop =13621
                    LayoutCachedWidth =9000
                    LayoutCachedHeight =13846
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =15
                    Top =13599
                    Width =5940
                    Height =240
                    Name ="Bezeichnungsfeld82"
                    Caption ="Datum, Unterschrift"
                    LayoutCachedLeft =15
                    LayoutCachedTop =13599
                    LayoutCachedWidth =5955
                    LayoutCachedHeight =13839
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =12811
                    Width =5940
                    Height =825
                    FontSize =9
                    Name ="Bezeichnungsfeld81"
                    Caption ="Stadt Castrop-Rauxel                                Der Bürgermeister      \015\012"
                        "                                                                       i.A.\015\012"
                    LayoutCachedLeft =15
                    LayoutCachedTop =12811
                    LayoutCachedWidth =5955
                    LayoutCachedHeight =13636
                End
                Begin TextBox
                    FontItalic = NotDefault
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =4365
                    Top =2323
                    Width =2257
                    Height =233
                    FontSize =11
                    FontWeight =600
                    TabIndex =32
                    Name ="Zahlung"
                    ControlSource ="Zahlung"

                    LayoutCachedLeft =4365
                    LayoutCachedTop =2323
                    LayoutCachedWidth =6622
                    LayoutCachedHeight =2556
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =6105
                    Top =12480
                    Width =2895
                    Height =225
                    Name ="Bezeichnungsfeld99"
                    LayoutCachedLeft =6105
                    LayoutCachedTop =12480
                    LayoutCachedWidth =9000
                    LayoutCachedHeight =12705
                End
                Begin Label
                    FontUnderline = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =10892
                    Width =9000
                    Height =683
                    FontSize =10
                    FontWeight =700
                    BackColor =14671839
                    Name ="Bezeichnungsfeld100"
                    Caption ="Leistungszeitraum:"
                    LayoutCachedLeft =15
                    LayoutCachedTop =10892
                    LayoutCachedWidth =9015
                    LayoutCachedHeight =11575
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =3113
                    Top =11216
                    Width =2092
                    Height =293
                    FontSize =12
                    FontWeight =600
                    TabIndex =33
                    Name ="von_"
                    ControlSource ="von_"

                    LayoutCachedLeft =3113
                    LayoutCachedTop =11216
                    LayoutCachedWidth =5205
                    LayoutCachedHeight =11509
                End
                Begin Line
                    BorderWidth =1
                    Left =9015
                    Top =4622
                    Width =0
                    Height =8605
                    Name ="Linie102"
                End
                Begin Line
                    BorderWidth =2
                    Top =4622
                    Width =0
                    Height =8668
                    Name ="Linie103"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =6022
                    Top =11216
                    Width =2017
                    Height =293
                    FontSize =12
                    FontWeight =600
                    TabIndex =34
                    Name ="Text104"
                    ControlSource ="bis_"

                    LayoutCachedLeft =6022
                    LayoutCachedTop =11216
                    LayoutCachedWidth =8039
                    LayoutCachedHeight =11509
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =2494
                    Top =11231
                    Width =390
                    Height =270
                    FontSize =10
                    FontWeight =300
                    BackColor =14671839
                    Name ="Bezeichnungsfeld105"
                    Caption ="vom"
                    LayoutCachedLeft =2494
                    LayoutCachedTop =11231
                    LayoutCachedWidth =2884
                    LayoutCachedHeight =11501
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =5347
                    Top =11231
                    Width =330
                    Height =270
                    FontSize =10
                    FontWeight =300
                    BackColor =14671839
                    Name ="Bezeichnungsfeld106"
                    Caption ="bis"
                    LayoutCachedLeft =5347
                    LayoutCachedTop =11231
                    LayoutCachedWidth =5677
                    LayoutCachedHeight =11501
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =3885
                    Top =10926
                    Width =660
                    Height =270
                    FontSize =10
                    FontWeight =300
                    BackColor =14671839
                    Name ="Bezeichnungsfeld107"
                    Caption ="Datum"
                    LayoutCachedLeft =3885
                    LayoutCachedTop =10926
                    LayoutCachedWidth =4545
                    LayoutCachedHeight =11196
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =6512
                    Top =10927
                    Width =660
                    Height =270
                    FontSize =10
                    FontWeight =300
                    BackColor =14671839
                    Name ="Bezeichnungsfeld108"
                    Caption ="Datum"
                    LayoutCachedLeft =6512
                    LayoutCachedTop =10927
                    LayoutCachedWidth =7172
                    LayoutCachedHeight =11197
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =4753
                    Width =8970
                    Height =308
                    FontSize =10
                    FontWeight =700
                    BackColor =14671839
                    Name ="Bezeichnungsfeld109"
                    Caption ="Anlagenbuchhaltung"
                    LayoutCachedTop =4753
                    LayoutCachedWidth =8970
                    LayoutCachedHeight =5061
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =6630
                    Top =4753
                    Width =2392
                    Height =308
                    FontSize =12
                    FontWeight =600
                    TabIndex =35
                    Name ="Text110"
                    ControlSource ="Anlage"

                    LayoutCachedLeft =6630
                    LayoutCachedTop =4753
                    LayoutCachedWidth =9022
                    LayoutCachedHeight =5061
                End
                Begin Label
                    FontItalic = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =2895
                    Top =4753
                    Width =3735
                    Height =315
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld111"
                    Caption ="Ergängzung der Anlage Nr."
                    LayoutCachedLeft =2895
                    LayoutCachedTop =4753
                    LayoutCachedWidth =6630
                    LayoutCachedHeight =5068
                End
                Begin TextBox
                    Left =52
                    Top =13394
                    Width =1007
                    Height =225
                    TabIndex =36
                    Name ="Text112"
                    ControlSource ="=Date()"
                    Format ="Short Date"

                    LayoutCachedLeft =52
                    LayoutCachedTop =13394
                    LayoutCachedWidth =1059
                    LayoutCachedHeight =13619
                End
                Begin TextBox
                    Left =56
                    Top =12226
                    Width =1007
                    Height =225
                    TabIndex =37
                    Name ="Text113"
                    ControlSource ="=Date()"
                    Format ="Short Date"

                    LayoutCachedLeft =56
                    LayoutCachedTop =12226
                    LayoutCachedWidth =1063
                    LayoutCachedHeight =12451
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2955
                    Top =9839
                    Width =885
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld114"
                    Caption ="IBAN"
                    LayoutCachedLeft =2955
                    LayoutCachedTop =9839
                    LayoutCachedWidth =3840
                    LayoutCachedHeight =10124
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =9839
                    Width =4207
                    Height =270
                    FontSize =10
                    FontWeight =600
                    TabIndex =38
                    Name ="Text115"
                    ControlSource ="IBAN"
                    InputMask =">LL00000000000000000000;;_"

                    LayoutCachedLeft =4785
                    LayoutCachedTop =9839
                    LayoutCachedWidth =8992
                    LayoutCachedHeight =10109
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2955
                    Top =10124
                    Width =885
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld116"
                    Caption ="BIC"
                    LayoutCachedLeft =2955
                    LayoutCachedTop =10124
                    LayoutCachedWidth =3840
                    LayoutCachedHeight =10409
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =10109
                    Width =4207
                    Height =270
                    FontSize =10
                    FontWeight =600
                    TabIndex =39
                    Name ="Text117"
                    ControlSource ="BIC"
                    InputMask =">LLLLLLAAAAA;;_"

                    LayoutCachedLeft =4785
                    LayoutCachedTop =10109
                    LayoutCachedWidth =8992
                    LayoutCachedHeight =10379
                End
                Begin UnboundObjectFrame
                    Visible = NotDefault
                    Locked = NotDefault
                    SizeMode =3
                    OldBorderStyle =0
                    Left =6735
                    Top =2385
                    Width =2221
                    Height =1981
                    TabIndex =40
                    Name ="OLE_Kopie_Stempel"
                    OleData = Begin
                        0x005a0000d0cf11e0a1b11ae1000000000000000000000000000000003e000300 ,
                        0xfeff090006000000000000000000000001000000010000000000000000100000 ,
                        0x0200000001000000feffffff0000000000000000ffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffdffffff0e000000feffffff0f000000050000000600000007000000 ,
                        0x08000000090000000a0000000b0000000c0000000d000000feffffff1b000000 ,
                        0x100000001100000012000000feffffff14000000150000001600000017000000 ,
                        0x18000000190000001a000000fefffffffeffffff1d0000001e0000001f000000 ,
                        0x20000000210000002200000023000000feffffff250000002600000027000000 ,
                        0x28000000290000002a0000002b000000feffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffff52006f006f007400200045006e007400720079000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000016000500ffffffffffffffff040000000709020000000000c0000000 ,
                        0x00000046000000000000000000000000e090cb85d813d20103000000c0090000 ,
                        0x0000000001004f006c0065000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000000a000201ffffffffffffffffffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000014000000 ,
                        0x0000000031005400610062006c00650000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000000e0002010100000003000000ffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000400000086120000 ,
                        0x00000000010043006f006d0070004f0062006a00000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000012000201ffffffffffffffffffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000100000067000000 ,
                        0x00000000feffffff02000000fefffffffeffffff050000000600000007000000 ,
                        0x08000000090000000a0000000b0000000c0000000d0000000e0000000f000000 ,
                        0x1000000011000000120000001300000014000000150000001600000017000000 ,
                        0x18000000190000001a0000001b0000001c0000001d0000001e0000001f000000 ,
                        0x200000002100000022000000230000002400000025000000fefffffffeffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffff01000002000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000000100feff030a0000ffffffff0709020000000000c000000000000046 ,
                        0x160000004d6963726f736f667420576f72642d47726166696b000a0000004d53 ,
                        0x576f7264446f63000f000000576f72642e506963747572652e3800f439b27100 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000300000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000ffffffff030000000400000001000000ffffffff0000000000000000 ,
                        0x5c170000281100003e0800000100090000031f0400000600c600000000001400 ,
                        0x000026060f001e00ffffffff040014000000576f72640e004d6963726f736f66 ,
                        0x7420576f7264050000000b0200000000050000000c020e0485051c000000fb02 ,
                        0x1000070000000000bc02000000000102022253797374656d000000000a000000 ,
                        0x040000000000ffffffff0100000000003000040000002d010000050000000201 ,
                        0x010000001c000000fb029cff0000000000009001000000000440002241726961 ,
                        0x6c00f47740000000fb030af4b813f577c113f577010000000000300004000000 ,
                        0x2d01010012000f000a0001005b000f00020000000000000034000040f1ff0200 ,
                        0x3400000008005300740061006e0064006100720064000000020000001000434a ,
                        0x18004f4a0200514a02006d480704000000000000000000000000000000000000 ,
                        0x42004140f2ffa100420000001900410062007300610074007a002d0053007400 ,
                        0x61006e0064006100720064007300630068007200690066007400610072007400 ,
                        0x00000000000000000000000000000000060000000500000c00000000ffffffff ,
                        0x010000000420ffff010000000000000000000600000000000000000000040000 ,
                        0x0604000003000000000400000604000004000000000400000604000005000000 ,
                        0x0f0000f06c000000000006f01800000002080000020000000700000001000000 ,
                        0x01000000080000001f0001f02c000000320007f0240000000304a2476b43079d ,
                        0x5eeb436ccd4908739352ff000605000000000000ffffffff0000000040001ef1 ,
                        0x10000000ffff00000000ff0080808000f7000010000f0002f0320d0000100008 ,
                        0xf00800000006000000070400000f0003f0d00c00000f0004f028000000010009 ,
                        0xf010000000f4fcffff75fdffff320a00002f07000002000af008000000000400 ,
                        0x00050000000f0004f05801000002000af00800000003040000000a0000c3000b ,
                        0xf02801000042014804000043013d04000044010400000045c16800000046c172 ,
                        0x0000007f0101000100bf0100001000c00100000000c40100000000cb014c5900 ,
                        0x00ce0100000000ff01180018001a001a00f0ff00007c016a004201d1000b0161 ,
                        0x01160288015601ac01950037024b00c0020000a80263008e02c80074022a015c ,
                        0x028f01530325024804ba02c703000347034503b202db021d0272020702c802ef ,
                        0x0121031f0275034d02cc03e60106047c013d04be00db0200007c013600380002 ,
                        0x00004000ac010000ac010000ac010000ac010000ac010000ac010000ac010000 ,
                        0xac010000ac010000ac010000ac010000ac010000ac010000ac010000ac010000 ,
                        0xac010000ac010000ac010000ac010000ac010000ac010000ac010000ac010000 ,
                        0xac010000ac010000ac01600080000010f00400000004000000000011f0040000 ,
                        0x00010000000f0004f09003000002000af00800000004040000000a0000d3000b ,
                        0xf0600300007f000800080042018202000043017602000044010400000045c180 ,
                        0x01000046c18c0100007f0101000100bf0100001000c00100000000c401000000 ,
                        0x00cb014c590000ce0100000000ff011800180060006000f0ff2900d5011a00b8 ,
                        0x010e00990107007c0102005f010000420102002601050006010c00e9001600cc ,
                        0x002200b20032009a00460082005b006c007300570090004300af003000d3001f ,
                        0x00f80011001c0107003d0102005c0100007e0102009d010a00bd011300ea012b ,
                        0x0016024b003a0271005902a1006702be007102dd007b02fa007f021701820234 ,
                        0x017f0251017d026e0176028b016c02a7016002c2014f02dc013c02f40124020a ,
                        0x020a022002ed013302cd014602b10155029401610277016a025c017202400174 ,
                        0x022501760208017402ee006f02cf006502b200590295004b027a003802620025 ,
                        0x024d000c023a00f2012900d5012900d501e4006e01f8008d010b01a5012001b8 ,
                        0x013601c4014c01cc015f01ce017501c9018801c2019b01b601a901a701b30194 ,
                        0x01ba017f01ba016601b5014a01ac012a019b0109018801ec007501d4006101c0 ,
                        0x004c01b4003601ad002301ab000d01b000fa00b700e900c300db00d100cf00e5 ,
                        0x00c700fa00c7001501cc003201d6004e01e4006e01e4006e01c300c400020000 ,
                        0x4000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac0160004000ac010000 ,
                        0xac010000ac010000ac010000ac010000ac010000ac010000ac010000ac010000 ,
                        0xac010000ac010000ac010000ac010000ac010000ac010000ac010000ac010000 ,
                        0xac010000ac010000ac010000ac010000ac010000ac010000ac010000ac010000 ,
                        0xac010000ac010000ac010000ac010000ac010000ac010000ac010000ac010000 ,
                        0xac01600080000010f00400000003000000000011f004000000010000000f0004 ,
                        0xf03803000002000af00800000005040000000a0000d3000bf0080300007f0008 ,
                        0x0008004201db02000043019b03000044010400000045c15401000046c1600100 ,
                        0x007f0101000100bf0100001000c00100000000c40100000000cb014c590000ce ,
                        0x0100000000ff011800180055005500f0ff7c019b03be003a020000d8005900aa ,
                        0x00b0007a00c500a100d900c700dd00a800e5008b00ee007500f800620009014d ,
                        0x001a0139002f01280047011a005f010e00770107008f010000aa010000c20100 ,
                        0x00da010400f2010c000a021800380234006102590085028600a602bb00b702da ,
                        0x00c302fa00cd021701d4023301d9025001db026b01db028501d6029d01c802cd ,
                        0x01b002f4018e0216026502300250023c023a02430224024b020f024d02f7014d ,
                        0x02e1014b02b6014102f701bc023a023403da0166037c019b037c019b03470174 ,
                        0x01580191016901a7017c01b5018f01c101a301c901b601c901c901c601dc01bf ,
                        0x01eb01b501f701a701fe0196010302830103026d0100025501f4013801e60119 ,
                        0x01d501fc00c401e600b101d6009e01ca008d01c2007a01c2006901c5005601cc ,
                        0x004701d6003b01e4003201f5002a0108012a0120012f01380139015501470174 ,
                        0x0147017401ad00b0000200004000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac0160004000ac010000 ,
                        0xac010000ac010000ac010000ac010000ac010000ac010000ac010000ac010000 ,
                        0xac010000ac010000ac010000ac010000ac010000ac010000ac010000ac010000 ,
                        0xac010000ac010000ac010000ac010000ac010000ac010000ac010000ac010000 ,
                        0xac010000ac010000ac010000ac010000ac010000ac010000ac010000ac010000 ,
                        0xac01600080000010f00400000002000000000011f004000000020000000f0004 ,
                        0xf01001000002000af00800000006040000000a0000d3000bf0e00000007f0008 ,
                        0x00080042013702000043012803000044010400000045c14000000046c14c0000 ,
                        0x007f0101000100bf0100001000c00100000000c40100000000cb014c590000ce ,
                        0x0100000000ff011800180010001000f0ff00006500bb000000df004300030186 ,
                        0x004800eb002400a8000000650000006500670027012301c200ae01c4013702c3 ,
                        0x027b012803f00029026700270167002701230024000200004000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac0160004000ac010000 ,
                        0xac010000ac010000ac010000ac010000ac010000ac010000ac01600080000010 ,
                        0xf00400000001000000000011f004000000020000000f0004f04803000002000a ,
                        0xf00800000007040000000a0000d3000bf0180300007f000800080042019a0200 ,
                        0x0043018202000044010400000045c15c01000046c1680100007f0101000100bf ,
                        0x0100001000c00100000000c40100000000cb014c590000ce0100000000ff0118 ,
                        0x00180057005700f0ff7b02d8000401a3011201b6012301c7013101d3014201dc ,
                        0x015801e4016d01e4018301e1019b01d701b301c701c601ac01d0019701d7017a ,
                        0x013a0251019a022801970258018e0283017f02ac016f02ce015402f00132020f ,
                        0x0207022e02d5014d02a501630279017402500180022a01820208018002e40079 ,
                        0x02c0006d029f0059027d0041025e002402430003022b00da011d00bd0111009e ,
                        0x0109008101020064010000470102002a0105000d010c00f1001500d4002200b9 ,
                        0x003200a100460089005b00730073005e0090004b00af003a00e200220012010e ,
                        0x003d010500660100008d010500b3010e00d5011d00f601300016024b0035026c ,
                        0x00520295006f02c3007602cf007b02d8007b02d8008a01e2007901ca006601b7 ,
                        0x005501a8004201a1002f019c001c019c000801a100f500a800e200b700d300c8 ,
                        0x00c700dd00c300f500c0000601c3001901ca002f01d10045012f0115018a01e2 ,
                        0x008a01e200b100b4000200004000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac010000ac010000ac01 ,
                        0x0000ac010000ac010000ac010000ac010000ac010000ac0160004000ac010000 ,
                        0xac010000ac010000ac010000ac010000ac010000ac010000ac010000ac010000 ,
                        0xac010000ac010000ac010000ac010000ac010000ac010000ac010000ac010000 ,
                        0xac010000ac010000ac01600080000010f00400000000000000000011f0040000 ,
                        0x00010000000f0004f04200000012000af00800000001040000000e000053000b ,
                        0xf01e000000bf0100001000cb0100000000ff01000008000403090000003f0301 ,
                        0x000100000011f004000000010000000000000001000000020000000300000004 ,
                        0x0000000600000007040000d3090000340100006d0c0000b60300007400000000 ,
                        0x0006040000f007000082010000270a0000aa04000074000000000005040000df ,
                        0x05000024030000ba080000bf06000074000000000004040000b10300008a0400 ,
                        0x0033060000000700007400000000000304000018000000a204000060040000df ,
                        0x08000074000000000000000000080000000700ff400380010000000000000000 ,
                        0x00bcab5201010001000000000000000000000000000000000002100000000000 ,
                        0x0000060000005000000800400000030000004716900100000202060305040502 ,
                        0x0304877a0000000000800800000000000000ff00000000000000540069006d00 ,
                        0x6500730020004e0065007700200052006f006d0061006e000000351690010200 ,
                        0x0505010201070602050700000000000000100000000000000000000000800000 ,
                        0x0000530079006d0062006f006c000000332690010000020b0604020202020204 ,
                        0x877a0000000000800800000000000000ff000000000000004100720069006100 ,
                        0x6c00000022000400f00888180000c4020000a9010000000060db9c4661db9c46 ,
                        0x0000000002000000000000000000000000000100010000000400031001000000 ,
                        0x0000000000000000010001000000010000000000000021030000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000a506c007b400b40080001230 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000002000000fc01ffff120000000000 ,
                        0x000000000000000000000a004800650072007200200053007400610072006b00 ,
                        0x0a004800650072007200200053007400610072006b0000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000003004f0062006a0049006e0066006f00000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000120002010200000006000000ffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000300000004000000 ,
                        0x000000004f0062006a0065006300740050006f006f006c000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000016000101ffffffffffffffffffffffff000000000000000000000000 ,
                        0x0000000000000000e090cb85d813d201e090cb85d813d2010000000000000000 ,
                        0x0000000002004f006c0065005000720065007300300030003000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000180002010500000008000000ffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000400000066080000 ,
                        0x0000000057006f007200640044006f00630075006d0065006e00740000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000001a000201ffffffffffffffffffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000001300000000100000 ,
                        0x0000000005000000090200000000050000000201010000001000000026060f00 ,
                        0x1600ffffffff000002000000e7010000dc010000bc03000008000000fa020000 ,
                        0x0f00000000000000040000002d01020007000000fc0201000000000000000400 ,
                        0x00002d0103003800000024031a000a008d023700750261005e029d00cd02ae00 ,
                        0x7d02bd002d02f7000e023001ef01260118021b01420210016b02060195026d01 ,
                        0xd302d30111039d012f0368014b032a011f03ec00f302e3001703d9003c03ed00 ,
                        0x5f0300018403d5009c03a900b3035a001f030a008d0208000000fa0200000000 ,
                        0x000000000000040000002d01040004000000f001020007000000fc020000ffff ,
                        0xff000000040000002d0102000800000026060f000600ffffffff010010000000 ,
                        0x26060f001600ffffffff000082010000dd0100009f020000f402000008000000 ,
                        0xfa0200000f00000000000000040000002d010500040000002d010300c6000000 ,
                        0x380502003e0022009b01a80295019c0290018f028d0183028b0177028a016b02 ,
                        0x8b015f028c0152028f01460293013a0298012f029f012502a7011b02b0011202 ,
                        0xba010902c6010002d301f901e201f101f101ec010002e7010e02e5011b02e501 ,
                        0x2902e5013602e9014402ec015602f6016902040278021402850228028a023402 ,
                        0x8f02410293024d0294025902960265029402710294027d02910289028c029502 ,
                        0x8702a0028002ab027802b5026e02be026402c7025802cf024a02d7023f02dd02 ,
                        0x3202e2022602e6021b02e9020f02ea020402eb02f801ea02ed01e802e001e402 ,
                        0xd401df02c801d902bd01d102b301c902aa01bf02a201b4029b01a8029b01a802 ,
                        0xe9017d02f1018a02f901940202029c020b02a1021402a4021c02a5022602a302 ,
                        0x2d02a00235029b023b0295023f028d024202840242027a0240026e023c026102 ,
                        0x350253022d02470226023d021d023502140230020b022d0203022c02fa012e02 ,
                        0xf2013102eb013602e5013c02e0014402dd014d02dd015802df016402e3017002 ,
                        0xe9017d02e9017d02040000002d01040004000000f0010500040000002d010200 ,
                        0x0800000026060f000600ffffffff01001000000026060f001600ffffffff0000 ,
                        0x6b02000047010000ac030000d902000008000000fa0200000f00000000000000 ,
                        0x040000002d010500040000002d010300b000000038050200330022001103d002 ,
                        0xc2023d027302a90198029601bc028201c5029201cd02a201cf029501d2028901 ,
                        0xd6028001da027801e1026f01e8026701f1026001fb025a01050355010f035201 ,
                        0x19034f0124034f012e034f0138035101420354014c0359015f03650170037401 ,
                        0x7f0387018d039d019403aa019903b8019d03c401a003cf01a203db01a303e701 ,
                        0xa303f101a103fb019b030f029103200283032e027203390269033e0260034102 ,
                        0x570344024e034502440345023b03440229034002440373026003a5023803ba02 ,
                        0x1103d0021103d002fb02ea010203f601090300021103050219030a0221030e02 ,
                        0x29030e0231030d0239030a023f030502440300024703f9014903f1014903e701 ,
                        0x4803dd014303d1013d03c4013603b8012f03af012703a9011f03a4011803a001 ,
                        0x1003a0010903a1010103a401fb02a901f602ae01f202b501ef02bd01ef02c701 ,
                        0xf102d101f502dd01fb02ea01fb02ea01040000002d01040004000000f0010500 ,
                        0x040000002d0102000800000026060f000600ffffffff01001000000026060f00 ,
                        0x1600ffffffff0000470300009900000044040000fb01000008000000fa020000 ,
                        0x0f00000000000000040000002d010500040000002d0103002600000038050200 ,
                        0x080008004f03cb009d03a100ac03bd00bb03d9006d0303015e03e7004f03cb00 ,
                        0x4f03cb007a031c01c803f20002045e013b04c801ed03f201b30388017a031c01 ,
                        0x7a031c01040000002d01040004000000f0010500040000002d01020008000000 ,
                        0x26060f000600ffffffff01001000000026060f001600ffffffff000010040000 ,
                        0x79000000370500009501000008000000fa0200000f0000000000000004000000 ,
                        0x2d010500040000002d010300b400000038050200430014002105db0085042f01 ,
                        0x8a04370192043e01970443019e044701a8044a01b0044a01ba044901c4044501 ,
                        0xce043e01d5043301da042a01dd041e0106050d012e05fc002d05100129052201 ,
                        0x230533011c05410111054f0102055c01f1046901dc047601c8047f01b5048601 ,
                        0xa4048b0194048c0186048b0177048801680483015b047b014c0471013f046501 ,
                        0x340457012a04460124043a011f042d011c04210119041501180409011904fd00 ,
                        0x1a04f1001d04e5002104d9002604ce002d04c4003504ba003e04b1004804a800 ,
                        0x5404a0006104990076048f008a0487009c048300ad048100be048300ce048700 ,
                        0xdc048d00e9049500f704a0000405ae001005bf001c05d2001f05d7002105db00 ,
                        0x2105db00bc04df00b504d500ad04cd00a604c7009e04c4009704c2008f04c200 ,
                        0x8604c4007e04c7007604cd007004d4006b04dd006a04e7006804ee006a04f600 ,
                        0x6c04ff006f0408019704f400bc04df00bc04df00040000002d01040004000000 ,
                        0xf0010500040000002d0102000800000026060f000600ffffffff010004000000 ,
                        0x2d01000003000000000000000000000000000000000000000000000000000000 ,
                        0x0000000038000000000000000100000000000000000000000000000000000000 ,
                        0x0000000038000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000eca5c1003b00070400000012bf000000000000100000000000040000 ,
                        0x060400000e00626a626a81e681e6000000000000000000000000000000000000 ,
                        0x070416001e0c0000e38c0100e38c010006000000000000000000000000000000 ,
                        0x00000000000000000000000000000000ffff0f000000000000000000ffff0f00 ,
                        0x0000000000000000ffff0f00000000000000000000000000000000005d000000 ,
                        0x0000a800000000000000a8000000a800000000000000a800000000000000a800 ,
                        0x000000000000a800000000000000a8000000140000000000000000000000d800 ,
                        0x000000000000d800000000000000d800000000000000d800000000000000d800 ,
                        0x00000c000000e40000000c000000d8000000000000008a0f0000b6000000fc00 ,
                        0x000000000000fc00000000000000fc00000000000000fc00000000000000fc00 ,
                        0x000000000000450f000000000000450f000000000000450f0000000000004f0f ,
                        0x000002000000510f000000000000510f000000000000510f000000000000510f ,
                        0x000000000000510f000000000000510f00002400000040100000f40100003412 ,
                        0x000052000000750f00001500000000000000000000000000000000000000a800 ,
                        0x000000000000450f00000000000000000000000000000000000000000000ab0e ,
                        0x00009a000000450f000000000000450f000000000000450f000000000000750f ,
                        0x0000000000004f0f000000000000a800000000000000a800000000000000fc00 ,
                        0x0000000000000000000000000000fc000000af0d0000fc000000000000004f0f ,
                        0x0000000000004f0f0000000000004f0f000000000000450f00000a000000a800 ,
                        0x000000000000fc00000000000000a800000000000000fc000000000000004f0f ,
                        0x00000000000000000000000000000000000000000000bc0000000e000000ca00 ,
                        0x00000e000000a800000000000000a800000000000000a800000000000000a800 ,
                        0x000000000000450f0000000000004f0f0000000000004f0f0000000000004f0f ,
                        0x00000000000000000000000000004f0f000000000000a800000000000000a800 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000004f0f ,
                        0x000000000000fc00000000000000f00000000c00000010fd0eb7e10ac601d800 ,
                        0x000000000000d8000000000000004f0f0000000000004f0f0000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000008080808080d00000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000400000504000006040000f8000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000000d036a000000005508016d48 ,
                        0x000400020004000006040000fd00000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000001 ,
                        0x0000000100040000010400000204000003040000040400000504000006040000 ,
                        0xfefefefefefe0000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x020101061c001fb0cc4e20b0c04e21b0c72022b0c720239083222490832225b0 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000003004100630063006500730073004f0062006a005300690074006500 ,
                        0x4400610074006100000000000000000000000000000000000000000000000000 ,
                        0x00000000260002000700000009000000ffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000002600000038000000 ,
                        0x000000000500530075006d006d0061007200790049006e0066006f0072006d00 ,
                        0x6100740069006f006e0000000000000000000000000000000000000000000000 ,
                        0x0000000028000201ffffffff0a000000ffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000001c00000000100000 ,
                        0x00000000050044006f00630075006d0065006e007400530075006d006d006100 ,
                        0x7200790049006e0066006f0072006d006100740069006f006e00000000000000 ,
                        0x0000000038000200ffffffffffffffffffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000002400000000100000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000ffffffffffffffffffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000feff0000050002000000000000000000000000000000000001000000 ,
                        0xe0859ff2f94f6810ab9108002b27b3d9300000005c0100001000000001000000 ,
                        0x880000000200000090000000030000009c00000004000000a800000005000000 ,
                        0xbc00000006000000c800000007000000d400000008000000e800000009000000 ,
                        0xfc00000012000000080100000c000000240100000d000000300100000e000000 ,
                        0x3c0100000f00000044010000100000004c010000130000005401000002000000 ,
                        0xe40400001e00000001000000000073001e00000001000000000073001e000000 ,
                        0x0b0000004865727220537461726b00001e00000001000000006572721e000000 ,
                        0x01000000006572721e0000000b0000004e6f726d616c2e646f7400001e000000 ,
                        0x0b0000004865727220537461726b00001e00000002000000320072721e000000 ,
                        0x130000004d6963726f736f667420576f726420382e3000004000000000207688 ,
                        0xe10ac60140000000006639ace10ac60103000000010000000300000000000000 ,
                        0x0300000000000000030000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000feff0000050002000000000000000000000000000000000002000000 ,
                        0x02d5cdd59c2e1b10939708002b2cf9ae4400000005d5cdd59c2e1b1093970800 ,
                        0x2b2cf9ae34010000f00000000c00000001000000680000000f00000070000000 ,
                        0x0500000084000000060000008c0000001100000094000000170000009c000000 ,
                        0x0b000000a400000010000000ac00000013000000b400000016000000bc000000 ,
                        0x0d000000c40000000c000000d100000002000000e40400001e0000000b000000 ,
                        0x4265726569636820363000000300000001000000030000000100000003000000 ,
                        0x0000000003000000311508000b000000000000000b000000000000000b000000 ,
                        0x000000000b000000000000001e1000000100000001000000000c100000020000 ,
                        0x001e00000006000000546974656c000300000001000000009800000003000000 ,
                        0x00000000200000000100000036000000020000003e0000000100000002000000 ,
                        0x0a0000005f5049445f475549440002000000e4040000410000004e0000007b00 ,
                        0x320044003400310033003900430043002d0045003300380037002d0034003000 ,
                        0x450031002d0042004400390043002d0031003100330042003300440038003100 ,
                        0x43004500460037007d0000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000030000004e080000080000005c17000028110000c91c26d801000900 ,
                        0x00031f0400000600c600000000001400000026060f001e00ffffffff04001400 ,
                        0x0000576f72640e004d6963726f736f667420576f7264050000000b0200000000 ,
                        0x050000000c020e0485051c000000fb021000070000000000bc02000000000102 ,
                        0x022253797374656d000000000a000000040000000000ffffffff010000000000 ,
                        0x3000040000002d010000050000000201010000001c000000fb029cff00000000 ,
                        0x000090010000000004400022417269616c00f47740000000fb030af4b813f577 ,
                        0xc113f5770100000000003000040000002d010100050000000902000000000500 ,
                        0x00000201010000001000000026060f001600ffffffff000002000000e7010000 ,
                        0xdc010000bc03000008000000fa0200000f00000000000000040000002d010200 ,
                        0x07000000fc020100000000000000040000002d0103003800000024031a000a00 ,
                        0x8d023700750261005e029d00cd02ae007d02bd002d02f7000e023001ef012601 ,
                        0x18021b01420210016b02060195026d01d302d30111039d012f0368014b032a01 ,
                        0x1f03ec00f302e3001703d9003c03ed005f0300018403d5009c03a900b3035a00 ,
                        0x1f030a008d0208000000fa0200000000000000000000040000002d0104000400 ,
                        0x0000f001020007000000fc020000ffffff000000040000002d01020008000000 ,
                        0x26060f000600ffffffff01001000000026060f001600ffffffff000082010000 ,
                        0xdd0100009f020000f402000008000000fa0200000f0000000000000004000000 ,
                        0x2d010500040000002d010300c6000000380502003e0022009b01a80295019c02 ,
                        0x90018f028d0183028b0177028a016b028b015f028c0152028f01460293013a02 ,
                        0x98012f029f012502a7011b02b0011202ba010902c6010002d301f901e201f101 ,
                        0xf101ec010002e7010e02e5011b02e5012902e5013602e9014402ec015602f601 ,
                        0x6902040278021402850228028a0234028f02410293024d029402590296026502 ,
                        0x9402710294027d02910289028c0295028702a0028002ab027802b5026e02be02 ,
                        0x6402c7025802cf024a02d7023f02dd023202e2022602e6021b02e9020f02ea02 ,
                        0x0402eb02f801ea02ed01e802e001e402d401df02c801d902bd01d102b301c902 ,
                        0xaa01bf02a201b4029b01a8029b01a802e9017d02f1018a02f901940202029c02 ,
                        0x0b02a1021402a4021c02a5022602a3022d02a00235029b023b0295023f028d02 ,
                        0x4202840242027a0240026e023c026102350253022d02470226023d021d023502 ,
                        0x140230020b022d0203022c02fa012e02f2013102eb013602e5013c02e0014402 ,
                        0xdd014d02dd015802df016402e3017002e9017d02e9017d02040000002d010400 ,
                        0x04000000f0010500040000002d0102000800000026060f000600ffffffff0100 ,
                        0x1000000026060f001600ffffffff00006b02000047010000ac030000d9020000 ,
                        0x08000000fa0200000f00000000000000040000002d010500040000002d010300 ,
                        0xb000000038050200330022001103d002c2023d027302a90198029601bc028201 ,
                        0xc5029201cd02a201cf029501d2028901d6028001da027801e1026f01e8026701 ,
                        0xf1026001fb025a01050355010f03520119034f0124034f012e034f0138035101 ,
                        0x420354014c0359015f036501700374017f0387018d039d019403aa019903b801 ,
                        0x9d03c401a003cf01a203db01a303e701a303f101a103fb019b030f0291032002 ,
                        0x83032e027203390269033e0260034102570344024e034502440345023b034402 ,
                        0x29034002440373026003a5023803ba021103d0021103d002fb02ea010203f601 ,
                        0x090300021103050219030a0221030e0229030e0231030d0239030a023f030502 ,
                        0x440300024703f9014903f1014903e7014803dd014303d1013d03c4013603b801 ,
                        0x2f03af012703a9011f03a4011803a0011003a0010903a1010103a401fb02a901 ,
                        0xf602ae01f202b501ef02bd01ef02c701f102d101f502dd01fb02ea01fb02ea01 ,
                        0x040000002d01040004000000f0010500040000002d0102000800000026060f00 ,
                        0x0600ffffffff01001000000026060f001600ffffffff00004703000099000000 ,
                        0x44040000fb01000008000000fa0200000f00000000000000040000002d010500 ,
                        0x040000002d0103002600000038050200080008004f03cb009d03a100ac03bd00 ,
                        0xbb03d9006d0303015e03e7004f03cb004f03cb007a031c01c803f20002045e01 ,
                        0x3b04c801ed03f201b30388017a031c017a031c01040000002d01040004000000 ,
                        0xf0010500040000002d0102000800000026060f000600ffffffff010010000000 ,
                        0x26060f001600ffffffff00001004000079000000370500009501000008000000 ,
                        0xfa0200000f00000000000000040000002d010500040000002d010300b4000000 ,
                        0x38050200430014002105db0085042f018a04370192043e01970443019e044701 ,
                        0xa8044a01b0044a01ba044901c4044501ce043e01d5043301da042a01dd041e01 ,
                        0x06050d012e05fc002d05100129052201230533011c05410111054f0102055c01 ,
                        0xf1046901dc047601c8047f01b5048601a4048b0194048c0186048b0177048801 ,
                        0x680483015b047b014c0471013f046501340457012a04460124043a011f042d01 ,
                        0x1c04210119041501180409011904fd001a04f1001d04e5002104d9002604ce00 ,
                        0x2d04c4003504ba003e04b1004804a8005404a0006104990076048f008a048700 ,
                        0x9c048300ad048100be048300ce048700dc048d00e9049500f704a0000405ae00 ,
                        0x1005bf001c05d2001f05d7002105db002105db00bc04df00b504d500ad04cd00 ,
                        0xa604c7009e04c4009704c2008f04c2008604c4007e04c7007604cd007004d400 ,
                        0x6b04dd006a04e7006804ee006a04f6006c04ff006f0408019704f400bc04df00 ,
                        0xbc04df00040000002d01040004000000f0010500040000002d01020008000000 ,
                        0x26060f000600ffffffff0100040000002d0100000300000000005c1700002811 ,
                        0x0000
                    End
                    Class ="Word.Picture.8"
                    OLEClass ="Microsoft Word"

                    LayoutCachedLeft =6735
                    LayoutCachedTop =2385
                    LayoutCachedWidth =8956
                    LayoutCachedHeight =4366
                End
                Begin Label
                    BackStyle =1
                    TextFontFamily =34
                    Left =3450
                    Top =3510
                    Width =870
                    Height =255
                    Name ="Bezeichnungsfeld20"
                    Caption ="auf AO-Nr."
                    LayoutCachedLeft =3450
                    LayoutCachedTop =3510
                    LayoutCachedWidth =4320
                    LayoutCachedHeight =3765
                End
                Begin TextBox
                    FontItalic = NotDefault
                    BorderWidth =1
                    TextFontFamily =34
                    Left =4320
                    Top =3465
                    Width =2212
                    Height =300
                    FontSize =11
                    FontWeight =600
                    TabIndex =41
                    Name ="Text119"
                    ControlSource ="AO_Nr"

                    LayoutCachedLeft =4320
                    LayoutCachedTop =3465
                    LayoutCachedWidth =6532
                    LayoutCachedHeight =3765
                End
            End
        End
        Begin PageFooter
            Height =0
            Name ="Seitenfuß"
        End
    End
End
CodeBehindForm
' See "Buchungsanordnung_Historik.cls"
