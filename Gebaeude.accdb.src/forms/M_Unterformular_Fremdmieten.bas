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
    Bottom =9090
    RecSrcDt = Begin
        0xa236e60cd7c7e440
    End
    RecordSource ="SELECT M_Fremdmieten.* FROM M_Fremdmieten WHERE (((M_Fremdmieten.ID_Gebäudeteil)"
        "=[Formulare]![M_Formular_Gebäudedaten]![KF_Gebäudeauswahl]));"
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
                    Caption ="Mietobjekt"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Kundennummer_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =6122
                    Top =56
                    Width =456
                    Height =240
                    Name ="berechnet_von Bezeichnungsfeld"
                    Caption ="von"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="berechnet_von_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =6916
                    Top =56
                    Width =339
                    Height =240
                    Name ="berechnet_bis Bezeichnungsfeld"
                    Caption ="bis"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="berechnet_bis_Bezeichnungsfeld"
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
                    OverlapFlags =93
                    Left =6406
                    Top =170
                    Width =684
                    Height =105
                    ColumnWidth =1701
                    TabIndex =6
                    Name ="ID"
                    ControlSource ="ID"

                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =93
                    Left =453
                    Top =113
                    Width =906
                    Height =105
                    ColumnWidth =900
                    TabIndex =7
                    Name ="ID aus Objekte"
                    ControlSource ="ID aus Objekte"
                    EventProcPrefix ="ID_aus_Objekte"

                End
                Begin TextBox
                    OverlapFlags =87
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
                    Width =1362
                    Height =255
                    ColumnWidth =2310
                    TabIndex =3
                    Name ="Mietobjekt"
                    ControlSource ="Mietobjekt"

                End
                Begin TextBox
                    OverlapFlags =247
                    Left =6122
                    Top =56
                    Width =681
                    Height =255
                    ColumnWidth =825
                    TabIndex =4
                    Name ="berechnet_von"
                    ControlSource ="berechnet_von"
                    Format ="Medium Date"

                End
                Begin TextBox
                    OverlapFlags =247
                    Left =6916
                    Top =56
                    Width =624
                    Height =255
                    ColumnWidth =825
                    TabIndex =5
                    Name ="berechnet_bis"
                    ControlSource ="berechnet_bis"
                    Format ="Medium Date"

                End
                Begin ComboBox
                    OverlapFlags =247
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
                    DefaultValue ="=year(now())"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7650
                    Top =45
                    Width =1560
                    Height =285
                    TabIndex =8
                    Name ="Befehl26"
                    Caption ="Datensatz löschen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =7650
                    LayoutCachedTop =45
                    LayoutCachedWidth =9210
                    LayoutCachedHeight =330
                End
            End
        End
        Begin FormFooter
            Height =453
            BackColor =-2147483633
            Name ="Formularfuß"
        End
    End
End
CodeBehindForm
' See "M_Unterformular_Fremdmieten.cls"
