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
    Width =9354
    DatasheetFontHeight =10
    ItemSuffix =187
    Left =11355
    Top =2370
    RecSrcDt = Begin
        0x947f40828de5e440
    End
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    OnLoad ="[Event Procedure]"
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
        Begin TextBox
            OldBorderStyle =0
            TextFontFamily =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Arial"
            ShowDatePicker =0
        End
        Begin PageBreak
            Width =283
        End
        Begin BreakLevel
            KeepTogether =1
            ControlSource ="Planjahr"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Betrieb"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="BereichNr"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Objekt"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Sportfl"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="sort"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            ControlSource ="Kostenart"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =3401
            Name ="Berichtskopf"
            Begin
                Begin Label
                    TextFontFamily =34
                    Left =170
                    Top =1303
                    Width =2640
                    Height =345
                    FontSize =12
                    FontWeight =700
                    Name ="Bezeichnungsfeld7"
                    Caption ="Kalkulation Mieten"
                    LayoutCachedLeft =170
                    LayoutCachedTop =1303
                    LayoutCachedWidth =2810
                    LayoutCachedHeight =1648
                End
                Begin Label
                    FontItalic = NotDefault
                    SpecialEffect =1
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =683
                    Top =123
                    Width =2600
                    Height =491
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    Name ="Caisy"
                    Caption ="Caisy B 60"
                    LayoutCachedLeft =683
                    LayoutCachedTop =123
                    LayoutCachedWidth =3283
                    LayoutCachedHeight =614
                End
                Begin Label
                    FontItalic = NotDefault
                    TextAlign =2
                    TextFontFamily =34
                    Left =170
                    Top =56
                    Width =3530
                    Height =1129
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    ForeColor =65535
                    Name ="Text4"
                    Caption ="Caisy B 60"
                    LayoutCachedLeft =170
                    LayoutCachedTop =56
                    LayoutCachedWidth =3700
                    LayoutCachedHeight =1185
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    IMESentenceMode =3
                    Left =2545
                    Top =2580
                    Width =6531
                    Height =315
                    FontSize =11
                    FontWeight =700
                    Name ="Text176"
                    ControlSource ="=F_Variable(\"lng_Kalk_Jahr\")"

                    LayoutCachedLeft =2545
                    LayoutCachedTop =2580
                    LayoutCachedWidth =9076
                    LayoutCachedHeight =2895
                    Begin
                        Begin Label
                            TextAlign =3
                            TextFontFamily =34
                            Left =170
                            Top =2580
                            Width =2235
                            Height =315
                            FontSize =11
                            FontWeight =700
                            Name ="Bezeichnungsfeld177"
                            Caption ="Kalkulationsjahr:"
                            LayoutCachedLeft =170
                            LayoutCachedTop =2580
                            LayoutCachedWidth =2405
                            LayoutCachedHeight =2895
                        End
                    End
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    IMESentenceMode =3
                    Left =2545
                    Top =2935
                    Width =6531
                    Height =315
                    FontSize =11
                    FontWeight =700
                    TabIndex =1
                    Name ="TF_NK_Jahr"
                    ControlSource ="=F_Variable(\"lng_NK_Jahr\")"

                    LayoutCachedLeft =2545
                    LayoutCachedTop =2935
                    LayoutCachedWidth =9076
                    LayoutCachedHeight =3250
                    Begin
                        Begin Label
                            TextAlign =3
                            TextFontFamily =34
                            Left =170
                            Top =2935
                            Width =2235
                            Height =315
                            FontSize =11
                            FontWeight =700
                            Name ="Bezeichnungsfeld179"
                            Caption ="Datengrundlage NK:"
                            LayoutCachedLeft =170
                            LayoutCachedTop =2935
                            LayoutCachedWidth =2405
                            LayoutCachedHeight =3250
                        End
                    End
                End
                Begin Label
                    TextFontFamily =34
                    Left =2545
                    Top =1870
                    Width =6531
                    Height =315
                    FontSize =11
                    FontWeight =700
                    Name ="BF_Berichtsart"
                    Caption ="xxx"
                    LayoutCachedLeft =2545
                    LayoutCachedTop =1870
                    LayoutCachedWidth =9076
                    LayoutCachedHeight =2185
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Left =170
                    Top =1870
                    Width =2235
                    Height =315
                    FontSize =11
                    FontWeight =700
                    Name ="Bezeichnungsfeld181"
                    Caption ="Auswertung:"
                    LayoutCachedLeft =170
                    LayoutCachedTop =1870
                    LayoutCachedWidth =2405
                    LayoutCachedHeight =2185
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    IMESentenceMode =3
                    Left =2545
                    Top =2225
                    Width =6531
                    Height =315
                    FontSize =11
                    FontWeight =700
                    TabIndex =2
                    Name ="TF_Hinweis"
                    ControlSource ="=[Text]"

                    LayoutCachedLeft =2545
                    LayoutCachedTop =2225
                    LayoutCachedWidth =9076
                    LayoutCachedHeight =2540
                    Begin
                        Begin Label
                            TextAlign =3
                            TextFontFamily =34
                            Left =170
                            Top =2225
                            Width =2235
                            Height =315
                            FontSize =11
                            FontWeight =700
                            Name ="Bezeichnungsfeld185"
                            Caption ="Datei:"
                            LayoutCachedLeft =170
                            LayoutCachedTop =2225
                            LayoutCachedWidth =2405
                            LayoutCachedHeight =2540
                        End
                    End
                End
            End
        End
        Begin PageHeader
            Height =170
            Name ="Seitenkopf"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =510
            BreakLevel =1
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Top =120
                    Width =4596
                    Height =270
                    FontSize =10
                    FontWeight =700
                    Name ="Betrieb"
                    ControlSource ="Betrieb"

                    LayoutCachedTop =120
                    LayoutCachedWidth =4596
                    LayoutCachedHeight =390
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =453
            BreakLevel =2
            Name ="Gruppenkopf2"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =850
                    Top =113
                    Width =516
                    Height =225
                    FontSize =9
                    FontWeight =700
                    Name ="BereichNr"
                    ControlSource ="BereichNr"

                End
                Begin Label
                    TextFontFamily =34
                    Top =113
                    Width =795
                    Height =225
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld2"
                    Caption ="Bereich:"
                End
                Begin TextBox
                    TextFontFamily =34
                    Left =1417
                    Top =113
                    Width =5106
                    Height =225
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    Name ="BereichName"
                    ControlSource ="BereichName"

                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =566
            BreakLevel =3
            Name ="Gruppenkopf1"
            Begin
                Begin Label
                    TextFontFamily =34
                    Top =170
                    Width =795
                    Height =225
                    FontWeight =700
                    Name ="Bezeichnungsfeld122"
                    Caption ="Objekt:"
                    LayoutCachedTop =170
                    LayoutCachedWidth =795
                    LayoutCachedHeight =395
                End
                Begin TextBox
                    TextFontFamily =34
                    Left =907
                    Top =170
                    Width =6126
                    Height =225
                    FontWeight =700
                    Name ="Text123"
                    ControlSource ="Objekt"

                    LayoutCachedLeft =907
                    LayoutCachedTop =170
                    LayoutCachedWidth =7033
                    LayoutCachedHeight =395
                End
                Begin Line
                    BorderWidth =2
                    Top =60
                    Width =8812
                    Name ="Linie124"
                    LayoutCachedTop =60
                    LayoutCachedWidth =8812
                    LayoutCachedHeight =60
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =907
            BreakLevel =4
            Name ="Gruppenkopf3"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =285
                    Top =105
                    Width =6756
                    Height =225
                    FontWeight =700
                    Name ="Sportfl"
                    ControlSource ="Sportfl"

                    LayoutCachedLeft =285
                    LayoutCachedTop =105
                    LayoutCachedWidth =7041
                    LayoutCachedHeight =330
                End
                Begin Line
                    LineSlant = NotDefault
                    Left =285
                    Top =60
                    Width =7930
                    Name ="Linie139"
                    LayoutCachedLeft =285
                    LayoutCachedTop =60
                    LayoutCachedWidth =8215
                    LayoutCachedHeight =60
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    TextFontFamily =34
                    Left =688
                    Top =396
                    Width =846
                    Height =225
                    TabIndex =1
                    Name ="TF_BGF"
                    ControlSource ="=IIf([Sportfläche]=False,[Sum_BGF_Gb_LS],[Sum_BGF_Sp_Fl])"
                    Format ="Standard"

                    LayoutCachedLeft =688
                    LayoutCachedTop =396
                    LayoutCachedWidth =1534
                    LayoutCachedHeight =621
                    ForeThemeColorIndex =0
                End
                Begin Label
                    TextFontFamily =34
                    Left =1643
                    Top =396
                    Width =270
                    Height =225
                    Name ="Bezeichnungsfeld126"
                    Caption ="m²"
                    LayoutCachedLeft =1643
                    LayoutCachedTop =396
                    LayoutCachedWidth =1913
                    LayoutCachedHeight =621
                End
                Begin TextBox
                    CanGrow = NotDefault
                    DecimalPlaces =2
                    TextAlign =3
                    TextFontFamily =34
                    Left =523
                    Top =623
                    Width =1011
                    Height =225
                    TabIndex =2
                    Name ="Text128"
                    ControlSource ="=Sum(IIf([Sort]=\"B\",[betrag_],0))/12/[TF_BGF]"
                    Format ="Standard"

                    LayoutCachedLeft =523
                    LayoutCachedTop =623
                    LayoutCachedWidth =1534
                    LayoutCachedHeight =848
                End
                Begin Label
                    TextFontFamily =34
                    Left =1643
                    Top =623
                    Width =615
                    Height =225
                    Name ="Bezeichnungsfeld129"
                    Caption ="€ / m²"
                    LayoutCachedLeft =1643
                    LayoutCachedTop =623
                    LayoutCachedWidth =2258
                    LayoutCachedHeight =848
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =3457
                    Top =566
                    Width =1356
                    Height =285
                    TabIndex =3
                    ForeColor =16711680
                    Name ="Text130"
                    ControlSource ="=Sum(IIf([Sort]=\"B\",[betrag_],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =3457
                    LayoutCachedTop =566
                    LayoutCachedWidth =4813
                    LayoutCachedHeight =851
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =285
            BreakLevel =5
            Name ="Gruppenkopf4"
            Begin
                Begin TextBox
                    IMESentenceMode =3
                    Left =510
                    Top =60
                    Height =225
                    Name ="Text147"
                    ControlSource ="Sorttext"

                    LayoutCachedLeft =510
                    LayoutCachedTop =60
                    LayoutCachedWidth =2211
                    LayoutCachedHeight =285
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =225
            BreakLevel =6
            Name ="Gruppenkopf5"
            Begin
                Begin TextBox
                    Left =850
                    Width =4026
                    Height =225
                    Name ="Text11"
                    ControlSource ="Kostenart"

                    LayoutCachedLeft =850
                    LayoutCachedWidth =4876
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    DecimalPlaces =2
                    Left =4988
                    Width =1296
                    Height =225
                    TabIndex =1
                    Name ="Betrag"
                    ControlSource ="=Sum([Betrag_])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =4988
                    LayoutCachedWidth =6284
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    Visible = NotDefault
                    Left =6342
                    Width =906
                    Height =225
                    TabIndex =2
                    Name ="sort"
                    ControlSource ="sort"

                    LayoutCachedLeft =6342
                    LayoutCachedWidth =7248
                    LayoutCachedHeight =225
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Visible = NotDefault
            Height =0
            Name ="Detailbereich"
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =283
            BreakLevel =5
            Name ="Gruppenfuß5"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    TextFontFamily =34
                    Left =5835
                    Top =30
                    Width =1476
                    Height =225
                    TabIndex =4
                    Name ="Text141"
                    ControlSource ="=Sum([Betrag_])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =5835
                    LayoutCachedTop =30
                    LayoutCachedWidth =7311
                    LayoutCachedHeight =255
                End
                Begin Line
                    Left =512
                    Top =19
                    Width =6745
                    Name ="Linie142"
                    LayoutCachedLeft =512
                    LayoutCachedTop =19
                    LayoutCachedWidth =7257
                    LayoutCachedHeight =19
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =4310
                    Width =1356
                    Height =225
                    TabIndex =3
                    ForeColor =255
                    Name ="d"
                    ControlSource ="=Sum(IIf([Sort]=\"D\",[betrag_],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =4310
                    LayoutCachedWidth =5666
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =2950
                    Width =1356
                    Height =225
                    TabIndex =2
                    ForeColor =255
                    Name ="c"
                    ControlSource ="=Sum(IIf([Sort]=\"C\",[betrag_],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =2950
                    LayoutCachedWidth =4306
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =1589
                    Width =1356
                    Height =225
                    TabIndex =1
                    ForeColor =255
                    Name ="b"
                    ControlSource ="=Sum(IIf([Sort]=\"B\",[betrag_],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =1589
                    LayoutCachedWidth =2945
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =285
                    Width =1356
                    Height =225
                    ForeColor =255
                    Name ="a"
                    ControlSource ="=Sum(IIf([Sort]=\"A\",[betrag_],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =285
                    LayoutCachedWidth =1641
                    LayoutCachedHeight =225
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =396
            BreakLevel =4
            Name ="Gruppenfuß4"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =4310
                    Width =1356
                    Height =285
                    TabIndex =5
                    ForeColor =16711680
                    Name ="d_Gr_Sp"
                    ControlSource ="=[d]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =4310
                    LayoutCachedWidth =5666
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =2950
                    Width =1356
                    Height =285
                    TabIndex =4
                    ForeColor =16711680
                    Name ="c_Gr_Sp"
                    ControlSource ="=[c]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =2950
                    LayoutCachedWidth =4306
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =1589
                    Width =1356
                    Height =285
                    TabIndex =3
                    ForeColor =16711680
                    Name ="b_Gr_Sp"
                    ControlSource ="=[b]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =1589
                    LayoutCachedWidth =2945
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =285
                    Width =1356
                    Height =285
                    TabIndex =2
                    ForeColor =16711680
                    Name ="a_Gr_Sp"
                    ControlSource ="=[a]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =285
                    LayoutCachedWidth =1641
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    FontItalic = NotDefault
                    TextAlign =3
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =960
                    Top =60
                    Width =5796
                    Height =225
                    FontWeight =700
                    TabIndex =1
                    Name ="Text132"
                    ControlSource ="=\"Summe zu \" & [Sportfl] & \": \""

                    LayoutCachedLeft =960
                    LayoutCachedTop =60
                    LayoutCachedWidth =6756
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    TextAlign =3
                    TextFontFamily =34
                    Left =6903
                    Top =60
                    Width =1281
                    Height =225
                    FontWeight =700
                    Name ="Summe_Kostenart"
                    ControlSource ="=Sum([Betrag_])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =6903
                    LayoutCachedTop =60
                    LayoutCachedWidth =8184
                    LayoutCachedHeight =285
                End
                Begin Line
                    Left =285
                    Top =330
                    Width =7930
                    Name ="Linie17"
                    LayoutCachedLeft =285
                    LayoutCachedTop =330
                    LayoutCachedWidth =8215
                    LayoutCachedHeight =330
                End
                Begin TextBox
                    Visible = NotDefault
                    FontItalic = NotDefault
                    RunningSum =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =9062
                    Top =56
                    Width =169
                    FontWeight =700
                    TabIndex =6
                    BackColor =967423
                    ForeColor =5026082
                    Name ="TF_BGF_Sp"
                    ControlSource ="=[TF_BGF]"
                    Format ="Standard"

                    LayoutCachedLeft =9062
                    LayoutCachedTop =56
                    LayoutCachedWidth =9231
                    LayoutCachedHeight =296
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =623
            BreakLevel =3
            Name ="Gruppenfuß2"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =285
                    Top =60
                    Width =1356
                    Height =285
                    ForeColor =16711680
                    Name ="aa"
                    ControlSource ="=[a_Gr_Sp]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =285
                    LayoutCachedTop =60
                    LayoutCachedWidth =1641
                    LayoutCachedHeight =345
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =1589
                    Top =60
                    Width =1356
                    Height =285
                    TabIndex =1
                    ForeColor =16711680
                    Name ="bb"
                    ControlSource ="=[b_Gr_Sp]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =1589
                    LayoutCachedTop =60
                    LayoutCachedWidth =2945
                    LayoutCachedHeight =345
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =2950
                    Top =60
                    Width =1356
                    Height =285
                    TabIndex =2
                    ForeColor =16711680
                    Name ="cc"
                    ControlSource ="=[c_Gr_Sp]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =2950
                    LayoutCachedTop =60
                    LayoutCachedWidth =4306
                    LayoutCachedHeight =345
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =4310
                    Top =60
                    Width =1356
                    Height =285
                    TabIndex =3
                    ForeColor =16711680
                    Name ="dd"
                    ControlSource ="=[d_Gr_Sp]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =4310
                    LayoutCachedTop =60
                    LayoutCachedWidth =5666
                    LayoutCachedHeight =345
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    TextFontFamily =34
                    Left =6975
                    Top =120
                    Width =1791
                    Height =225
                    FontWeight =700
                    TabIndex =4
                    Name ="Text96"
                    ControlSource ="=Sum([Betrag_])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =6975
                    LayoutCachedTop =120
                    LayoutCachedWidth =8766
                    LayoutCachedHeight =345
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Left =4980
                    Top =120
                    Width =1770
                    Height =255
                    FontWeight =700
                    Name ="Bezeichnungsfeld153"
                    Caption ="Summe zum Objekt:"
                    LayoutCachedLeft =4980
                    LayoutCachedTop =120
                    LayoutCachedWidth =6750
                    LayoutCachedHeight =375
                End
                Begin Line
                    BorderWidth =2
                    Top =450
                    Width =8812
                    Name ="Linie154"
                    LayoutCachedTop =450
                    LayoutCachedWidth =8812
                    LayoutCachedHeight =450
                End
                Begin TextBox
                    Visible = NotDefault
                    FontItalic = NotDefault
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =8820
                    Top =124
                    Width =169
                    FontWeight =700
                    TabIndex =5
                    BackColor =967423
                    ForeColor =5026082
                    Name ="TF_BGF_Obj"
                    ControlSource ="=[TF_BGF_Sp]"
                    Format ="Standard"

                    LayoutCachedLeft =8820
                    LayoutCachedTop =124
                    LayoutCachedWidth =8989
                    LayoutCachedHeight =364
                End
                Begin TextBox
                    Visible = NotDefault
                    FontItalic = NotDefault
                    RunningSum =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =9062
                    Top =120
                    Width =169
                    FontWeight =700
                    TabIndex =6
                    BackColor =967423
                    ForeColor =5026082
                    Name ="TF_BGF_Obj_kum"
                    ControlSource ="=[TF_BGF_Sp]"
                    Format ="Standard"

                    LayoutCachedLeft =9062
                    LayoutCachedTop =120
                    LayoutCachedWidth =9231
                    LayoutCachedHeight =360
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =1587
            BreakLevel =2
            Name ="Gruppenfuß3"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4025
                    Top =963
                    Width =1581
                    Height =225
                    Name ="aaa"
                    ControlSource ="=Int([aa])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4024
                    Top =510
                    Width =1581
                    Height =225
                    TabIndex =1
                    Name ="bbb"
                    ControlSource ="=Int([bb])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4024
                    Top =736
                    Width =1581
                    Height =225
                    TabIndex =2
                    Name ="ccc"
                    ControlSource ="=Int([cc])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4025
                    Top =283
                    Width =1581
                    Height =225
                    TabIndex =3
                    Name ="ddd"
                    ControlSource ="=Int([dd])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    Visible = NotDefault
                    Left =2211
                    Top =963
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld59"
                    Caption ="Abschreibung:"
                End
                Begin Label
                    Left =2210
                    Top =510
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld60"
                    Caption ="Miete:"
                End
                Begin Label
                    Left =2210
                    Top =737
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld61"
                    Caption ="Nebenkosten:"
                End
                Begin Label
                    Left =2205
                    Top =285
                    Width =1515
                    Height =225
                    Name ="Bezeichnungsfeld62"
                    Caption ="sonstige Kosten:"
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =226
                    Top =283
                    Width =1474
                    Height =225
                    FontSize =9
                    FontWeight =700
                    TabIndex =4
                    Name ="Text63"
                    ControlSource ="=\"Bereich \" & [BereichNr]"

                    LayoutCachedLeft =226
                    LayoutCachedTop =283
                    LayoutCachedWidth =1700
                    LayoutCachedHeight =508
                End
                Begin Rectangle
                    BackStyle =0
                    Top =170
                    Width =5782
                    Height =1134
                    Name ="Rechteck64"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6066
                    Top =56
                    Width =1356
                    Height =225
                    TabIndex =5
                    ForeColor =8388863
                    Name ="bet_a"
                    ControlSource ="=Int([aa])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6066
                    Top =283
                    Width =1356
                    Height =225
                    TabIndex =6
                    ForeColor =8388863
                    Name ="bet_b"
                    ControlSource ="=Int([bb])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6066
                    Top =509
                    Width =1356
                    Height =225
                    TabIndex =7
                    ForeColor =8388863
                    Name ="bet_c"
                    ControlSource ="=Int([cc])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6066
                    Top =736
                    Width =1356
                    Height =225
                    TabIndex =8
                    ForeColor =8388863
                    Name ="bet_d"
                    ControlSource ="=Int([dd])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =226
                    Top =510
                    Width =1474
                    TabIndex =9
                    Name ="ZF_BGF_Ber"
                    ControlSource ="=[TF_BGF_Obj_kum]"
                    Format ="#,##0.00\" m²\""

                    LayoutCachedLeft =226
                    LayoutCachedTop =510
                    LayoutCachedWidth =1700
                    LayoutCachedHeight =750
                End
                Begin TextBox
                    Visible = NotDefault
                    FontItalic = NotDefault
                    RunningSum =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =9075
                    Top =165
                    Width =169
                    FontWeight =700
                    TabIndex =10
                    BackColor =967423
                    ForeColor =5026082
                    Name ="ZF_BGF_Ber_kum"
                    ControlSource ="=[TF_BGF_Obj_kum]"
                    Format ="Standard"

                    LayoutCachedLeft =9075
                    LayoutCachedTop =165
                    LayoutCachedWidth =9244
                    LayoutCachedHeight =405
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =1700
            BreakLevel =1
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4025
                    Top =1139
                    Width =1581
                    Height =225
                    Name ="Text69"
                    ControlSource ="=[bet_a]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =4025
                    LayoutCachedTop =1139
                    LayoutCachedWidth =5606
                    LayoutCachedHeight =1364
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4024
                    Top =685
                    Width =1581
                    Height =225
                    TabIndex =1
                    Name ="Text70"
                    ControlSource ="=[bet_b]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =4024
                    LayoutCachedTop =685
                    LayoutCachedWidth =5605
                    LayoutCachedHeight =910
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4024
                    Top =911
                    Width =1581
                    Height =225
                    TabIndex =2
                    Name ="Text71"
                    ControlSource ="=[bet_c]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =4024
                    LayoutCachedTop =911
                    LayoutCachedWidth =5605
                    LayoutCachedHeight =1136
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4025
                    Top =459
                    Width =1581
                    Height =225
                    TabIndex =3
                    Name ="Text72"
                    ControlSource ="=[bet_d]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =4025
                    LayoutCachedTop =459
                    LayoutCachedWidth =5606
                    LayoutCachedHeight =684
                End
                Begin Label
                    Visible = NotDefault
                    Left =2211
                    Top =1139
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld73"
                    Caption ="Abschreibung:"
                    LayoutCachedLeft =2211
                    LayoutCachedTop =1139
                    LayoutCachedWidth =3456
                    LayoutCachedHeight =1364
                End
                Begin Label
                    Left =2210
                    Top =685
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld74"
                    Caption ="Miete:"
                    LayoutCachedLeft =2210
                    LayoutCachedTop =685
                    LayoutCachedWidth =3455
                    LayoutCachedHeight =910
                End
                Begin Label
                    Left =2210
                    Top =912
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld75"
                    Caption ="Nebenkosten:"
                    LayoutCachedLeft =2210
                    LayoutCachedTop =912
                    LayoutCachedWidth =3455
                    LayoutCachedHeight =1137
                End
                Begin Label
                    Left =2205
                    Top =457
                    Width =1515
                    Height =225
                    Name ="Bezeichnungsfeld76"
                    Caption ="sonstige Kosten:"
                    LayoutCachedLeft =2205
                    LayoutCachedTop =457
                    LayoutCachedWidth =3720
                    LayoutCachedHeight =682
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =225
                    Top =390
                    Width =1866
                    Height =285
                    FontSize =10
                    FontWeight =700
                    TabIndex =4
                    Name ="Text77"
                    ControlSource ="Betrieb"

                    LayoutCachedLeft =225
                    LayoutCachedTop =390
                    LayoutCachedWidth =2091
                    LayoutCachedHeight =675
                End
                Begin Rectangle
                    BackStyle =0
                    BorderWidth =2
                    Top =345
                    Width =5782
                    Height =1134
                    Name ="Rechteck78"
                    LayoutCachedTop =345
                    LayoutCachedWidth =5782
                    LayoutCachedHeight =1479
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6009
                    Top =459
                    Width =1356
                    Height =225
                    TabIndex =5
                    Name ="A-Verw"
                    ControlSource ="=[bet_a]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="A_Verw"

                    LayoutCachedLeft =6009
                    LayoutCachedTop =459
                    LayoutCachedWidth =7365
                    LayoutCachedHeight =684
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6009
                    Top =686
                    Width =1356
                    Height =225
                    TabIndex =6
                    Name ="B_Verw"
                    ControlSource ="=[bet_b]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =6009
                    LayoutCachedTop =686
                    LayoutCachedWidth =7365
                    LayoutCachedHeight =911
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6009
                    Top =912
                    Width =1356
                    Height =225
                    TabIndex =7
                    Name ="C_Verw"
                    ControlSource ="=[bet_c]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =6009
                    LayoutCachedTop =912
                    LayoutCachedWidth =7365
                    LayoutCachedHeight =1137
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6009
                    Top =1139
                    Width =1356
                    Height =225
                    TabIndex =8
                    Name ="D_Verw"
                    ControlSource ="=[bet_d]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =6009
                    LayoutCachedTop =1139
                    LayoutCachedWidth =7365
                    LayoutCachedHeight =1364
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =226
                    Top =685
                    Width =1866
                    TabIndex =9
                    Name ="ZF_BGF_Betr"
                    ControlSource ="=[ZF_BGF_Ber_kum]"
                    Format ="#,##0.00\" m²\""

                    LayoutCachedLeft =226
                    LayoutCachedTop =685
                    LayoutCachedWidth =2092
                    LayoutCachedHeight =925
                End
                Begin TextBox
                    Visible = NotDefault
                    FontItalic = NotDefault
                    RunningSum =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =9075
                    Top =682
                    Width =169
                    FontWeight =700
                    TabIndex =10
                    BackColor =967423
                    ForeColor =5026082
                    Name ="ZF_BGF_Betr_kum"
                    ControlSource ="=[ZF_BGF_Ber_kum]"
                    Format ="Standard"

                    LayoutCachedLeft =9075
                    LayoutCachedTop =682
                    LayoutCachedWidth =9244
                    LayoutCachedHeight =922
                End
            End
        End
        Begin PageFooter
            Height =523
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    BackStyle =0
                    Top =283
                    Width =3402
                    Name ="Text15"
                    ControlSource ="=Format(Date(),\"Long Date\") & \" \" & Format(Time(),\"Long Time\")"

                End
                Begin TextBox
                    BackStyle =0
                    Left =6916
                    Top =283
                    TabIndex =1
                    Name ="Text79"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"

                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =1870
            Name ="Berichtsfuß"
            Begin
                Begin Rectangle
                    BorderWidth =2
                    Top =285
                    Width =5782
                    Height =1524
                    Name ="Rechteck93"
                    LayoutCachedTop =285
                    LayoutCachedWidth =5782
                    LayoutCachedHeight =1809
                    BackThemeColorIndex =1
                    BackShade =95.0
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =4025
                    Top =1484
                    Width =1581
                    Height =225
                    Name ="Text84"
                    ControlSource ="=[A_Verw]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =4025
                    LayoutCachedTop =1484
                    LayoutCachedWidth =5606
                    LayoutCachedHeight =1709
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =4024
                    Top =1030
                    Width =1581
                    Height =225
                    TabIndex =1
                    Name ="Text85"
                    ControlSource ="=[B_Verw]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =4024
                    LayoutCachedTop =1030
                    LayoutCachedWidth =5605
                    LayoutCachedHeight =1255
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =4024
                    Top =1256
                    Width =1581
                    Height =225
                    TabIndex =2
                    Name ="Text86"
                    ControlSource ="=[C_Verw]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =4024
                    LayoutCachedTop =1256
                    LayoutCachedWidth =5605
                    LayoutCachedHeight =1481
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =4025
                    Top =804
                    Width =1581
                    Height =225
                    TabIndex =3
                    Name ="Text87"
                    ControlSource ="=[D_Verw]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =4025
                    LayoutCachedTop =804
                    LayoutCachedWidth =5606
                    LayoutCachedHeight =1029
                End
                Begin Label
                    Visible = NotDefault
                    Left =2211
                    Top =1484
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld88"
                    Caption ="Abschreibung:"
                    LayoutCachedLeft =2211
                    LayoutCachedTop =1484
                    LayoutCachedWidth =3456
                    LayoutCachedHeight =1709
                End
                Begin Label
                    Left =2210
                    Top =1030
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld89"
                    Caption ="Miete:"
                    LayoutCachedLeft =2210
                    LayoutCachedTop =1030
                    LayoutCachedWidth =3455
                    LayoutCachedHeight =1255
                End
                Begin Label
                    Left =2210
                    Top =1257
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld90"
                    Caption ="Nebenkosten:"
                    LayoutCachedLeft =2210
                    LayoutCachedTop =1257
                    LayoutCachedWidth =3455
                    LayoutCachedHeight =1482
                End
                Begin Label
                    Left =2205
                    Top =802
                    Width =1515
                    Height =225
                    Name ="Bezeichnungsfeld91"
                    Caption ="sonstige Kosten::"
                    LayoutCachedLeft =2205
                    LayoutCachedTop =802
                    LayoutCachedWidth =3720
                    LayoutCachedHeight =1027
                End
                Begin Label
                    TextFontFamily =34
                    Left =165
                    Top =352
                    Width =1455
                    Height =645
                    FontSize =12
                    FontWeight =700
                    Name ="Bezeichnungsfeld94"
                    Caption ="Gesamte \015\012Kalkulation:"
                    LayoutCachedLeft =165
                    LayoutCachedTop =352
                    LayoutCachedWidth =1620
                    LayoutCachedHeight =997
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    IMESentenceMode =3
                    Left =165
                    Top =1030
                    Width =1815
                    TabIndex =4
                    Name ="Text173"
                    ControlSource ="=[ZF_BGF_Betr_kum]"
                    Format ="#,##0.00\" m²\""

                    LayoutCachedLeft =165
                    LayoutCachedTop =1030
                    LayoutCachedWidth =1980
                    LayoutCachedHeight =1270
                End
            End
        End
    End
End
CodeBehindForm
' See "Mietkalkulation.cls"
