Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =13068
    DatasheetFontHeight =10
    ItemSuffix =27
    Left =13395
    Top =5400
    Right =25350
    Bottom =8640
    RecSrcDt = Begin
        0x4b5f303fd7c7e440
    End
    RecordSource ="SELECT M_Sonderleistungen.* FROM M_Sonderleistungen WHERE (((M_Sonderleistungen."
        "ID_Gebäudeteil)=[Formulare]![M_Formular_Gebäudedaten]![KF_Gebäudeauswahl])) ORDE"
        "R BY M_Sonderleistungen.Haushaltsjahr;"
    Caption ="M_Nebenkosten"
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
            Height =354
            BackColor =-2147483633
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =113
                    Top =56
                    Width =1035
                    Height =240
                    Name ="Haushaltsjahr Bezeichnungsfeld"
                    Caption ="Haushaltsjahr"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Haushaltsjahr_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =1627
                    Top =57
                    Width =912
                    Height =240
                    Name ="Betrag Bezeichnungsfeld"
                    Caption ="Betrag"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Betrag_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =2721
                    Top =57
                    Width =1737
                    Height =240
                    Name ="Rechnungsaussteller Bezeichnungsfeld"
                    Caption ="Rechnungsaussteller"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Rechnungsaussteller_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =4652
                    Top =57
                    Width =1362
                    Height =240
                    Name ="Kundennummer Bezeichnungsfeld"
                    Caption ="erledigte Arbeiten"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Kundennummer_Bezeichnungsfeld"
                End
            End
        End
        Begin Section
            Height =341
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =9354
                    Top =56
                    Width =684
                    Height =105
                    ColumnWidth =1701
                    TabIndex =4
                    Name ="ID"
                    ControlSource ="ID"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1360
                    Top =56
                    Width =1122
                    Height =255
                    ColumnWidth =2310
                    TabIndex =1
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2721
                    Top =56
                    Width =1737
                    Height =255
                    ColumnWidth =2310
                    TabIndex =2
                    Name ="Rechnungsaussteller"
                    ControlSource ="Rechnungsaussteller"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4648
                    Top =56
                    Width =2232
                    Height =255
                    ColumnWidth =2310
                    TabIndex =3
                    Name ="erledigte Arbeiten"
                    ControlSource ="erledigte Arbeiten"
                    EventProcPrefix ="erledigte_Arbeiten"

                End
                Begin ComboBox
                    OverlapFlags =85
                    ListWidth =510
                    Left =113
                    Top =56
                    Width =1077
                    Height =227
                    Name ="Haushaltsjahr"
                    ControlSource ="Haushaltsjahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [Kalenderjahre].[Jahr] FROM [Kalenderjahre];"
                    ColumnWidths ="510"
                    DefaultValue ="=Year(Now())+1"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7710
                    Top =56
                    Width =1560
                    Height =285
                    TabIndex =5
                    Name ="Befehl26"
                    Caption ="Datensatz löschen"
                    OnClick ="[Event Procedure]"

                End
            End
        End
        Begin FormFooter
            Height =0
            BackColor =-2147483633
            Name ="Formularfuß"
        End
    End
End
CodeBehindForm
' See "M_Unterformular_Sonderleistungen.cls"
