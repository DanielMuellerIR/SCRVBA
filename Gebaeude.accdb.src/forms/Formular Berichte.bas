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
    BorderStyle =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =14070
    DatasheetFontHeight =10
    ItemSuffix =39
    Left =13395
    Top =5445
    Right =29250
    Bottom =17355
    RecSrcDt = Begin
        0xde1374820ccae440
    End
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
            Height =9864
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =345
                    Top =120
                    Width =2850
                    Height =345
                    FontSize =12
                    FontWeight =700
                    ForeColor =255
                    Name ="Bezeichnungsfeld10"
                    Caption ="Maßnahme auswählen:"
                    LayoutCachedLeft =345
                    LayoutCachedTop =120
                    LayoutCachedWidth =3195
                    LayoutCachedHeight =465
                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =80
                    ListWidth =9072
                    Left =345
                    Top =585
                    Width =12686
                    Height =255
                    FontWeight =500
                    BackColor =65408
                    Name ="ID aus Maßnahme"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Maßnahmen.ID, [Bezeichnung] & \": \" & [Gebäudeteil] & \" -> "
                        "\" & [Maßnahme] AS Objekt FROM tbl_100_10_Liegenschaften INNER JOIN (tbl_100_20_"
                        "Gebäudeteile INNER JOIN Maßnahmen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Ma"
                        "ßnahmen.ID_Gebäudeteil) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Geb"
                        "äudeteile.ID_Gebäude ORDER BY [Bezeichnung] & \": \" & [Gebäudeteil] & \" -> \" "
                        "& [Maßnahme];"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    EventProcPrefix ="ID_aus_Maßnahme"

                    LayoutCachedLeft =345
                    LayoutCachedTop =585
                    LayoutCachedWidth =13031
                    LayoutCachedHeight =840
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =12472
                    Top =9014
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

                End
                Begin Subform
                    OverlapFlags =85
                    OldBorderStyle =0
                    SpecialEffect =0
                    Left =340
                    Top =5828
                    Width =12756
                    Height =2908
                    TabIndex =2
                    Name ="Formular Berichte Unterformular"
                    SourceObject ="Form.Formular Berichte Unterformular"
                    EventProcPrefix ="Formular_Berichte_Unterformular"

                End
                Begin Subform
                    Enabled = NotDefault
                    CanShrink = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    SpecialEffect =0
                    Left =345
                    Top =975
                    Width =12720
                    Height =4800
                    TabIndex =3
                    Name ="UB_Finanzierung"
                    SourceObject ="Form.Formular Berichte Unterformular Finanzierung"

                    LayoutCachedLeft =345
                    LayoutCachedTop =975
                    LayoutCachedWidth =13065
                    LayoutCachedHeight =5775
                End
            End
        End
    End
End
CodeBehindForm
' See "Formular Berichte.cls"
