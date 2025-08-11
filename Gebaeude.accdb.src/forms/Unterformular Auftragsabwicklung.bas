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
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    DefaultView =0
    ScrollBars =0
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =15504
    DatasheetFontHeight =10
    ItemSuffix =77
    Left =13395
    Top =5400
    Right =25350
    Bottom =12990
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x321f9a9dcacfe240
    End
    RecordSource ="Maßnahmen"
    Caption ="Maßnahmen"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    PictureSizeMode =1
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            FontName ="Arial"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderWidth =1
            BorderLineStyle =0
            Width =1701
        End
        Begin Image
            SpecialEffect =1
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
            SpecialEffect =1
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =1
            BorderWidth =3
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderColor =12632256
        End
        Begin BoundObjectFrame
            SpecialEffect =1
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ListBox
            SpecialEffect =1
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontName ="Arial"
        End
        Begin ComboBox
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin Subform
            SpecialEffect =1
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =1
            BackStyle =0
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin Section
            CanGrow = NotDefault
            Height =8456
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =93
                    Left =8876
                    Top =850
                    Height =255
                    ColumnWidth =1701
                    Name ="ID"
                    ControlSource ="ID"

                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =93
                            Left =7256
                            Top =850
                            Width =1560
                            Height =270
                            Name ="ID Maßnahme"
                            Caption ="ID"
                            EventProcPrefix ="ID_Maßnahme"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =93
                    Left =13128
                    Top =623
                    Width =1170
                    Height =270
                    ColumnWidth =1170
                    TabIndex =5
                    Name ="ID aus Gebäudeliste"
                    ControlSource ="ID aus Gebäudeliste"
                    EventProcPrefix ="ID_aus_Gebäudeliste"

                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =93
                            Left =11508
                            Top =623
                            Width =1560
                            Height =270
                            Name ="ID aus Gebäudeliste Bezeichnungsfeld"
                            Caption ="ID aus Gebäudeliste"
                            EventProcPrefix ="ID_aus_Gebäudeliste_Bezeichnungsfeld"
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =247
                    Left =3061
                    Top =1020
                    Width =11235
                    Height =270
                    ColumnWidth =2310
                    TabIndex =1
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =226
                            Top =1020
                            Width =1560
                            Height =270
                            Name ="Maßnahme Bezeichnungsfeld"
                            Caption ="Maßnahme"
                            EventProcPrefix ="Maßnahme_Bezeichnungsfeld"
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =3061
                    Top =1377
                    Width =2310
                    Height =270
                    ColumnWidth =2310
                    TabIndex =2
                    Name ="voraussichtliche Kosten gesamt"
                    ControlSource ="voraussichtliche Kosten gesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="voraussichtliche_Kosten_gesamt"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =226
                            Top =1360
                            Width =2385
                            Height =255
                            Name ="voraussichtliche Kosten gesamt Bezeichnungsfeld"
                            Caption ="voraussichtliche Kosten gesamt"
                            EventProcPrefix ="voraussichtliche_Kosten_gesamt_Bezeichnungsfeld"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =3061
                    Top =8107
                    Width =870
                    Height =270
                    ColumnWidth =870
                    TabIndex =4
                    Name ="erledigt im Jahr"
                    ControlSource ="erledigt im Jahr"
                    InputMask ="0000"
                    EventProcPrefix ="erledigt_im_Jahr"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =226
                            Top =8107
                            Width =1560
                            Height =270
                            Name ="erledigt im Jahr Bezeichnungsfeld"
                            Caption ="erledigt im Jahr"
                            EventProcPrefix ="erledigt_im_Jahr_Bezeichnungsfeld"
                        End
                    End
                End
                Begin Subform
                    Enabled = NotDefault
                    OverlapFlags =85
                    SpecialEffect =0
                    Left =7261
                    Top =1761
                    Width =7035
                    Height =2100
                    TabIndex =3
                    Name ="Eingebettet38"
                    SourceObject ="Form.Unterformular Teilmaßnahmen"
                    LinkChildFields ="ID aus Maßnahmen"
                    LinkMasterFields ="ID"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =7431
                            Top =1474
                            Width =4500
                            Height =255
                            FontWeight =600
                            Name ="Bezeichnungsfeld39"
                            Caption ="ggfls. in Gesamtkosten enthaltende Teilmaßnahmen"
                        End
                    End
                End
                Begin Subform
                    Enabled = NotDefault
                    CanShrink = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =247
                    SpecialEffect =0
                    Left =226
                    Top =330
                    Width =14070
                    Height =330
                    TabIndex =6
                    Name ="Unterformular_ Objektdaten"
                    SourceObject ="Form.Unterformular_ Objektdaten"
                    LinkChildFields ="ID"
                    LinkMasterFields ="ID aus Gebäudeliste"
                    EventProcPrefix ="Unterformular__Objektdaten"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =13776
                    Top =7823
                    Width =576
                    Height =576
                    TabIndex =7
                    Name ="Befehl57"
                    Caption ="Befehl57"
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

                End
                Begin Subform
                    OverlapFlags =85
                    SpecialEffect =0
                    Left =226
                    Top =4266
                    Width =14070
                    Height =3390
                    TabIndex =8
                    Name ="Eingebettet73"
                    SourceObject ="Form.Unterformular Mittelabfluss"
                    LinkChildFields ="ID aus Maßnahmen"
                    LinkMasterFields ="ID"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =226
                            Top =3996
                            Width =2700
                            Height =255
                            FontWeight =600
                            Name ="Bezeichnungsfeld74"
                            Caption ="Mittelabfluss lt. MPS"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =85
                    Left =226
                    Top =1814
                    Width =6930
                    Height =2025
                    TabIndex =9
                    Name ="Unterformular tatsächliche Finanzierung"
                    SourceObject ="Form.Unterformular tatsächliche Finanzierung"
                    LinkChildFields ="ID aus Maßnahmen"
                    LinkMasterFields ="ID"
                    EventProcPrefix ="Unterformular_tatsächliche_Finanzierung"

                End
            End
        End
    End
End
CodeBehindForm
' See "Unterformular Auftragsabwicklung.cls"
