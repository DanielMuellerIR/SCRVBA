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
    Width =9063
    DatasheetFontHeight =10
    ItemSuffix =114
    Left =7650
    Top =2835
    RecSrcDt = Begin
        0x606268ecd6cce440
    End
    RecordSource ="Abfrage für Buchungsanordnung Monat"
    OnOpen ="[Event Procedure]"
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
            Height =13662
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
                    Top =932
                    Width =2910
                    Height =293
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld22"
                    Caption ="Haushaltsjahr"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =1295
                    Width =2895
                    Height =293
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld23"
                    Caption ="Anordnender Bereich"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =1595
                    Width =2895
                    Height =293
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld24"
                    Caption ="Bearbeiter/in, Telefonnummer"
                End
                Begin Label
                    FontItalic = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =1865
                    Width =9000
                    Height =293
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld25"
                    Caption ="An die Stadtkasse ergeht die Anweisung zur Vornahme der nachfolgenden Buchung/en"
                        ":"
                End
                Begin Label
                    FontItalic = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =2895
                    Top =1295
                    Width =1425
                    Height =293
                    FontSize =12
                    FontWeight =600
                    Name ="Bezeichnungsfeld26"
                    Caption ="60"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =2165
                    Width =2895
                    Height =278
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld34"
                    Caption ="Ausgabe"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =2420
                    Width =2895
                    Height =263
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld35"
                    Caption ="auf Auftrags-Nr."
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =2690
                    Width =2895
                    Height =263
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld36"
                    Caption ="Skonto"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4
                    Top =2966
                    Width =2895
                    Height =615
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld37"
                    Caption ="Einnahme\015\012falls zutreffend, Ausgabeart"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4
                    Top =3582
                    Width =2895
                    Height =383
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld38"
                    Caption ="Absetzung"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4
                    Top =3966
                    Width =2895
                    Height =293
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld39"
                    Caption ="Verrechnung"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4
                    Top =4237
                    Width =2895
                    Height =308
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld40"
                    Caption ="Niederschlagung"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =4550
                    Width =2880
                    Height =263
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld41"
                    Caption ="Auftragsvormerkung"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =2910
                    Top =935
                    Width =2721
                    Height =385
                    FontSize =16
                    FontWeight =600
                    Name ="Haushaltsjahr"
                    ControlSource ="Haushaltsjahr"

                End
                Begin CheckBox
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =3105
                    Top =2225
                    Width =291
                    Height =291
                    TabIndex =1
                    Name ="Ausgabe_ja_nein"
                    ControlSource ="Ausgabe_ja_nein"
                    DefaultValue ="Yes"

                End
                Begin CheckBox
                    SpecialEffect =2
                    Left =3105
                    Top =2741
                    Width =170
                    Height =170
                    TabIndex =2
                    Name ="Skonto"
                    ControlSource ="Skonto"
                    DefaultValue ="No"

                End
                Begin Label
                    BackStyle =1
                    TextFontFamily =34
                    Left =4291
                    Top =3679
                    Width =2211
                    Height =263
                    Name ="Bezeichnungsfeld20"
                    Caption ="auf AO-Nr."
                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =3105
                    Top =3679
                    Width =170
                    Height =170
                    TabIndex =3
                    Name ="Kontrollkästchen21"
                    DefaultValue ="No"

                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =3105
                    Top =4025
                    Width =170
                    Height =170
                    TabIndex =4
                    Name ="Kontrollkästchen22"
                    DefaultValue ="No"

                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =3105
                    Top =4325
                    Width =170
                    Height =170
                    TabIndex =5
                    Name ="Kontrollkästchen23"
                    DefaultValue ="No"

                End
                Begin Label
                    BackStyle =1
                    TextFontFamily =34
                    Left =4650
                    Top =4265
                    Width =960
                    Height =240
                    Name ="Bezeichnungsfeld27"
                    Caption ="befristet bis"
                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =4441
                    Top =4325
                    Width =170
                    Height =170
                    TabIndex =6
                    Name ="Kontrollkästchen28"
                    DefaultValue ="No"

                End
                Begin Label
                    BackStyle =1
                    TextFontFamily =34
                    Left =3510
                    Top =4280
                    Width =855
                    Height =240
                    Name ="Bezeichnungsfeld29"
                    Caption ="unbefristet"
                End
                Begin Label
                    BackStyle =1
                    TextFontFamily =34
                    Left =5670
                    Top =4250
                    Width =870
                    Height =255
                    Name ="Bezeichnungsfeld30"
                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =3105
                    Top =4595
                    Width =170
                    Height =170
                    TabIndex =7
                    Name ="Kontrollkästchen31"
                    DefaultValue ="No"

                End
                Begin Line
                    Left =2895
                    Top =3575
                    Width =3753
                    Name ="Linie34"
                End
                Begin Line
                    Left =2895
                    Top =3965
                    Width =3753
                    Name ="Linie35"
                End
                Begin Line
                    Left =2895
                    Top =4235
                    Width =3753
                    Name ="Linie36"
                End
                Begin Line
                    Left =2895
                    Top =4550
                    Width =3753
                    Height =15
                    Name ="Linie37"
                End
                Begin Label
                    Visible = NotDefault
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =7086
                    Top =3458
                    Width =1530
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld44"
                    Caption ="Gesamtbetrag in Worten"
                    LayoutCachedLeft =7086
                    LayoutCachedTop =3458
                    LayoutCachedWidth =8616
                    LayoutCachedHeight =3743
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
                    Top =6879
                    Width =9000
                    Height =338
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld50"
                    Caption ="Kassenzeichen / Kassenkonto"
                End
                Begin Label
                    BackStyle =1
                    TextFontFamily =34
                    Left =2878
                    Top =6887
                    Width =6126
                    Height =293
                    Name ="Bezeichnungsfeld51"
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
                    Top =6519
                    Width =9000
                    Height =308
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld57"
                    Caption ="Verwendungszweck"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2970
                    Top =6531
                    Width =6052
                    Height =278
                    FontSize =12
                    FontWeight =600
                    TabIndex =11
                    Name ="Verwendungszweck"
                    ControlSource ="Verwendungszweck"

                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =7255
                    Width =8955
                    Height =1598
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld59"
                    Caption ="Empfänger / Einzahler"
                End
                Begin Line
                    Left =2892
                    Top =2439
                    Width =0
                    Height =265
                    Name ="Linie64"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextFontFamily =34
                    Left =2910
                    Top =1595
                    Width =3742
                    Height =269
                    FontSize =12
                    FontWeight =600
                    TabIndex =12
                    Name ="Sachbearbeiter"
                    ControlSource ="Sachbearbeiter"

                End
                Begin TextBox
                    FontItalic = NotDefault
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =4380
                    Top =2180
                    Width =2257
                    Height =278
                    FontSize =11
                    FontWeight =600
                    TabIndex =13
                    Name ="Ausgabe"
                    ControlSource ="Ausgabe"

                End
                Begin TextBox
                    FontItalic = NotDefault
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =2955
                    Top =2435
                    Width =1387
                    Height =263
                    FontSize =11
                    FontWeight =600
                    TabIndex =14
                    Name ="Auftragsnummer"
                    ControlSource ="Auftragsnummer"

                End
                Begin TextBox
                    FontItalic = NotDefault
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =4380
                    Top =2705
                    Width =2257
                    Height =263
                    FontSize =11
                    FontWeight =600
                    TabIndex =15
                    Name ="Text5"

                End
                Begin TextBox
                    FontItalic = NotDefault
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =4380
                    Top =2975
                    Width =2257
                    Height =593
                    FontSize =11
                    FontWeight =600
                    TabIndex =16
                    Name ="Text6"

                End
                Begin Line
                    Left =2895
                    Top =2420
                    Width =3753
                    Name ="Linie7"
                End
                Begin Line
                    Left =2895
                    Top =2690
                    Width =3753
                    Name ="Linie9"
                End
                Begin Line
                    Left =2895
                    Top =2960
                    Width =3753
                    Name ="Linie10"
                End
                Begin Line
                    LineSlant = NotDefault
                    Left =6633
                    Top =2169
                    Width =0
                    Height =2665
                    Name ="Linie12"
                End
                Begin Subform
                    BorderWidth =1
                    Top =5215
                    Width =9030
                    Height =619
                    TabIndex =17
                    Name ="Buchungsanordnung_Unterbericht_Buchungsstelle"
                    SourceObject ="Report.Buchungsanordnung_Unterbericht_Buchungsstelle"
                    LinkChildFields ="ID"
                    LinkMasterFields ="ID"

                    LayoutCachedTop =5215
                    LayoutCachedWidth =9030
                    LayoutCachedHeight =5834
                End
                Begin Subform
                    BorderWidth =1
                    Top =5904
                    Width =9030
                    Height =544
                    TabIndex =18
                    Name ="Eingebettet16"
                    SourceObject ="Report.Buchungsanordnung_Unterbericht_Kostenrechnung"
                    LinkChildFields ="ID"
                    LinkMasterFields ="ID"

                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2940
                    Top =7270
                    Width =1410
                    Height =270
                    FontSize =10
                    BackColor =14671839
                    Name ="P"
                    Caption ="Pers.ID"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =7270
                    Width =4237
                    Height =255
                    FontSize =11
                    FontWeight =600
                    TabIndex =19
                    Name ="PersID"
                    ControlSource ="PersID"

                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2940
                    Top =7525
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld21"
                    Caption ="Anrede"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =7510
                    Width =4237
                    Height =270
                    FontSize =12
                    FontWeight =600
                    TabIndex =20
                    Name ="Anrede"
                    ControlSource ="Anrede"

                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2933
                    Top =8041
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld28"
                    Caption ="PLZ, Ort"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =8020
                    Width =4237
                    Height =270
                    FontSize =12
                    FontWeight =600
                    TabIndex =21
                    Name ="PLZ, Ort"
                    ControlSource ="PLZ, Ort"
                    EventProcPrefix ="PLZ__Ort"

                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2933
                    Top =8311
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld31"
                    Caption ="Straße, Nr"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =8290
                    Width =4237
                    Height =270
                    FontSize =12
                    FontWeight =600
                    TabIndex =22
                    Name ="Straße, Nr"
                    ControlSource ="Straße, Nr"
                    EventProcPrefix ="Straße__Nr"

                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2933
                    Top =8581
                    Width =1410
                    Height =255
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld33"
                    Caption ="Postfach"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =8560
                    Width =4237
                    Height =285
                    FontSize =12
                    FontWeight =600
                    TabIndex =23
                    Name ="Postfach"
                    ControlSource ="Postfach"

                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2940
                    Top =7795
                    Width =1755
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld49"
                    Caption ="Name, Vorname"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =7780
                    Width =4237
                    Height =270
                    FontSize =12
                    FontWeight =600
                    TabIndex =24
                    Name ="Text50"
                    ControlSource ="Name, Vorname"

                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =8988
                    Width =8955
                    Height =1088
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld52"
                    Caption ="Bankverbindung"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2940
                    Top =9010
                    Width =1410
                    Height =270
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld53"
                    Caption ="Bankname"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =8995
                    Width =4237
                    Height =255
                    FontSize =12
                    FontWeight =600
                    TabIndex =25
                    Name ="Bankname"
                    ControlSource ="Bankname"

                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2940
                    Top =9258
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld55"
                    Caption ="BLZ"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =9250
                    Width =4237
                    Height =270
                    FontSize =12
                    FontWeight =600
                    TabIndex =26
                    Name ="BLZ"
                    ControlSource ="BLZ"

                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2933
                    Top =9774
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld58"
                    Caption ="Abbucher"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2940
                    Top =9528
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld64"
                    Caption ="Konto-Nr"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =9520
                    Width =4237
                    Height =270
                    FontSize =12
                    FontWeight =600
                    TabIndex =27
                    Name ="Konto-Nr"
                    ControlSource ="Konto-Nr"
                    EventProcPrefix ="Konto_Nr"

                End
                Begin Label
                    FontItalic = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4785
                    Top =9790
                    Width =4230
                    Height =285
                    FontSize =12
                    FontWeight =600
                    BackColor =14671839
                    Name ="Bezeichnungsfeld67"
                    Caption ="         ja               nein"
                End
                Begin Subform
                    BorderWidth =1
                    Top =10090
                    Width =9030
                    Height =439
                    TabIndex =28
                    Name ="Eingebettet68"
                    SourceObject ="Report.Buchungsanordnung_Unterbericht_Fälligkeiten"
                    LinkChildFields ="ID"
                    LinkMasterFields ="ID"

                End
                Begin Line
                    Top =15
                    Width =9014
                    Name ="Linie83"
                End
                Begin Line
                    Top =13256
                    Width =9014
                    Name ="Linie84"
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
                    Top =9848
                    Width =170
                    Height =170
                    TabIndex =29
                    Name ="Abbucher"
                    ControlSource ="Abbucher"
                    DefaultValue ="No"

                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =2
                    Left =6066
                    Top =9848
                    Width =170
                    Height =170
                    TabIndex =30
                    Name ="Kontrollkästchen89"
                    ControlSource ="=IIf([Abbucher]=-1,0,-1)"
                    DefaultValue ="No"

                End
                Begin Line
                    BorderWidth =1
                    Left =4308
                    Top =1319
                    Width =0
                    Height =283
                    Name ="Linie90"
                End
                Begin Line
                    BorderWidth =1
                    Left =4305
                    Top =1595
                    Width =2325
                    Name ="Linie91"
                End
                Begin Line
                    BorderWidth =1
                    Left =6633
                    Top =1602
                    Width =0
                    Height =284
                    Name ="Linie92"
                End
                Begin Line
                    BorderWidth =1
                    Left =6645
                    Top =2165
                    Width =0
                    Height =2665
                    Name ="Linie93"
                End
                Begin Line
                    BorderWidth =1
                    Left =56
                    Top =4819
                    Width =6577
                    Name ="Linie94"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =11337
                    Width =9015
                    Height =2228
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld97"
                    Caption ="."
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =11335
                    Width =2940
                    Height =855
                    FontSize =9
                    Name ="Bezeichnungsfeld71"
                    Caption ="  fachtechnisch u. sachlich richtig"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =3108
                    Top =11335
                    Width =2835
                    Height =855
                    FontSize =9
                    Name ="Bezeichnungsfeld72"
                    Caption ="  sachlich u. rechnerisch richtig"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =6105
                    Top =11335
                    Width =2895
                    Height =855
                    FontSize =9
                    Name ="Bezeichnungsfeld73"
                    Caption ="        Vermerke der Stadtkasse"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =15
                    Top =12185
                    Width =2940
                    Height =225
                    Name ="Bezeichnungsfeld74"
                    Caption ="Datum, Unterschrift"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =3105
                    Top =12190
                    Width =2835
                    Height =225
                    Name ="Bezeichnungsfeld75"
                    Caption ="Datum, Unterschrift"
                End
                Begin TextBox
                    Left =3150
                    Top =11935
                    Width =1007
                    Height =225
                    TabIndex =31
                    Name ="Text77"
                    ControlSource ="=Date()"
                    Format ="Short Date"

                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =6120
                    Top =12520
                    Width =2880
                    Height =810
                    FontSize =9
                    Name ="Bezeichnungsfeld79"
                    Caption =" Vermerke der Rechnungsprüfung"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =6120
                    Top =13330
                    Width =2880
                    Height =225
                    Name ="Bezeichnungsfeld80"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =15
                    Top =13308
                    Width =5940
                    Height =240
                    Name ="Bezeichnungsfeld82"
                    Caption ="Datum, Unterschrift"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =12520
                    Width =5940
                    Height =825
                    FontSize =9
                    Name ="Bezeichnungsfeld81"
                    Caption ="Stadt Castrop-Rauxel                                Der Bürgermeister      \015\012"
                        "                                                                       i.A.\015\012"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =4365
                    Top =2445
                    Width =2257
                    Height =233
                    FontSize =11
                    FontWeight =600
                    TabIndex =32
                    Name ="Zahlung"
                    ControlSource ="Zahlung"

                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =6105
                    Top =12189
                    Width =2895
                    Height =225
                    Name ="Bezeichnungsfeld99"
                End
                Begin Label
                    FontUnderline = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Top =10601
                    Width =9000
                    Height =683
                    FontSize =10
                    FontWeight =700
                    BackColor =14671839
                    Name ="Bezeichnungsfeld100"
                    Caption ="Leistungszeitraum:"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =3113
                    Top =10925
                    Width =2092
                    Height =293
                    FontSize =12
                    FontWeight =600
                    TabIndex =33
                    Name ="von_"
                    ControlSource ="von_"

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
                    Top =10925
                    Width =2017
                    Height =293
                    FontSize =12
                    FontWeight =600
                    TabIndex =34
                    Name ="Text104"
                    ControlSource ="bis_"

                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =2494
                    Top =10940
                    Width =390
                    Height =270
                    FontSize =10
                    FontWeight =300
                    BackColor =14671839
                    Name ="Bezeichnungsfeld105"
                    Caption ="vom"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =5347
                    Top =10940
                    Width =330
                    Height =270
                    FontSize =10
                    FontWeight =300
                    BackColor =14671839
                    Name ="Bezeichnungsfeld106"
                    Caption ="bis"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =3885
                    Top =10635
                    Width =660
                    Height =270
                    FontSize =10
                    FontWeight =300
                    BackColor =14671839
                    Name ="Bezeichnungsfeld107"
                    Caption ="Datum"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =6512
                    Top =10636
                    Width =660
                    Height =270
                    FontSize =10
                    FontWeight =300
                    BackColor =14671839
                    Name ="Bezeichnungsfeld108"
                    Caption ="Datum"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =4875
                    Width =8970
                    Height =308
                    FontSize =10
                    FontWeight =700
                    BackColor =14671839
                    Name ="Bezeichnungsfeld109"
                    Caption ="Anlagenbuchhaltung"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =6630
                    Top =4875
                    Width =2392
                    Height =308
                    FontSize =12
                    FontWeight =600
                    TabIndex =35
                    Name ="Text110"
                    ControlSource ="Anlage"

                End
                Begin Label
                    FontItalic = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =2895
                    Top =4875
                    Width =3735
                    Height =315
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld111"
                    Caption ="Ergängzung der Anlage Nr."
                End
                Begin TextBox
                    Left =56
                    Top =13096
                    Width =1007
                    Height =225
                    TabIndex =36
                    Name ="Text112"
                    ControlSource ="=Date()"
                    Format ="Short Date"

                End
                Begin TextBox
                    Left =56
                    Top =11905
                    Width =1007
                    Height =225
                    TabIndex =37
                    Name ="Text113"
                    ControlSource ="=Date()"
                    Format ="Short Date"

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
' See "Buchungsanordnung_Monat.cls"
