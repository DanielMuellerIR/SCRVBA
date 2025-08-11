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
    Width =14740
    DatasheetFontHeight =10
    ItemSuffix =76
    Left =13395
    Top =9300
    Right =29925
    Bottom =21000
    RecSrcDt = Begin
        0x5c44b2e30fc6e440
    End
    DatasheetFontName ="Arial"
    OnActivate ="[Event Procedure]"
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
            CanGrow = NotDefault
            Height =9646
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =3
                    ListRows =50
                    ListWidth =4500
                    Left =390
                    Top =285
                    Width =6810
                    Height =284
                    Name ="KF_Gebäudeauswahl"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW tbl_100_20_Gebäudeteile.ID_Gebäudeteil, [Name] & \" \" & [tbl"
                        "_100_20_Gebäudeteile].[Haus_Nr] AS Strasse, [Bezeichnung] & \": \" & [Gebäudetei"
                        "l] AS Bez FROM tbl_100_10_Liegenschaften INNER JOIN (tbl_100_20_Gebäudeteile LEF"
                        "T JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Str"
                        "assenverzeichnis.Kennummer) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20"
                        "_Gebäudeteile.ID_Gebäude ORDER BY [Name] & \" \" & [tbl_100_20_Gebäudeteile].[Ha"
                        "us_Nr], [Bezeichnung] & \": \" & [Gebäudeteil];"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =390
                    LayoutCachedTop =285
                    LayoutCachedWidth =7200
                    LayoutCachedHeight =569
                End
                Begin Image
                    SizeMode =3
                    Left =7313
                    Top =120
                    Width =960
                    Height =510
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

                    LayoutCachedLeft =7313
                    LayoutCachedTop =120
                    LayoutCachedWidth =8273
                    LayoutCachedHeight =630
                    TabIndex =5
                End
                Begin Label
                    OverlapFlags =247
                    Left =8220
                    Top =120
                    Width =2551
                    Height =443
                    FontSize =12
                    FontWeight =700
                    ForeColor =255
                    Name ="Bezeichnungsfeld10"
                    Caption ="Gebäude auswählen"
                    LayoutCachedLeft =8220
                    LayoutCachedTop =120
                    LayoutCachedWidth =10771
                    LayoutCachedHeight =563
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =13946
                    Top =8844
                    Width =576
                    Height =576
                    TabIndex =1
                    Name ="Befehl33"
                    Caption ="Befehl33"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadad0dadadadadaadad00adadadadaddad030dadadadada ,
                        0xad0330adadadadad0033300000000adaa03330ff0dadadadd03300ff0adad4da ,
                        0xa03330ff0dad44add03330ff0ad44444a03330ff0d444444d03330ff0ad44444 ,
                        0xa0330fff0dad44add030ffff0adad4daa00fffff0dadadadd00000000adadada ,
                        0xadadadadadadadad000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Formular schließen"

                    Overlaps =1
                End
                Begin Tab
                    OverlapFlags =85
                    Left =375
                    Top =848
                    Width =14326
                    Height =7732
                    TabIndex =2
                    Name ="RegisterStr34"

                    LayoutCachedLeft =375
                    LayoutCachedTop =848
                    LayoutCachedWidth =14701
                    LayoutCachedHeight =8580
                    Begin
                        Begin Page
                            OverlapFlags =87
                            Left =510
                            Top =1260
                            Width =14055
                            Height =7185
                            Name ="Fremdmieten"
                            LayoutCachedLeft =510
                            LayoutCachedTop =1260
                            LayoutCachedWidth =14565
                            LayoutCachedHeight =8445
                            Begin
                                Begin Subform
                                    OverlapFlags =215
                                    Left =566
                                    Top =1303
                                    Width =13890
                                    Height =7095
                                    Name ="UF_Fremdmieten"
                                    SourceObject ="Form.M_Unterformular_Fremdmieten"

                                    LayoutCachedLeft =566
                                    LayoutCachedTop =1303
                                    LayoutCachedWidth =14456
                                    LayoutCachedHeight =8398
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =510
                            Top =1260
                            Width =14055
                            Height =7185
                            Name ="Sonderleistungen"
                            LayoutCachedLeft =510
                            LayoutCachedTop =1260
                            LayoutCachedWidth =14565
                            LayoutCachedHeight =8445
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    Left =590
                                    Top =1340
                                    Width =13890
                                    Height =7095
                                    Name ="UF_Sonderleistungen"
                                    SourceObject ="Form.M_Unterformular_Sonderleistungen"
                                    LinkChildFields ="ID aus Objekte"

                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =510
                            Top =1260
                            Width =14055
                            Height =7185
                            Name ="Kalkulation Sonderleistungen"
                            EventProcPrefix ="Kalkulation_Sonderleistungen"
                            LayoutCachedLeft =510
                            LayoutCachedTop =1260
                            LayoutCachedWidth =14565
                            LayoutCachedHeight =8445
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    Left =510
                                    Top =1303
                                    Width =13890
                                    Height =6165
                                    Name ="UF_Kalk_Sonderl"
                                    SourceObject ="Form.M_Unterformular_Sonderleistungen_Kalkulation_für_Budget"
                                    LinkChildFields ="ID aus Objekte"

                                End
                                Begin CommandButton
                                    OverlapFlags =215
                                    Left =850
                                    Top =7653
                                    Width =3240
                                    Height =405
                                    TabIndex =1
                                    Name ="Befehl66"
                                    Caption ="Sonderleistungen aus Vorjahr übernehmen"
                                    OnClick ="[Event Procedure]"

                                    Overlaps =1
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =510
                            Top =1260
                            Width =14055
                            Height =7185
                            Name ="Notizen"
                            LayoutCachedLeft =510
                            LayoutCachedTop =1260
                            LayoutCachedWidth =14565
                            LayoutCachedHeight =8445
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    Left =510
                                    Top =1303
                                    Width =13890
                                    Height =7095
                                    Name ="UF_Memos"
                                    SourceObject ="Form.M_Unterformular_Memos"

                                End
                            End
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =2
                    ListWidth =510
                    Left =12925
                    Top =233
                    Height =283
                    TabIndex =3
                    Name ="Auswahljahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [Kalenderjahre].[Jahr] FROM [Kalenderjahre];"
                    ColumnWidths ="510"
                    DefaultValue ="=Year(Now())"

                    LayoutCachedLeft =12925
                    LayoutCachedTop =233
                    LayoutCachedWidth =14626
                    LayoutCachedHeight =516
                End
                Begin Label
                    OverlapFlags =85
                    Left =11111
                    Top =233
                    Width =1740
                    Height =285
                    FontSize =11
                    FontWeight =700
                    ForeColor =255
                    Name ="Bezeichnungsfeld73"
                    Caption ="Kalkulationsjahr"
                    LayoutCachedLeft =11111
                    LayoutCachedTop =233
                    LayoutCachedWidth =12851
                    LayoutCachedHeight =518
                End
                Begin ComboBox
                    OverlapFlags =87
                    TextAlign =2
                    ListWidth =510
                    Left =12925
                    Top =573
                    Height =283
                    TabIndex =4
                    Name ="Datengrundlage"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [Kalenderjahre].[Jahr] FROM [Kalenderjahre];"
                    ColumnWidths ="510"
                    DefaultValue ="=Year(Now())"

                    LayoutCachedLeft =12925
                    LayoutCachedTop =573
                    LayoutCachedWidth =14626
                    LayoutCachedHeight =856
                End
                Begin Label
                    OverlapFlags =87
                    Left =11111
                    Top =573
                    Width =1740
                    Height =285
                    FontSize =11
                    FontWeight =700
                    ForeColor =255
                    Name ="Bezeichnungsfeld75"
                    Caption ="Datengrundlage"
                    LayoutCachedLeft =11111
                    LayoutCachedTop =573
                    LayoutCachedWidth =12851
                    LayoutCachedHeight =858
                End
            End
        End
    End
End
CodeBehindForm
' See "M_Formular_Gebäudedaten.cls"
