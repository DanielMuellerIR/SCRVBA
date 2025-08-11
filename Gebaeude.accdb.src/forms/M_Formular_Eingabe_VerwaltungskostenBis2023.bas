Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =15647
    DatasheetFontHeight =10
    ItemSuffix =20
    Left =10125
    Top =4320
    Right =25770
    Bottom =14813
    RecSrcDt = Begin
        0x85a9406894c8e440
    End
    RecordSource ="SELECT Kalenderjahre.Jahr FROM Kalenderjahre ORDER BY Kalenderjahre.Jahr;"
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
        Begin Section
            CanGrow = NotDefault
            Height =10497
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =13894
                    Top =8726
                    Width =576
                    Height =576
                    TabIndex =1
                    Name ="Befehl0"
                    Caption ="Befehl0"
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

                    LayoutCachedLeft =13894
                    LayoutCachedTop =8726
                    LayoutCachedWidth =14470
                    LayoutCachedHeight =9302
                End
                Begin Image
                    Left =7941
                    Top =52
                    Width =1575
                    Height =910
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

                    LayoutCachedLeft =7941
                    LayoutCachedTop =52
                    LayoutCachedWidth =9516
                    LayoutCachedHeight =962
                    TabIndex =12
                End
                Begin Label
                    OverlapFlags =85
                    Left =9642
                    Top =336
                    Width =2329
                    Height =440
                    FontSize =12
                    FontWeight =700
                    ForeColor =255
                    Name ="Bezeichnungsfeld10"
                    Caption ="Jahr auswählen"
                    LayoutCachedLeft =9642
                    LayoutCachedTop =336
                    LayoutCachedWidth =11971
                    LayoutCachedHeight =776
                End
                Begin ComboBox
                    OverlapFlags =85
                    ListWidth =510
                    Left =288
                    Top =336
                    Width =2154
                    Height =283
                    Name ="Jahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [Kalenderjahre].[Jahr] FROM [Kalenderjahre] WHERE [Kalenderja"
                        "hre].[Jahr] <= 2023;"
                    ColumnWidths ="510"
                    ValidationRule ="<=2023"
                    ValidationText ="Bitte ein Jahr bis maximal 2023 auswählen. Für die Jahre ab 2024 steht eine neue"
                        " Funktion zur Verfügung."
                    AfterUpdate ="[Event Procedure]"
                    OnGotFocus ="[Event Procedure]"

                    LayoutCachedLeft =288
                    LayoutCachedTop =336
                    LayoutCachedWidth =2442
                    LayoutCachedHeight =619
                End
                Begin Subform
                    OverlapFlags =85
                    OldBorderStyle =0
                    SpecialEffect =0
                    Left =288
                    Top =4191
                    Width =10200
                    Height =3795
                    TabIndex =2
                    Name ="M_Unterformular_Eingabe_Verwaltungskosten"
                    SourceObject ="Form.M_Unterformular_Eingabe_Verwaltungskosten"
                    LinkChildFields ="Haushaltsjahr"
                    LinkMasterFields ="Jahr"

                    LayoutCachedLeft =288
                    LayoutCachedTop =4191
                    LayoutCachedWidth =10488
                    LayoutCachedHeight =7986
                End
                Begin Subform
                    OverlapFlags =85
                    OldBorderStyle =0
                    SpecialEffect =0
                    Left =288
                    Top =8046
                    Width =10080
                    Height =630
                    TabIndex =3
                    Name ="Eingebettet5"
                    SourceObject ="Form.M_Unterformular_Eingabe_Bauunterhaltung"
                    LinkChildFields ="Haushaltsjahr"
                    LinkMasterFields ="Jahr"

                    LayoutCachedLeft =288
                    LayoutCachedTop =8046
                    LayoutCachedWidth =10368
                    LayoutCachedHeight =8676
                End
                Begin Subform
                    OverlapFlags =85
                    OldBorderStyle =0
                    SpecialEffect =0
                    Left =288
                    Top =1753
                    Width =10200
                    Height =2385
                    TabIndex =4
                    Name ="Eingebettet6"
                    SourceObject ="Form.M_Unterformular_Eingabe_Personalkosten"
                    LinkChildFields ="Haushaltsjahr"
                    LinkMasterFields ="Jahr"
                    OnExit ="Personalkosten_übernehmen"

                    LayoutCachedLeft =288
                    LayoutCachedTop =1753
                    LayoutCachedWidth =10488
                    LayoutCachedHeight =4138
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =93
                    Left =3633
                    Top =109
                    Width =1474
                    Height =283
                    TabIndex =5
                    Name ="Gesamtpersonalkosten"
                    ControlSource ="=[Forms]![M_Formular_Eingabe_Verwaltungskosten]![Eingebettet6]![Personalkosten_g"
                        "esamt]"
                    OnChange ="Personalkosten_übernehmen"

                    LayoutCachedLeft =3633
                    LayoutCachedTop =109
                    LayoutCachedWidth =5107
                    LayoutCachedHeight =392
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =93
                    Left =3633
                    Top =449
                    Width =1474
                    Height =283
                    TabIndex =6
                    Name ="Anteil__v"
                    ControlSource ="=[Forms]![M_Formular_Eingabe_Verwaltungskosten]![Eingebettet6]![Anteil_v]"

                    LayoutCachedLeft =3633
                    LayoutCachedTop =449
                    LayoutCachedWidth =5107
                    LayoutCachedHeight =732
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =93
                    Left =3180
                    Top =1079
                    Width =1474
                    Height =283
                    TabIndex =7
                    Name ="Anteil__U"
                    ControlSource ="=[Forms]![M_Formular_Eingabe_Verwaltungskosten]![Eingebettet6]![Anteil_u]"

                    LayoutCachedLeft =3180
                    LayoutCachedTop =1079
                    LayoutCachedWidth =4654
                    LayoutCachedHeight =1362
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =5560
                    Top =279
                    Width =1588
                    Height =283
                    TabIndex =8
                    Name ="Beginn"
                    ControlSource ="=\"01.01.\" & [jahr]"
                    BeforeUpdate ="[Event Procedure]"

                    LayoutCachedLeft =5560
                    LayoutCachedTop =279
                    LayoutCachedWidth =7148
                    LayoutCachedHeight =562
                    Begin
                        Begin Label
                            OverlapFlags =247
                            Left =3859
                            Top =279
                            Width =615
                            Height =240
                            Name ="Bezeichnungsfeld13"
                            Caption ="Text12:"
                            LayoutCachedLeft =3859
                            LayoutCachedTop =279
                            LayoutCachedWidth =4474
                            LayoutCachedHeight =519
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =5560
                    Top =682
                    Width =1588
                    Height =283
                    TabIndex =9
                    Name ="Ende"
                    ControlSource ="=\"31.12.\" & [jahr]"

                    LayoutCachedLeft =5560
                    LayoutCachedTop =682
                    LayoutCachedWidth =7148
                    LayoutCachedHeight =965
                    Begin
                        Begin Label
                            OverlapFlags =247
                            Left =3859
                            Top =682
                            Width =615
                            Height =240
                            Name ="Bezeichnungsfeld15"
                            Caption ="Text12:"
                            LayoutCachedLeft =3859
                            LayoutCachedTop =682
                            LayoutCachedWidth =4474
                            LayoutCachedHeight =922
                        End
                    End
                End
                Begin Label
                    OverlapFlags =255
                    Left =344
                    Top =1073
                    Width =6480
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld2"
                    Caption ="Vorgabe der Werte für die Berechnung der Verwaltungskosten"
                    LayoutCachedLeft =344
                    LayoutCachedTop =1073
                    LayoutCachedWidth =6824
                    LayoutCachedHeight =1358
                End
                Begin TextBox
                    Enabled = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =93
                    Left =6921
                    Top =1073
                    Width =655
                    Height =255
                    FontSize =10
                    FontWeight =700
                    TabIndex =10
                    BorderColor =12632256
                    Name ="Haushaltsjahr"
                    ControlSource ="=[Jahr]"

                    LayoutCachedLeft =6921
                    LayoutCachedTop =1073
                    LayoutCachedWidth =7576
                    LayoutCachedHeight =1328
                End
                Begin Rectangle
                    OverlapFlags =247
                    Left =288
                    Top =1016
                    Width =7415
                    Height =453
                    Name ="Rechteck56"
                    LayoutCachedLeft =288
                    LayoutCachedTop =1016
                    LayoutCachedWidth =7703
                    LayoutCachedHeight =1469
                End
                Begin Subform
                    OverlapFlags =215
                    OldBorderStyle =0
                    SpecialEffect =0
                    Left =10595
                    Top =2207
                    Width =4605
                    Height =5790
                    TabIndex =11
                    Name ="M_Unterformulart_Steigerung_Nebenkosten"
                    SourceObject ="Form.M_Unterformulart_Steigerung_Nebenkosten"
                    LinkChildFields ="Kalkulationsjahr"
                    LinkMasterFields ="Jahr"
                    OnExit ="Personalkosten_übernehmen"

                    LayoutCachedLeft =10595
                    LayoutCachedTop =2207
                    LayoutCachedWidth =15200
                    LayoutCachedHeight =7997
                End
                Begin Label
                    OverlapFlags =93
                    Left =11456
                    Top =1923
                    Width =2777
                    Height =227
                    Name ="Bezeichnungsfeld18"
                    Caption ="Kostensteigerungen Nebenkosten"
                    LayoutCachedLeft =11456
                    LayoutCachedTop =1923
                    LayoutCachedWidth =14233
                    LayoutCachedHeight =2150
                End
                Begin Rectangle
                    OverlapFlags =223
                    Left =10549
                    Top =1810
                    Width =4717
                    Height =6236
                    Name ="Rechteck19"
                    LayoutCachedLeft =10549
                    LayoutCachedTop =1810
                    LayoutCachedWidth =15266
                    LayoutCachedHeight =8046
                End
            End
        End
    End
End
CodeBehindForm
' See "M_Formular_Eingabe_VerwaltungskostenBis2023.cls"
