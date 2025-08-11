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
    ItemSuffix =49
    Left =5348
    Top =11490
    RecSrcDt = Begin
        0xeb6a8f751501e540
    End
    RecordSource ="qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten_nach_2009"
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
            Height =2324
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
                    Caption ="Bewertung Ergebnisse Versicherungswerte "
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2862
                    Top =855
                    Width =3456
                    Height =390
                    ColumnWidth =2068
                    FontSize =14
                    FontWeight =700
                    Name ="Bewertungsjahr"
                    ControlSource ="Bewertungsjahr"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =2862
                    LayoutCachedTop =855
                    LayoutCachedWidth =6318
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
                            Caption ="Bewertung zum     31.12."
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
                    Width =3456
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
                    LayoutCachedWidth =6318
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
                    Width =15129
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
                    LayoutCachedWidth =15204
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
                    TextAlign =3
                    Left =5445
                    Top =56
                    Width =1650
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Herstellungskosten Bezeichnungsfeld"
                    Caption ="Versicherungswert"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Herstellungskosten_Bezeichnungsfeld"
                    LayoutCachedLeft =5445
                    LayoutCachedTop =56
                    LayoutCachedWidth =7095
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
                    Left =8685
                    Top =56
                    Width =915
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Sanierungsstau Bezeichnungsfeld"
                    Caption ="BGF"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Sanierungsstau_Bezeichnungsfeld"
                    LayoutCachedLeft =8685
                    LayoutCachedTop =56
                    LayoutCachedWidth =9600
                    LayoutCachedHeight =311
                End
                Begin Label
                    TextAlign =3
                    Left =9772
                    Top =56
                    Width =1245
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Abschreibung Bezeichnungsfeld"
                    Caption ="BRI"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Abschreibung_Bezeichnungsfeld"
                    LayoutCachedLeft =9772
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
                    Top =375
                    Width =15090
                    BorderColor =12632256
                    Name ="Linie21"
                    LayoutCachedTop =375
                    LayoutCachedWidth =15090
                    LayoutCachedHeight =375
                End
                Begin Label
                    TextAlign =3
                    Left =7200
                    Top =41
                    Width =1290
                    Height =270
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld46"
                    Caption ="Wiederbesch.wert"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =7200
                    LayoutCachedTop =41
                    LayoutCachedWidth =8490
                    LayoutCachedHeight =311
                End
                Begin Label
                    TextAlign =0
                    Left =3348
                    Top =56
                    Width =1020
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld78"
                    Caption ="Geb.-Kennung"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =3348
                    LayoutCachedTop =56
                    LayoutCachedWidth =4368
                    LayoutCachedHeight =311
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
                    Width =3353
                    ColumnWidth =3210
                    FontSize =8
                    Name ="Bezeichnung"
                    ControlSource ="Objekt"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =1
                    LayoutCachedWidth =3353
                    LayoutCachedHeight =241
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =5745
                    Width =1350
                    ColumnWidth =3525
                    FontSize =8
                    TabIndex =1
                    Name ="Herstellungskosten"
                    ControlSource ="Versicherungswert"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5745
                    LayoutCachedWidth =7095
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =12097
                    Width =3318
                    ColumnWidth =1485
                    FontSize =8
                    TabIndex =2
                    Name ="Grundstückswert"
                    ControlSource ="Typ"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =12097
                    LayoutCachedWidth =15415
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =8565
                    Width =1035
                    ColumnWidth =1620
                    FontSize =8
                    TabIndex =3
                    Name ="Sanierungsstau"
                    ControlSource ="BGF"
                    Format ="#,##0.00\" m²\""
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8565
                    LayoutCachedWidth =9600
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =9652
                    Top =1
                    Width =1365
                    ColumnWidth =1485
                    FontSize =8
                    TabIndex =4
                    Name ="kumulierte Abschreibung"
                    ControlSource ="BRI"
                    Format ="#,##0.00\" m³\""
                    FontName ="Arial Narrow"
                    EventProcPrefix ="kumulierte_Abschreibung"

                    LayoutCachedLeft =9652
                    LayoutCachedTop =1
                    LayoutCachedWidth =11017
                    LayoutCachedHeight =241
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =11062
                    Top =1
                    Width =885
                    ColumnWidth =1650
                    FontSize =8
                    TabIndex =5
                    Name ="Wert ermittelt"
                    ControlSource ="Baujahr"
                    Format ="mm-yyyy"
                    FontName ="Arial Narrow"
                    EventProcPrefix ="Wert_ermittelt"

                    LayoutCachedLeft =11062
                    LayoutCachedTop =1
                    LayoutCachedWidth =11947
                    LayoutCachedHeight =241
                End
                Begin Line
                    Top =285
                    Width =15075
                    Name ="Linie39"
                    LayoutCachedTop =285
                    LayoutCachedWidth =15075
                    LayoutCachedHeight =285
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =7218
                    Width =1350
                    FontSize =8
                    TabIndex =6
                    Name ="Text45"
                    ControlSource ="WBW"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7218
                    LayoutCachedWidth =8568
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =3403
                    Width =965
                    ColumnWidth =2145
                    FontSize =8
                    TabIndex =7
                    Name ="Gebaeudekennung"
                    ControlSource ="Gebaeudekennung"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =3403
                    LayoutCachedWidth =4368
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
                    Width =15090
                    BorderColor =12632256
                    Name ="Linie22"
                    LayoutCachedTop =45
                    LayoutCachedWidth =15090
                    LayoutCachedHeight =45
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =623
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    TextFontFamily =34
                    Left =5670
                    Top =285
                    Width =1425
                    Height =285
                    FontSize =8
                    FontWeight =600
                    Name ="Text23"
                    ControlSource ="=Sum([Versicherungswert])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5670
                    LayoutCachedTop =285
                    LayoutCachedWidth =7095
                    LayoutCachedHeight =570
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    Top =75
                    Width =15135
                    BorderColor =12632256
                    Name ="Linie40"
                    LayoutCachedTop =75
                    LayoutCachedWidth =15135
                    LayoutCachedHeight =75
                End
                Begin Label
                    TextAlign =3
                    Left =4035
                    Top =285
                    Width =825
                    Height =285
                    FontSize =8
                    Name ="Bezeichnungsfeld44"
                    Caption ="Summen:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =4035
                    LayoutCachedTop =285
                    LayoutCachedWidth =4860
                    LayoutCachedHeight =570
                End
                Begin TextBox
                    TextFontFamily =34
                    Left =7143
                    Top =285
                    Width =1425
                    Height =285
                    FontSize =8
                    FontWeight =600
                    TabIndex =1
                    Name ="Text47"
                    ControlSource ="=Sum([WBW])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7143
                    LayoutCachedTop =285
                    LayoutCachedWidth =8568
                    LayoutCachedHeight =570
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_220_10_10_Bew_Bil_Verswerte_nach_2009.cls"
