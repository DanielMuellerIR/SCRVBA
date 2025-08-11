Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9075
    DatasheetFontHeight =10
    ItemSuffix =29
    Left =8595
    Top =7905
    RecSrcDt = Begin
        0x5dedb19bef72e540
    End
    RecordSource ="Abfrage für Buchungsanordnung_U2"
    OnOpen ="= Maxim_Bericht()"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextFontFamily =2
            FontName ="Arial"
        End
        Begin Rectangle
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
        End
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin TextBox
            OldBorderStyle =0
            TextFontFamily =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Arial"
        End
        Begin ComboBox
            OldBorderStyle =0
            TextFontFamily =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Arial"
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin BreakLevel
            ControlSource ="Kostenstelle"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            ControlSource ="ID"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =277
            BackColor =14671839
            Name ="Berichtskopf"
            Begin
                Begin Label
                    BackStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Width =1395
                    Height =255
                    FontSize =9
                    BackColor =14671839
                    Name ="Bezeichnungsfeld17"
                    Caption ="Kostenrechnung\015\012"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =2308
                    Top =7
                    Width =1725
                    Height =270
                    FontSize =9
                    BackColor =14671839
                    Name ="Bezeichnungsfeld18"
                    Caption ="Kostenstelle Infoma"
                    LayoutCachedLeft =2308
                    LayoutCachedTop =7
                    LayoutCachedWidth =4033
                    LayoutCachedHeight =277
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =7235
                    Top =7
                    Width =1140
                    Height =255
                    FontSize =9
                    BackColor =14671839
                    Name ="Bezeichnungsfeld19"
                    Caption ="Betrag in €"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =4664
                    Top =7
                    Width =1215
                    Height =255
                    FontSize =9
                    BackColor =14671839
                    Name ="Bezeichnungsfeld21"
                    Caption ="Kostenträger"
                    LayoutCachedLeft =4664
                    LayoutCachedTop =7
                    LayoutCachedWidth =5879
                    LayoutCachedHeight =262
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =7
            BreakLevel =1
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    OldBorderStyle =1
                    TextFontFamily =34
                    Width =967
                    Height =7
                    FontSize =12
                    FontWeight =700
                    Name ="ID aus Buchungen"
                    ControlSource ="ID"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="ID_aus_Buchungen"

                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =293
            Name ="Detailbereich"
            Begin
                Begin Label
                    BackStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =60
                    Width =9015
                    Height =293
                    FontSize =9
                    BackColor =14671839
                    Name ="Bezeichnungsfeld47"
                    Caption ="\015\012"
                    LayoutCachedLeft =60
                    LayoutCachedWidth =9075
                    LayoutCachedHeight =293
                End
                Begin TextBox
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    OldBorderStyle =1
                    TextFontFamily =34
                    Left =6750
                    Width =2242
                    Height =293
                    FontSize =12
                    FontWeight =600
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    OldBorderStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =4365
                    Width =1912
                    Height =293
                    FontSize =12
                    FontWeight =600
                    TabIndex =1
                    Name ="Kostenträger"
                    ControlSource ="Prod_Nr"

                    LayoutCachedLeft =4365
                    LayoutCachedWidth =6277
                    LayoutCachedHeight =293
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    OverlapFlags =12
                    TextAlign =2
                    TextFontFamily =34
                    Left =2145
                    Width =1912
                    Height =293
                    FontSize =12
                    FontWeight =600
                    TabIndex =2
                    Name ="Kostenstelle"
                    ControlSource ="Kostenstelle_Infoma"
                    Format ="00000"

                    LayoutCachedLeft =2145
                    LayoutCachedWidth =4057
                    LayoutCachedHeight =293
                End
                Begin CheckBox
                    Visible = NotDefault
                    Left =8220
                    Top =56
                    Width =113
                    Height =170
                    TabIndex =3
                    Name ="Kontrollkästchen23"
                    ControlSource ="Vorsteuerabzug_"

                End
                Begin TextBox
                    CanGrow = NotDefault
                    FontItalic = NotDefault
                    FontUnderline = NotDefault
                    TextFontFamily =34
                    Left =105
                    Top =13
                    Width =2790
                    Height =2
                    FontSize =10
                    FontWeight =800
                    TabIndex =4
                    Name ="TextVorsteuer"
                    ControlSource ="=IIf([Vorsteuerabzug_]=-1,\"VORSTEUERABZUG!\",\"\")"

                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =293
            BackColor =14671839
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =6803
                    Width =2197
                    Height =293
                    FontSize =12
                    FontWeight =600
                    BackColor =14671839
                    Name ="Text49"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Width =1695
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld28"
                    Caption ="Summe"
                End
            End
        End
    End
End
CodeBehindForm
' See "Buchungsanordnung_Unterbericht_Kostenrechnung.cls"
