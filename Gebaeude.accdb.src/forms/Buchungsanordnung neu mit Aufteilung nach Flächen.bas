Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MinButton = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    DataEntry = NotDefault
    DefaultView =0
    ScrollBars =2
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    Cycle =1
    GridX =64
    GridY =64
    Width =12357
    DatasheetFontHeight =10
    ItemSuffix =88
    Left =13395
    Top =5400
    Right =25350
    Bottom =12990
    RecSrcDt = Begin
        0xa0b4ac42cee6e240
    End
    RecordSource ="A_Buchungen"
    OnCurrent ="[Event Procedure]"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    OnResize ="[Event Procedure]"
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
        Begin Line
            BorderLineStyle =0
            Width =1701
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
        Begin CheckBox
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
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
        Begin Section
            CanGrow = NotDefault
            Height =13287
            Name ="Detailbereich"
            Begin
                Begin Line
                    OverlapFlags =93
                    Left =212
                    Top =711
                    Width =9014
                    Name ="Linie8"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =95
                    TextAlign =1
                    Left =5881
                    Top =371
                    Width =3345
                    Height =338
                    FontSize =10
                    FontWeight =500
                    BackColor =14671839
                    ForeColor =8421504
                    Name ="Bezeichnungsfeld13"
                    Caption ="   Bearbeitungsvermerke Bereich 20"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =95
                    TextAlign =1
                    Left =212
                    Top =711
                    Width =5670
                    Height =458
                    FontSize =16
                    FontWeight =700
                    BackColor =14671839
                    Name ="Bezeichnungsfeld14"
                    Caption ="Auszahlungsanordnung\015\012Auszahlungsanordnung"
                    FontName ="Arial"
                End
                Begin Rectangle
                    SpecialEffect =0
                    BackStyle =1
                    BorderWidth =1
                    OverlapFlags =95
                    Left =212
                    Top =371
                    Width =5672
                    Height =340
                    Name ="Rechteck15"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =95
                    TextAlign =1
                    Left =5881
                    Top =709
                    Width =3345
                    Height =458
                    FontWeight =500
                    ForeColor =8421504
                    Name ="Bezeichnungsfeld18"
                    Caption ="   Eingang        EDV erfasst         Ausgang"
                    FontName ="Arial"
                End
                Begin Line
                    OverlapFlags =95
                    Left =6845
                    Top =711
                    Width =0
                    Height =453
                    Name ="Linie20"
                End
                Begin Line
                    OverlapFlags =95
                    Left =7978
                    Top =711
                    Width =0
                    Height =453
                    Name ="Linie21"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =93
                    TextAlign =1
                    Left =212
                    Top =1283
                    Width =2895
                    Height =293
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld22"
                    Caption ="Haushaltsjahr"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =93
                    TextAlign =1
                    Left =212
                    Top =1691
                    Width =2895
                    Height =293
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld23"
                    Caption ="Anordnender Bereich"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =223
                    TextAlign =1
                    Left =212
                    Top =1958
                    Width =2895
                    Height =293
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld24"
                    Caption ="Bearbeiter/in, Telefonnummer"
                    FontName ="Arial"
                End
                Begin Label
                    FontItalic = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =223
                    TextAlign =1
                    Left =212
                    Top =2241
                    Width =9015
                    Height =293
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld25"
                    Caption ="An die Stadtkasse ergeht die Anweisung zur Vornahme der nachfolgenden Buchung/en"
                        ":"
                    FontName ="Arial"
                End
                Begin Label
                    FontItalic = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =95
                    TextAlign =2
                    Left =3103
                    Top =1674
                    Width =1425
                    Height =293
                    FontSize =12
                    FontWeight =700
                    Name ="Bezeichnungsfeld26"
                    Caption ="60"
                    FontName ="Arial"
                End
                Begin TextBox
                    TabStop = NotDefault
                    SpecialEffect =0
                    OverlapFlags =85
                    TextAlign =3
                    Left =6719
                    Top =26
                    Width =2502
                    Height =285
                    FontSize =10
                    TabIndex =2
                    ForeColor =8421504
                    Name ="angelegt"
                    ControlSource ="angelegt"
                    Format ="General Date"
                    FontName ="Arial"
                    InputMask ="99,99,00;0;_"

                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =95
                    TextAlign =1
                    Left =212
                    Top =2532
                    Width =2895
                    Height =263
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld34"
                    Caption ="Ausgabe"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =95
                    TextAlign =1
                    Left =212
                    Top =2795
                    Width =2895
                    Height =263
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld35"
                    Caption ="auf Auftrags-Nr."
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =223
                    TextAlign =1
                    Left =212
                    Top =3052
                    Width =2895
                    Height =263
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld36"
                    Caption ="Skonto"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =95
                    TextAlign =1
                    Left =212
                    Top =3317
                    Width =2895
                    Height =615
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld37"
                    Caption ="Einnahme\015\012falls zutreffend, Ausgabeart"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =95
                    TextAlign =1
                    Left =212
                    Top =3933
                    Width =2895
                    Height =383
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld38"
                    Caption ="Absetzung"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =95
                    TextAlign =1
                    Left =212
                    Top =4317
                    Width =2895
                    Height =293
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld39"
                    Caption ="Verrechnung"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =223
                    TextAlign =1
                    Left =212
                    Top =4588
                    Width =2895
                    Height =308
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld40"
                    Caption ="Niederschlagung"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =93
                    TextAlign =1
                    Left =212
                    Top =4907
                    Width =2895
                    Height =263
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld41"
                    Caption ="Auftragsvormerkung"
                    FontName ="Arial"
                End
                Begin Line
                    BorderWidth =1
                    OverlapFlags =95
                    Left =212
                    Top =5173
                    Width =6648
                    Name ="Linie42"
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    OverlapFlags =93
                    Left =4558
                    Top =1950
                    Width =2283
                    Height =15
                    Name ="Linie43"
                End
                Begin Line
                    BorderWidth =1
                    OverlapFlags =95
                    Left =6837
                    Top =2577
                    Width =0
                    Height =2613
                    BorderColor =1
                    Name ="Linie44"
                End
                Begin Line
                    BorderWidth =1
                    OverlapFlags =95
                    Left =6845
                    Top =1958
                    Width =0
                    Height =287
                    Name ="Linie45"
                End
                Begin Line
                    BorderWidth =1
                    OverlapFlags =93
                    Left =4543
                    Top =1691
                    Width =0
                    Height =287
                    Name ="Linie46"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =93
                    TextAlign =1
                    Left =212
                    Top =5323
                    Width =9000
                    Height =1088
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld47"
                    Caption ="Haushaltsstelle(n)"
                    FontName ="Arial"
                End
                Begin Label
                    FontItalic = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =223
                    TextAlign =2
                    Left =3117
                    Top =5650
                    Width =2775
                    Height =293
                    FontSize =12
                    FontWeight =700
                    Name ="Bezeichnungsfeld48"
                    Caption ="06500.000.540000"
                    FontName ="Arial"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =95
                    TextAlign =2
                    Left =3103
                    Top =1290
                    Width =2721
                    Height =385
                    FontSize =18
                    FontWeight =700
                    TabIndex =4
                    Name ="Haushaltsjahr"
                    ControlSource ="Haushaltsjahr"
                    FontName ="Arial"

                End
                Begin ComboBox
                    FontItalic = NotDefault
                    SpecialEffect =0
                    OverlapFlags =223
                    TextAlign =1
                    ColumnCount =3
                    ListRows =20
                    ListWidth =1920
                    Left =3103
                    Top =1958
                    Width =3742
                    Height =284
                    FontSize =12
                    FontWeight =700
                    Name ="ID Sachbearbeiter"
                    ControlSource ="ID Sachbearbeiter"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, Sachbearbeiter.Name, Sachbearbeiter.Telefon FROM Sachb"
                        "earbeiter WHERE (((Sachbearbeiter.Buchungsverantwortlicher)=True) AND ((Sachbear"
                        "beiter.ausgeschieden)=False)) ORDER BY Sachbearbeiter.Name;"
                    ColumnWidths ="0;1693;796"
                    AfterUpdate ="[Event Procedure]"
                    OnExit ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"
                    EventProcPrefix ="ID_Sachbearbeiter"

                End
                Begin CheckBox
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =3443
                    Top =2582
                    Width =291
                    Height =291
                    TabIndex =8
                    Name ="Ausgabe_ja_nein"
                    ControlSource ="Ausgabe_ja_nein"
                    DefaultValue ="Yes"

                End
                Begin CheckBox
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =3436
                    Top =3092
                    Width =170
                    Height =170
                    TabIndex =1
                    Name ="Skonto"
                    ControlSource ="Skonto"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="0"

                End
                Begin ComboBox
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    RowSourceTypeInt =1
                    SpecialEffect =0
                    OverlapFlags =93
                    ListWidth =1080
                    Left =4605
                    Top =2550
                    Width =2211
                    Height =225
                    FontSize =10
                    FontWeight =700
                    TabIndex =9
                    Name ="Kombinationsfeld10"
                    ControlSource ="Ausgabe"
                    RowSourceType ="Value List"
                    RowSource ="\"Überweisung\";\"Lastschrift\";\"Barauszahlung\";\"Zahlungseingang\""
                    ColumnWidths ="1080"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="\"Überweisung\""
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"

                End
                Begin TextBox
                    TabStop = NotDefault
                    SpecialEffect =0
                    OverlapFlags =255
                    Left =3108
                    Top =2807
                    Width =1497
                    Height =236
                    TabIndex =10
                    Name ="Auftragsnummer"
                    ControlSource ="Auftragsnummer"

                End
                Begin ComboBox
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    RowSourceTypeInt =1
                    SpecialEffect =0
                    OverlapFlags =127
                    ListWidth =1080
                    Left =4605
                    Top =2807
                    Width =2211
                    Height =225
                    FontSize =10
                    FontWeight =700
                    TabIndex =11
                    Name ="Kombinationsfeld16"
                    ControlSource ="Zahlung"
                    RowSourceType ="Value List"
                    RowSource ="\"Schlusszahlung\";\"Teilzahlung\""
                    ColumnWidths ="1080"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"

                End
                Begin ComboBox
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    RowSourceTypeInt =1
                    SpecialEffect =0
                    OverlapFlags =93
                    ListWidth =1080
                    Left =4605
                    Top =3357
                    Width =2211
                    Height =225
                    FontSize =9
                    FontWeight =700
                    TabIndex =12
                    Name ="Kombinationsfeld17"
                    ControlSource ="Einnahme/Ausgabeart"
                    RowSourceType ="Value List"
                    RowSource ="\"Sachkonto\";\"Personenkonto\""
                    ColumnWidths ="1080"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"

                End
                Begin ComboBox
                    FontItalic = NotDefault
                    SpecialEffect =0
                    OverlapFlags =93
                    ColumnCount =2
                    ListRows =50
                    ListWidth =2214
                    Left =4605
                    Top =3631
                    Width =2211
                    Height =255
                    FontSize =9
                    FontWeight =700
                    TabIndex =3
                    Name ="ID Nebenkostenart"
                    ControlSource ="ID Nebenkostenart"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT [M_Verzeichnis Nebenkosten].ID, [M_Verzeichnis Nebenkosten].Nebenkosten_A"
                        "rt FROM [M_Verzeichnis Nebenkosten] ORDER BY [M_Verzeichnis Nebenkosten].Nebenko"
                        "sten_Art;"
                    ColumnWidths ="0;2214"
                    AfterUpdate ="[Event Procedure]"
                    OnExit ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"
                    EventProcPrefix ="ID_Nebenkostenart"

                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =93
                    Left =4499
                    Top =4030
                    Width =2211
                    Height =263
                    Name ="Bezeichnungsfeld20"
                    Caption ="auf AO-Nr."
                    FontName ="Arial"
                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =3436
                    Top =4030
                    Width =170
                    Height =170
                    TabIndex =13
                    Name ="Kontrollkästchen21"
                    DefaultValue ="No"

                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =3436
                    Top =4393
                    Width =170
                    Height =170
                    TabIndex =14
                    Name ="Kontrollkästchen22"
                    DefaultValue ="No"

                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =3436
                    Top =4702
                    Width =170
                    Height =170
                    TabIndex =15
                    Name ="Kontrollkästchen23"
                    DefaultValue ="No"

                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =93
                    Left =4862
                    Top =4657
                    Width =960
                    Height =255
                    Name ="Bezeichnungsfeld27"
                    Caption ="befristet bis"
                    FontName ="Arial"
                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =4649
                    Top =4702
                    Width =170
                    Height =170
                    TabIndex =16
                    Name ="Kontrollkästchen28"
                    DefaultValue ="No"

                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =93
                    Left =3719
                    Top =4657
                    Width =855
                    Height =255
                    Name ="Bezeichnungsfeld29"
                    Caption ="unbefristet"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =93
                    Left =5881
                    Top =4657
                    Width =870
                    Height =255
                    Name ="Bezeichnungsfeld30"
                    FontName ="Arial"
                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =3436
                    Top =4992
                    Width =170
                    Height =170
                    TabIndex =17
                    Name ="Kontrollkästchen31"
                    DefaultValue ="No"

                End
                Begin Line
                    OverlapFlags =95
                    Left =3108
                    Top =3055
                    Width =3753
                    Name ="Linie32"
                End
                Begin Line
                    OverlapFlags =95
                    Left =3108
                    Top =3330
                    Width =3753
                    Name ="Linie33"
                End
                Begin Line
                    OverlapFlags =95
                    Left =3108
                    Top =3915
                    Width =3753
                    Name ="Linie34"
                End
                Begin Line
                    OverlapFlags =95
                    Left =3108
                    Top =4331
                    Width =3753
                    Name ="Linie35"
                End
                Begin Line
                    OverlapFlags =95
                    Left =3108
                    Top =4606
                    Width =3753
                    Name ="Linie36"
                End
                Begin Line
                    OverlapFlags =95
                    Left =3108
                    Top =4907
                    Width =3753
                    Name ="Linie37"
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =223
                    TextAlign =1
                    Left =3843
                    Top =5340
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld42"
                    Caption ="Haushaltsstelle"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =223
                    TextAlign =1
                    Left =7156
                    Top =5350
                    Width =1020
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld43"
                    Caption ="Betrag in €"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =223
                    TextAlign =1
                    Left =229
                    Top =5915
                    Width =2880
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld44"
                    Caption ="Gesamtbetrag in Worten"
                    FontName ="Arial"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =223
                    Left =6990
                    Top =5625
                    Width =2212
                    Height =323
                    FontSize =12
                    FontWeight =700
                    TabIndex =5
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    AfterUpdate ="[Event Procedure]"
                    OnExit ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"

                End
                Begin TextBox
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =223
                    Left =3120
                    Top =5955
                    Width =3877
                    Height =443
                    FontSize =9
                    FontWeight =700
                    TabIndex =18
                    Name ="Text47"
                    ControlSource ="=FctZahl_In_Worten([Betrag])"
                    FontName ="Arial"

                End
                Begin Line
                    OverlapFlags =95
                    Left =3090
                    Top =4907
                    Width =0
                    Height =283
                    Name ="Linie48"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OverlapFlags =223
                    TextAlign =1
                    Left =7005
                    Top =5970
                    Width =2197
                    Height =413
                    FontSize =9
                    FontWeight =700
                    TabIndex =19
                    BackColor =14671839
                    Name ="Text49"
                    ControlSource ="=\"Gesamtbetrag: \" & [Betrag] & \" €\""
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =93
                    TextAlign =1
                    Left =212
                    Top =6531
                    Width =9000
                    Height =338
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld50"
                    Caption ="Kassenzeichen / Kassenkonto"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =223
                    Left =3090
                    Top =6539
                    Width =6111
                    Height =293
                    Name ="Bezeichnungsfeld51"
                    FontName ="Arial"
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =1408
                    Top =44
                    Width =1053
                    Height =274
                    TabIndex =20
                    Name ="ID"
                    ControlSource ="ID"

                End
                Begin Subform
                    OverlapFlags =247
                    SpecialEffect =0
                    Left =208
                    Top =6971
                    Width =9015
                    Height =1245
                    TabIndex =6
                    Name ="Buchungsanordnung Unterformular 1"
                    SourceObject ="Form.Buchungsanordnung Unterformular 1"
                    LinkChildFields ="ID aus Buchungen"
                    LinkMasterFields ="ID"
                    EventProcPrefix ="Buchungsanordnung_Unterformular_1"

                End
                Begin Subform
                    OverlapFlags =247
                    SpecialEffect =0
                    Left =208
                    Top =8336
                    Width =9015
                    Height =1245
                    TabIndex =7
                    Name ="Buchungsanordnung Unterformular 2"
                    SourceObject ="Form.Buchungsanordnung Unterformular 2"
                    LinkChildFields ="ID aus Buchungen"
                    LinkMasterFields ="ID"
                    EventProcPrefix ="Buchungsanordnung_Unterformular_2"

                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =93
                    TextAlign =1
                    Left =212
                    Top =9708
                    Width =9000
                    Height =353
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld57"
                    Caption ="Verwendungszweck"
                    FontName ="Arial"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =223
                    TextAlign =1
                    Left =3120
                    Top =9705
                    Width =6082
                    Height =353
                    FontSize =12
                    FontWeight =700
                    TabIndex =21
                    Name ="Verwendungszweck"
                    ControlSource ="Verwendungszweck"
                    AfterUpdate ="[Event Procedure]"
                    OnExit ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"

                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =93
                    TextAlign =1
                    Left =212
                    Top =10184
                    Width =9000
                    Height =353
                    FontSize =10
                    BackColor =14671839
                    Name ="Empfänger"
                    Caption ="Empfänger"
                    FontName ="Arial"
                End
                Begin ComboBox
                    OverlapFlags =223
                    ColumnCount =7
                    ListRows =50
                    ListWidth =11340
                    Left =3135
                    Top =10200
                    Width =6074
                    Height =312
                    TabIndex =22
                    Name ="ID Empfänger"
                    ControlSource ="ID Empfänger"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW A_Empfänger.ID, A_Empfänger.[Name, Vorname], A_Empfänger.Anre"
                        "de, A_Empfänger.[PLZ, Ort], A_Empfänger.[Straße, Nr], A_Empfänger.Bankname, A_Em"
                        "pfänger.[Konto-Nr] FROM A_Empfänger ORDER BY A_Empfänger.[Name, Vorname];"
                    ColumnWidths ="0;3018;859;2589;2019;2586;885"
                    AfterUpdate ="[Event Procedure]"
                    OnExit ="[Event Procedure]"
                    OnKeyDown ="[Event Procedure]"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"
                    EventProcPrefix ="ID_Empfänger"

                End
                Begin Subform
                    OverlapFlags =247
                    SpecialEffect =0
                    Left =212
                    Top =10638
                    Width =9015
                    Height =1350
                    TabIndex =23
                    Name ="Buchungsanordnung Unterformular 4"
                    SourceObject ="Form.Buchungsanordnung Unterformular 4"
                    LinkChildFields ="ID aus Buchungen"
                    LinkMasterFields ="ID"
                    EventProcPrefix ="Buchungsanordnung_Unterformular_4"

                End
                Begin Line
                    OverlapFlags =127
                    Left =3100
                    Top =2790
                    Width =0
                    Height =265
                    Name ="Linie64"
                End
                Begin Rectangle
                    SpecialEffect =0
                    BorderWidth =1
                    OverlapFlags =255
                    Left =212
                    Top =356
                    Width =9009
                    Height =11646
                    Name ="Rechteck66"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9327
                    Top =6838
                    Width =2955
                    Height =405
                    FontSize =10
                    FontWeight =700
                    TabIndex =24
                    Name ="Befehl67"
                    Caption ="Ausdruck!"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9327
                    Top =7334
                    Width =2955
                    Height =405
                    FontSize =10
                    FontWeight =700
                    TabIndex =25
                    Name ="Befehl68"
                    Caption ="Neue Anordnung"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9327
                    Top =8291
                    Width =2955
                    Height =405
                    FontSize =10
                    FontWeight =700
                    TabIndex =26
                    Name ="Befehl69"
                    Caption ="Fertig"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9327
                    Top =7812
                    Width =2955
                    Height =405
                    FontSize =10
                    FontWeight =700
                    TabIndex =27
                    Name ="Befehl71"
                    Caption ="Neuen Empfänger eingeben"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    BackStyle =0
                    Left =9433
                    Top =4419
                    Width =779
                    Height =284
                    FontSize =10
                    TabIndex =28
                    BorderColor =16777215
                    ForeColor =255
                    Name ="KontrolleKoSt"
                    ControlSource ="=[Buchungsanordnung Unterformular 2].[Form]![Summe_Kostenstelle]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9385
                    Top =9221
                    Width =2835
                    Height =600
                    FontSize =10
                    FontWeight =700
                    TabIndex =29
                    Name ="Befehl75"
                    Caption ="Gespeicherte Buchung ändern"
                    OnClick ="Makro Filter Buchungsanordnung Historik.ÖffnenFilter"
                    FontName ="Arial"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9327
                    Top =6315
                    Width =2955
                    Height =405
                    FontSize =10
                    FontWeight =700
                    TabIndex =30
                    Name ="Befehl80"
                    Caption ="Vorschau Ausdruck"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Berichtsvorschau"

                End
                Begin TextBox
                    Visible = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    BackStyle =0
                    Left =9433
                    Top =4823
                    Width =779
                    Height =284
                    FontSize =10
                    TabIndex =31
                    BorderColor =16777215
                    ForeColor =255
                    Name ="KontrolleFälligkeit"
                    ControlSource ="=[Buchungsanordnung Unterformular 4].[Form]![SummeFälligkeiten]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    BackStyle =0
                    Left =9433
                    Top =5227
                    Width =779
                    Height =284
                    FontSize =10
                    TabIndex =32
                    BorderColor =16777215
                    ForeColor =255
                    Name ="KontrolleEmpfänger"
                    ControlSource ="=[ID Empfänger]"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    BackStyle =0
                    Left =9435
                    Top =3675
                    Width =779
                    Height =269
                    FontSize =10
                    TabIndex =33
                    BorderColor =16777215
                    ForeColor =255
                    Name ="KontrolleBetrag"
                    ControlSource ="=[betrag]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    BackStyle =0
                    Left =9435
                    Top =4080
                    Width =779
                    Height =284
                    FontSize =10
                    TabIndex =34
                    BorderColor =16777215
                    ForeColor =255
                    Name ="KontrolleBuSt"
                    ControlSource ="=[Buchungsanordnung Unterformular 1].[Form]![Summe_Buchungsstelle]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    BackStyle =0
                    Left =9451
                    Top =5553
                    Width =779
                    Height =284
                    FontSize =10
                    TabIndex =35
                    BorderColor =16777215
                    ForeColor =255
                    Name ="Datumskontrolle"
                    ControlSource ="=[Buchungsanordnung Unterformular 4].[Form]![KontrolleDatum]"
                    FontName ="Arial"

                End
                Begin ComboBox
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =0
                    OverlapFlags =247
                    ColumnCount =2
                    ListWidth =1647
                    Left =6927
                    Top =2568
                    Width =1671
                    Height =225
                    FontSize =9
                    FontWeight =700
                    TabIndex =36
                    Name ="Zyklus"
                    ControlSource ="ID Fälligkeiten"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Zahlungszyklen.ID, Zahlungszyklen.Zyklus FROM Zahlungszyklen ORDER BY Zah"
                        "lungszyklen.ID;"
                    ColumnWidths ="0;1647"
                    AfterUpdate ="[Event Procedure]"
                    OnExit ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9407
                    Top =10018
                    Width =576
                    Height =576
                    TabIndex =37
                    Name ="Befehl87"
                    Caption ="Befehl87"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000020000000200000000100080000000000000400000000000000000000 ,
                        0x0000000000000000000000000000bf0000bf000000bfbf00bf000000bf00bf00 ,
                        0xbfbf0000c0c0c000c0dcc000f0c8a40000000000000000000000000000000000 ,
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
                        0xf0fbff00a4a0a000808080000000ff0000ff000000ffff00ff000000ff00ff00 ,
                        0xffff0000ffffff00070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707070707f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f80707 ,
                        0x0707070707070707070700000000000000000000000000000000000000f80707 ,
                        0x0707070707070707070700ffffffffffffffffffffffffffffffffff00f80707 ,
                        0x0707070707070707070700ff000000ff000000ff000000ff000000ff00f80707 ,
                        0x0707070707070707070700ffffffffffffffffffffffffffffffffff00f80707 ,
                        0x0707070707070707070700ff000000ff000000ff000000ff000000ff00f80707 ,
                        0x0707070707070707070700ffffffffffffffffffffffffffffffffff00f8f8f8 ,
                        0xf8f8f8f8f8f80707070700ff000000ff00000000000000000000000000000000 ,
                        0x0000000000f80707070700ffffffffffffff00ffffffffffffffffff00ffffff ,
                        0xffffffff00f80707070700ff000000ff000000fff800f8fff800f8ff000000ff ,
                        0x000000ff00f80707070700ffffffffffffff00ffffffffffffffffff00ffffff ,
                        0xffffffff00f80707070700ff000000ff000000fff800f8fff800f8ff000000ff ,
                        0x000000ff00f80707070700ffffffffffffff00ffffffffffffffffff00ffffff ,
                        0xffffffff00f807070707fcfcfcfcfcfcfcfcfcfcfcfcfcfcfcfcfcfcfc0000ff ,
                        0x000000ff00f807070707fcfffcfcfcfffcfcfcfffcfcfcfffcfcfcfffcffffff ,
                        0xffffffff00f807070707fcfcfcfcfcfcfcfcfcfcfcfcfcfcfcfcfcfcfc0000ff ,
                        0x000000ff00f807070707070707070707070700ffffffffffffffffffffffffff ,
                        0xffffffff00f807070707070707070707070700ff000000ff000000ff000000ff ,
                        0x000000ff00f807070707070707070707070700ffffffffffffffffffffffffff ,
                        0xffffffff00f8070707070707070707070707fcfcfcfcfcfcfcfcfcfcfcfcfcfc ,
                        0xfcfcfcfcfcf8070707070707070707070707fcfffcfcfcfffcfcfcfffcfcfcff ,
                        0xfcfcfcfffcf8070707070707070707070707fcfcfcfcfcfcfcfcfcfcfcfcfcfc ,
                        0xfcfcfcfcfc070707070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707000000000000000000000000000000000c0098029802ffff
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Abfrage ausführen"

                End
            End
        End
    End
End
CodeBehindForm
' See "Buchungsanordnung neu mit Aufteilung nach Flächen.cls"
