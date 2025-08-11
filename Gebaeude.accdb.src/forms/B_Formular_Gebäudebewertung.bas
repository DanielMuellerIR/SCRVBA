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
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =15874
    DatasheetFontHeight =10
    ItemSuffix =88
    Left =16988
    Top =7800
    Right =-32401
    Bottom =17550
    RecSrcDt = Begin
        0x28a8a75256c9e440
    End
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
        Begin CheckBox
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
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
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
            CanGrow = NotDefault
            Height =9751
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =6804
                    Left =170
                    Top =68
                    Width =11676
                    Height =284
                    BackColor =15466495
                    Name ="Kennummer"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW tbl_100_20_Gebäudeteile.ID_Gebäudeteil, [Name] & \" \" & [tbl"
                        "_100_20_Gebäudeteile].[HAus_Nr] & \": \" & [Bezeichnung] & \" - > \" & [Gebäudet"
                        "eil] AS Objekt FROM tbl_100_10_Liegenschaften RIGHT JOIN (tbl_100_20_Gebäudeteil"
                        "e LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = "
                        "M_Strassenverzeichnis.Kennummer) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_1"
                        "00_20_Gebäudeteile.ID_Gebäude WHERE (((tbl_100_20_Gebäudeteile.Bilanz_relevant)="
                        "True) AND ((tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_seit) Is Null)) ORDER BY "
                        "[Name] & \" \" & [tbl_100_20_Gebäudeteile].[HAus_Nr] & \": \" & [Bezeichnung] & "
                        "\" - > \" & [Gebäudeteil];"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =170
                    LayoutCachedTop =68
                    LayoutCachedWidth =11846
                    LayoutCachedHeight =352
                End
                Begin Image
                    SizeMode =3
                    Left =11847
                    Top =53
                    Width =677
                    Height =345
                    Name ="OLEUngebunden9"
                    PictureData = Begin
                        0x030000000000000008000000b70a0000c306000000000000010009000003d900 ,
                        0x000004001c00000000001400000026060f001e00ffffffff040014000000576f ,
                        0x72640e004d6963726f736f667420576f7264050000000b02feff020005000000 ,
                        0x0c02990188021c000000fb02adff000000000000900100000000044000125469 ,
                        0x6d6573204e657720526f6d616e00e6c0f477efc0f47701000000000030000400 ,
                        0x00002d0100000500000002010100000005000000090200000000050000000201 ,
                        0x010000001000000026060f001600ffffffff0000170000001200000078020000 ,
                        0x8301000008000000fa0200000600000000000000040000002d01010007000000 ,
                        0xfc020000ffffff000000040000002d0102001200000024030700b1001600b100 ,
                        0x70007302700073022401b1002401b1007e011b00ca0008000000fa0200000000 ,
                        0x000000000000040000002d01030004000000f001010007000000fc020000ffff ,
                        0xff000000040000002d01010004000000f00102000800000026060f000600ffff ,
                        0xffff01001c000000fb021000070000000000bc02000000000102022253797374 ,
                        0x656d000000000a00000004000000000002000000010000000000300004000000 ,
                        0x2d010200030000000000
                    End

                    LayoutCachedLeft =11847
                    LayoutCachedTop =53
                    LayoutCachedWidth =12524
                    LayoutCachedHeight =398
                    TabIndex =13
                End
                Begin Label
                    OverlapFlags =85
                    Left =12538
                    Top =90
                    Width =2767
                    Height =345
                    FontSize =12
                    FontWeight =700
                    ForeColor =255
                    Name ="Bezeichnungsfeld10"
                    Caption ="Gebäude auswählen"
                    LayoutCachedLeft =12538
                    LayoutCachedTop =90
                    LayoutCachedWidth =15305
                    LayoutCachedHeight =435
                End
                Begin Subform
                    OverlapFlags =85
                    Left =113
                    Top =711
                    Width =12013
                    Height =4109
                    TabIndex =1
                    Name ="B_Unterformular_Gebäudedaten"
                    SourceObject ="Form.B_Unterformular_Gebäudedaten"

                    LayoutCachedLeft =113
                    LayoutCachedTop =711
                    LayoutCachedWidth =12126
                    LayoutCachedHeight =4820
                End
                Begin Subform
                    OverlapFlags =85
                    SpecialEffect =0
                    Left =113
                    Top =6628
                    Width =12013
                    Height =1172
                    TabIndex =3
                    BorderColor =4138256
                    Name ="B_Unterformular_Sanierungsbedarf"
                    SourceObject ="Form.B_Unterformular_Sanierungsbedarf"

                    LayoutCachedLeft =113
                    LayoutCachedTop =6628
                    LayoutCachedWidth =12126
                    LayoutCachedHeight =7800
                    BorderShade =50.0
                End
                Begin Subform
                    OverlapFlags =85
                    SpecialEffect =0
                    Left =113
                    Top =8184
                    Width =12013
                    Height =1418
                    TabIndex =2
                    BorderColor =4138256
                    Name ="B_Unterformular_Werterhöhung"
                    SourceObject ="Form.B_Unterformular_Werterhöhung"

                    LayoutCachedLeft =113
                    LayoutCachedTop =8184
                    LayoutCachedWidth =12126
                    LayoutCachedHeight =9602
                    BorderShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =113
                    Top =6322
                    Width =10965
                    Height =240
                    FontWeight =700
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld56"
                    Caption ="Sanierungsmaßnahmen (hier nur Sichtung, Datenbearbeitung: Reiter Neubau / Sanier"
                        "ung, Button [Maßnahmen planen / ändern]"
                    LayoutCachedLeft =113
                    LayoutCachedTop =6322
                    LayoutCachedWidth =11078
                    LayoutCachedHeight =6562
                End
                Begin Label
                    OverlapFlags =85
                    Left =113
                    Top =7905
                    Width =2145
                    Height =240
                    FontWeight =700
                    Name ="Bezeichnungsfeld59"
                    Caption ="Werterhöhende Bauteile"
                    LayoutCachedLeft =113
                    LayoutCachedTop =7905
                    LayoutCachedWidth =2258
                    LayoutCachedHeight =8145
                End
                Begin Subform
                    OverlapFlags =85
                    SpecialEffect =0
                    Left =113
                    Top =5198
                    Width =12013
                    Height =992
                    TabIndex =4
                    BorderColor =4138256
                    Name ="B_Unterformular_Abschreibung"
                    SourceObject ="Form.B_Unterformular_Abschreibung"

                    LayoutCachedLeft =113
                    LayoutCachedTop =5198
                    LayoutCachedWidth =12126
                    LayoutCachedHeight =6190
                    BorderShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =113
                    Top =4935
                    Width =2280
                    Height =240
                    FontWeight =700
                    Name ="Bezeichnungsfeld67"
                    Caption ="Zuordnung Abschreibung:"
                    LayoutCachedLeft =113
                    LayoutCachedTop =4935
                    LayoutCachedWidth =2393
                    LayoutCachedHeight =5175
                End
                Begin Label
                    OverlapFlags =85
                    Left =165
                    Top =428
                    Width =10965
                    Height =240
                    FontWeight =700
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld78"
                    Caption ="Gebäudebewertung (hier nur Sichtung, Datenbearbeitung: Reiter Neubau / Sanierung"
                        ", Button [Liegenschaften / Gebäudeteile]"
                    LayoutCachedLeft =165
                    LayoutCachedTop =428
                    LayoutCachedWidth =11130
                    LayoutCachedHeight =668
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =93
                    TextAlign =2
                    Left =12508
                    Top =6177
                    Width =3138
                    Height =345
                    FontSize =12
                    FontWeight =700
                    BackColor =-2147483633
                    ForeColor =255
                    Name ="Bezeichnungsfeld60"
                    Caption ="Prüfung, Grundstücke"
                    LayoutCachedLeft =12508
                    LayoutCachedTop =6177
                    LayoutCachedWidth =15646
                    LayoutCachedHeight =6522
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =12985
                    Top =6585
                    Width =1935
                    Height =345
                    FontWeight =700
                    TabIndex =5
                    ForeColor =4194368
                    Name ="BS_Plausib_Pruefung"
                    Caption ="Plausitbilitätsprüfung"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =12985
                    LayoutCachedTop =6585
                    LayoutCachedWidth =14920
                    LayoutCachedHeight =6930
                    Overlaps =1
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    SpecialEffect =3
                    OverlapFlags =93
                    ColumnCount =2
                    ListRows =50
                    ListWidth =5103
                    Left =12642
                    Top =4124
                    Width =2625
                    Height =270
                    TabIndex =6
                    BackColor =15466495
                    BorderColor =12632256
                    Name ="Objekt"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW tbl_100_20_Gebäudeteile.ID_Gebäudeteil, [Name] & \" \" & [tbl"
                        "_100_20_Gebäudeteile].[HAus_Nr] & \": \" & [Bezeichnung] & \" - > \" & [Gebäudet"
                        "eil] AS Objekt FROM tbl_100_10_Liegenschaften RIGHT JOIN (tbl_100_20_Gebäudeteil"
                        "e LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = "
                        "M_Strassenverzeichnis.Kennummer) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_1"
                        "00_20_Gebäudeteile.ID_Gebäude WHERE (((tbl_100_20_Gebäudeteile.Bilanz_relevant)="
                        "True) AND ((tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_seit) Is Null)) ORDER BY "
                        "[Name] & \" \" & [tbl_100_20_Gebäudeteile].[HAus_Nr] & \": \" & [Bezeichnung] & "
                        "\" - > \" & [Gebäudeteil];"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =12642
                    LayoutCachedTop =4124
                    LayoutCachedWidth =15267
                    LayoutCachedHeight =4394
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =93
                            Left =12642
                            Top =3795
                            Width =795
                            Height =255
                            FontWeight =700
                            BackColor =-2147483633
                            Name ="Gebäude_Label"
                            Caption ="Objekt:"
                            FontName ="Arial"
                            LayoutCachedLeft =12642
                            LayoutCachedTop =3795
                            LayoutCachedWidth =13437
                            LayoutCachedHeight =4050
                        End
                    End
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =93
                    Left =12538
                    Top =960
                    Width =2820
                    Height =345
                    FontSize =12
                    FontWeight =700
                    BackColor =-2147483633
                    ForeColor =255
                    Name ="Bezeichnungsfeld81"
                    Caption ="Zwischenbewertung:"
                    LayoutCachedLeft =12538
                    LayoutCachedTop =960
                    LayoutCachedWidth =15358
                    LayoutCachedHeight =1305
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =93
                    Left =12642
                    Top =4478
                    Width =2625
                    Height =285
                    FontWeight =700
                    TabIndex =7
                    ForeColor =0
                    Name ="BS_Ein_GebT_bewerten"
                    Caption ="Ergebnis anzeigen (Detail)"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =12642
                    LayoutCachedTop =4478
                    LayoutCachedWidth =15267
                    LayoutCachedHeight =4763
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =12642
                    Top =3465
                    Width =2625
                    Height =285
                    FontWeight =700
                    TabIndex =8
                    ForeColor =0
                    Name ="BS_GebT_aus_HF_uebern"
                    Caption ="Nebenstehendes Gebäude"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =12642
                    LayoutCachedTop =3465
                    LayoutCachedWidth =15267
                    LayoutCachedHeight =3750
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =12642
                    Top =4828
                    Width =2625
                    Height =285
                    FontWeight =700
                    TabIndex =9
                    ForeColor =0
                    Name ="BS_Alle_Gebt_Bew_Liste"
                    Caption ="Alle Ergebnisse (Liste)"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =12642
                    LayoutCachedTop =4828
                    LayoutCachedWidth =15267
                    LayoutCachedHeight =5113
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =15373
                    Top =4095
                    Width =337
                    Height =288
                    TabIndex =10
                    Name ="BS_ObjAusw_Leeren"
                    Caption ="Befehl208"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dddddddddddddddddddddddddddddddddddddddddddddddd ,
                        0xdddddddddddddddddddd177ddddd77dd1ddd1177dddd17dd11dd7117ddd71ddd ,
                        0x111dd1177d117ddd1111d7117711dddd11111d11111ddddd1111dd71117ddddd ,
                        0x111d77111177dddd11d711dd71177ddd1dddddddd71177ddddddddddddd11ddd ,
                        0xdddddddddddddddd
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End

                    LayoutCachedLeft =15373
                    LayoutCachedTop =4095
                    LayoutCachedWidth =15710
                    LayoutCachedHeight =4383
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =12642
                    Top =5146
                    Width =2625
                    Height =285
                    FontWeight =700
                    TabIndex =11
                    ForeColor =128
                    Name ="B_Bewert_Bilanzen"
                    Caption ="Erst- und Eröffnungsbilanzen .."
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    ControlTipText ="Abfrage ausführen"

                    LayoutCachedLeft =12642
                    LayoutCachedTop =5146
                    LayoutCachedWidth =15267
                    LayoutCachedHeight =5431
                    Overlaps =1
                End
                Begin ListBox
                    SpecialEffect =3
                    OverlapFlags =247
                    IMESentenceMode =3
                    Left =12642
                    Top =1832
                    Width =1881
                    Height =1462
                    FontSize =8
                    TabIndex =12
                    BackColor =15466495
                    BorderColor =12632256
                    Name ="KF_Bew_Jahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Kalenderjahre.Jahr FROM Kalenderjahre WHERE (((Kalenderjahre.Jahr)<=Year("
                        "Date()))) ORDER BY Kalenderjahre.Jahr;"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="=Year(Date())"
                    FontName ="Arial"
                    AllowValueListEdits =0
                    InheritValueList =0

                    LayoutCachedLeft =12642
                    LayoutCachedTop =1832
                    LayoutCachedWidth =14523
                    LayoutCachedHeight =3294
                    ThemeFontIndex =-1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                    Begin
                        Begin Label
                            OldBorderStyle =1
                            OverlapFlags =93
                            Left =12642
                            Top =1485
                            Width =1635
                            Height =255
                            FontWeight =700
                            Name ="Bezeichnungsfeld83"
                            Caption ="Bewertungsjahr:"
                            FontName ="Arial"
                            LayoutCachedLeft =12642
                            LayoutCachedTop =1485
                            LayoutCachedWidth =14277
                            LayoutCachedHeight =1740
                        End
                    End
                End
                Begin Rectangle
                    SpecialEffect =0
                    OverlapFlags =255
                    Left =12388
                    Top =795
                    Width =3408
                    Height =4872
                    Name ="Rechteck86"
                    LayoutCachedLeft =12388
                    LayoutCachedTop =795
                    LayoutCachedWidth =15796
                    LayoutCachedHeight =5667
                End
                Begin Rectangle
                    SpecialEffect =0
                    OverlapFlags =215
                    Left =12357
                    Top =6061
                    Width =3408
                    Height =1078
                    Name ="Rechteck87"
                    LayoutCachedLeft =12357
                    LayoutCachedTop =6061
                    LayoutCachedWidth =15765
                    LayoutCachedHeight =7139
                End
            End
        End
    End
End
CodeBehindForm
' See "B_Formular_Gebäudebewertung.cls"
