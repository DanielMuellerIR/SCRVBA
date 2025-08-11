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
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =16440
    DatasheetFontHeight =10
    ItemSuffix =120
    Left =13395
    Top =16755
    Right =29835
    Bottom =27975
    RecSrcDt = Begin
        0x0a31aba7cab2e440
    End
    Caption ="Vergabe-Volagen"
    OnOpen ="[Event Procedure]"
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
        Begin Line
            BorderLineStyle =0
            Width =1701
            GridlineShade =65.0
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
        Begin OptionButton
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
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
        Begin ListBox
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
            AllowValueListEdits =1
            InheritValueList =1
            BorderShade =65.0
            ForeTint =75.0
            GridlineShade =65.0
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
            CanGrow = NotDefault
            Height =11225
            BackColor =-2147483633
            Name ="Detailbereich"
            AlternateBackColor =-2147483633
            Begin
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    OverlapFlags =93
                    Left =225
                    Top =1260
                    Width =0
                    Height =720
                    BorderColor =4138256
                    Name ="Linie51"
                    GridlineColor =10921638
                    LayoutCachedLeft =225
                    LayoutCachedTop =1260
                    LayoutCachedWidth =225
                    LayoutCachedHeight =1980
                    BorderShade =50.0
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =87
                    AccessKey =76
                    ColumnCount =2
                    ListRows =30
                    ListWidth =4500
                    Left =120
                    Top =836
                    Width =5775
                    Height =285
                    TabIndex =1
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="KF_Gebäudeauswahl"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW tbl_100_10_Liegenschaften.ID_Gebäude, [NAme] & \" \" & [Haus_"
                        "Nr] & \": \" & [Bezeichnung] AS Objekt FROM M_Strassenverzeichnis RIGHT JOIN tbl"
                        "_100_10_Liegenschaften ON M_Strassenverzeichnis.Kennummer = tbl_100_10_Liegensch"
                        "aften.Kennummer_Straße ORDER BY [NAme] & \" \" & [Haus_Nr] & \": \" & [Bezeichnu"
                        "ng];"
                    ColumnWidths ="0;2657"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    UnicodeAccessKey =76

                    LayoutCachedLeft =120
                    LayoutCachedTop =836
                    LayoutCachedWidth =5895
                    LayoutCachedHeight =1121
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =125
                            Top =570
                            Width =1965
                            Height =270
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld33"
                            Caption ="Welche &Liegenschaft:"
                            FontName ="Arial"
                            LayoutCachedLeft =125
                            LayoutCachedTop =570
                            LayoutCachedWidth =2090
                            LayoutCachedHeight =840
                            ForeShade =50.0
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =125
                    Top =120
                    Width =4710
                    Height =315
                    FontSize =11
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld34"
                    Caption ="Vergabe-Vorlagen"
                    FontName ="Arial"
                    LayoutCachedLeft =125
                    LayoutCachedTop =120
                    LayoutCachedWidth =4835
                    LayoutCachedHeight =435
                    ForeShade =50.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =14350
                    Top =10710
                    Width =1005
                    Height =360
                    FontWeight =700
                    TabIndex =3
                    ForeColor =4138256
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =14350
                    LayoutCachedTop =10710
                    LayoutCachedWidth =15355
                    LayoutCachedHeight =11070
                    ForeShade =50.0
                    Overlaps =1
                End
                Begin ListBox
                    OverlapFlags =87
                    ColumnCount =2
                    Left =735
                    Top =3255
                    Width =6735
                    Height =2733
                    FontSize =8
                    BackColor =15728383
                    ForeColor =4138256
                    BorderColor =10040879
                    Name ="KF_Massn_auswahl"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Maßnahmen.ID, Maßnahmen.Maßnahme, Maßnahmen.[erledigt im Jahr] FROM Maßna"
                        "hmen WHERE (((Maßnahmen.ID_Gebäudeteil)=F_Variable('lng_ID_Geb_Teil')) AND ((Maß"
                        "nahmen.[erledigt im Jahr]) Is Null)) ORDER BY Maßnahmen.Maßnahme;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    AllowValueListEdits =0
                    InheritValueList =0

                    LayoutCachedLeft =735
                    LayoutCachedTop =3255
                    LayoutCachedWidth =7470
                    LayoutCachedHeight =5988
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =93
                            Left =735
                            Top =3000
                            Width =2580
                            Height =255
                            FontWeight =700
                            BackColor =-2147483633
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld36"
                            Caption ="Maßnahmen zum Gebäudeteil:"
                            FontName ="Arial"
                            LayoutCachedLeft =735
                            LayoutCachedTop =3000
                            LayoutCachedWidth =3315
                            LayoutCachedHeight =3255
                            ForeShade =50.0
                        End
                    End
                End
                Begin ListBox
                    OverlapFlags =85
                    AccessKey =84
                    ColumnCount =2
                    Left =735
                    Top =1520
                    Width =5160
                    Height =907
                    FontSize =8
                    TabIndex =4
                    BackColor =15728383
                    ForeColor =4138256
                    BorderColor =10040879
                    Name ="KF_Geb_Teil_Auswahl"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_20_Gebäudetei"
                        "le.Gebäudeteil FROM tbl_100_20_Gebäudeteile WHERE (((tbl_100_20_Gebäudeteile.ID_"
                        "Gebäude)=F_Variable(\"lng_ID_Gebaeude\")));"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    UnicodeAccessKey =116
                    AllowValueListEdits =0
                    InheritValueList =0

                    LayoutCachedLeft =735
                    LayoutCachedTop =1520
                    LayoutCachedWidth =5895
                    LayoutCachedHeight =2427
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            Left =735
                            Top =1260
                            Width =1860
                            Height =225
                            FontWeight =700
                            BackColor =-2147483633
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld60"
                            Caption ="Welches Gebäude&teil:"
                            FontName ="Arial"
                            LayoutCachedLeft =735
                            LayoutCachedTop =1260
                            LayoutCachedWidth =2595
                            LayoutCachedHeight =1485
                            ForeShade =50.0
                        End
                    End
                End
                Begin Line
                    BorderWidth =1
                    OverlapFlags =95
                    Left =225
                    Top =1980
                    Width =459
                    BorderColor =10040879
                    Name ="Linie66"
                    GridlineColor =10921638
                    LayoutCachedLeft =225
                    LayoutCachedTop =1980
                    LayoutCachedWidth =684
                    LayoutCachedHeight =1980
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    OverlapFlags =93
                    Left =1532
                    Top =2550
                    Width =13
                    Height =177
                    BorderColor =4138256
                    Name ="Linie67"
                    GridlineColor =10921638
                    LayoutCachedLeft =1532
                    LayoutCachedTop =2550
                    LayoutCachedWidth =1545
                    LayoutCachedHeight =2727
                    BorderShade =50.0
                End
                Begin Label
                    OverlapFlags =215
                    Left =525
                    Top =1814
                    Width =165
                    Height =210
                    FontSize =11
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld74"
                    Caption =">"
                    FontName ="Arial"
                    LayoutCachedLeft =525
                    LayoutCachedTop =1814
                    LayoutCachedWidth =690
                    LayoutCachedHeight =2024
                    ForeShade =50.0
                End
                Begin Label
                    Vertical = NotDefault
                    OverlapFlags =215
                    Left =1362
                    Top =2691
                    Width =375
                    Height =180
                    FontSize =14
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld77"
                    Caption =">"
                    FontName ="Arial"
                    LayoutCachedLeft =1362
                    LayoutCachedTop =2691
                    LayoutCachedWidth =1737
                    LayoutCachedHeight =2871
                    ForeShade =50.0
                End
                Begin ComboBox
                    OverlapFlags =87
                    TextAlign =1
                    IMESentenceMode =3
                    Left =6180
                    Top =836
                    Width =1146
                    Height =285
                    TabIndex =2
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="KF_ID_Massn"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Maßnahmen.ID FROM Maßnahmen ORDER BY Maßnahmen.ID;"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =6180
                    LayoutCachedTop =836
                    LayoutCachedWidth =7326
                    LayoutCachedHeight =1121
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =6180
                            Top =371
                            Width =1110
                            Height =465
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld85"
                            Caption ="oder welche\015\012Maßn.-ID:"
                            FontName ="Arial"
                            LayoutCachedLeft =6180
                            LayoutCachedTop =371
                            LayoutCachedWidth =7290
                            LayoutCachedHeight =836
                            ForeShade =50.0
                        End
                    End
                End
                Begin ListBox
                    OverlapFlags =87
                    ColumnCount =2
                    Left =7993
                    Top =3255
                    Width =5895
                    Height =2409
                    FontSize =8
                    TabIndex =5
                    BackColor =15728383
                    ForeColor =4138256
                    BorderColor =10040879
                    Name ="LF_Verlag_Vorlagen"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Aufträge.ID_Auftrag, [Firma] & \": \" & [Auftragsinhalt] AS Auftr FROM Au"
                        "fträge WHERE (((Aufträge.ID_Auftrag)=[ID_Hauptauftr]) AND ((Aufträge.ID_Maßnahme"
                        ")=F_Variable(\"lng_ID_MAssn\"))) ORDER BY [Firma] & \": \" & [Auftragsinhalt];"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    AllowValueListEdits =0
                    InheritValueList =0

                    LayoutCachedLeft =7993
                    LayoutCachedTop =3255
                    LayoutCachedWidth =13888
                    LayoutCachedHeight =5664
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =93
                            Left =7995
                            Top =3000
                            Width =4560
                            Height =255
                            FontWeight =700
                            BackColor =-2147483633
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld94"
                            Caption ="Vergabe-Vorlagen (nur Hauptaufträge) zur Maßnahme:"
                            FontName ="Arial"
                            LayoutCachedLeft =7995
                            LayoutCachedTop =3000
                            LayoutCachedWidth =12555
                            LayoutCachedHeight =3255
                            ForeShade =50.0
                        End
                    End
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    OverlapFlags =93
                    Left =8385
                    Top =5775
                    Width =13
                    Height =402
                    BorderColor =4138256
                    Name ="Linie95"
                    GridlineColor =10921638
                    LayoutCachedLeft =8385
                    LayoutCachedTop =5775
                    LayoutCachedWidth =8398
                    LayoutCachedHeight =6177
                    BorderShade =50.0
                End
                Begin Label
                    Vertical = NotDefault
                    OverlapFlags =215
                    Left =8220
                    Top =6156
                    Width =375
                    Height =180
                    FontSize =14
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld96"
                    Caption =">"
                    FontName ="Arial"
                    LayoutCachedLeft =8220
                    LayoutCachedTop =6156
                    LayoutCachedWidth =8595
                    LayoutCachedHeight =6336
                    ForeShade =50.0
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =9015
                    Top =5730
                    Width =2040
                    Height =345
                    FontWeight =700
                    TabIndex =6
                    ForeColor =4138256
                    Name ="BS_VergVorl_Neu"
                    Caption ="Neue Vergage-Vorlage"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =9015
                    LayoutCachedTop =5730
                    LayoutCachedWidth =11055
                    LayoutCachedHeight =6075
                    ForeShade =50.0
                    Overlaps =1
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =11100
                    Top =5715
                    Width =2805
                    Height =345
                    FontWeight =700
                    TabIndex =7
                    ForeColor =4138256
                    Name ="BS_VergVorl_Loeschen"
                    Caption ="mark. Vergabe-Vorlage löschen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =11100
                    LayoutCachedTop =5715
                    LayoutCachedWidth =13905
                    LayoutCachedHeight =6060
                    ForeShade =50.0
                    Overlaps =1
                End
                Begin Subform
                    OverlapFlags =85
                    SpecialEffect =0
                    Left =735
                    Top =6459
                    Width =15595
                    Height =4134
                    TabIndex =8
                    Name ="UF_Verg_Vorlage"
                    SourceObject ="Form.frm_050_20_UF_VergabeVorlage"

                    LayoutCachedLeft =735
                    LayoutCachedTop =6459
                    LayoutCachedWidth =16330
                    LayoutCachedHeight =10593
                    BorderThemeColorIndex =2
                    BorderShade =50.0
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            Left =735
                            Top =6180
                            Width =4770
                            Height =240
                            FontWeight =700
                            BackColor =-2147483633
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld100"
                            Caption ="Auflistung Hauptauftrag und ihm zugeordnete Nachträge:"
                            FontName ="Arial"
                            LayoutCachedLeft =735
                            LayoutCachedTop =6180
                            LayoutCachedWidth =5505
                            LayoutCachedHeight =6420
                            ForeShade =50.0
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    TextFontCharSet =2
                    TextFontFamily =2
                    Left =7560
                    Top =3855
                    Width =330
                    Height =225
                    FontSize =12
                    FontWeight =700
                    Name ="Bezeichnungsfeld101"
                    Caption =""
                    FontName ="Wingdings"
                    LayoutCachedLeft =7560
                    LayoutCachedTop =3855
                    LayoutCachedWidth =7890
                    LayoutCachedHeight =4080
                End
                Begin OptionGroup
                    SpecialEffect =0
                    OverlapFlags =93
                    Left =9975
                    Top =450
                    Width =2846
                    Height =726
                    TabIndex =9
                    Name ="OR_Auftr_Wert"
                    DefaultValue ="1"

                    LayoutCachedLeft =9975
                    LayoutCachedTop =450
                    LayoutCachedWidth =12821
                    LayoutCachedHeight =1176
                    BorderThemeColorIndex =2
                    BorderShade =50.0
                    Begin
                        Begin OptionButton
                            OverlapFlags =87
                            Left =10088
                            Top =586
                            OptionValue =1
                            BorderColor =10921638
                            Name ="Option104"
                            GridlineColor =10921638

                            LayoutCachedLeft =10088
                            LayoutCachedTop =586
                            LayoutCachedWidth =10348
                            LayoutCachedHeight =826
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OverlapFlags =247
                                    Left =10324
                                    Top =563
                                    Width =2355
                                    Height =255
                                    FontWeight =700
                                    BackColor =-2147483633
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld105"
                                    Caption ="aller Aufträge"
                                    FontName ="Arial"
                                    LayoutCachedLeft =10324
                                    LayoutCachedTop =563
                                    LayoutCachedWidth =12679
                                    LayoutCachedHeight =818
                                    ForeShade =50.0
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =10094
                            Top =885
                            TabIndex =1
                            OptionValue =2
                            BorderColor =10921638
                            Name ="Option106"
                            GridlineColor =10921638

                            LayoutCachedLeft =10094
                            LayoutCachedTop =885
                            LayoutCachedWidth =10354
                            LayoutCachedHeight =1125
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OverlapFlags =119
                                    Left =10330
                                    Top =850
                                    Width =2355
                                    Height =255
                                    FontWeight =700
                                    BackColor =-2147483633
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld107"
                                    Caption ="Aufträge über 25.000 €"
                                    FontName ="Arial"
                                    LayoutCachedLeft =10330
                                    LayoutCachedTop =850
                                    LayoutCachedWidth =12685
                                    LayoutCachedHeight =1105
                                    ForeShade =50.0
                                End
                            End
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =9241
                    Top =2040
                    Width =3592
                    Height =339
                    FontWeight =700
                    TabIndex =12
                    ForeColor =4138256
                    Name ="BS_Verg_Vorl_Audrucken"
                    Caption ="Vergabe-Vorlagen ausdrucken"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =9241
                    LayoutCachedTop =2040
                    LayoutCachedWidth =12833
                    LayoutCachedHeight =2379
                    ForeShade =50.0
                    BackColor =-2147483633
                    OldBorderStyle =0
                    Overlaps =1
                End
                Begin Rectangle
                    OverlapFlags =255
                    Left =7993
                    Top =283
                    Width =5895
                    Height =2602
                    Name ="Rechteck113"
                    LayoutCachedLeft =7993
                    LayoutCachedTop =283
                    LayoutCachedWidth =13888
                    LayoutCachedHeight =2885
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =247
                    Left =8220
                    Top =165
                    Width =945
                    Height =240
                    FontWeight =700
                    BackColor =-2147483633
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld103"
                    Caption ="Ausdruck .."
                    FontName ="Arial"
                    LayoutCachedLeft =8220
                    LayoutCachedTop =165
                    LayoutCachedWidth =9165
                    LayoutCachedHeight =405
                    ForeShade =50.0
                End
                Begin TextBox
                    OverlapFlags =247
                    TextAlign =1
                    IMESentenceMode =3
                    Left =8220
                    Top =713
                    Width =1386
                    Height =255
                    TabIndex =10
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="KF_AB_Datum"
                    Format ="Short Date"
                    DefaultValue ="=\"01.01.\" & Year(Date())-2"
                    FontName ="Arial"

                    LayoutCachedLeft =8220
                    LayoutCachedTop =713
                    LayoutCachedWidth =9606
                    LayoutCachedHeight =968
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =255
                            TextAlign =1
                            Left =8220
                            Top =458
                            Width =1635
                            Height =255
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld110"
                            Caption ="ab Auftragsdatum:"
                            FontName ="Arial"
                            LayoutCachedLeft =8220
                            LayoutCachedTop =458
                            LayoutCachedWidth =9855
                            LayoutCachedHeight =713
                            ForeShade =50.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =247
                    TextAlign =1
                    IMESentenceMode =3
                    Left =8220
                    Top =1275
                    Width =1386
                    Height =255
                    TabIndex =11
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="KF_Bis_Datum"
                    Format ="Short Date"
                    DefaultValue ="=\"31.12.\" & Year(Date())"
                    FontName ="Arial"

                    LayoutCachedLeft =8220
                    LayoutCachedTop =1275
                    LayoutCachedWidth =9606
                    LayoutCachedHeight =1530
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =255
                            TextAlign =1
                            Left =8220
                            Top =1021
                            Width =1635
                            Height =255
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld112"
                            Caption ="bis Auftragsdatum"
                            FontName ="Arial"
                            LayoutCachedLeft =8220
                            LayoutCachedTop =1021
                            LayoutCachedWidth =9855
                            LayoutCachedHeight =1276
                            ForeShade =50.0
                        End
                    End
                End
                Begin OptionGroup
                    SpecialEffect =0
                    OverlapFlags =247
                    Left =9975
                    Top =1245
                    Width =2844
                    Height =726
                    TabIndex =13
                    Name ="OR_Alle_Castroper"
                    DefaultValue ="1"

                    LayoutCachedLeft =9975
                    LayoutCachedTop =1245
                    LayoutCachedWidth =12819
                    LayoutCachedHeight =1971
                    BorderThemeColorIndex =2
                    BorderShade =50.0
                    Begin
                        Begin OptionButton
                            OverlapFlags =247
                            Left =10088
                            Top =1381
                            OptionValue =1
                            BorderColor =10921638
                            Name ="Option115"
                            GridlineColor =10921638

                            LayoutCachedLeft =10088
                            LayoutCachedTop =1381
                            LayoutCachedWidth =10348
                            LayoutCachedHeight =1621
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OverlapFlags =247
                                    Left =10324
                                    Top =1358
                                    Width =2355
                                    Height =255
                                    FontWeight =700
                                    BackColor =-2147483633
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld116"
                                    Caption ="zu allen Firmen"
                                    FontName ="Arial"
                                    LayoutCachedLeft =10324
                                    LayoutCachedTop =1358
                                    LayoutCachedWidth =12679
                                    LayoutCachedHeight =1613
                                    ForeShade =50.0
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =247
                            Left =10094
                            Top =1680
                            OptionValue =2
                            BorderColor =10921638
                            Name ="Option117"
                            GridlineColor =10921638

                            LayoutCachedLeft =10094
                            LayoutCachedTop =1680
                            LayoutCachedWidth =10354
                            LayoutCachedHeight =1920
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OverlapFlags =247
                                    Left =10328
                                    Top =1649
                                    Width =2355
                                    Height =218
                                    FontWeight =700
                                    BackColor =-2147483633
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld118"
                                    Caption ="zu Firmen aus Castrop-Rauxel"
                                    FontName ="Arial"
                                    LayoutCachedLeft =10328
                                    LayoutCachedTop =1649
                                    LayoutCachedWidth =12683
                                    LayoutCachedHeight =1867
                                    ForeShade =50.0
                                End
                            End
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =247
                    Left =9241
                    Top =2460
                    Width =3592
                    Height =339
                    FontWeight =700
                    TabIndex =14
                    ForeColor =4138256
                    Name ="BS_Verg_Vorl_Mittelh_Ausdr"
                    Caption ="Verg.Vorl. nach Mittelherkunft ausdrucken"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =9241
                    LayoutCachedTop =2460
                    LayoutCachedWidth =12833
                    LayoutCachedHeight =2799
                    ForeShade =50.0
                    BackColor =-2147483633
                    OldBorderStyle =0
                    Overlaps =1
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_050_010_Vergabevorlagen.cls"
