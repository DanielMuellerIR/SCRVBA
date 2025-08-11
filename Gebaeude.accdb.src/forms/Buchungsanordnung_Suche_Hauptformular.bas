Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    ControlBox = NotDefault
    ShortcutMenu = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    OrderByOn = NotDefault
    DefaultView =0
    ScrollBars =2
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =14173
    DatasheetFontHeight =10
    ItemSuffix =8
    Left =13395
    Top =5325
    Right =25350
    Bottom =14430
    OrderBy ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
    RecSrcDt = Begin
        0x58b4d75ed7efe240
    End
    RecordSource ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
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
            Height =18028
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =4
                    ListRows =50
                    ListWidth =6804
                    Left =907
                    Top =566
                    Width =3628
                    Height =227
                    Name ="SuchID"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen], "
                        "A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag, M_Kostenstellen.Bezeichnung, M_"
                        "Kostenstellen.Kostenstelle FROM A_Buchungen RIGHT JOIN (A_Buchungen_Aufteilung_a"
                        "uf_Kostenstellen LEFT JOIN M_Kostenstellen ON A_Buchungen_Aufteilung_auf_Kostens"
                        "tellen.[ID aus Kostenstellen] = M_Kostenstellen.Kennummer) ON A_Buchungen.ID = A"
                        "_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen] WHERE (((A_Buchungen."
                        "Haushaltsjahr)=Year(Now()))) ORDER BY A_Buchungen_Aufteilung_auf_Kostenstellen.B"
                        "etrag, A_Buchungen.angelegt;"
                    ColumnWidths ="0;1442;3710;875"

                End
                Begin Subform
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =850
                    Top =1360
                    Width =12930
                    Height =15810
                    TabIndex =1
                    Name ="Buchungsanordnung_Suche"
                    SourceObject ="Form.Buchungsanordnung_Suche"
                    LinkChildFields ="ID"
                    LinkMasterFields ="SuchID"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =12755
                    Top =453
                    Width =576
                    Height =576
                    TabIndex =2
                    Name ="Befehl6"
                    Caption ="Befehl6"
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
' See "Buchungsanordnung_Suche_Hauptformular.cls"
