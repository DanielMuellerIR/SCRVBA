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
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    DataEntry = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =11168
    DatasheetFontHeight =10
    ItemSuffix =19
    Left =13395
    Top =14475
    Right =26355
    Bottom =26490
    RecSrcDt = Begin
        0x4158c7f651e5e240
    End
    RecordSource ="NHK-Typen"
    Caption ="NHK-Typen"
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
        Begin FormHeader
            Height =396
            BackColor =-2147483633
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =566
                    Top =56
                    Width =675
                    Height =240
                    Name ="Typ-Nr Bezeichnungsfeld"
                    Caption ="Typ-Nr"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Typ_Nr_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =1417
                    Top =57
                    Width =4080
                    Height =240
                    Name ="Typ Bezeichnungsfeld"
                    Caption ="Typ"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Typ_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =5782
                    Top =56
                    Width =1290
                    Height =240
                    Name ="Baunebenkosten Bezeichnungsfeld"
                    Caption ="Baunebenkosten"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Baunebenkosten_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =7143
                    Top =56
                    Width =1470
                    Height =240
                    Name ="Nutzungsdauer von Bezeichnungsfeld"
                    Caption ="Nutzungsdauer von"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Nutzungsdauer_von_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =8697
                    Top =57
                    Width =1395
                    Height =240
                    Name ="Nutzungsdauer bis Bezeichnungsfeld"
                    Caption ="Nutzungsdauer bis"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Nutzungsdauer_bis_Bezeichnungsfeld"
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =8844
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    Left =1417
                    Top =56
                    Width =4080
                    Height =255
                    ColumnWidth =3000
                    TabIndex =1
                    Name ="Typ"
                    ControlSource ="Typ"

                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =6179
                    Top =56
                    Width =684
                    Height =255
                    ColumnWidth =900
                    TabIndex =2
                    Name ="Baunebenkosten"
                    ControlSource ="Baunebenkosten"
                    Format ="Fixed"
                    InputMask ="00"

                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =7653
                    Top =56
                    Width =741
                    Height =255
                    ColumnWidth =900
                    TabIndex =3
                    Name ="Nutzungsdauer von"
                    ControlSource ="Nutzungsdauer von"
                    Format ="Fixed"
                    EventProcPrefix ="Nutzungsdauer_von"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =283
                    Top =56
                    Width =684
                    Height =255
                    Name ="Typ-Nr"
                    ControlSource ="Typ-Nr"
                    EventProcPrefix ="Typ_Nr"

                End
                Begin Subform
                    OverlapFlags =85
                    OldBorderStyle =0
                    SpecialEffect =0
                    Left =113
                    Top =453
                    Width =10350
                    Height =2670
                    TabIndex =5
                    Name ="B_Unterformular_NHK_Typ_Ausstattung_e"
                    SourceObject ="Form.B_Unterformular_NHK_Typ_Ausstattung_e"
                    LinkChildFields ="ID aus NHK-Typen"
                    LinkMasterFields ="Kennummer"

                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =9184
                    Top =56
                    Width =681
                    Height =255
                    ColumnWidth =900
                    TabIndex =4
                    Name ="Nutzungsdauer bis"
                    ControlSource ="Nutzungsdauer bis"
                    Format ="Fixed"
                    EventProcPrefix ="Nutzungsdauer_bis"

                End
                Begin Subform
                    OverlapFlags =85
                    OldBorderStyle =0
                    SpecialEffect =0
                    Left =113
                    Top =3174
                    Width =10350
                    Height =2670
                    TabIndex =6
                    Name ="B_Unterformular_NHK_Typ_Ausstattung_m"
                    SourceObject ="Form.B_Unterformular_NHK_Typ_Ausstattung_m"
                    LinkChildFields ="ID aus NHK-Typen"
                    LinkMasterFields ="Kennummer"

                End
                Begin Subform
                    OverlapFlags =85
                    OldBorderStyle =0
                    SpecialEffect =0
                    Left =113
                    Top =5896
                    Width =10350
                    Height =2505
                    TabIndex =7
                    Name ="B_Unterformular_NHK_Typ_Ausstattung_g"
                    SourceObject ="Form.B_Unterformular_NHK_Typ_Ausstattung_g"
                    LinkChildFields ="ID aus NHK-Typen"
                    LinkMasterFields ="Kennummer"

                End
                Begin TextBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =10091
                    Top =56
                    Width =750
                    Height =255
                    ColumnWidth =1701
                    TabIndex =8
                    Name ="Kennummer"
                    ControlSource ="Kennummer"

                End
            End
        End
        Begin FormFooter
            Height =1360
            BackColor =-2147483633
            Name ="Formularfuß"
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =9127
                    Top =396
                    Width =576
                    Height =576
                    Name ="Befehl12"
                    Caption ="Befehl12"
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
            End
        End
    End
End
CodeBehindForm
' See "B_Formular_neuer_NHK-Typ.cls"
