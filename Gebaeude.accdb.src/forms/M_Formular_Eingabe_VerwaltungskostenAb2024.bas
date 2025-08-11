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
    ItemSuffix =124
    Left =6208
    Top =992
    Right =21845
    Bottom =10501
    RecSrcDt = Begin
        0x85a9406894c8e440
    End
    RecordSource ="SELECT Kalenderjahre.Jahr FROM Kalenderjahre ORDER BY Kalenderjahre.Jahr;"
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
            Height =9524
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =7540
                    Top =340
                    Width =1588
                    Height =283
                    TabIndex =73
                    Name ="Beginn"
                    ControlSource ="=\"01.01.\" & [jahr]"
                    BeforeUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =7540
                    LayoutCachedTop =340
                    LayoutCachedWidth =9128
                    LayoutCachedHeight =623
                End
                Begin ComboBox
                    OverlapFlags =85
                    ListWidth =510
                    Left =285
                    Top =336
                    Width =1974
                    Height =283
                    FontSize =12
                    Name ="Jahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [Kalenderjahre].[Jahr] FROM [Kalenderjahre] WHERE [Kalenderja"
                        "hre].[Jahr] > 2023;"
                    ColumnWidths ="510"
                    ValidationRule =">=2024"
                    ValidationText ="Bitte für die Jahre bis 2023 die alte Funktion nutzen. Diese Funktion steht für "
                        "die Jahre ab 2024 zur Verfügung."
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =285
                    LayoutCachedTop =336
                    LayoutCachedWidth =2259
                    LayoutCachedHeight =619
                End
                Begin Label
                    OverlapFlags =85
                    Left =4419
                    Top =338
                    Width =2329
                    Height =440
                    FontSize =12
                    FontWeight =700
                    ForeColor =255
                    Name ="Bezeichnungsfeld10"
                    Caption ="Jahr auswählen"
                    FontName ="Calibri"
                    LayoutCachedLeft =4419
                    LayoutCachedTop =338
                    LayoutCachedWidth =6748
                    LayoutCachedHeight =778
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =9354
                    Top =340
                    Width =1588
                    Height =283
                    TabIndex =74
                    Name ="Ende"
                    ControlSource ="=\"31.12.\" & [jahr]"
                    FontName ="Calibri"

                    LayoutCachedLeft =9354
                    LayoutCachedTop =340
                    LayoutCachedWidth =10942
                    LayoutCachedHeight =623
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =13380
                    Top =8726
                    Width =1933
                    Height =517
                    FontSize =10
                    TabIndex =72
                    Name ="Befehl0"
                    Caption =" Schließen"
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
                    FontName ="Calibri"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Formular schließen"

                    LayoutCachedLeft =13380
                    LayoutCachedTop =8726
                    LayoutCachedWidth =15313
                    LayoutCachedHeight =9243
                    PictureCaptionArrangement =5
                    Overlaps =1
                End
                Begin Image
                    Left =2603
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

                    LayoutCachedLeft =2603
                    LayoutCachedWidth =4178
                    LayoutCachedHeight =910
                    TabIndex =76
                End
                Begin Label
                    OverlapFlags =85
                    Left =285
                    Top =1020
                    Width =6525
                    Height =285
                    FontSize =12
                    FontWeight =700
                    Name ="Bezeichnungsfeld2"
                    Caption ="Vorgabe der Werte für die Berechnung der Verwaltungskosten"
                    FontName ="Calibri"
                    LayoutCachedLeft =285
                    LayoutCachedTop =1020
                    LayoutCachedWidth =6810
                    LayoutCachedHeight =1305
                    ThemeFontIndex =1
                End
                Begin TextBox
                    Enabled = NotDefault
                    SpecialEffect =0
                    OverlapFlags =85
                    Left =7146
                    Top =1019
                    Width =1075
                    Height =285
                    FontSize =12
                    FontWeight =700
                    TabIndex =75
                    BorderColor =12632256
                    Name ="Haushaltsjahr"
                    ControlSource ="=[Jahr]"
                    FontName ="Calibri"

                    LayoutCachedLeft =7146
                    LayoutCachedTop =1019
                    LayoutCachedWidth =8221
                    LayoutCachedHeight =1304
                End
                Begin Label
                    OverlapFlags =85
                    Left =5673
                    Top =1755
                    Width =1816
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld22"
                    Caption ="Kosten"
                    FontName ="Calibri"
                    LayoutCachedLeft =5673
                    LayoutCachedTop =1755
                    LayoutCachedWidth =7489
                    LayoutCachedHeight =2040
                End
                Begin Label
                    OverlapFlags =85
                    Left =3346
                    Top =1759
                    Width =2214
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld21"
                    Caption ="Bemerkung"
                    FontName ="Calibri"
                    LayoutCachedLeft =3346
                    LayoutCachedTop =1759
                    LayoutCachedWidth =5560
                    LayoutCachedHeight =2044
                End
                Begin Label
                    OverlapFlags =85
                    Left =285
                    Top =2153
                    Width =2784
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld20"
                    Caption ="11.13 Personalkosten Verwaltung"
                    FontName ="Calibri"
                    LayoutCachedLeft =285
                    LayoutCachedTop =2153
                    LayoutCachedWidth =3069
                    LayoutCachedHeight =2438
                End
                Begin Label
                    OverlapFlags =85
                    Left =285
                    Top =2573
                    Width =2784
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld23"
                    Caption ="11.14 Personalkosten Technik"
                    FontName ="Calibri"
                    LayoutCachedLeft =285
                    LayoutCachedTop =2573
                    LayoutCachedWidth =3069
                    LayoutCachedHeight =2858
                End
                Begin Label
                    OverlapFlags =85
                    Left =285
                    Top =2993
                    Width =2784
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld24"
                    Caption ="11.15 Personalkosten Baulager"
                    FontName ="Calibri"
                    LayoutCachedLeft =285
                    LayoutCachedTop =2993
                    LayoutCachedWidth =3069
                    LayoutCachedHeight =3278
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3346
                    Top =2160
                    Width =2214
                    Height =285
                    FontSize =10
                    TabIndex =1
                    Name ="pk_bemerk13"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =3346
                    LayoutCachedTop =2160
                    LayoutCachedWidth =5560
                    LayoutCachedHeight =2445
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3346
                    Top =2580
                    Width =2214
                    Height =285
                    FontSize =10
                    TabIndex =7
                    Name ="pk_bemerk14"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =3346
                    LayoutCachedTop =2580
                    LayoutCachedWidth =5560
                    LayoutCachedHeight =2865
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3345
                    Top =3000
                    Width =2214
                    Height =285
                    FontSize =10
                    TabIndex =13
                    Name ="pk_bemerk15"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =3345
                    LayoutCachedTop =3000
                    LayoutCachedWidth =5559
                    LayoutCachedHeight =3285
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5673
                    Top =2160
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =2
                    Name ="pk_kosten13"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =5673
                    LayoutCachedTop =2160
                    LayoutCachedWidth =7489
                    LayoutCachedHeight =2445
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5673
                    Top =2580
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =8
                    Name ="pk_kosten14"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =5673
                    LayoutCachedTop =2580
                    LayoutCachedWidth =7489
                    LayoutCachedHeight =2865
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5673
                    Top =2995
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =14
                    Name ="pk_kosten15"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =5673
                    LayoutCachedTop =2995
                    LayoutCachedWidth =7489
                    LayoutCachedHeight =3280
                    CurrencySymbol ="€"
                End
                Begin Label
                    OverlapFlags =85
                    Left =7600
                    Top =1748
                    Width =392
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld32"
                    Caption ="%"
                    FontName ="Calibri"
                    LayoutCachedLeft =7600
                    LayoutCachedTop =1748
                    LayoutCachedWidth =7992
                    LayoutCachedHeight =2033
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7600
                    Top =2148
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =3
                    Name ="pk_anteilv13"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =7600
                    LayoutCachedTop =2148
                    LayoutCachedWidth =7992
                    LayoutCachedHeight =2433
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7600
                    Top =2568
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =9
                    Name ="pk_anteilv14"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =7600
                    LayoutCachedTop =2568
                    LayoutCachedWidth =7992
                    LayoutCachedHeight =2853
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7600
                    Top =2988
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =15
                    Name ="pk_anteilv15"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =7600
                    LayoutCachedTop =2988
                    LayoutCachedWidth =7992
                    LayoutCachedHeight =3273
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8110
                    Top =2153
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =4
                    Name ="pk_kostenv13"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =8110
                    LayoutCachedTop =2153
                    LayoutCachedWidth =9926
                    LayoutCachedHeight =2438
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8110
                    Top =2573
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =10
                    Name ="pk_kostenv14"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =8110
                    LayoutCachedTop =2573
                    LayoutCachedWidth =9926
                    LayoutCachedHeight =2858
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8110
                    Top =2988
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =16
                    Name ="pk_kostenv15"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =8110
                    LayoutCachedTop =2988
                    LayoutCachedWidth =9926
                    LayoutCachedHeight =3273
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10091
                    Top =2148
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =5
                    Name ="pk_anteilu13"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =10091
                    LayoutCachedTop =2148
                    LayoutCachedWidth =10483
                    LayoutCachedHeight =2433
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10091
                    Top =2568
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =11
                    Name ="pk_anteilu14"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =10091
                    LayoutCachedTop =2568
                    LayoutCachedWidth =10483
                    LayoutCachedHeight =2853
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10091
                    Top =2988
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =17
                    Name ="pk_anteilu15"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =10091
                    LayoutCachedTop =2988
                    LayoutCachedWidth =10483
                    LayoutCachedHeight =3273
                End
                Begin Label
                    OverlapFlags =85
                    Left =10091
                    Top =1748
                    Width =392
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld42"
                    Caption ="%"
                    FontName ="Calibri"
                    LayoutCachedLeft =10091
                    LayoutCachedTop =1748
                    LayoutCachedWidth =10483
                    LayoutCachedHeight =2033
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10605
                    Top =2148
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =6
                    Name ="pk_kostenu13"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =10605
                    LayoutCachedTop =2148
                    LayoutCachedWidth =12421
                    LayoutCachedHeight =2433
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10605
                    Top =2568
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =12
                    Name ="pk_kostenu14"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =10605
                    LayoutCachedTop =2568
                    LayoutCachedWidth =12421
                    LayoutCachedHeight =2853
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10605
                    Top =2983
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =18
                    Name ="pk_kostenu15"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =10605
                    LayoutCachedTop =2983
                    LayoutCachedWidth =12421
                    LayoutCachedHeight =3268
                    CurrencySymbol ="€"
                End
                Begin Label
                    OverlapFlags =85
                    Left =285
                    Top =3396
                    Width =2784
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld46"
                    Caption ="Personalkosten Gesamt"
                    FontName ="Calibri"
                    LayoutCachedLeft =285
                    LayoutCachedTop =3396
                    LayoutCachedWidth =3069
                    LayoutCachedHeight =3681
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3345
                    Top =3403
                    Width =2214
                    Height =285
                    FontSize =10
                    TabIndex =19
                    Name ="pk_bemerkgesamt"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =3345
                    LayoutCachedTop =3403
                    LayoutCachedWidth =5559
                    LayoutCachedHeight =3688
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5672
                    Top =3403
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =20
                    Name ="pk_kostengesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =5672
                    LayoutCachedTop =3403
                    LayoutCachedWidth =7488
                    LayoutCachedHeight =3688
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7599
                    Top =3396
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =21
                    Name ="pk_anteilvgesamt"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =7599
                    LayoutCachedTop =3396
                    LayoutCachedWidth =7991
                    LayoutCachedHeight =3681
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8109
                    Top =3396
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =22
                    Name ="pk_kostenvgesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =8109
                    LayoutCachedTop =3396
                    LayoutCachedWidth =9925
                    LayoutCachedHeight =3681
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10090
                    Top =3396
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =23
                    Name ="pk_anteilugesamt"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =10090
                    LayoutCachedTop =3396
                    LayoutCachedWidth =10482
                    LayoutCachedHeight =3681
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10604
                    Top =3396
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =24
                    Name ="pk_kostenugesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =10604
                    LayoutCachedTop =3396
                    LayoutCachedWidth =12420
                    LayoutCachedHeight =3681
                    CurrencySymbol ="€"
                End
                Begin Label
                    OverlapFlags =85
                    Left =285
                    Top =1523
                    Width =3008
                    Height =285
                    FontSize =12
                    Name ="Bezeichnungsfeld53"
                    Caption ="Personalkosten"
                    FontName ="Calibri"
                    LayoutCachedLeft =285
                    LayoutCachedTop =1523
                    LayoutCachedWidth =3293
                    LayoutCachedHeight =1808
                End
                Begin Label
                    OverlapFlags =85
                    Left =285
                    Top =3908
                    Width =3008
                    Height =285
                    FontSize =12
                    Name ="Bezeichnungsfeld54"
                    Caption ="Sachkosten"
                    FontName ="Calibri"
                    LayoutCachedLeft =285
                    LayoutCachedTop =3908
                    LayoutCachedWidth =3293
                    LayoutCachedHeight =4193
                End
                Begin Label
                    OverlapFlags =85
                    Left =8110
                    Top =1750
                    Width =1816
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld55"
                    Caption ="Anteil Verwaltung"
                    FontName ="Calibri"
                    LayoutCachedLeft =8110
                    LayoutCachedTop =1750
                    LayoutCachedWidth =9926
                    LayoutCachedHeight =2035
                End
                Begin Label
                    OverlapFlags =85
                    Left =10605
                    Top =1750
                    Width =1816
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld56"
                    Caption ="Anteil Unterhaltung"
                    FontName ="Calibri"
                    LayoutCachedLeft =10605
                    LayoutCachedTop =1750
                    LayoutCachedWidth =12421
                    LayoutCachedHeight =2035
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =12592
                    Top =3398
                    Width =849
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld57"
                    Caption ="Summe = "
                    FontName ="Calibri"
                    LayoutCachedLeft =12592
                    LayoutCachedTop =3398
                    LayoutCachedWidth =13441
                    LayoutCachedHeight =3683
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =13500
                    Top =3398
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =25
                    Name ="pk1_pk2_gesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =13500
                    LayoutCachedTop =3398
                    LayoutCachedWidth =15316
                    LayoutCachedHeight =3683
                    CurrencySymbol ="€"
                End
                Begin Label
                    OverlapFlags =85
                    Left =5673
                    Top =4140
                    Width =1816
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld59"
                    Caption ="Kosten"
                    FontName ="Calibri"
                    LayoutCachedLeft =5673
                    LayoutCachedTop =4140
                    LayoutCachedWidth =7489
                    LayoutCachedHeight =4425
                End
                Begin Label
                    OverlapFlags =85
                    Left =3346
                    Top =4144
                    Width =2214
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld60"
                    Caption ="Bemerkung"
                    FontName ="Calibri"
                    LayoutCachedLeft =3346
                    LayoutCachedTop =4144
                    LayoutCachedWidth =5560
                    LayoutCachedHeight =4429
                End
                Begin Label
                    OverlapFlags =85
                    Left =285
                    Top =4538
                    Width =2784
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld61"
                    Caption ="11.14 Fahrzeuge Miete 5422050"
                    FontName ="Calibri"
                    LayoutCachedLeft =285
                    LayoutCachedTop =4538
                    LayoutCachedWidth =3069
                    LayoutCachedHeight =4823
                End
                Begin Label
                    OverlapFlags =93
                    Left =285
                    Top =4958
                    Width =3061
                    Height =248
                    FontSize =10
                    Name ="Bezeichnungsfeld62"
                    Caption ="11.14 Fahrzeuge-Aufwand 5215000"
                    FontName ="Calibri"
                    LayoutCachedLeft =285
                    LayoutCachedTop =4958
                    LayoutCachedWidth =3346
                    LayoutCachedHeight =5206
                End
                Begin Label
                    OverlapFlags =85
                    Left =285
                    Top =5378
                    Width =2784
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld63"
                    Caption ="11.13 Bes. Aufw-f-Bed: 5412150"
                    FontName ="Calibri"
                    LayoutCachedLeft =285
                    LayoutCachedTop =5378
                    LayoutCachedWidth =3069
                    LayoutCachedHeight =5663
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3346
                    Top =4545
                    Width =2214
                    Height =285
                    FontSize =10
                    TabIndex =26
                    Name ="sk_bemerk1"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =3346
                    LayoutCachedTop =4545
                    LayoutCachedWidth =5560
                    LayoutCachedHeight =4830
                End
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =3346
                    Top =4965
                    Width =2214
                    Height =285
                    FontSize =10
                    TabIndex =32
                    Name ="sk_bemerk2"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =3346
                    LayoutCachedTop =4965
                    LayoutCachedWidth =5560
                    LayoutCachedHeight =5250
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3345
                    Top =5385
                    Width =2214
                    Height =285
                    FontSize =10
                    TabIndex =38
                    Name ="sk_bemerk3"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =3345
                    LayoutCachedTop =5385
                    LayoutCachedWidth =5559
                    LayoutCachedHeight =5670
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5673
                    Top =4545
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =27
                    Name ="sk_kosten1"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =5673
                    LayoutCachedTop =4545
                    LayoutCachedWidth =7489
                    LayoutCachedHeight =4830
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5673
                    Top =4965
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =33
                    Name ="sk_kosten2"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =5673
                    LayoutCachedTop =4965
                    LayoutCachedWidth =7489
                    LayoutCachedHeight =5250
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5673
                    Top =5380
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =39
                    Name ="sk_kosten3"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =5673
                    LayoutCachedTop =5380
                    LayoutCachedWidth =7489
                    LayoutCachedHeight =5665
                    CurrencySymbol ="€"
                End
                Begin Label
                    OverlapFlags =85
                    Left =7600
                    Top =4133
                    Width =392
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld70"
                    Caption ="%"
                    FontName ="Calibri"
                    LayoutCachedLeft =7600
                    LayoutCachedTop =4133
                    LayoutCachedWidth =7992
                    LayoutCachedHeight =4418
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7600
                    Top =4533
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =28
                    Name ="sk_anteilv1"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =7600
                    LayoutCachedTop =4533
                    LayoutCachedWidth =7992
                    LayoutCachedHeight =4818
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7600
                    Top =4953
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =34
                    Name ="sk_anteilv2"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =7600
                    LayoutCachedTop =4953
                    LayoutCachedWidth =7992
                    LayoutCachedHeight =5238
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7600
                    Top =5373
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =40
                    Name ="sk_anteilv3"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =7600
                    LayoutCachedTop =5373
                    LayoutCachedWidth =7992
                    LayoutCachedHeight =5658
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8110
                    Top =4538
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =29
                    Name ="sk_kostenv1"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =8110
                    LayoutCachedTop =4538
                    LayoutCachedWidth =9926
                    LayoutCachedHeight =4823
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8110
                    Top =4958
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =35
                    Name ="sk_kostenv2"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =8110
                    LayoutCachedTop =4958
                    LayoutCachedWidth =9926
                    LayoutCachedHeight =5243
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8110
                    Top =5373
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =41
                    Name ="sk_kostenv3"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =8110
                    LayoutCachedTop =5373
                    LayoutCachedWidth =9926
                    LayoutCachedHeight =5658
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10091
                    Top =4533
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =30
                    Name ="sk_anteilu1"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =10091
                    LayoutCachedTop =4533
                    LayoutCachedWidth =10483
                    LayoutCachedHeight =4818
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10091
                    Top =4953
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =36
                    Name ="sk_anteilu2"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =10091
                    LayoutCachedTop =4953
                    LayoutCachedWidth =10483
                    LayoutCachedHeight =5238
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10091
                    Top =5373
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =42
                    Name ="sk_anteilu3"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =10091
                    LayoutCachedTop =5373
                    LayoutCachedWidth =10483
                    LayoutCachedHeight =5658
                End
                Begin Label
                    OverlapFlags =85
                    Left =10091
                    Top =4133
                    Width =392
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld80"
                    Caption ="%"
                    FontName ="Calibri"
                    LayoutCachedLeft =10091
                    LayoutCachedTop =4133
                    LayoutCachedWidth =10483
                    LayoutCachedHeight =4418
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10605
                    Top =4533
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =31
                    Name ="sk_kostenu1"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =10605
                    LayoutCachedTop =4533
                    LayoutCachedWidth =12421
                    LayoutCachedHeight =4818
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10605
                    Top =4953
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =37
                    Name ="sk_kostenu2"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =10605
                    LayoutCachedTop =4953
                    LayoutCachedWidth =12421
                    LayoutCachedHeight =5238
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10605
                    Top =5368
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =43
                    Name ="sk_kostenu3"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =10605
                    LayoutCachedTop =5368
                    LayoutCachedWidth =12421
                    LayoutCachedHeight =5653
                    CurrencySymbol ="€"
                End
                Begin Label
                    OverlapFlags =85
                    Left =285
                    Top =7028
                    Width =2784
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld84"
                    Caption ="Sachkosten Gesamt"
                    FontName ="Calibri"
                    LayoutCachedLeft =285
                    LayoutCachedTop =7028
                    LayoutCachedWidth =3069
                    LayoutCachedHeight =7313
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8109
                    Top =7028
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =67
                    Name ="sk_kostenvgesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =8109
                    LayoutCachedTop =7028
                    LayoutCachedWidth =9925
                    LayoutCachedHeight =7313
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10604
                    Top =7028
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =69
                    Name ="sk_kostenugesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =10604
                    LayoutCachedTop =7028
                    LayoutCachedWidth =12420
                    LayoutCachedHeight =7313
                    CurrencySymbol ="€"
                End
                Begin Label
                    OverlapFlags =85
                    Left =8110
                    Top =4135
                    Width =1816
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld91"
                    Caption ="Anteil Verwaltung"
                    FontName ="Calibri"
                    LayoutCachedLeft =8110
                    LayoutCachedTop =4135
                    LayoutCachedWidth =9926
                    LayoutCachedHeight =4420
                End
                Begin Label
                    OverlapFlags =85
                    Left =10605
                    Top =4135
                    Width =1816
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld92"
                    Caption ="Anteil Unterhaltung"
                    FontName ="Calibri"
                    LayoutCachedLeft =10605
                    LayoutCachedTop =4135
                    LayoutCachedWidth =12421
                    LayoutCachedHeight =4420
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =12592
                    Top =7030
                    Width =849
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld93"
                    Caption ="Summe = "
                    FontName ="Calibri"
                    LayoutCachedLeft =12592
                    LayoutCachedTop =7030
                    LayoutCachedWidth =13441
                    LayoutCachedHeight =7315
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =13500
                    Top =7030
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =70
                    Name ="sk1_sk2_gesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =13500
                    LayoutCachedTop =7030
                    LayoutCachedWidth =15316
                    LayoutCachedHeight =7315
                    CurrencySymbol ="€"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =8962
                    Top =7479
                    Width =4479
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld95"
                    Caption ="Gesamtsumme Personal und Sachkosten = "
                    FontName ="Calibri"
                    LayoutCachedLeft =8962
                    LayoutCachedTop =7479
                    LayoutCachedWidth =13441
                    LayoutCachedHeight =7764
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =13497
                    Top =7479
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =71
                    Name ="pk_sk_gesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =13497
                    LayoutCachedTop =7479
                    LayoutCachedWidth =15313
                    LayoutCachedHeight =7764
                    CurrencySymbol ="€"
                End
                Begin Label
                    OverlapFlags =85
                    Left =285
                    Top =5788
                    Width =2784
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld97"
                    Caption ="11.14. Bes.-Aufw.f.-Bed. 5412150"
                    FontName ="Calibri"
                    LayoutCachedLeft =285
                    LayoutCachedTop =5788
                    LayoutCachedWidth =3069
                    LayoutCachedHeight =6073
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3346
                    Top =5795
                    Width =2214
                    Height =285
                    FontSize =10
                    TabIndex =44
                    Name ="sk_bemerk4"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =3346
                    LayoutCachedTop =5795
                    LayoutCachedWidth =5560
                    LayoutCachedHeight =6080
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3346
                    Top =6215
                    Width =2214
                    Height =285
                    FontSize =10
                    TabIndex =51
                    Name ="sk_bemerk5"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =3346
                    LayoutCachedTop =6215
                    LayoutCachedWidth =5560
                    LayoutCachedHeight =6500
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3345
                    Top =6635
                    Width =2214
                    Height =285
                    FontSize =10
                    TabIndex =58
                    Name ="sk_bemerk6"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =3345
                    LayoutCachedTop =6635
                    LayoutCachedWidth =5559
                    LayoutCachedHeight =6920
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5673
                    Top =5795
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =45
                    Name ="sk_kosten4"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =5673
                    LayoutCachedTop =5795
                    LayoutCachedWidth =7489
                    LayoutCachedHeight =6080
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5673
                    Top =6215
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =52
                    Name ="sk_kosten5"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =5673
                    LayoutCachedTop =6215
                    LayoutCachedWidth =7489
                    LayoutCachedHeight =6500
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5673
                    Top =6630
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =59
                    Name ="sk_kosten6"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =5673
                    LayoutCachedTop =6630
                    LayoutCachedWidth =7489
                    LayoutCachedHeight =6915
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7600
                    Top =5783
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =46
                    Name ="sk_anteilv4"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =7600
                    LayoutCachedTop =5783
                    LayoutCachedWidth =7992
                    LayoutCachedHeight =6068
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7600
                    Top =6203
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =53
                    Name ="sk_anteilv5"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =7600
                    LayoutCachedTop =6203
                    LayoutCachedWidth =7992
                    LayoutCachedHeight =6488
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7600
                    Top =6623
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =60
                    Name ="sk_anteilv6"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =7600
                    LayoutCachedTop =6623
                    LayoutCachedWidth =7992
                    LayoutCachedHeight =6908
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8110
                    Top =5788
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =47
                    Name ="sk_kostenv4"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =8110
                    LayoutCachedTop =5788
                    LayoutCachedWidth =9926
                    LayoutCachedHeight =6073
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8110
                    Top =6208
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =54
                    Name ="sk_kostenv5"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =8110
                    LayoutCachedTop =6208
                    LayoutCachedWidth =9926
                    LayoutCachedHeight =6493
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8110
                    Top =6623
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =61
                    Name ="sk_kostenv6"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =8110
                    LayoutCachedTop =6623
                    LayoutCachedWidth =9926
                    LayoutCachedHeight =6908
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10091
                    Top =5783
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =48
                    Name ="sk_anteilu4"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =10091
                    LayoutCachedTop =5783
                    LayoutCachedWidth =10483
                    LayoutCachedHeight =6068
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10091
                    Top =6203
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =55
                    Name ="sk_anteilu5"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =10091
                    LayoutCachedTop =6203
                    LayoutCachedWidth =10483
                    LayoutCachedHeight =6488
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10091
                    Top =6623
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =62
                    Name ="sk_anteilu6"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =10091
                    LayoutCachedTop =6623
                    LayoutCachedWidth =10483
                    LayoutCachedHeight =6908
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10605
                    Top =5783
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =49
                    Name ="sk_kostenu4"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =10605
                    LayoutCachedTop =5783
                    LayoutCachedWidth =12421
                    LayoutCachedHeight =6068
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10605
                    Top =6203
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =56
                    Name ="sk_kostenu5"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =10605
                    LayoutCachedTop =6203
                    LayoutCachedWidth =12421
                    LayoutCachedHeight =6488
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10605
                    Top =6618
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =63
                    Name ="sk_kostenu6"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =10605
                    LayoutCachedTop =6618
                    LayoutCachedWidth =12421
                    LayoutCachedHeight =6903
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =285
                    Top =6208
                    Width =2784
                    Height =285
                    FontSize =10
                    TabIndex =50
                    Name ="sk_frei5"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =285
                    LayoutCachedTop =6208
                    LayoutCachedWidth =3069
                    LayoutCachedHeight =6493
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =285
                    Top =6628
                    Width =2784
                    Height =285
                    FontSize =10
                    TabIndex =57
                    Name ="sk_frei6"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =285
                    LayoutCachedTop =6628
                    LayoutCachedWidth =3069
                    LayoutCachedHeight =6913
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3345
                    Top =7028
                    Width =2214
                    Height =285
                    FontSize =10
                    TabIndex =64
                    Name ="sk_bemerkgesamt"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =3345
                    LayoutCachedTop =7028
                    LayoutCachedWidth =5559
                    LayoutCachedHeight =7313
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5673
                    Top =7028
                    Width =1816
                    Height =285
                    FontSize =10
                    TabIndex =65
                    Name ="sk_kostengesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Calibri"

                    LayoutCachedLeft =5673
                    LayoutCachedTop =7028
                    LayoutCachedWidth =7489
                    LayoutCachedHeight =7313
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7600
                    Top =7028
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =66
                    Name ="sk_anteilvgesamt"
                    FontName ="Calibri"

                    LayoutCachedLeft =7600
                    LayoutCachedTop =7028
                    LayoutCachedWidth =7992
                    LayoutCachedHeight =7313
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10091
                    Top =7028
                    Width =392
                    Height =285
                    FontSize =10
                    TabIndex =68
                    Name ="sk_anteilugesamt"
                    FontName ="Calibri"

                    LayoutCachedLeft =10091
                    LayoutCachedTop =7028
                    LayoutCachedWidth =10483
                    LayoutCachedHeight =7313
                End
            End
        End
    End
End
CodeBehindForm
' See "M_Formular_Eingabe_VerwaltungskostenAb2024.cls"
