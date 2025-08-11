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
    DefaultView =0
    ScrollBars =0
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6122
    DatasheetFontHeight =10
    ItemSuffix =33
    Left =13395
    Top =5325
    Right =19755
    Bottom =11910
    RecSrcDt = Begin
        0x95a799cb2ce7e240
    End
    RecordSource ="A_Empfänger"
    Caption ="A_Empfänger"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            BackColor =-2147483633
            ForeColor =-2147483630
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
            SpecialEffect =3
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
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin OptionButton
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin BoundObjectFrame
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ListBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ComboBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
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
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin Section
            Height =6066
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =1785
                    Top =120
                    Width =441
                    Height =255
                    ColumnWidth =1701
                    Name ="ID"
                    ControlSource ="ID"

                    LayoutCachedLeft =1785
                    LayoutCachedTop =120
                    LayoutCachedWidth =2226
                    LayoutCachedHeight =375
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =165
                            Top =120
                            Width =1560
                            Height =255
                            Name ="ID Bezeichnungsfeld"
                            Caption ="Empfänger"
                            EventProcPrefix ="ID_Bezeichnungsfeld"
                            LayoutCachedLeft =165
                            LayoutCachedTop =120
                            LayoutCachedWidth =1725
                            LayoutCachedHeight =375
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =1785
                    Top =857
                    Width =2310
                    Height =255
                    ColumnWidth =1185
                    TabIndex =1
                    Name ="Anrede"
                    ControlSource ="Anrede"

                    LayoutCachedLeft =1785
                    LayoutCachedTop =857
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =1112
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =165
                            Top =857
                            Width =1560
                            Height =255
                            Name ="Anrede Bezeichnungsfeld"
                            Caption ="Anrede"
                            EventProcPrefix ="Anrede_Bezeichnungsfeld"
                            LayoutCachedLeft =165
                            LayoutCachedTop =857
                            LayoutCachedWidth =1725
                            LayoutCachedHeight =1112
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =1785
                    Top =1199
                    Width =2310
                    Height =255
                    ColumnWidth =2310
                    TabIndex =2
                    Name ="Name, Vorname"
                    ControlSource ="Name, Vorname"
                    EventProcPrefix ="Name__Vorname"

                    LayoutCachedLeft =1785
                    LayoutCachedTop =1199
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =1454
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =165
                            Top =1199
                            Width =1560
                            Height =255
                            Name ="Name, Vorname Bezeichnungsfeld"
                            Caption ="Name, Vorname"
                            EventProcPrefix ="Name__Vorname_Bezeichnungsfeld"
                            LayoutCachedLeft =165
                            LayoutCachedTop =1199
                            LayoutCachedWidth =1725
                            LayoutCachedHeight =1454
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =1785
                    Top =1541
                    Width =2310
                    Height =255
                    ColumnWidth =2310
                    TabIndex =3
                    Name ="PLZ, Ort"
                    ControlSource ="PLZ, Ort"
                    EventProcPrefix ="PLZ__Ort"

                    LayoutCachedLeft =1785
                    LayoutCachedTop =1541
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =1796
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =165
                            Top =1541
                            Width =1560
                            Height =255
                            Name ="PLZ, Ort Bezeichnungsfeld"
                            Caption ="PLZ, Ort"
                            EventProcPrefix ="PLZ__Ort_Bezeichnungsfeld"
                            LayoutCachedLeft =165
                            LayoutCachedTop =1541
                            LayoutCachedWidth =1725
                            LayoutCachedHeight =1796
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =1785
                    Top =1883
                    Width =2310
                    Height =255
                    ColumnWidth =2310
                    TabIndex =4
                    Name ="Straße, Nr"
                    ControlSource ="Straße, Nr"
                    EventProcPrefix ="Straße__Nr"

                    LayoutCachedLeft =1785
                    LayoutCachedTop =1883
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =2138
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =165
                            Top =1883
                            Width =1560
                            Height =255
                            Name ="Straße, Nr Bezeichnungsfeld"
                            Caption ="Straße, Nr"
                            EventProcPrefix ="Straße__Nr_Bezeichnungsfeld"
                            LayoutCachedLeft =165
                            LayoutCachedTop =1883
                            LayoutCachedWidth =1725
                            LayoutCachedHeight =2138
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =1785
                    Top =2225
                    Width =2310
                    Height =255
                    ColumnWidth =2310
                    TabIndex =5
                    Name ="Postfach"
                    ControlSource ="Postfach"

                    LayoutCachedLeft =1785
                    LayoutCachedTop =2225
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =2480
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =165
                            Top =2225
                            Width =1560
                            Height =255
                            Name ="Postfach Bezeichnungsfeld"
                            Caption ="Postfach"
                            EventProcPrefix ="Postfach_Bezeichnungsfeld"
                            LayoutCachedLeft =165
                            LayoutCachedTop =2225
                            LayoutCachedWidth =1725
                            LayoutCachedHeight =2480
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =1785
                    Top =2567
                    Width =2310
                    Height =255
                    ColumnWidth =2310
                    TabIndex =6
                    Name ="Bankname"
                    ControlSource ="Bankname"

                    LayoutCachedLeft =1785
                    LayoutCachedTop =2567
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =2822
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =165
                            Top =2567
                            Width =1560
                            Height =255
                            Name ="Bankname Bezeichnungsfeld"
                            Caption ="Bankname"
                            EventProcPrefix ="Bankname_Bezeichnungsfeld"
                            LayoutCachedLeft =165
                            LayoutCachedTop =2567
                            LayoutCachedWidth =1725
                            LayoutCachedHeight =2822
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =1785
                    Top =2909
                    Width =2310
                    Height =255
                    ColumnWidth =900
                    TabIndex =7
                    Name ="TF_BLZ"
                    ControlSource ="BLZ"
                    InputMask ="00000000"

                    LayoutCachedLeft =1785
                    LayoutCachedTop =2909
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =3164
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =165
                            Top =2909
                            Width =1560
                            Height =255
                            Name ="BLZ Bezeichnungsfeld"
                            Caption ="BLZ"
                            EventProcPrefix ="BLZ_Bezeichnungsfeld"
                            LayoutCachedLeft =165
                            LayoutCachedTop =2909
                            LayoutCachedWidth =1725
                            LayoutCachedHeight =3164
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =1785
                    Top =3232
                    Width =2310
                    Height =255
                    ColumnWidth =900
                    TabIndex =8
                    Name ="TF_Konto_Nr"
                    ControlSource ="Konto-Nr"

                    LayoutCachedLeft =1785
                    LayoutCachedTop =3232
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =3487
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =165
                            Top =3232
                            Width =1560
                            Height =255
                            Name ="Konto-Nr Bezeichnungsfeld"
                            Caption ="Konto-Nr"
                            EventProcPrefix ="Konto_Nr_Bezeichnungsfeld"
                            LayoutCachedLeft =165
                            LayoutCachedTop =3232
                            LayoutCachedWidth =1725
                            LayoutCachedHeight =3487
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3757
                    Top =5160
                    Width =456
                    Height =456
                    TabIndex =11
                    Name ="Befehl20"
                    Caption ="Befehl20"
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

                    LayoutCachedLeft =3757
                    LayoutCachedTop =5160
                    LayoutCachedWidth =4213
                    LayoutCachedHeight =5616
                End
                Begin Label
                    OverlapFlags =85
                    Left =225
                    Top =4372
                    Width =1560
                    Height =255
                    Name ="Bezeichnungsfeld21"
                    Caption ="Abbucher"
                    LayoutCachedLeft =225
                    LayoutCachedTop =4372
                    LayoutCachedWidth =1785
                    LayoutCachedHeight =4627
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =2605
                    Top =4435
                    Width =170
                    Height =170
                    TabIndex =12
                    Name ="Abbucher"
                    ControlSource ="Abbucher"
                    DefaultValue ="No"

                    LayoutCachedLeft =2605
                    LayoutCachedTop =4435
                    LayoutCachedWidth =2775
                    LayoutCachedHeight =4605
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =1785
                    Top =517
                    Width =2310
                    Height =255
                    TabIndex =13
                    Name ="PersID"
                    ControlSource ="PersID"

                    LayoutCachedLeft =1785
                    LayoutCachedTop =517
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =772
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =165
                            Top =517
                            Width =1560
                            Height =255
                            Name ="Bezeichnungsfeld25"
                            Caption ="Pers.ID"
                            LayoutCachedLeft =165
                            LayoutCachedTop =517
                            LayoutCachedWidth =1725
                            LayoutCachedHeight =772
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =225
                    Top =4747
                    Width =1560
                    Height =255
                    Name ="Bezeichnungsfeld26"
                    Caption ="Vorsteuerabzug"
                    LayoutCachedLeft =225
                    LayoutCachedTop =4747
                    LayoutCachedWidth =1785
                    LayoutCachedHeight =5002
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =2605
                    Top =4810
                    Width =170
                    Height =170
                    TabIndex =14
                    Name ="Kontrollkästchen27"
                    ControlSource ="Vorsteuerabzug"
                    DefaultValue ="No"

                    LayoutCachedLeft =2605
                    LayoutCachedTop =4810
                    LayoutCachedWidth =2775
                    LayoutCachedHeight =4980
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1785
                    Top =3547
                    Width =2310
                    Height =255
                    ColumnWidth =3735
                    TabIndex =9
                    Name ="TF_IBAN"
                    ControlSource ="IBAN"
                    InputMask =">LL00000000000000000000;;_"

                    LayoutCachedLeft =1785
                    LayoutCachedTop =3547
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =3802
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =165
                            Top =3547
                            Width =1560
                            Height =240
                            Name ="Bezeichnungsfeld28"
                            Caption ="IBAN:"
                            LayoutCachedLeft =165
                            LayoutCachedTop =3547
                            LayoutCachedWidth =1725
                            LayoutCachedHeight =3787
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1785
                    Top =3892
                    Width =2310
                    Height =255
                    ColumnWidth =3150
                    TabIndex =10
                    Name ="TF_BIC"
                    ControlSource ="BIC"
                    InputMask =">LLLLLLAAAAA;;_"

                    LayoutCachedLeft =1785
                    LayoutCachedTop =3892
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =4147
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =165
                            Top =3892
                            Width =1560
                            Height =240
                            Name ="Bezeichnungsfeld29"
                            Caption ="BIC:"
                            LayoutCachedLeft =165
                            LayoutCachedTop =3892
                            LayoutCachedWidth =1725
                            LayoutCachedHeight =4132
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =1087
                    Top =5160
                    Width =456
                    Height =456
                    TabIndex =15
                    Name ="Befehl19"
                    Caption ="Befehl19"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadaddada44dadad1dadaadad44adad11adaddada44dad111dada ,
                        0xadad44ad1111adaddada44d11111dadaadad44ad1111adaddada44dad111dada ,
                        0xadad44adad11adaddada44dadad1dadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadad
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Erster Datensatz"

                    LayoutCachedLeft =1087
                    LayoutCachedTop =5160
                    LayoutCachedWidth =1543
                    LayoutCachedHeight =5616
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =95
                    Left =1543
                    Top =5160
                    Width =456
                    Height =456
                    TabIndex =16
                    Name ="Befehl30"
                    Caption ="Befehl20"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadaddadadadad1dadadaadadadad11adadaddadadad111dadada ,
                        0xadadad1111adadaddadad11111dadadaadadad1111adadaddadadad111dadada ,
                        0xadadadad11adadaddadadadad1dadadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadad
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Vorheriger Datensatz"

                    LayoutCachedLeft =1543
                    LayoutCachedTop =5160
                    LayoutCachedWidth =1999
                    LayoutCachedHeight =5616
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =95
                    Left =1999
                    Top =5160
                    Width =456
                    Height =456
                    TabIndex =17
                    Name ="Befehl21"
                    Caption ="Befehl21"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadaddadada1adadadadaadadad11adadadaddadada111adadada ,
                        0xadadad1111adadaddadada11111adadaadadad1111adadaddadada111adadada ,
                        0xadadad11adadadaddadada1adadadadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadad
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Nächster Datensatz"

                    LayoutCachedLeft =1999
                    LayoutCachedTop =5160
                    LayoutCachedWidth =2455
                    LayoutCachedHeight =5616
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =2911
                    Top =5160
                    Width =456
                    Height =456
                    TabIndex =18
                    Name ="Befehl23"
                    Caption ="Befehl23"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadadd1dadadadadadadaa11dadadada4adadd111dadad4d4d4da ,
                        0xa1111dadad444dadd11111da4444444aa1111dadad444dadd111dadad4d4d4da ,
                        0xa11dadadada4adadd1dadadadadadadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadad
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Datensatz hinzufügen"

                    LayoutCachedLeft =2911
                    LayoutCachedTop =5160
                    LayoutCachedWidth =3367
                    LayoutCachedHeight =5616
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =180
                    Top =5172
                    Width =456
                    Height =456
                    TabIndex =19
                    Name ="Befehl24"
                    Caption ="Befehl24"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadadaadadadadadadadad00000adada00000a ,
                        0x0f000dadad0f000d0f000adada0f000a0000000d0000000d00f000000f00000a ,
                        0x00f000a00f00000d00f000d00f00000aa0000000000000adda0f000a0f000ada ,
                        0xad00000d00000daddad000dad000dadaada0f0ada0f0adaddad000dad000dada ,
                        0xadadadadadadadad
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Datensatz suchen"

                    LayoutCachedLeft =180
                    LayoutCachedTop =5172
                    LayoutCachedWidth =636
                    LayoutCachedHeight =5628
                End
                Begin CommandButton
                    OverlapFlags =87
                    Left =2455
                    Top =5160
                    Width =456
                    Height =456
                    TabIndex =20
                    Name ="Befehl25"
                    Caption ="Befehl25"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadaddadad1dadad44adaadada11dada44daddadad111dad44ada ,
                        0xadada1111da44daddadad11111d44adaadada1111da44daddadad111dad44ada ,
                        0xadada11dada44daddadad1dadad44adaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadad
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Letzter Datensatz"

                    LayoutCachedLeft =2455
                    LayoutCachedTop =5160
                    LayoutCachedWidth =2911
                    LayoutCachedHeight =5616
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4308
                    Top =3547
                    Width =1560
                    Height =284
                    TabIndex =21
                    Name ="BS_IBAN_autom"
                    Caption ="Erstelle IBAN autom."
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =4308
                    LayoutCachedTop =3547
                    LayoutCachedWidth =5868
                    LayoutCachedHeight =3831
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4308
                    Top =3892
                    Width =1560
                    Height =284
                    TabIndex =22
                    Name ="BS_BIC_autom"
                    Caption ="Erstelle BIC autom."
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =4308
                    LayoutCachedTop =3892
                    LayoutCachedWidth =5868
                    LayoutCachedHeight =4176
                End
            End
        End
    End
End
CodeBehindForm
' See "A_Empfänger.cls"
