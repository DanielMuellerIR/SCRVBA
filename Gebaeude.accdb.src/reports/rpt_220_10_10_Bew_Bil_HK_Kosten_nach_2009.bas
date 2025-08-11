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
    Width =15307
    DatasheetFontHeight =10
    ItemSuffix =82
    Left =5175
    Top =8055
    RecSrcDt = Begin
        0x32f4c4ca56e2e540
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
                    Caption ="Bewertung Ergebnisse Herstellungskosten"
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
                            Width =2761
                            Height =393
                            FontSize =14
                            Name ="Bezeichnungsfeld41"
                            Caption ="Bewertung zum     31.12."
                            FontName ="Arial Narrow"
                            LayoutCachedLeft =79
                            LayoutCachedTop =851
                            LayoutCachedWidth =2840
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
                    Width =14776
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
                    LayoutCachedWidth =14851
                    LayoutCachedHeight =2150
                End
            End
        End
        Begin PageHeader
            Height =1020
            Name ="Seitenkopf"
            Begin
                Begin Label
                    Left =57
                    Top =630
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
                    LayoutCachedTop =630
                    LayoutCachedWidth =672
                    LayoutCachedHeight =885
                End
                Begin Label
                    TextAlign =3
                    Left =3180
                    Top =111
                    Width =2370
                    Height =495
                    FontSize =8
                    FontWeight =900
                    Name ="Herstellungskosten Bezeichnungsfeld"
                    Caption ="HK - BJ vor 2000  -->   NHK 2009 \015\012HK - BJ nach 2000  -->  HK im BJ "
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Herstellungskosten_Bezeichnungsfeld"
                    LayoutCachedLeft =3180
                    LayoutCachedTop =111
                    LayoutCachedWidth =5550
                    LayoutCachedHeight =606
                End
                Begin Label
                    TextAlign =3
                    Left =13651
                    Top =615
                    Width =1200
                    Height =270
                    FontSize =8
                    FontWeight =900
                    Name ="Grundstück Bezeichnungsfeld"
                    Caption ="Grundstückswert"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Grundstück_Bezeichnungsfeld"
                    LayoutCachedLeft =13651
                    LayoutCachedTop =615
                    LayoutCachedWidth =14851
                    LayoutCachedHeight =885
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =2
                    Left =5665
                    Top =596
                    Width =246
                    Height =255
                    FontWeight =900
                    Name ="Sanierungsstau Bezeichnungsfeld"
                    Caption ="S"
                    FontName ="GreekC"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Sanierungsstau_Bezeichnungsfeld"
                    LayoutCachedLeft =5665
                    LayoutCachedTop =596
                    LayoutCachedWidth =5911
                    LayoutCachedHeight =851
                End
                Begin Label
                    TextAlign =3
                    Left =11490
                    Top =420
                    Width =969
                    Height =420
                    FontSize =8
                    FontWeight =900
                    Name ="Abschreibung Bezeichnungsfeld"
                    Caption ="Abschreibung\015\012bis Bew.-Jahr:"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Abschreibung_Bezeichnungsfeld"
                    LayoutCachedLeft =11490
                    LayoutCachedTop =420
                    LayoutCachedWidth =12459
                    LayoutCachedHeight =840
                End
                Begin Label
                    TextAlign =3
                    Left =12801
                    Top =195
                    Width =789
                    Height =617
                    FontSize =8
                    FontWeight =900
                    Name ="ermittelter Wert Bezeichnungsfeld"
                    Caption ="Gebäude-\015\012Restwert\015\012im Bew.jahr"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="ermittelter_Wert_Bezeichnungsfeld"
                    LayoutCachedLeft =12801
                    LayoutCachedTop =195
                    LayoutCachedWidth =13590
                    LayoutCachedHeight =812
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    Top =960
                    Width =14865
                    BorderColor =12632256
                    Name ="Linie21"
                    LayoutCachedTop =960
                    LayoutCachedWidth =14865
                    LayoutCachedHeight =960
                End
                Begin Label
                    TextAlign =3
                    Left =8888
                    Top =615
                    Width =615
                    Height =270
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld58"
                    Caption ="Baujahr"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =8888
                    LayoutCachedTop =615
                    LayoutCachedWidth =9503
                    LayoutCachedHeight =885
                End
                Begin Label
                    TextAlign =3
                    Left =10530
                    Top =195
                    Width =615
                    Height =690
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld63"
                    Caption ="Rest-nutz.\015\012dauer"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =10530
                    LayoutCachedTop =195
                    LayoutCachedWidth =11145
                    LayoutCachedHeight =885
                End
                Begin Label
                    TextAlign =3
                    Left =9694
                    Top =195
                    Width =615
                    Height =690
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld67"
                    Caption ="Nutz.\015\012dauer\015\012gesamt:"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =9694
                    LayoutCachedTop =195
                    LayoutCachedWidth =10309
                    LayoutCachedHeight =885
                End
                Begin Label
                    TextAlign =3
                    Left =7373
                    Top =632
                    Width =1232
                    Height =256
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld72"
                    Caption ="Wiederbesch.wert"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7373
                    LayoutCachedTop =632
                    LayoutCachedWidth =8605
                    LayoutCachedHeight =888
                End
                Begin Label
                    Left =3346
                    Top =630
                    Width =1020
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld78"
                    Caption ="Geb.-Kennung"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =3346
                    LayoutCachedTop =630
                    LayoutCachedWidth =4366
                    LayoutCachedHeight =885
                End
                Begin Line
                    BorderWidth =1
                    Left =5555
                    Top =170
                    Width =0
                    Height =680
                    Name ="Linie79"
                    LayoutCachedLeft =5555
                    LayoutCachedTop =170
                    LayoutCachedWidth =5555
                    LayoutCachedHeight =850
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
                Begin Label
                    TextAlign =3
                    Left =5952
                    Top =631
                    Width =1034
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld80"
                    Caption ="Sanierungsstau"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =5952
                    LayoutCachedTop =631
                    LayoutCachedWidth =6986
                    LayoutCachedHeight =886
                End
                Begin Label
                    TextAlign =3
                    Left =6237
                    Top =397
                    Width =1694
                    Height =256
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld81"
                    Caption ="zum Bewertungszeitpunkt"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6237
                    LayoutCachedTop =397
                    LayoutCachedWidth =7931
                    LayoutCachedHeight =653
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =285
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
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =4479
                    Width =1080
                    ColumnWidth =3525
                    FontSize =8
                    TabIndex =1
                    Name ="Herstellungskosten"
                    ControlSource ="HK_fuer_WBW"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000002000000000000000200000001010000 ,
                        0xff000000ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End

                    LayoutCachedLeft =4479
                    LayoutCachedWidth =5559
                    LayoutCachedHeight =240
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001010000ff000000ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =13771
                    Width =1080
                    ColumnWidth =1485
                    FontSize =8
                    TabIndex =2
                    Name ="Grundstückswert"
                    ControlSource ="Grundstueckswert"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000002000000000000000200000001000000 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End

                    LayoutCachedLeft =13771
                    LayoutCachedWidth =14851
                    LayoutCachedHeight =240
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001000000ffffff00ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =12510
                    Width =1080
                    ColumnWidth =1650
                    FontSize =8
                    TabIndex =3
                    Name ="TF_Wert_ermittelt"
                    ControlSource ="Restwert_Bew_Jahr"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000074000000010000000000000002000000000000000900000001010000 ,
                        0xff000000ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x220075006e00620065006b002e00220000000000
                    End

                    LayoutCachedLeft =12510
                    LayoutCachedWidth =13590
                    LayoutCachedHeight =240
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001010000ff000000ffffff00080000002200 ,
                        0x75006e00620065006b002e002200000000000000000000000000000000000000 ,
                        0x000000
                    End
                End
                Begin Line
                    Top =270
                    Width =14865
                    Name ="Linie39"
                    LayoutCachedTop =270
                    LayoutCachedWidth =14865
                    LayoutCachedHeight =270
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =8806
                    Width =696
                    ColumnWidth =1590
                    FontSize =8
                    TabIndex =4
                    Name ="Baujahr_real"
                    ControlSource ="Baujahr"
                    Format ="mm-yyyy"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8806
                    LayoutCachedWidth =9502
                    LayoutCachedHeight =240
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =10449
                    Width =696
                    ColumnWidth =2580
                    FontSize =8
                    TabIndex =5
                    Name ="Nutzd_Rest"
                    ControlSource ="NutzD_Rest_J_M"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000005000000000000000200000001010000 ,
                        0xff000000ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End

                    LayoutCachedLeft =10449
                    LayoutCachedWidth =11145
                    LayoutCachedHeight =240
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000500000001010000ff000000ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =9613
                    Width =696
                    FontSize =8
                    TabIndex =6
                    Name ="Text64"
                    ControlSource ="NutzD_ges_J_M"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000005000000000000000200000001010000 ,
                        0xff000000ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End

                    LayoutCachedLeft =9613
                    LayoutCachedWidth =10309
                    LayoutCachedHeight =240
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000500000001010000ff000000ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =11109
                    Width =1350
                    ColumnWidth =2415
                    FontSize =8
                    TabIndex =7
                    Name ="Abschr_bis_Bew_Jahr"
                    ControlSource ="Abschr"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000005000000000000000200000001010000 ,
                        0xff000000ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End

                    LayoutCachedLeft =11109
                    LayoutCachedWidth =12459
                    LayoutCachedHeight =240
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000500000001010000ff000000ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5981
                    Width =960
                    ColumnWidth =3420
                    FontSize =8
                    TabIndex =8
                    Name ="Sanierungsstau"
                    ControlSource ="Sanierungsstau"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5981
                    LayoutCachedWidth =6941
                    LayoutCachedHeight =240
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =7525
                    Width =1080
                    FontSize =8
                    TabIndex =9
                    Name ="WBV"
                    ControlSource ="WBW"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000005000000000000000200000001010000 ,
                        0xff000000ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End

                    LayoutCachedLeft =7525
                    LayoutCachedWidth =8605
                    LayoutCachedHeight =240
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000500000001010000ff000000ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =3401
                    Width =965
                    ColumnWidth =2145
                    FontSize =8
                    TabIndex =10
                    Name ="Gebaeudekennung"
                    ControlSource ="Gebaeudekennung"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =3401
                    LayoutCachedWidth =4366
                    LayoutCachedHeight =240
                    BorderThemeColorIndex =1
                    BorderShade =75.0
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
                    Format ="General Date"
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
                    Left =9811
                    Top =120
                    Width =5040
                    Height =285
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    Name ="Text20"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =9811
                    LayoutCachedTop =120
                    LayoutCachedWidth =14851
                    LayoutCachedHeight =405
                End
                Begin Line
                    BorderWidth =1
                    Top =60
                    Width =14865
                    BorderColor =12632256
                    Name ="Linie22"
                    LayoutCachedTop =60
                    LayoutCachedWidth =14865
                    LayoutCachedHeight =60
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =737
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =4209
                    Top =300
                    Width =1350
                    Height =285
                    FontSize =8
                    FontWeight =700
                    Name ="Text23"
                    ControlSource ="=Sum([HK])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4209
                    LayoutCachedTop =300
                    LayoutCachedWidth =5559
                    LayoutCachedHeight =585
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =13649
                    Top =301
                    Width =1200
                    Height =285
                    FontSize =8
                    FontWeight =700
                    TabIndex =1
                    Name ="Text25"
                    ControlSource ="=Sum([Grundstueckswert])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =13649
                    LayoutCachedTop =301
                    LayoutCachedWidth =14849
                    LayoutCachedHeight =586
                End
                Begin Label
                    TextAlign =3
                    Left =1755
                    Top =300
                    Width =825
                    Height =285
                    FontSize =8
                    Name ="Bezeichnungsfeld44"
                    Caption ="Summen:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =1755
                    LayoutCachedTop =300
                    LayoutCachedWidth =2580
                    LayoutCachedHeight =585
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =5869
                    Top =300
                    Width =1035
                    Height =285
                    FontSize =8
                    FontWeight =700
                    TabIndex =2
                    Name ="Text47"
                    ControlSource ="=Sum([Sanierungsstau])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5869
                    LayoutCachedTop =300
                    LayoutCachedWidth =6904
                    LayoutCachedHeight =585
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =12463
                    Top =301
                    Width =1140
                    Height =285
                    FontSize =8
                    FontWeight =700
                    TabIndex =3
                    Name ="Text49"
                    ControlSource ="=Sum([Restwert_Bew_Jahr])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =12463
                    LayoutCachedTop =301
                    LayoutCachedWidth =13603
                    LayoutCachedHeight =586
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =11188
                    Top =300
                    Width =1140
                    Height =285
                    FontSize =8
                    FontWeight =700
                    TabIndex =4
                    Name ="TF_Kum_Abschr_Sum"
                    ControlSource ="=Sum([Abschr])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =11188
                    LayoutCachedTop =300
                    LayoutCachedWidth =12328
                    LayoutCachedHeight =585
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    Top =60
                    Width =14865
                    BorderColor =12632256
                    Name ="Linie70"
                    LayoutCachedTop =60
                    LayoutCachedWidth =14865
                    LayoutCachedHeight =60
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    Left =7256
                    Top =285
                    Width =1350
                    Height =285
                    FontSize =8
                    FontWeight =700
                    TabIndex =5
                    Name ="Text73"
                    ControlSource ="=Sum([WBW])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7256
                    LayoutCachedTop =285
                    LayoutCachedWidth =8606
                    LayoutCachedHeight =570
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_220_10_10_Bew_Bil_HK_Kosten_nach_2009.cls"
