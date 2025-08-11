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
    Width =15193
    DatasheetFontHeight =10
    ItemSuffix =67
    Left =8898
    Top =2255
    RecSrcDt = Begin
        0x870db3464b27e540
    End
    RecordSource ="qry_220_10_10_DH_rpt_Bew_Bil_HK_Kosten"
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
                    Caption ="Bewertung Ergebnisse Herstellungskosten (HK)"
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
                            Width =2749
                            Height =393
                            FontSize =14
                            Name ="Bezeichnungsfeld41"
                            Caption ="Bewertung zum     01.01."
                            FontName ="Arial Narrow"
                            LayoutCachedLeft =79
                            LayoutCachedTop =851
                            LayoutCachedWidth =2828
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
                    Width =15011
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
                    LayoutCachedWidth =15086
                    LayoutCachedHeight =2150
                End
            End
        End
        Begin PageHeader
            Height =1111
            Name ="Seitenkopf"
            Begin
                Begin Label
                    Left =60
                    Top =641
                    Width =615
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnung Bezeichnungsfeld"
                    Caption ="Objekt"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Bezeichnung_Bezeichnungsfeld"
                    LayoutCachedLeft =60
                    LayoutCachedTop =641
                    LayoutCachedWidth =675
                    LayoutCachedHeight =896
                End
                Begin Label
                    TextAlign =3
                    Left =13924
                    Top =641
                    Width =1200
                    Height =270
                    FontSize =8
                    FontWeight =900
                    Name ="Grundstück Bezeichnungsfeld"
                    Caption ="Grundstückswert"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Grundstück_Bezeichnungsfeld"
                    LayoutCachedLeft =13924
                    LayoutCachedTop =641
                    LayoutCachedWidth =15124
                    LayoutCachedHeight =911
                End
                Begin Label
                    TextAlign =3
                    Left =7031
                    Top =381
                    Width =1699
                    Height =258
                    FontSize =8
                    FontWeight =900
                    Name ="Sanierungsstau Bezeichnungsfeld"
                    Caption ="zum Bewertungszeitpunkt"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Sanierungsstau_Bezeichnungsfeld"
                    LayoutCachedLeft =7031
                    LayoutCachedTop =381
                    LayoutCachedWidth =8730
                    LayoutCachedHeight =639
                End
                Begin Label
                    TextAlign =3
                    Left =11403
                    Top =641
                    Width =1200
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Abschreibung Bezeichnungsfeld"
                    Caption ="Abschreibung"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Abschreibung_Bezeichnungsfeld"
                    LayoutCachedLeft =11403
                    LayoutCachedTop =641
                    LayoutCachedWidth =12603
                    LayoutCachedHeight =896
                End
                Begin Label
                    TextAlign =3
                    Left =12678
                    Top =641
                    Width =1200
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="ermittelter Wert Bezeichnungsfeld"
                    Caption ="Gebäudewert"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="ermittelter_Wert_Bezeichnungsfeld"
                    LayoutCachedLeft =12678
                    LayoutCachedTop =641
                    LayoutCachedWidth =13878
                    LayoutCachedHeight =896
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    Top =960
                    Width =15090
                    BorderColor =12632256
                    Name ="Linie21"
                    LayoutCachedTop =960
                    LayoutCachedWidth =15090
                    LayoutCachedHeight =960
                End
                Begin Label
                    TextAlign =3
                    Left =8325
                    Top =60
                    Width =5325
                    Height =255
                    FontSize =8
                    ForeColor =255
                    Name ="Bezeichnungsfeld46"
                    Caption ="Abschreibung rot: Daten hierzu unvollständig bzw. inplausibel"
                    LayoutCachedLeft =8325
                    LayoutCachedTop =60
                    LayoutCachedWidth =13650
                    LayoutCachedHeight =315
                End
                Begin Label
                    TextAlign =3
                    Left =10119
                    Top =641
                    Width =1245
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld54"
                    Caption ="Abschr.-jahre"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =10119
                    LayoutCachedTop =641
                    LayoutCachedWidth =11364
                    LayoutCachedHeight =896
                End
                Begin Label
                    TextAlign =3
                    Left =9444
                    Top =626
                    Width =615
                    Height =270
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld58"
                    Caption ="Baujahr"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =9444
                    LayoutCachedTop =626
                    LayoutCachedWidth =10059
                    LayoutCachedHeight =896
                End
                Begin Label
                    TextAlign =3
                    Left =7886
                    Top =626
                    Width =1290
                    Height =270
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld59"
                    Caption ="Wiederbesch.wert"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =7886
                    LayoutCachedTop =626
                    LayoutCachedWidth =9176
                    LayoutCachedHeight =896
                End
                Begin Label
                    TextAlign =3
                    Left =3969
                    Top =103
                    Width =2370
                    Height =495
                    FontSize =8
                    FontWeight =900
                    Name ="Herstellungskosten Bezeichnungsfeld"
                    Caption ="HK - BJ vor 2000  -->   NHK 2009 \015\012HK - BJ nach 2000  -->  HK im BJ "
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Herstellungskosten_Bezeichnungsfeld"
                    LayoutCachedLeft =3969
                    LayoutCachedTop =103
                    LayoutCachedWidth =6339
                    LayoutCachedHeight =598
                End
                Begin Label
                    TextAlign =0
                    Left =3403
                    Top =638
                    Width =965
                    Height =258
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld63"
                    Caption ="Geb.-Kenung"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =3403
                    LayoutCachedTop =638
                    LayoutCachedWidth =4368
                    LayoutCachedHeight =896
                End
                Begin Line
                    BorderWidth =1
                    Left =6351
                    Top =111
                    Width =0
                    Height =680
                    Name ="Linie79"
                    LayoutCachedLeft =6351
                    LayoutCachedTop =111
                    LayoutCachedWidth =6351
                    LayoutCachedHeight =791
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =2
                    Left =6408
                    Top =596
                    Width =232
                    Height =259
                    FontWeight =900
                    Name ="Bezeichnungsfeld65"
                    Caption ="S"
                    FontName ="GreekC"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =6408
                    LayoutCachedTop =596
                    LayoutCachedWidth =6640
                    LayoutCachedHeight =855
                End
                Begin Label
                    TextAlign =3
                    Left =6668
                    Top =638
                    Width =1020
                    Height =259
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld66"
                    Caption ="Sanierungsstau"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =6668
                    LayoutCachedTop =638
                    LayoutCachedWidth =7688
                    LayoutCachedHeight =897
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =340
            OnPrint ="[Event Procedure]"
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    TextFontFamily =34
                    Width =3353
                    ColumnWidth =3210
                    FontSize =8
                    Name ="Bezeichnung"
                    ControlSource ="Objekt"
                    FontName ="Arial Narrow"

                    LayoutCachedWidth =3353
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =4995
                    Width =1350
                    ColumnWidth =3525
                    FontSize =8
                    TabIndex =1
                    Name ="Herstellungskosten"
                    ControlSource ="Herstellkosten"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4995
                    LayoutCachedWidth =6345
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =13921
                    Width =1200
                    ColumnWidth =1485
                    FontSize =8
                    TabIndex =2
                    Name ="Grundstückswert"
                    ControlSource ="Grundstueckswert"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =13921
                    LayoutCachedWidth =15121
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =6605
                    Width =1035
                    ColumnWidth =1620
                    FontSize =8
                    TabIndex =3
                    Name ="Sanierungsstau"
                    ControlSource ="Sanierungsstau"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6605
                    LayoutCachedWidth =7640
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =11400
                    Width =1200
                    ColumnWidth =1485
                    FontSize =8
                    TabIndex =4
                    Name ="TF_kum_Abschreibung"
                    ControlSource ="Kumul_Abschr"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x010000009e000000010000000100000000000000000000001e00000001010000 ,
                        0xff000000ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x4e006f0074002000490073004e0075006d00650072006900630028005b004100 ,
                        0x620073006300680072005f004a0061006800720065005d00290000000000
                    End

                    LayoutCachedLeft =11400
                    LayoutCachedWidth =12600
                    LayoutCachedHeight =240
                    ConditionalFormat14 = Begin
                        0x010001000000010000000000000001010000ff000000ffffff001d0000004e00 ,
                        0x6f0074002000490073004e0075006d00650072006900630028005b0041006200 ,
                        0x73006300680072005f004a0061006800720065005d0029000000000000000000 ,
                        0x00000000000000000000000000
                    End
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =12675
                    Width =1200
                    ColumnWidth =1650
                    FontSize =8
                    TabIndex =5
                    Name ="TF_Wert_ermittelt"
                    ControlSource ="Ermittelter_Wert"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000074000000010000000000000002000000000000000900000001010000 ,
                        0xff000000ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x220075006e00620065006b002e00220000000000
                    End

                    LayoutCachedLeft =12675
                    LayoutCachedWidth =13875
                    LayoutCachedHeight =240
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001010000ff000000ffffff00080000002200 ,
                        0x75006e00620065006b002e002200000000000000000000000000000000000000 ,
                        0x000000
                    End
                End
                Begin Line
                    Top =285
                    Width =15084
                    Name ="Linie39"
                    LayoutCachedTop =285
                    LayoutCachedWidth =15084
                    LayoutCachedHeight =285
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin TextBox
                    CanGrow = NotDefault
                    DecimalPlaces =3
                    TextAlign =3
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =10425
                    Width =936
                    FontSize =8
                    TabIndex =6
                    Name ="TF_Abschr_Jahre"
                    ControlSource ="Abschr_Jahre"
                    Format ="Standard"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x010000009e000000010000000100000000000000000000001e00000001000000 ,
                        0xff000000ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x4e006f0074002000490073004e0075006d00650072006900630028005b004100 ,
                        0x620073006300680072005f004a0061006800720065005d00290000000000
                    End

                    LayoutCachedLeft =10425
                    LayoutCachedWidth =11361
                    LayoutCachedHeight =240
                    ConditionalFormat14 = Begin
                        0x010001000000010000000000000001000000ff000000ffffff001d0000004e00 ,
                        0x6f0074002000490073004e0075006d00650072006900630028005b0041006200 ,
                        0x73006300680072005f004a0061006800720065005d0029000000000000000000 ,
                        0x00000000000000000000000000
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =1
                    IMESentenceMode =3
                    Left =7712
                    Width =66
                    ColumnWidth =1830
                    FontSize =8
                    TabIndex =7
                    BackColor =967423
                    Name ="TF_Nutzungsdauer"
                    ControlSource ="Nutzungsdauer"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7712
                    LayoutCachedWidth =7778
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =9360
                    Width =696
                    Height =225
                    ColumnWidth =1590
                    FontSize =8
                    TabIndex =8
                    Name ="Baujahr_real"
                    ControlSource ="Baujahr"
                    Format ="mm-yyyy"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =9360
                    LayoutCachedWidth =10056
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =7823
                    Width =1350
                    FontSize =8
                    TabIndex =9
                    Name ="Text60"
                    ControlSource ="WBW"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7823
                    LayoutCachedWidth =9173
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =3403
                    Width =965
                    Height =214
                    ColumnWidth =2145
                    FontSize =8
                    TabIndex =10
                    Name ="Gebaeudekennung"
                    ControlSource ="Gebaeudekennung"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =3403
                    LayoutCachedWidth =4368
                    LayoutCachedHeight =214
                End
            End
        End
        Begin PageFooter
            Height =511
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =1
                    Left =56
                    Top =226
                    Width =5040
                    Height =285
                    FontSize =9
                    FontWeight =700
                    Name ="Text19"
                    ControlSource ="=Now()"
                    Format ="Long Date"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =56
                    LayoutCachedTop =226
                    LayoutCachedWidth =5096
                    LayoutCachedHeight =511
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =1
                    Left =10081
                    Top =120
                    Width =5040
                    Height =285
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    Name ="Text20"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =10081
                    LayoutCachedTop =120
                    LayoutCachedWidth =15121
                    LayoutCachedHeight =405
                End
                Begin Line
                    BorderWidth =1
                    Top =45
                    Width =15105
                    BorderColor =12632256
                    Name ="Linie22"
                    LayoutCachedTop =45
                    LayoutCachedWidth =15105
                    LayoutCachedHeight =45
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =963
            OnPrint ="[Event Procedure]"
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =4995
                    Top =225
                    Width =1350
                    Height =285
                    FontSize =8
                    FontWeight =700
                    Name ="Text23"
                    ControlSource ="=Sum([Herstellkosten])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4995
                    LayoutCachedTop =225
                    LayoutCachedWidth =6345
                    LayoutCachedHeight =510
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =13921
                    Top =226
                    Width =1200
                    Height =285
                    FontSize =8
                    FontWeight =700
                    TabIndex =1
                    Name ="Text25"
                    ControlSource ="=Sum([Grundstueckswert])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =13921
                    LayoutCachedTop =226
                    LayoutCachedWidth =15121
                    LayoutCachedHeight =511
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    Top =75
                    Width =15090
                    BorderColor =12632256
                    Name ="Linie40"
                    LayoutCachedTop =75
                    LayoutCachedWidth =15090
                    LayoutCachedHeight =75
                End
                Begin Label
                    TextAlign =3
                    Left =2835
                    Top =225
                    Width =825
                    Height =285
                    FontSize =8
                    Name ="Bezeichnungsfeld44"
                    Caption ="Summen:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =2835
                    LayoutCachedTop =225
                    LayoutCachedWidth =3660
                    LayoutCachedHeight =510
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =6605
                    Top =225
                    Width =1035
                    Height =285
                    FontSize =8
                    FontWeight =700
                    TabIndex =2
                    Name ="Text47"
                    ControlSource ="=Sum([Sanierungsstau])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6605
                    LayoutCachedTop =225
                    LayoutCachedWidth =7640
                    LayoutCachedHeight =510
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =12735
                    Top =226
                    Width =1140
                    Height =285
                    FontSize =8
                    FontWeight =700
                    TabIndex =3
                    Name ="Text49"
                    ControlSource ="=Sum([Ermittelter_Wert])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =12735
                    LayoutCachedTop =226
                    LayoutCachedWidth =13875
                    LayoutCachedHeight =511
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =11460
                    Top =225
                    Width =1140
                    Height =285
                    FontSize =8
                    FontWeight =700
                    TabIndex =4
                    Name ="TF_Kum_Abschr_Sum"
                    ControlSource ="=Sum([Kumul_Abschr])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =11460
                    LayoutCachedTop =225
                    LayoutCachedWidth =12600
                    LayoutCachedHeight =510
                End
                Begin Label
                    Visible = NotDefault
                    TextAlign =3
                    Left =2220
                    Top =570
                    Width =8955
                    Height =255
                    FontSize =8
                    ForeColor =255
                    Name ="BF_Hinweis_unb_Abschr"
                    Caption ="Eine odere mehrere Abschreibungen (rot) sind unplausibel und fehlen in der Summe"
                        " der Abschreibungen"
                    LayoutCachedLeft =2220
                    LayoutCachedTop =570
                    LayoutCachedWidth =11175
                    LayoutCachedHeight =825
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =7823
                    Top =225
                    Width =1350
                    Height =285
                    FontSize =8
                    FontWeight =700
                    TabIndex =5
                    Name ="Text61"
                    ControlSource ="=Sum([WBW])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7823
                    LayoutCachedTop =225
                    LayoutCachedWidth =9173
                    LayoutCachedHeight =510
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_220_10_10_Bew_Bil_HK_Kosten.cls"
