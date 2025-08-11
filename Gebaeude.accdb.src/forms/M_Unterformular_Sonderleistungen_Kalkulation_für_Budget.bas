Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =12755
    DatasheetFontHeight =10
    ItemSuffix =27
    Left =13395
    Top =5400
    Right =25350
    Bottom =8520
    RecSrcDt = Begin
        0x480d313fd7c7e440
    End
    RecordSource ="SELECT M_Sonderleistungen_Kalkulation_für_Budget.* FROM M_Sonderleistungen_Kalku"
        "lation_für_Budget WHERE (((M_Sonderleistungen_Kalkulation_für_Budget.ID_Gebäudet"
        "eil)=[Formulare]![M_Formular_Gebäudedaten]![KF_Gebäudeauswahl])) ORDER BY M_Sond"
        "erleistungen_Kalkulation_für_Budget.Haushaltsjahr_Kalkulation;"
    Caption ="M_Nebenkosten_Kalkulation_für_Budget"
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
            Height =300
            BackColor =-2147483633
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Top =56
                    Width =1428
                    Height =240
                    Name ="Haushaltsjahr_Kalkulation Bezeichnungsfeld"
                    Caption ="Kalkulationsjahr"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Haushaltsjahr_Kalkulation_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =1757
                    Top =56
                    Width =1140
                    Height =240
                    Name ="ID aus Verzeichnis Nebenkosten Bezeichnungsfeld"
                    Caption ="Kosten"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="ID_aus_Verzeichnis_Nebenkosten_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =3458
                    Top =56
                    Width =585
                    Height =240
                    Name ="Betrag_bezahlt Bezeichnungsfeld"
                    Caption ="bezahlt"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Betrag_bezahlt_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =7766
                    Top =56
                    Width =1083
                    Height =240
                    Name ="Rechnungsaussteller Bezeichnungsfeld"
                    Caption ="Firma"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Rechnungsaussteller_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =5385
                    Top =56
                    Width =1065
                    Height =240
                    Name ="Betrag_für_Monate Bezeichnungsfeld"
                    Caption ="für ...  Monate"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Betrag_für_Monate_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4422
                    Top =56
                    Width =750
                    Height =240
                    Name ="gezahlt_in Bezeichnungsfeld"
                    Caption ="bezahlt in"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="gezahlt_in_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =6633
                    Top =56
                    Width =960
                    Height =240
                    Name ="Bezeichnungsfeld20"
                    Caption ="Steigerung %"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =9300
                    Top =60
                    Width =1140
                    Height =240
                    Name ="Bezeichnungsfeld23"
                    Caption ="Hochrechnung"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =285
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =0
                    OverlapFlags =93
                    Left =1417
                    Top =113
                    Width =798
                    Height =60
                    ColumnWidth =1701
                    TabIndex =9
                    BorderColor =10921638
                    Name ="ID"
                    ControlSource ="ID"

                    LayoutCachedLeft =1417
                    LayoutCachedTop =113
                    LayoutCachedWidth =2215
                    LayoutCachedHeight =173
                    BorderShade =65.0
                End
                Begin TextBox
                    SpecialEffect =0
                    OverlapFlags =85
                    Left =3286
                    Width =1083
                    Height =255
                    ColumnWidth =2310
                    TabIndex =2
                    BorderColor =10921638
                    Name ="Betrag_bezahlt"
                    ControlSource ="Betrag_bezahlt"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =3286
                    LayoutCachedWidth =4369
                    LayoutCachedHeight =255
                    BorderShade =65.0
                End
                Begin TextBox
                    SpecialEffect =0
                    OverlapFlags =85
                    Left =7766
                    Width =1458
                    Height =255
                    ColumnWidth =2310
                    TabIndex =6
                    BorderColor =10921638
                    Name ="Rechnungsaussteller"
                    ControlSource ="Rechnungsaussteller"

                    LayoutCachedLeft =7766
                    LayoutCachedWidth =9224
                    LayoutCachedHeight =255
                    BorderShade =65.0
                End
                Begin TextBox
                    SpecialEffect =0
                    OverlapFlags =85
                    Left =5499
                    Width =684
                    Height =255
                    ColumnWidth =465
                    TabIndex =4
                    BorderColor =10921638
                    Name ="Betrag_für_Monate"
                    ControlSource ="Betrag_für_Monate"

                    LayoutCachedLeft =5499
                    LayoutCachedWidth =6183
                    LayoutCachedHeight =255
                    BorderShade =65.0
                End
                Begin TextBox
                    DecimalPlaces =0
                    SpecialEffect =0
                    OverlapFlags =85
                    Left =4422
                    Width =948
                    Height =255
                    ColumnWidth =900
                    TabIndex =3
                    BorderColor =10921638
                    Name ="gezahlt_in"
                    ControlSource ="gezahlt_in"

                    LayoutCachedLeft =4422
                    LayoutCachedWidth =5370
                    LayoutCachedHeight =255
                    BorderShade =65.0
                End
                Begin TextBox
                    DecimalPlaces =0
                    SpecialEffect =0
                    OverlapFlags =85
                    Width =1083
                    Height =255
                    BorderColor =10921638
                    Name ="Haushaltsjahr_Kalkulation"
                    ControlSource ="Haushaltsjahr_Kalkulation"
                    Format ="General Number"

                    LayoutCachedWidth =1083
                    LayoutCachedHeight =255
                    BorderShade =65.0
                End
                Begin TextBox
                    SpecialEffect =0
                    OverlapFlags =85
                    Left =6859
                    Width =684
                    Height =255
                    TabIndex =5
                    BorderColor =10921638
                    Name ="Steigerung"
                    ControlSource ="Steigerung"
                    Format ="General Number"

                    LayoutCachedLeft =6859
                    LayoutCachedWidth =7543
                    LayoutCachedHeight =255
                    BorderShade =65.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OverlapFlags =85
                    Left =9297
                    Width =1458
                    Height =255
                    TabIndex =7
                    BorderColor =10921638
                    Name ="Hochrechnung"
                    ControlSource ="=([Betrag_bezahlt]/[Betrag_für_Monate]*12*(100+[Steigerung]))/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =9297
                    LayoutCachedWidth =10755
                    LayoutCachedHeight =255
                    BorderShade =65.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =10941
                    Width =1560
                    Height =285
                    FontSize =5
                    FontWeight =200
                    TabIndex =8
                    Name ="Befehl25"
                    Caption ="Datensatz löschen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =10941
                    LayoutCachedWidth =12501
                    LayoutCachedHeight =285
                    BorderColor =10921638
                    BorderShade =65.0
                End
                Begin TextBox
                    SpecialEffect =0
                    OverlapFlags =247
                    Left =1303
                    Width =1878
                    Height =255
                    TabIndex =1
                    BorderColor =10921638
                    Name ="erledigte Arbeiten"
                    ControlSource ="erledigte Arbeiten"
                    EventProcPrefix ="erledigte_Arbeiten"

                    LayoutCachedLeft =1303
                    LayoutCachedWidth =3181
                    LayoutCachedHeight =255
                    BorderShade =65.0
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
' See "M_Unterformular_Sonderleistungen_Kalkulation_für_Budget.cls"
