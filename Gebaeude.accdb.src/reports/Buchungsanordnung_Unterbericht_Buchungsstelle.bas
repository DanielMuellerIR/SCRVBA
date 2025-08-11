Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    OrderByOn = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9022
    DatasheetFontHeight =10
    ItemSuffix =17
    Left =8595
    Top =7260
    OrderBy ="[Abfrage für Buchungsanordnung_U1].[ID]"
    RecSrcDt = Begin
        0xf1778c496e6fe540
    End
    RecordSource ="Abfrage für Buchungsanordnung_U1"
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
            GroupHeader = NotDefault
            ControlSource ="ID"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =270
            BackColor =14671839
            Name ="Berichtskopf"
            Begin
                Begin Label
                    BackStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Width =1575
                    Height =255
                    FontSize =9
                    BackColor =14671839
                    Name ="Bezeichnungsfeld14"
                    Caption ="Buchungsstelle(n) \015\012"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =4260
                    Width =1680
                    Height =255
                    FontSize =9
                    BackColor =14671839
                    Name ="Bezeichnungsfeld42"
                    Caption ="Sachkonto"
                    LayoutCachedLeft =4260
                    LayoutCachedWidth =5940
                    LayoutCachedHeight =255
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =7257
                    Width =1140
                    Height =255
                    FontSize =9
                    BackColor =14671839
                    Name ="Bezeichnungsfeld43"
                    Caption ="Betrag in €"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =0
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    OldBorderStyle =1
                    TextFontFamily =34
                    Left =5045
                    Top =-7
                    Width =967
                    Height =0
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
            CanGrow = NotDefault
            Height =323
            Name ="Detailbereich"
            Begin
                Begin Label
                    BackStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Width =9015
                    Height =323
                    FontSize =9
                    BackColor =14671839
                    Name ="Bezeichnungsfeld47"
                    Caption ="\015\012"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    OldBorderStyle =1
                    TextFontFamily =34
                    Left =6765
                    Width =2242
                    Height =323
                    FontSize =12
                    FontWeight =600
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    OverlapFlags =4
                    TextAlign =2
                    TextFontFamily =34
                    Left =3795
                    Width =2827
                    Height =323
                    FontSize =12
                    FontWeight =600
                    TabIndex =1
                    Name ="Buchungsstelle"
                    ControlSource ="Sachkonto"

                    LayoutCachedLeft =3795
                    LayoutCachedWidth =6622
                    LayoutCachedHeight =323
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =323
            BackColor =14671839
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =6810
                    Width =2197
                    Height =323
                    FontSize =12
                    FontWeight =600
                    BackColor =14671839
                    Name ="Text49"
                    ControlSource ="=[Betrag]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    FontItalic = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =1
                    TextFontFamily =34
                    Left =2891
                    Width =3877
                    Height =323
                    FontSize =9
                    FontWeight =600
                    TabIndex =1
                    Name ="Text47"
                    ControlSource ="=FctZahl_In_Worten([Betrag])"

                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Width =2865
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld44"
                    Caption ="Gesamtbetrag in Worten"
                End
            End
        End
    End
End
CodeBehindForm
' See "Buchungsanordnung_Unterbericht_Buchungsstelle.cls"
