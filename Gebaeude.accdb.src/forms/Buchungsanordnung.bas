Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    MinButton = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    OrderByOn = NotDefault
    DefaultView =0
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    Cycle =1
    GridX =64
    GridY =64
    Width =12310
    DatasheetFontHeight =10
    ItemSuffix =98
    Left =13395
    Top =5325
    Right =26325
    Bottom =14430
    OrderBy ="[Buchungsanordnung].[Verwendungszweck]"
    RecSrcDt = Begin
        0xbf646d872b59e440
    End
    RecordSource ="SELECT A_Buchungen.* FROM A_Buchungen WHERE (((A_Buchungen.ID)=F_Variable(\"lng_"
        "ID_Buchung\")));"
    OnCurrent ="[Event Procedure]"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    OnResize ="[Event Procedure]"
    OnLoad ="[Event Procedure]"
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
            Height =12463
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
                    Name ="BF_Anordnungsart"
                    Caption ="Auszahlungsanordnung"
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
                    Visible = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =0
                    OverlapFlags =93
                    TextAlign =3
                    Left =6931
                    Top =5261
                    Width =2502
                    Height =285
                    FontSize =10
                    TabIndex =13
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
                    LayoutCachedLeft =212
                    LayoutCachedTop =5173
                    LayoutCachedWidth =6860
                    LayoutCachedHeight =5173
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
                    OverlapFlags =93
                    Left =6837
                    Top =2577
                    Width =0
                    Height =2328
                    BorderColor =1
                    Name ="Linie44"
                    LayoutCachedLeft =6837
                    LayoutCachedTop =2577
                    LayoutCachedWidth =6837
                    LayoutCachedHeight =4905
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
                    TabIndex =1
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
                    TabIndex =2
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="ID Sachbearbeiter"
                    ControlSource ="ID Sachbearbeiter"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, Sachbearbeiter.Name, Sachbearbeiter.Telefon FROM Sachb"
                        "earbeiter WHERE (((Sachbearbeiter.Buchungsverantwortlicher)=True) AND ((Sachbear"
                        "beiter.ausgeschieden)=False)) ORDER BY Sachbearbeiter.Name;"
                    ColumnWidths ="0;1693;796"
                    FontName ="Arial"
                    EventProcPrefix ="ID_Sachbearbeiter"

                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin CheckBox
                    OverlapFlags =93
                    Left =3436
                    Top =2582
                    Width =231
                    Height =171
                    TabIndex =3
                    Name ="Ausgabe_ja_nein"
                    ControlSource ="Ausgabe_ja_nein"
                    DefaultValue ="Yes"

                    LayoutCachedLeft =3436
                    LayoutCachedTop =2582
                    LayoutCachedWidth =3667
                    LayoutCachedHeight =2753
                End
                Begin CheckBox
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =3436
                    Top =3092
                    Width =170
                    Height =170
                    TabIndex =8
                    Name ="Skonto"
                    ControlSource ="Skonto"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="0"

                End
                Begin ComboBox
                    FontItalic = NotDefault
                    RowSourceTypeInt =1
                    SpecialEffect =0
                    OverlapFlags =93
                    ListWidth =1080
                    Left =4605
                    Top =2550
                    Width =2211
                    Height =225
                    FontSize =10
                    TabIndex =5
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="Kombinationsfeld10"
                    ControlSource ="Ausgabe"
                    RowSourceType ="Value List"
                    RowSource ="\"Überweisung\";\"Lastschrift\";\"Barauszahlung\";\"Zahlungseingang\""
                    ColumnWidths ="1080"
                    DefaultValue ="\"Überweisung\""
                    FontName ="Arial"

                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    FontItalic = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =95
                    TextAlign =1
                    Left =3105
                    Top =2775
                    Width =1497
                    Height =270
                    FontSize =9
                    TabIndex =4
                    Name ="Auftragsnummer"
                    ControlSource ="Auftragsnummer"
                    FontName ="Arial"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =3105
                    LayoutCachedTop =2775
                    LayoutCachedWidth =4602
                    LayoutCachedHeight =3045
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    FontItalic = NotDefault
                    RowSourceTypeInt =1
                    SpecialEffect =0
                    OverlapFlags =95
                    ListWidth =1080
                    Left =4605
                    Top =2807
                    Width =2211
                    Height =225
                    FontSize =10
                    TabIndex =6
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="Kombinationsfeld16"
                    ControlSource ="Zahlung"
                    RowSourceType ="Value List"
                    RowSource ="\"Schlusszahlung\";\"Teilzahlung\""
                    ColumnWidths ="1080"
                    DefaultValue ="\"Schlusszahlung\""
                    FontName ="Arial"

                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin ComboBox
                    FontItalic = NotDefault
                    RowSourceTypeInt =1
                    SpecialEffect =0
                    OverlapFlags =93
                    TextAlign =1
                    ListWidth =1080
                    Left =4605
                    Top =3357
                    Width =2211
                    Height =225
                    FontSize =9
                    TabIndex =9
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="Kombinationsfeld17"
                    ControlSource ="Einnahme/Ausgabeart"
                    RowSourceType ="Value List"
                    RowSource ="\"Sachkonto\";\"Personenkonto\""
                    ColumnWidths ="1080"
                    FontName ="Arial"

                    LayoutCachedLeft =4605
                    LayoutCachedTop =3357
                    LayoutCachedWidth =6816
                    LayoutCachedHeight =3582
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
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
                    TabIndex =10
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="ID Nebenkostenart"
                    ControlSource ="ID Nebenkostenart"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT [M_Verzeichnis Nebenkosten].ID, [M_Verzeichnis Nebenkosten].Nebenkosten_A"
                        "rt FROM [M_Verzeichnis Nebenkosten] ORDER BY [M_Verzeichnis Nebenkosten].Nebenko"
                        "sten_Art;"
                    ColumnWidths ="0;2214"
                    FontName ="Arial"
                    EventProcPrefix ="ID_Nebenkostenart"

                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin CheckBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =3436
                    Top =4030
                    Width =170
                    Height =170
                    TabIndex =16
                    Name ="KK_Absetzung"
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
                    TabIndex =17
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
                    TabIndex =18
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
                    TabIndex =19
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
                    TabIndex =20
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
                Begin TextBox
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =95
                    Left =6951
                    Top =4875
                    Width =2212
                    Height =345
                    FontSize =12
                    TabIndex =11
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    OnExit ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="=NumLock_An()"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =6951
                    LayoutCachedTop =4875
                    LayoutCachedWidth =9163
                    LayoutCachedHeight =5220
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    Begin
                        Begin Label
                            FontItalic = NotDefault
                            BackStyle =1
                            OverlapFlags =93
                            TextAlign =1
                            Left =6951
                            Top =4560
                            Width =855
                            Height =315
                            FontSize =12
                            Name ="Bezeichnungsfeld95"
                            Caption ="Betrag:"
                            FontName ="Arial"
                            LayoutCachedLeft =6951
                            LayoutCachedTop =4560
                            LayoutCachedWidth =7806
                            LayoutCachedHeight =4875
                        End
                    End
                End
                Begin Line
                    OverlapFlags =95
                    Left =3090
                    Top =4907
                    Width =0
                    Height =283
                    Name ="Linie48"
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =93
                    TextAlign =1
                    Left =210
                    Top =8445
                    Width =9000
                    Height =338
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld50"
                    Caption ="Kassenzeichen / Kassenkonto"
                    FontName ="Arial"
                    LayoutCachedLeft =210
                    LayoutCachedTop =8445
                    LayoutCachedWidth =9210
                    LayoutCachedHeight =8783
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =223
                    Left =3159
                    Top =8453
                    Width =6066
                    Height =293
                    Name ="Bezeichnungsfeld51"
                    FontName ="Arial"
                    LayoutCachedLeft =3159
                    LayoutCachedTop =8453
                    LayoutCachedWidth =9225
                    LayoutCachedHeight =8746
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =93
                    Left =7378
                    Top =1364
                    Width =363
                    Height =274
                    Name ="ID"
                    ControlSource ="ID"

                    LayoutCachedLeft =7378
                    LayoutCachedTop =1364
                    LayoutCachedWidth =7741
                    LayoutCachedHeight =1638
                End
                Begin Subform
                    OverlapFlags =247
                    SpecialEffect =0
                    Left =210
                    Top =6990
                    Width =9015
                    Height =1425
                    TabIndex =15
                    Name ="Buchungsanordnung Unterformular 2"
                    SourceObject ="Form.Buchungsanordnung Unterformular 2"
                    LinkChildFields ="ID aus Buchungen"
                    LinkMasterFields ="ID"
                    OnExit ="[Event Procedure]"
                    EventProcPrefix ="Buchungsanordnung_Unterformular_2"

                    LayoutCachedLeft =210
                    LayoutCachedTop =6990
                    LayoutCachedWidth =9225
                    LayoutCachedHeight =8415
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =93
                    TextAlign =1
                    Left =236
                    Top =8868
                    Width =9000
                    Height =353
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld57"
                    Caption ="Verwendungszweck"
                    FontName ="Arial"
                    LayoutCachedLeft =236
                    LayoutCachedTop =8868
                    LayoutCachedWidth =9236
                    LayoutCachedHeight =9221
                End
                Begin TextBox
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =223
                    TextAlign =1
                    Left =3144
                    Top =8865
                    Width =6082
                    Height =353
                    FontSize =12
                    TabIndex =21
                    Name ="Verwendungszweck"
                    ControlSource ="Verwendungszweck"
                    FontName ="Arial"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =3144
                    LayoutCachedTop =8865
                    LayoutCachedWidth =9226
                    LayoutCachedHeight =9218
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =93
                    TextAlign =1
                    Left =210
                    Top =9344
                    Width =9000
                    Height =353
                    FontSize =10
                    BackColor =14671839
                    Name ="Empfänger"
                    Caption ="Empfänger"
                    FontName ="Arial"
                    LayoutCachedLeft =210
                    LayoutCachedTop =9344
                    LayoutCachedWidth =9210
                    LayoutCachedHeight =9697
                End
                Begin ComboBox
                    OverlapFlags =223
                    ColumnCount =7
                    ListRows =50
                    ListWidth =11340
                    Left =3133
                    Top =9360
                    Width =6074
                    Height =312
                    TabIndex =22
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="ID Empfänger"
                    ControlSource ="ID Empfänger"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW A_Empfänger.ID, A_Empfänger.[Name, Vorname], A_Empfänger.Anre"
                        "de, A_Empfänger.[PLZ, Ort], A_Empfänger.[Straße, Nr], A_Empfänger.Bankname, A_Em"
                        "pfänger.[Konto-Nr] FROM A_Empfänger ORDER BY A_Empfänger.[Name, Vorname];"
                    ColumnWidths ="0;3018;859;2589;2019;2586;885"
                    OnGotFocus ="[Event Procedure]"
                    EventProcPrefix ="ID_Empfänger"

                    LayoutCachedLeft =3133
                    LayoutCachedTop =9360
                    LayoutCachedWidth =9207
                    LayoutCachedHeight =9672
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin Subform
                    OverlapFlags =247
                    SpecialEffect =0
                    Left =210
                    Top =9858
                    Width =9015
                    Height =1695
                    TabIndex =23
                    Name ="Buchungsanordnung Unterformular 4"
                    SourceObject ="Form.Buchungsanordnung Unterformular 4"
                    LinkChildFields ="ID aus Buchungen"
                    LinkMasterFields ="ID"
                    EventProcPrefix ="Buchungsanordnung_Unterformular_4"

                    LayoutCachedLeft =210
                    LayoutCachedTop =9858
                    LayoutCachedWidth =9225
                    LayoutCachedHeight =11553
                End
                Begin Line
                    OverlapFlags =95
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
                    Left =118
                    Top =752
                    Width =9129
                    Height =11511
                    Name ="Rechteck66"
                    LayoutCachedLeft =118
                    LayoutCachedTop =752
                    LayoutCachedWidth =9247
                    LayoutCachedHeight =12263
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9355
                    Top =7827
                    Width =2955
                    Height =405
                    FontSize =10
                    FontWeight =700
                    TabIndex =26
                    Name ="Ausdruck"
                    Caption ="Export in PDF-Datei"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =9355
                    LayoutCachedTop =7827
                    LayoutCachedWidth =12310
                    LayoutCachedHeight =8232
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9355
                    Top =8323
                    Width =2955
                    Height =405
                    FontSize =10
                    FontWeight =700
                    TabIndex =27
                    Name ="Befehl68"
                    Caption ="Neue Anordnung"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9355
                    Top =9280
                    Width =2955
                    Height =405
                    FontSize =10
                    FontWeight =700
                    TabIndex =28
                    Name ="Befehl69"
                    Caption ="Fertig"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9355
                    Top =8801
                    Width =2955
                    Height =405
                    FontSize =10
                    FontWeight =700
                    TabIndex =29
                    Name ="Befehl71"
                    Caption ="Neuen Empfänger eingeben"
                    OnClick ="[Event Procedure]"
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
                    Top =4419
                    Width =1829
                    Height =284
                    FontSize =10
                    TabIndex =30
                    BorderColor =16777215
                    ForeColor =255
                    Name ="KontrolleKoSt"
                    ControlSource ="=[Buchungsanordnung Unterformular 2].[Form]![Summe_Kostenstelle]-[Betrag]"
                    FontName ="Arial"

                    LayoutCachedLeft =9433
                    LayoutCachedTop =4419
                    LayoutCachedWidth =11262
                    LayoutCachedHeight =4703
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9355
                    Top =7304
                    Width =2955
                    Height =405
                    FontSize =10
                    FontWeight =700
                    TabIndex =31
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
                    TabIndex =32
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
                    Left =8264
                    Width =779
                    Height =284
                    FontSize =10
                    TabIndex =33
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
                    TabIndex =34
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
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    BackStyle =0
                    Left =9435
                    Top =4080
                    Width =779
                    Height =284
                    FontSize =10
                    TabIndex =35
                    BorderColor =16777215
                    ForeColor =255
                    Name ="KontrolleBuSt"
                    ControlSource ="=[Buchungsanordnung Unterformular 1].[Form]![Summe_Buchungsstelle]-[Betrag]"
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
                    TabIndex =36
                    BorderColor =16777215
                    ForeColor =255
                    Name ="Datumskontrolle"
                    ControlSource ="=[Buchungsanordnung Unterformular 4].[Form]![KontrolleDatum]"
                    FontName ="Arial"

                End
                Begin ComboBox
                    FontItalic = NotDefault
                    SpecialEffect =0
                    OverlapFlags =247
                    ColumnCount =2
                    ListRows =20
                    ListWidth =1647
                    Left =6927
                    Top =2568
                    Width =2286
                    Height =225
                    FontSize =9
                    TabIndex =7
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="Zyklus"
                    ControlSource ="ID Fälligkeiten"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Zahlungszyklen.ID, Zahlungszyklen.Zyklus FROM Zahlungszyklen ORDER BY Zah"
                        "lungszyklen.ID;"
                    ColumnWidths ="0;2781"
                    FontName ="Arial"

                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    BackStyle =0
                    Left =9557
                    Top =3286
                    Width =779
                    Height =284
                    FontSize =10
                    TabIndex =37
                    BorderColor =16777215
                    ForeColor =255
                    Name ="Aufteilung"
                    ControlSource ="=[Buchungsanordnung Unterformular 2].[Form]![ID aus Kostenstellen]"
                    FontName ="Arial"

                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =255
                    TextAlign =1
                    Left =212
                    Top =5235
                    Width =8970
                    Height =308
                    FontSize =10
                    FontWeight =700
                    BackColor =14671839
                    Name ="Bezeichnungsfeld109"
                    Caption ="Anlagenbuchhaltung"
                    FontName ="Arial"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =255
                    TextAlign =1
                    Left =6842
                    Top =5235
                    Width =2392
                    Height =308
                    FontSize =12
                    TabIndex =12
                    Name ="Text110"
                    ControlSource ="Anlage"
                    FontName ="Arial"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin Label
                    FontItalic = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =247
                    TextAlign =2
                    Left =3107
                    Top =5235
                    Width =3735
                    Height =315
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld111"
                    Caption ="Ergängzung der Anlage Nr."
                    FontName ="Arial"
                End
                Begin Label
                    FontUnderline = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =255
                    TextAlign =1
                    Left =210
                    Top =11565
                    Width =9000
                    Height =668
                    FontSize =10
                    FontWeight =700
                    BackColor =14671839
                    Name ="Bezeichnungsfeld100"
                    Caption ="Leistungszeitraum:"
                    FontName ="Arial"
                    LayoutCachedLeft =210
                    LayoutCachedTop =11565
                    LayoutCachedWidth =9210
                    LayoutCachedHeight =12233
                End
                Begin TextBox
                    FontItalic = NotDefault
                    AutoTab = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =247
                    TextAlign =2
                    FilterLookup =2
                    Left =3308
                    Top =11889
                    Width =2092
                    Height =308
                    FontSize =12
                    TabIndex =24
                    Name ="von_"
                    ControlSource ="von_"
                    Format ="Short Date"
                    FontName ="Arial"
                    InputMask ="99/99/00;0;_"
                    OnGotFocus ="=NumLock_An()"
                    OnLostFocus ="[Event Procedure]"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =3308
                    LayoutCachedTop =11889
                    LayoutCachedWidth =5400
                    LayoutCachedHeight =12197
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    FontItalic = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =247
                    TextAlign =2
                    Left =6217
                    Top =11904
                    Width =2017
                    Height =308
                    FontSize =12
                    TabIndex =25
                    Name ="Text104"
                    ControlSource ="bis_"
                    Format ="Short Date"
                    FontName ="Arial"
                    InputMask ="99/99/00;0;_"
                    OnGotFocus ="=NumLock_An()"
                    OnLostFocus ="[Event Procedure]"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =6217
                    LayoutCachedTop =11904
                    LayoutCachedWidth =8234
                    LayoutCachedHeight =12212
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =247
                    TextAlign =2
                    Left =2689
                    Top =11919
                    Width =390
                    Height =255
                    FontSize =10
                    FontWeight =300
                    BackColor =14671839
                    Name ="Bezeichnungsfeld105"
                    Caption ="vom"
                    FontName ="Arial"
                    LayoutCachedLeft =2689
                    LayoutCachedTop =11919
                    LayoutCachedWidth =3079
                    LayoutCachedHeight =12174
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =247
                    TextAlign =2
                    Left =5542
                    Top =11934
                    Width =330
                    Height =255
                    FontSize =10
                    FontWeight =300
                    BackColor =14671839
                    Name ="Bezeichnungsfeld106"
                    Caption ="bis"
                    FontName ="Arial"
                    LayoutCachedLeft =5542
                    LayoutCachedTop =11934
                    LayoutCachedWidth =5872
                    LayoutCachedHeight =12189
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =247
                    TextAlign =2
                    Left =4080
                    Top =11599
                    Width =660
                    Height =255
                    FontSize =10
                    FontWeight =300
                    BackColor =14671839
                    Name ="Bezeichnungsfeld107"
                    Caption ="Datum"
                    FontName ="Arial"
                    LayoutCachedLeft =4080
                    LayoutCachedTop =11599
                    LayoutCachedWidth =4740
                    LayoutCachedHeight =11854
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =247
                    TextAlign =2
                    Left =6707
                    Top =11615
                    Width =660
                    Height =255
                    FontSize =10
                    FontWeight =300
                    BackColor =14671839
                    Name ="Bezeichnungsfeld108"
                    Caption ="Datum"
                    FontName ="Arial"
                    LayoutCachedLeft =6707
                    LayoutCachedTop =11615
                    LayoutCachedWidth =7367
                    LayoutCachedHeight =11870
                End
                Begin Subform
                    OverlapFlags =247
                    SpecialEffect =0
                    Left =227
                    Top =5627
                    Width =9000
                    Height =1335
                    TabIndex =14
                    Name ="Buchungsanordnung Unterformular 1"
                    SourceObject ="Form.Buchungsanordnung Unterformular 1"
                    LinkChildFields ="ID aus Buchungen"
                    LinkMasterFields ="ID"
                    EventProcPrefix ="Buchungsanordnung_Unterformular_1"

                    LayoutCachedLeft =227
                    LayoutCachedTop =5627
                    LayoutCachedWidth =9227
                    LayoutCachedHeight =6962
                End
                Begin TextBox
                    FontItalic = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =247
                    IMESentenceMode =3
                    Left =4800
                    Top =3990
                    Width =1971
                    Height =270
                    FontSize =9
                    TabIndex =38
                    Name ="TF_AO_Nr"
                    ControlSource ="AO_Nr"
                    FontName ="Arial"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =4800
                    LayoutCachedTop =3990
                    LayoutCachedWidth =6771
                    LayoutCachedHeight =4260
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin Label
                    FontItalic = NotDefault
                    BackStyle =1
                    OverlapFlags =247
                    Left =3660
                    Top =3990
                    Width =1095
                    Height =270
                    FontSize =9
                    Name ="Bezeichnungsfeld97"
                    Caption =" (auf AO-Nr.:"
                    FontName ="Arial"
                    LayoutCachedLeft =3660
                    LayoutCachedTop =3990
                    LayoutCachedWidth =4755
                    LayoutCachedHeight =4260
                End
            End
        End
    End
End
CodeBehindForm
' See "Buchungsanordnung.cls"
