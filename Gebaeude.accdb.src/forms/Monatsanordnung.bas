Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =10148
    DatasheetFontHeight =10
    ItemSuffix =66
    Left =14445
    Top =5895
    Right =26265
    Bottom =14850
    RecSrcDt = Begin
        0xdb714d452be9e240
    End
    DatasheetFontName ="Arial"
    OnLoad ="[Event Procedure]"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
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
            Height =7483
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    LimitToList = NotDefault
                    SpecialEffect =3
                    OverlapFlags =85
                    ColumnCount =5
                    ListRows =50
                    ListWidth =9639
                    Left =2770
                    Top =680
                    Width =4536
                    Height =284
                    BorderColor =12632256
                    Name ="Firma"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW A_Empfänger.[Name, Vorname], A_Empfänger.Bankname, A_Empfänge"
                        "r.[Konto-Nr], A_Empfänger.BLZ, [Buchungsstellen _Doppik].Buchungsstelle FROM ((A"
                        "_Empfänger RIGHT JOIN (A_Buchungen RIGHT JOIN A_Buchungen_Aufteilung_auf_Fälligk"
                        "eiten ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchun"
                        "gen]) ON A_Empfänger.ID = A_Buchungen.[ID Empfänger]) LEFT JOIN A_Buchungen_Auft"
                        "eilung_auf_Buchungsstellen ON A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Bu"
                        "chungen] = A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungen]) LEFT J"
                        "OIN [Buchungsstellen _Doppik] ON A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID "
                        "aus Buchungsstellen] = [Buchungsstellen _Doppik].Kennummer WHERE (((A_Buchungen_"
                        "Aufteilung_auf_Fälligkeiten.sofort)=Yes)) GROUP BY A_Empfänger.[Name, Vorname], "
                        "A_Empfänger.Bankname, A_Empfänger.[Konto-Nr], A_Empfänger.BLZ, [Buchungsstellen "
                        "_Doppik].Buchungsstelle HAVING (((A_Empfänger.[Name, Vorname]) Is Not Null) AND "
                        "(([Buchungsstellen _Doppik].Buchungsstelle) Is Not Null)) ORDER BY A_Empfänger.["
                        "Name, Vorname];"
                    ColumnWidths ="3121;2835;1701;1420"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"

                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            Left =283
                            Top =680
                            Width =2160
                            Height =270
                            FontWeight =700
                            Name ="Label"
                            Caption ="Auswahl Firma"
                            FontName ="Arial"
                        End
                    End
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    Left =1870
                    Top =113
                    Width =4095
                    Height =345
                    FontSize =12
                    FontWeight =700
                    Name ="Bezeichnungsfeld50"
                    Caption ="Wiederkehrende Zahlung anweisen"
                    FontName ="Arial"
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    LimitToList = NotDefault
                    SpecialEffect =3
                    OverlapFlags =85
                    ColumnCount =5
                    ListRows =50
                    ListWidth =10206
                    Left =2772
                    Top =1050
                    Width =4536
                    Height =284
                    TabIndex =1
                    BoundColumn =1
                    BorderColor =12632256
                    Name ="alteID"
                    RowSourceType ="Table/Query"
                    RowSource ="Abfrage für Filter im Formular Monatsanordnung 2"
                    ColumnWidths ="3969;0;2268;1701;1701"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"

                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            Left =285
                            Top =1050
                            Width =2160
                            Height =270
                            FontWeight =700
                            Name ="Bezeichnungsfeld20"
                            Caption ="Verwendungszweck"
                            FontName ="Arial"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7086
                    Top =6689
                    Width =2721
                    Height =576
                    FontSize =10
                    FontWeight =700
                    TabIndex =2
                    Name ="Befehl31"
                    Caption ="Verlassen (nicht speichern)"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Formular schließen"

                    Overlaps =1
                End
                Begin Subform
                    TabStop = NotDefault
                    OverlapFlags =85
                    OldBorderStyle =0
                    SpecialEffect =0
                    Left =285
                    Top =1365
                    Width =4875
                    Height =1470
                    TabIndex =3
                    Name ="Monatsanordnung_UF_1"
                    SourceObject ="Form.Monatsanordnung_UF_1"

                End
                Begin Subform
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    OldBorderStyle =0
                    SpecialEffect =0
                    Left =5220
                    Top =1410
                    Width =2265
                    Height =375
                    TabIndex =4
                    Name ="Monatsanordnung_UF_2"
                    SourceObject ="Form.Monatsanordnung_UF_2"

                End
                Begin Subform
                    TabStop = NotDefault
                    OverlapFlags =215
                    OldBorderStyle =0
                    SpecialEffect =0
                    Left =5223
                    Top =1815
                    Width =2265
                    Height =795
                    TabIndex =5
                    Name ="Monatsanordnung_UF_3"
                    SourceObject ="Form.Monatsanordnung_UF_3"

                End
                Begin Subform
                    OverlapFlags =85
                    OldBorderStyle =0
                    SpecialEffect =0
                    Left =280
                    Top =3292
                    Width =9480
                    Height =3300
                    TabIndex =6
                    Name ="Monatsanordnung_UF_4"
                    SourceObject ="Form.Monatsanordnung_UF_4"
                    OnExit ="[Event Procedure]"

                    LayoutCachedLeft =280
                    LayoutCachedTop =3292
                    LayoutCachedWidth =9760
                    LayoutCachedHeight =6592
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =7823
                    Top =113
                    Width =1984
                    Height =217
                    TabIndex =7
                    Name ="angelegt_neu"

                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =7483
                    Top =566
                    Width =2556
                    Height =284
                    FontWeight =700
                    TabIndex =8
                    Name ="Anordnungsbetrag"
                    ControlSource ="=[Forms]![Monatsanordnung]![Monatsanordnung_UF_4]![neuer_AO_Betrag]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =4185
                    Top =6690
                    Width =2721
                    Height =576
                    FontSize =10
                    FontWeight =700
                    TabIndex =9
                    Name ="Befehl41"
                    Caption ="Ausdrucken / speichernm"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Abfrage ausführen"

                    Overlaps =1
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    FontItalic = NotDefault
                    SpecialEffect =0
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =3
                    ListRows =20
                    ListWidth =1920
                    Left =283
                    Top =6689
                    Width =3742
                    Height =576
                    FontSize =12
                    TabIndex =10
                    Name ="IDSachbearbeiter"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, Sachbearbeiter.Name, Sachbearbeiter.Telefon FROM Sachb"
                        "earbeiter WHERE (((Sachbearbeiter.ausgeschieden)=False)) ORDER BY Sachbearbeiter"
                        ".Name;"
                    ColumnWidths ="0;1694;796"
                    FontName ="Arial"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =7490
                    Top =963
                    Width =2544
                    Height =283
                    TabIndex =11
                    Name ="alteBuSt"

                End
                Begin TextBox
                    OverlapFlags =93
                    Left =6468
                    Top =2607
                    Width =999
                    Height =283
                    TabIndex =12
                    BackColor =65535
                    Name ="Auftragsnummer"

                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    Left =5215
                    Top =2607
                    Width =885
                    Height =240
                    Name ="Bezeichnungsfeld59"
                    Caption ="Auftragsnr.:"
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    RowSourceTypeInt =1
                    SpecialEffect =0
                    OverlapFlags =85
                    ListWidth =1080
                    Left =7766
                    Top =2607
                    Width =2211
                    FontSize =10
                    FontWeight =700
                    TabIndex =13
                    BackColor =65535
                    Name ="Zahlung"
                    RowSourceType ="Value List"
                    RowSource ="\"Schlusszahlung\";\"Teilzahlung\""
                    ColumnWidths ="1080"
                    DefaultValue ="\"Teilzahlung\""
                    FontName ="Arial"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =8679
                    Top =1841
                    Width =1149
                    Height =283
                    TabIndex =14
                    BackColor =65535
                    Name ="von_"
                    Format ="Short Date"
                    InputMask ="99/99/00;0;_"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =8679
                    Top =2181
                    Width =1149
                    Height =283
                    TabIndex =15
                    BackColor =65535
                    Name ="bis_"
                    Format ="Short Date"
                    InputMask ="99/99/00;0;_"

                End
                Begin Label
                    FontUnderline = NotDefault
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =7650
                    Top =1500
                    Width =2190
                    Height =240
                    FontWeight =700
                    Name ="Bezeichnungsfeld63"
                    Caption ="Leistungszeitraum (neu):"
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    Left =8195
                    Top =1847
                    Width =390
                    Height =240
                    Name ="Bezeichnungsfeld64"
                    Caption ="von:"
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    Left =8195
                    Top =2187
                    Width =315
                    Height =240
                    Name ="Bezeichnungsfeld65"
                    Caption ="bis:"
                End
            End
        End
    End
End
CodeBehindForm
' See "Monatsanordnung.cls"
