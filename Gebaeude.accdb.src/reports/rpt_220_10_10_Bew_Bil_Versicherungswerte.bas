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
    Width =15590
    DatasheetFontHeight =10
    ItemSuffix =59
    Left =530
    Top =3002
    RecSrcDt = Begin
        0x6caff1f935dce540
    End
    RecordSource ="qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten_DM"
    Caption ="B_Ergebnisse_Tabelle"
    OnOpen ="= Maxim_Bericht()"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =1
            FontSize =10
            FontWeight =700
            FontName ="Arial"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =2
            BorderLineStyle =0
            Width =850
            Height =850
            BorderColor =12632256
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
        End
        Begin Image
            OldBorderStyle =0
            BorderLineStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin BoundObjectFrame
            BorderLineStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            OldBorderStyle =0
            TextFontFamily =18
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
        End
        Begin ListBox
            TextFontFamily =18
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
        End
        Begin ComboBox
            OldBorderStyle =0
            TextFontFamily =18
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
        End
        Begin Subform
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin BreakLevel
            ControlSource ="Objekt"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =2211
            Name ="Berichtskopf"
            Begin
                Begin Label
                    BackStyle =1
                    Left =60
                    Top =60
                    Width =12240
                    Height =615
                    FontSize =24
                    FontWeight =900
                    BackColor =12632256
                    Name ="Bezeichnungsfeld18"
                    Caption ="Bewertung Ergebnisse Wiederbeschaffungswerte "
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2862
                    Top =855
                    Width =2249
                    Height =390
                    ColumnWidth =2068
                    FontSize =14
                    FontWeight =700
                    Name ="Bewertungsjahr"
                    ControlSource ="Bewertungsjahr"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =2862
                    LayoutCachedTop =855
                    LayoutCachedWidth =5111
                    LayoutCachedHeight =1245
                    Begin
                        Begin Label
                            TextAlign =0
                            Left =79
                            Top =851
                            Width =2762
                            Height =393
                            FontSize =14
                            Name ="Bezeichnungsfeld41"
                            Caption ="Bewertung zum     01.01."
                            FontName ="Arial Narrow"
                            LayoutCachedLeft =79
                            LayoutCachedTop =851
                            LayoutCachedWidth =2841
                            LayoutCachedHeight =1244
                        End
                    End
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2862
                    Top =1310
                    Width =3036
                    Height =390
                    ColumnWidth =1785
                    FontSize =14
                    FontWeight =700
                    TabIndex =1
                    Name ="Bewertungsart"
                    ControlSource ="Bewertungsart"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =2862
                    LayoutCachedTop =1310
                    LayoutCachedWidth =5898
                    LayoutCachedHeight =1700
                    Begin
                        Begin Label
                            TextAlign =0
                            Left =75
                            Top =1310
                            Width =1950
                            Height =390
                            FontSize =14
                            Name ="Bezeichnungsfeld42"
                            Caption ="Bewertungsart:"
                            FontName ="Arial Narrow"
                            LayoutCachedLeft =75
                            LayoutCachedTop =1310
                            LayoutCachedWidth =2025
                            LayoutCachedHeight =1700
                        End
                    End
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =75
                    Top =1760
                    Width =15064
                    Height =390
                    ColumnWidth =3795
                    FontSize =14
                    FontWeight =700
                    TabIndex =2
                    Name ="Erläuterung"
                    ControlSource ="Erläuterung"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =75
                    LayoutCachedTop =1760
                    LayoutCachedWidth =15139
                    LayoutCachedHeight =2150
                End
            End
        End
        Begin PageHeader
            Height =453
            Name ="Seitenkopf"
            Begin
                Begin Label
                    Left =57
                    Top =56
                    Width =615
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnung Bezeichnungsfeld"
                    Caption ="Objekt"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Bezeichnung_Bezeichnungsfeld"
                    LayoutCachedLeft =57
                    LayoutCachedTop =56
                    LayoutCachedWidth =672
                    LayoutCachedHeight =311
                End
                Begin Label
                    Left =12097
                    Top =56
                    Width =1230
                    Height =270
                    FontSize =8
                    FontWeight =900
                    Name ="Grundstück Bezeichnungsfeld"
                    Caption ="NHK-Typ"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Grundstück_Bezeichnungsfeld"
                    LayoutCachedLeft =12097
                    LayoutCachedTop =56
                    LayoutCachedWidth =13327
                    LayoutCachedHeight =326
                End
                Begin Label
                    TextAlign =3
                    Left =9023
                    Top =56
                    Width =893
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Sanierungsstau Bezeichnungsfeld"
                    Caption ="BGF"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Sanierungsstau_Bezeichnungsfeld"
                    LayoutCachedLeft =9023
                    LayoutCachedTop =56
                    LayoutCachedWidth =9916
                    LayoutCachedHeight =311
                End
                Begin Label
                    TextAlign =3
                    Left =9982
                    Top =56
                    Width =1035
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Abschreibung Bezeichnungsfeld"
                    Caption ="BRI"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Abschreibung_Bezeichnungsfeld"
                    LayoutCachedLeft =9982
                    LayoutCachedTop =56
                    LayoutCachedWidth =11017
                    LayoutCachedHeight =311
                End
                Begin Label
                    TextAlign =3
                    Left =11139
                    Top =56
                    Width =810
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="ermittelter Wert Bezeichnungsfeld"
                    Caption ="Baujahr"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="ermittelter_Wert_Bezeichnungsfeld"
                    LayoutCachedLeft =11139
                    LayoutCachedTop =56
                    LayoutCachedWidth =11949
                    LayoutCachedHeight =311
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    Top =432
                    Width =15519
                    BorderColor =12632256
                    Name ="Linie21"
                    LayoutCachedTop =432
                    LayoutCachedWidth =15519
                    LayoutCachedHeight =432
                End
                Begin Label
                    TextAlign =3
                    Left =7203
                    Width =1657
                    Height =216
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld46"
                    Caption ="Wiederbeschaffungswert"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =7203
                    LayoutCachedWidth =8860
                    LayoutCachedHeight =216
                End
                Begin Label
                    TextAlign =0
                    Left =4229
                    Top =56
                    Width =1269
                    Height =223
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld49"
                    Caption ="Geb.-Kennung"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =4229
                    LayoutCachedTop =56
                    LayoutCachedWidth =5498
                    LayoutCachedHeight =279
                End
                Begin Label
                    TextAlign =3
                    Left =5625
                    Width =1290
                    Height =432
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld50"
                    Caption ="Herstellkosten zum\015\012Bewertungsjahr"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =5625
                    LayoutCachedWidth =6915
                    LayoutCachedHeight =432
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =8206
                    Top =194
                    Width =683
                    Height =219
                    FontSize =8
                    FontWeight =700
                    Name ="Text56"
                    ControlSource ="=CStr([Forms]![frm_040_010_Bewertungsbilanzen_Verwaltung]![LF_Bew_Jahr])"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8206
                    LayoutCachedTop =194
                    LayoutCachedWidth =8889
                    LayoutCachedHeight =413
                End
                Begin Label
                    TextAlign =3
                    Left =7269
                    Top =194
                    Width =910
                    Height =219
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld58"
                    Caption ="zum Jahr"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =7269
                    LayoutCachedTop =194
                    LayoutCachedWidth =8179
                    LayoutCachedHeight =413
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =300
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    TextFontFamily =34
                    Top =1
                    Width =4079
                    ColumnWidth =3210
                    FontSize =8
                    Name ="Bezeichnung"
                    ControlSource ="Objekt"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =1
                    LayoutCachedWidth =4079
                    LayoutCachedHeight =241
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =12097
                    Width =3387
                    ColumnWidth =1485
                    FontSize =8
                    TabIndex =1
                    Name ="Grundstückswert"
                    ControlSource ="Typ"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =12097
                    LayoutCachedWidth =15484
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =9014
                    Width =959
                    ColumnWidth =1620
                    FontSize =8
                    TabIndex =2
                    Name ="Sanierungsstau"
                    ControlSource ="BGF"
                    Format ="#,##0.00\" m²\""
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =9014
                    LayoutCachedWidth =9973
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =10029
                    Top =1
                    Width =1046
                    ColumnWidth =1485
                    FontSize =8
                    TabIndex =3
                    Name ="kumulierte Abschreibung"
                    ControlSource ="BRI"
                    Format ="#,##0.00\" m³\""
                    FontName ="Arial Narrow"
                    EventProcPrefix ="kumulierte_Abschreibung"

                    LayoutCachedLeft =10029
                    LayoutCachedTop =1
                    LayoutCachedWidth =11075
                    LayoutCachedHeight =241
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =11225
                    Top =1
                    Width =722
                    ColumnWidth =1650
                    FontSize =8
                    TabIndex =4
                    Name ="Wert ermittelt"
                    ControlSource ="Baujahr"
                    Format ="mm-yyyy"
                    FontName ="Arial Narrow"
                    EventProcPrefix ="Wert_ermittelt"

                    LayoutCachedLeft =11225
                    LayoutCachedTop =1
                    LayoutCachedWidth =11947
                    LayoutCachedHeight =241
                End
                Begin Line
                    Top =285
                    Width =15459
                    Name ="Linie39"
                    LayoutCachedTop =285
                    LayoutCachedWidth =15459
                    LayoutCachedHeight =285
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =7667
                    Width =1087
                    FontSize =8
                    TabIndex =5
                    Name ="Text45"
                    ControlSource ="WBW_Neu"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7667
                    LayoutCachedWidth =8754
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =4251
                    Width =1247
                    Height =214
                    ColumnWidth =2145
                    FontSize =8
                    TabIndex =6
                    Name ="Gebaeudekennung"
                    ControlSource ="Gebaeudekennung"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4251
                    LayoutCachedWidth =5498
                    LayoutCachedHeight =214
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =5843
                    Width =1080
                    FontSize =8
                    TabIndex =7
                    Name ="Text51"
                    ControlSource ="Herstellkosten"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5843
                    LayoutCachedWidth =6923
                    LayoutCachedHeight =240
                End
            End
        End
        Begin PageFooter
            Height =405
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =1
                    Left =60
                    Top =90
                    Width =5040
                    Height =285
                    FontSize =9
                    FontWeight =700
                    Name ="Text19"
                    ControlSource ="=Now()"
                    Format ="Long Date"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =60
                    LayoutCachedTop =90
                    LayoutCachedWidth =5100
                    LayoutCachedHeight =375
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =1
                    Left =10095
                    Top =120
                    Width =5040
                    Height =285
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    Name ="Text20"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =10095
                    LayoutCachedTop =120
                    LayoutCachedWidth =15135
                    LayoutCachedHeight =405
                End
                Begin Line
                    BorderWidth =1
                    Top =45
                    Width =15519
                    BorderColor =12632256
                    Name ="Linie22"
                    LayoutCachedTop =45
                    LayoutCachedWidth =15519
                    LayoutCachedHeight =45
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =623
            Name ="Berichtsfuß"
            Begin
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    Top =75
                    Width =15519
                    BorderColor =12632256
                    Name ="Linie40"
                    LayoutCachedTop =75
                    LayoutCachedWidth =15519
                    LayoutCachedHeight =75
                End
                Begin Label
                    TextAlign =3
                    Left =4592
                    Top =283
                    Width =735
                    Height =270
                    FontSize =8
                    Name ="Bezeichnungsfeld44"
                    Caption ="Summen:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =4592
                    LayoutCachedTop =283
                    LayoutCachedWidth =5327
                    LayoutCachedHeight =553
                End
                Begin TextBox
                    TextFontFamily =34
                    Left =5722
                    Top =283
                    Width =1201
                    Height =285
                    FontSize =8
                    FontWeight =600
                    Name ="Text47"
                    ControlSource ="=Sum([Herstellkosten])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5722
                    LayoutCachedTop =283
                    LayoutCachedWidth =6923
                    LayoutCachedHeight =568
                End
                Begin TextBox
                    TextFontFamily =34
                    Left =7622
                    Top =285
                    Width =1131
                    Height =285
                    FontSize =8
                    FontWeight =600
                    TabIndex =1
                    Name ="Text52"
                    ControlSource ="=Sum([WBW_Neu])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7622
                    LayoutCachedTop =285
                    LayoutCachedWidth =8753
                    LayoutCachedHeight =570
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_220_10_10_Bew_Bil_Versicherungswerte.cls"
