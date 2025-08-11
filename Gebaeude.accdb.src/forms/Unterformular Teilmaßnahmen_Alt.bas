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
    CloseButton = NotDefault
    DividingLines = NotDefault
    OrderByOn = NotDefault
    ScrollBars =2
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6859
    DatasheetFontHeight =10
    ItemSuffix =15
    Left =13395
    Top =5400
    Right =22035
    Bottom =8625
    PaintPalette = Begin
        0x000301000000000000000000
    End
    OrderBy ="[Teile der Maßnahmen].[ID aus Maßnahmen]"
    RecSrcDt = Begin
        0x4cf8cc9cb0b2e440
    End
    RecordSource ="Teile der Maßnahmen"
    Caption ="geplante Finanzierung"
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
        Begin FormHeader
            Height =330
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =60
                    Top =60
                    Width =1095
                    Height =270
                    Name ="Kalenderjahr Bezeichnungsfeld"
                    Caption ="Teil der Maßn."
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Kalenderjahr_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =2777
                    Top =56
                    Width =1473
                    Height =270
                    Name ="Betrag Bezeichnungsfeld"
                    Caption ="Bearbeiter"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Betrag_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =5130
                    Top =56
                    Width =1275
                    Height =255
                    Name ="Bezeichnungsfeld12"
                    Caption ="vorauss. Kosten"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =340
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =93
                    TextAlign =1
                    Left =60
                    Width =2718
                    Height =270
                    ColumnWidth =2310
                    Name ="Betrag"
                    ControlSource ="Teilmaßname"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =247
                    Left =1360
                    Width =636
                    Height =270
                    ColumnWidth =1170
                    TabIndex =3
                    Name ="ID aus Maßnahmen"
                    ControlSource ="ID aus Maßnahmen"
                    EventProcPrefix ="ID_aus_Maßnahmen"

                End
                Begin ComboBox
                    OverlapFlags =85
                    ListRows =20
                    ListWidth =510
                    Left =2834
                    Width =1757
                    Height =283
                    TabIndex =1
                    Name ="Kombinationsfeld11"
                    ControlSource ="Sachbearbeiter"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.Name FROM Sachbearbeiter;"
                    ColumnWidths ="510"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6349
                    Width =381
                    Height =291
                    TabIndex =4
                    Name ="Befehl13"
                    Caption ="del"
                    OnClick ="[Event Procedure]"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Datensatz löschen"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =4818
                    Width =1488
                    Height =270
                    TabIndex =2
                    Name ="Text14"
                    ControlSource ="voraussichtliche Kosten"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
            End
        End
        Begin FormFooter
            Height =0
            Name ="Formularfuß"
        End
    End
End
CodeBehindForm
' See "Unterformular Teilmaßnahmen_Alt.cls"
