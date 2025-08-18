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
    Width =10630
    DatasheetFontHeight =10
    ItemSuffix =164
    Left =5513
    Top =3435
    RecSrcDt = Begin
        0x81e9a0f34c67e640
    End
    RecordSource ="select 1"
    Caption ="Gebäudeliste"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =1
            FontSize =9
            FontName ="Arial"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
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
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin ListBox
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin ComboBox
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin Subform
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            Width =4536
            Height =2835
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Erledigt_Status"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="ID_Gebäudeteil"
        End
        Begin BreakLevel
            ControlSource ="Maßnahme"
        End
        Begin BreakLevel
            ControlSource ="Sort_Jahr"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1077
            Name ="Berichtskopf"
            Begin
                Begin Label
                    Left =3465
                    Top =120
                    Width =4605
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld16"
                    Caption ="Finanzierte Maßnahmen"
                    FontName ="Arial Narrow"
                End
                Begin Label
                    FontItalic = NotDefault
                    SpecialEffect =1
                    BackStyle =1
                    TextAlign =2
                    Left =513
                    Top =67
                    Width =2600
                    Height =491
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    Name ="Caisy"
                    Caption ="Caisy B 60"
                    FontName ="Arial Narrow"
                End
                Begin Label
                    FontItalic = NotDefault
                    TextAlign =2
                    Width =3530
                    Height =964
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    ForeColor =65535
                    Name ="Text4"
                    Caption ="Caisy B 60"
                    FontName ="Arial Narrow"
                End
                Begin Label
                    Left =3458
                    Top =510
                    Width =4590
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld57"
                    Caption ="nach Erledigt-Status"
                    FontName ="Arial Narrow"
                End
            End
        End
        Begin PageHeader
            Height =283
            Name ="Seitenkopf"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            RepeatSection = NotDefault
            Height =566
            Name ="Gruppenkopf1"
            Begin
                Begin TextBox
                    TextAlign =1
                    BackStyle =1
                    Top =56
                    Width =10437
                    Height =375
                    FontSize =14
                    FontWeight =600
                    BackColor =14211288
                    Name ="TF_Level_0"
                    ControlSource ="Erledigt_Status"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =56
                    LayoutCachedWidth =10437
                    LayoutCachedHeight =431
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            RepeatSection = NotDefault
            Height =1247
            BreakLevel =1
            Name ="Gruppenkopf0"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    OldBorderStyle =1
                    BorderWidth =1
                    Left =60
                    Top =176
                    Width =8442
                    Height =405
                    ColumnWidth =3735
                    FontSize =14
                    FontWeight =700
                    Name ="TF_Level_1"
                    ControlSource ="Objekt"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =60
                    LayoutCachedTop =176
                    LayoutCachedWidth =8502
                    LayoutCachedHeight =581
                    BorderThemeColorIndex =0
                End
                Begin TextBox
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =2
                    Left =8504
                    Top =174
                    Width =2100
                    Height =405
                    FontSize =14
                    TabIndex =1
                    Name ="Name"
                    ControlSource ="SB"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8504
                    LayoutCachedTop =174
                    LayoutCachedWidth =10604
                    LayoutCachedHeight =579
                    BorderThemeColorIndex =0
                End
                Begin Label
                    Left =60
                    Top =795
                    Width =1035
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld75"
                    Caption ="Maßnahme"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =60
                    LayoutCachedTop =795
                    LayoutCachedWidth =1095
                    LayoutCachedHeight =1080
                End
                Begin Label
                    TextAlign =3
                    Left =8160
                    Top =795
                    Width =1026
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld80"
                    Caption ="Gepl. Budget"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =8160
                    LayoutCachedTop =795
                    LayoutCachedWidth =9186
                    LayoutCachedHeight =1080
                End
                Begin Line
                    BorderWidth =2
                    Top =1080
                    Width =10605
                    Name ="Linie81"
                    LayoutCachedTop =1080
                    LayoutCachedWidth =10605
                    LayoutCachedHeight =1080
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin Label
                    TextAlign =3
                    Left =7253
                    Top =795
                    Width =615
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld95"
                    Caption ="Fin.Jahr"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7253
                    LayoutCachedTop =795
                    LayoutCachedWidth =7868
                    LayoutCachedHeight =1080
                End
                Begin Label
                    TextAlign =3
                    Left =6630
                    Top =795
                    Width =597
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld96"
                    Caption ="Erl. Jahr"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6630
                    LayoutCachedTop =795
                    LayoutCachedWidth =7227
                    LayoutCachedHeight =1080
                End
                Begin Label
                    Visible = NotDefault
                    TextAlign =3
                    Left =6120
                    Top =795
                    Width =510
                    Height =285
                    Name ="BF_MN_ID"
                    Caption ="Maßn."
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6120
                    LayoutCachedTop =795
                    LayoutCachedWidth =6630
                    LayoutCachedHeight =1080
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
                Begin Label
                    TextAlign =3
                    Left =7883
                    Top =795
                    Width =278
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld106"
                    Caption ="Erl."
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7883
                    LayoutCachedTop =795
                    LayoutCachedWidth =8161
                    LayoutCachedHeight =1080
                End
                Begin Label
                    TextAlign =3
                    Left =9237
                    Top =795
                    Width =1367
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld118"
                    Caption ="Tatsächl. Kosten"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =9237
                    LayoutCachedTop =795
                    LayoutCachedWidth =10604
                    LayoutCachedHeight =1080
                End
                Begin Label
                    Visible = NotDefault
                    TextAlign =3
                    Left =4935
                    Top =795
                    Width =1244
                    Height =285
                    ForeColor =2366701
                    Name ="BF_TatsOderGeplant"
                    Caption ="Tats. / Geplant"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =4935
                    LayoutCachedTop =795
                    LayoutCachedWidth =6179
                    LayoutCachedHeight =1080
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =453
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    Left =8143
                    Top =53
                    Width =1134
                    Height =255
                    Name ="voraussKosten"
                    ControlSource ="Gepl_Finanz"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8143
                    LayoutCachedTop =53
                    LayoutCachedWidth =9277
                    LayoutCachedHeight =308
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =1
                    Left =53
                    Top =53
                    Width =5074
                    Height =255
                    TabIndex =1
                    Name ="Text40"
                    ControlSource ="Maßnahme"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =53
                    LayoutCachedTop =53
                    LayoutCachedWidth =5127
                    LayoutCachedHeight =308
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7276
                    Top =53
                    Width =533
                    Height =256
                    ColumnWidth =1395
                    TabIndex =2
                    Name ="Kal_Jahr"
                    ControlSource ="Kal_Jahr"
                    Format ="0000"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7276
                    LayoutCachedTop =53
                    LayoutCachedWidth =7809
                    LayoutCachedHeight =309
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =2
                    IMESentenceMode =3
                    Left =6706
                    Top =53
                    Width =567
                    Height =256
                    TabIndex =3
                    Name ="erledigt im Jahr"
                    ControlSource ="erledigt im Jahr"
                    FontName ="Arial Narrow"
                    EventProcPrefix ="erledigt_im_Jahr"

                    LayoutCachedLeft =6706
                    LayoutCachedTop =53
                    LayoutCachedWidth =7273
                    LayoutCachedHeight =309
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    FontItalic = NotDefault
                    TextAlign =1
                    IMESentenceMode =3
                    Left =285
                    Top =255
                    Width =6126
                    Height =57
                    ColumnWidth =2805
                    TabIndex =4
                    Name ="nicht mehr erforderlich weil"
                    ControlSource ="nicht mehr erforderlich weil"
                    FontName ="Arial Narrow"
                    EventProcPrefix ="nicht_mehr_erforderlich_weil"

                    LayoutCachedLeft =285
                    LayoutCachedTop =255
                    LayoutCachedWidth =6411
                    LayoutCachedHeight =312
                End
                Begin Line
                    BorderWidth =1
                    Top =338
                    Width =10604
                    Height =23
                    Name ="Linie99"
                    LayoutCachedTop =338
                    LayoutCachedWidth =10604
                    LayoutCachedHeight =361
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =3
                    IMESentenceMode =3
                    Left =6143
                    Top =53
                    Width =510
                    Height =255
                    ColumnWidth =1125
                    TabIndex =5
                    Name ="TF_MN_ID"
                    ControlSource ="ID_Massn"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6143
                    LayoutCachedTop =53
                    LayoutCachedWidth =6653
                    LayoutCachedHeight =308
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
                Begin CheckBox
                    Left =7906
                    Top =106
                    Width =174
                    Height =198
                    TabIndex =6
                    Name ="Kontrollkästchen104"
                    ControlSource ="Erl"

                    LayoutCachedLeft =7906
                    LayoutCachedTop =106
                    LayoutCachedWidth =8080
                    LayoutCachedHeight =304
                End
                Begin TextBox
                    Left =9260
                    Top =53
                    Width =1367
                    Height =255
                    TabIndex =7
                    Name ="Text119"
                    ControlSource ="tats_Kosten_Infoma"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =9260
                    LayoutCachedTop =53
                    LayoutCachedWidth =10627
                    LayoutCachedHeight =308
                End
                Begin TextBox
                    Visible = NotDefault
                    IMESentenceMode =3
                    Left =5071
                    Top =53
                    Width =1131
                    Height =255
                    TabIndex =8
                    ForeColor =2366701
                    Name ="TatsOderGeplant"
                    ControlSource ="TatsOderGeplant"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5071
                    LayoutCachedTop =53
                    LayoutCachedWidth =6202
                    LayoutCachedHeight =308
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =576
            BreakLevel =1
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    Left =7658
                    Width =1596
                    Height =319
                    FontSize =10
                    FontWeight =700
                    Name ="TF_Sum_Lev_1"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7658
                    LayoutCachedWidth =9254
                    LayoutCachedHeight =319
                End
                Begin TextBox
                    CanGrow = NotDefault
                    Left =165
                    Top =7
                    Width =6822
                    Height =319
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    Name ="Text86"
                    ControlSource ="=\"Summe zu \" & [TF_Level_1]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =165
                    LayoutCachedTop =7
                    LayoutCachedWidth =6987
                    LayoutCachedHeight =326
                End
                Begin Line
                    BorderWidth =2
                    Width =10605
                    Name ="Linie97"
                    LayoutCachedWidth =10605
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    BackStyle =1
                    Left =2886
                    Top =450
                    Width =680
                    Height =66
                    FontSize =14
                    FontWeight =700
                    TabIndex =2
                    BackColor =967423
                    Name ="TF_Sum_Lev_1_kum_3"
                    ControlSource ="=Sum(IIf(Left([Erledigt_Status],1)=\"3\",[Gepl_Finanz],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =2886
                    LayoutCachedTop =450
                    LayoutCachedWidth =3566
                    LayoutCachedHeight =516
                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    BackStyle =1
                    Left =1924
                    Top =450
                    Width =680
                    Height =59
                    FontSize =14
                    FontWeight =700
                    TabIndex =3
                    BackColor =967423
                    Name ="TF_Sum_Lev_1_kum_1_2"
                    ControlSource ="=Sum(IIf(Left([Erledigt_Status],1)<>\"3\",[Gepl_Finanz],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =1924
                    LayoutCachedTop =450
                    LayoutCachedWidth =2604
                    LayoutCachedHeight =509
                End
                Begin TextBox
                    Left =9237
                    Top =3
                    Width =1367
                    Height =319
                    FontSize =10
                    FontWeight =700
                    TabIndex =4
                    Name ="Text120"
                    ControlSource ="=Sum([TatsOderGeplant])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =9237
                    LayoutCachedTop =3
                    LayoutCachedWidth =10604
                    LayoutCachedHeight =322
                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    BackStyle =1
                    Top =450
                    Width =680
                    Height =59
                    FontSize =14
                    FontWeight =700
                    TabIndex =5
                    BackColor =967423
                    Name ="TF_Sum_Lev_1_kum_1"
                    ControlSource ="=Sum(IIf(Left([Erledigt_Status],1)=\"1\",[Gepl_Finanz],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =450
                    LayoutCachedWidth =680
                    LayoutCachedHeight =509
                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    BackStyle =1
                    Left =962
                    Top =450
                    Width =680
                    Height =59
                    FontSize =14
                    FontWeight =700
                    TabIndex =6
                    BackColor =967423
                    Name ="TF_Sum_Lev_1_kum_2"
                    ControlSource ="=Sum(IIf(Left([Erledigt_Status],1)=\"2\",[Gepl_Finanz],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =962
                    LayoutCachedTop =450
                    LayoutCachedWidth =1642
                    LayoutCachedHeight =509
                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    BackStyle =1
                    Left =9467
                    Top =453
                    Width =680
                    Height =66
                    FontSize =14
                    FontWeight =700
                    TabIndex =7
                    BackColor =967423
                    Name ="TF_Sum_Lev_1_kum_3_tats"
                    ControlSource ="=Sum(IIf(Left([Erledigt_Status],1)=\"3\",[TatsOderGeplant],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =9467
                    LayoutCachedTop =453
                    LayoutCachedWidth =10147
                    LayoutCachedHeight =519
                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    BackStyle =1
                    Left =8390
                    Top =453
                    Width =680
                    Height =59
                    FontSize =14
                    FontWeight =700
                    TabIndex =8
                    BackColor =967423
                    Name ="TF_Sum_Lev_1_kum_1_2_tats"
                    ControlSource ="=Sum(IIf(Left([Erledigt_Status],1)<>\"3\",[TatsOderGeplant],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8390
                    LayoutCachedTop =453
                    LayoutCachedWidth =9070
                    LayoutCachedHeight =512
                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    BackStyle =1
                    Left =6236
                    Top =453
                    Width =680
                    Height =59
                    FontSize =14
                    FontWeight =700
                    TabIndex =9
                    BackColor =967423
                    Name ="TF_Sum_Lev_1_kum_1_tats"
                    ControlSource ="=Sum(IIf(Left([Erledigt_Status],1)=\"1\",[TatsOderGeplant],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6236
                    LayoutCachedTop =453
                    LayoutCachedWidth =6916
                    LayoutCachedHeight =512
                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    BackStyle =1
                    Left =7313
                    Top =453
                    Width =680
                    Height =59
                    FontSize =14
                    FontWeight =700
                    TabIndex =10
                    BackColor =967423
                    Name ="TF_Sum_Lev_1_kum_2_tats"
                    ControlSource ="=Sum(IIf(Left([Erledigt_Status],1)=\"2\",[TatsOderGeplant],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7313
                    LayoutCachedTop =453
                    LayoutCachedWidth =7993
                    LayoutCachedHeight =512
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =1036
            Name ="Gruppenfuß0"
            Begin
                Begin Rectangle
                    BackStyle =1
                    OldBorderStyle =0
                    Left =3
                    Top =285
                    Width =10601
                    Height =375
                    BackColor =14211288
                    Name ="Rechteck64"
                    LayoutCachedLeft =3
                    LayoutCachedTop =285
                    LayoutCachedWidth =10604
                    LayoutCachedHeight =660
                End
                Begin TextBox
                    DecimalPlaces =0
                    Left =7666
                    Top =286
                    Width =1596
                    Height =313
                    FontSize =10
                    FontWeight =700
                    Name ="TF_KJ_Summe"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7666
                    LayoutCachedTop =286
                    LayoutCachedWidth =9262
                    LayoutCachedHeight =599
                End
                Begin TextBox
                    TextAlign =3
                    Left =113
                    Top =285
                    Width =7386
                    Height =313
                    FontSize =10
                    FontWeight =700
                    TabIndex =2
                    Name ="Text63"
                    ControlSource ="=\"Summe zu \" & [TF_Level_0]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =113
                    LayoutCachedTop =285
                    LayoutCachedWidth =7499
                    LayoutCachedHeight =598
                End
                Begin TextBox
                    Left =9245
                    Top =293
                    Width =1367
                    Height =313
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    Name ="Text121"
                    ControlSource ="=Sum([TatsOderGeplant])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =9245
                    LayoutCachedTop =293
                    LayoutCachedWidth =10612
                    LayoutCachedHeight =606
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =2
                    Top =623
                    Width =10604
                    Height =7
                    Name ="Linie89"
                    LayoutCachedTop =623
                    LayoutCachedWidth =10604
                    LayoutCachedHeight =630
                End
            End
        End
        Begin PageFooter
            Height =555
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =3
                    Left =4710
                    Top =285
                    Width =5449
                    Height =270
                    FontSize =8
                    Name ="Text18"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4710
                    LayoutCachedTop =285
                    LayoutCachedWidth =10159
                    LayoutCachedHeight =555
                End
                Begin TextBox
                    Left =56
                    Top =283
                    Width =4257
                    TabIndex =1
                    Name ="Text67"
                    ControlSource ="=Format(Date(),\"Long Date\") & \" \" & Format(Time(),\"Long Time\")"
                    FontName ="Arial Narrow"

                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =3571
            Name ="Berichtsfuß"
            Begin
                Begin Rectangle
                    BackStyle =1
                    Left =1928
                    Top =338
                    Width =6865
                    Height =3112
                    Name ="Rechteck112"
                    LayoutCachedLeft =1928
                    LayoutCachedTop =338
                    LayoutCachedWidth =8793
                    LayoutCachedHeight =3450
                    BackThemeColorIndex =1
                    BackShade =95.0
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
                Begin TextBox
                    Visible = NotDefault
                    BackStyle =1
                    Left =7717
                    Top =111
                    Width =2153
                    Height =59
                    FontSize =14
                    FontWeight =700
                    BackColor =967423
                    Name ="TF_Summe_ges"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7717
                    LayoutCachedTop =111
                    LayoutCachedWidth =9870
                    LayoutCachedHeight =170
                End
                Begin Label
                    Visible = NotDefault
                    BackStyle =1
                    TextAlign =3
                    Left =4586
                    Top =111
                    Width =2494
                    Height =59
                    FontSize =14
                    FontWeight =700
                    BackColor =967423
                    Name ="Bezeichnungsfeld42"
                    Caption ="Summe alle Gebäude:"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =4586
                    LayoutCachedTop =111
                    LayoutCachedWidth =7080
                    LayoutCachedHeight =170
                End
                Begin TextBox
                    Left =4686
                    Top =905
                    Width =1592
                    Height =300
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    Name ="TF_Summe_1"
                    ControlSource ="=[TF_Sum_Lev_1_kum_1]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4686
                    LayoutCachedTop =905
                    LayoutCachedWidth =6278
                    LayoutCachedHeight =1205
                    Begin
                        Begin Label
                            TextAlign =0
                            Left =2213
                            Top =905
                            Width =2044
                            Height =300
                            FontSize =10
                            FontWeight =700
                            Name ="Bezeichnungsfeld109"
                            Caption ="1)  Erledigt"
                            FontName ="Arial Narrow"
                            Tag ="DetachedLabel"
                            LayoutCachedLeft =2213
                            LayoutCachedTop =905
                            LayoutCachedWidth =4257
                            LayoutCachedHeight =1205
                        End
                    End
                End
                Begin TextBox
                    Left =4686
                    Top =1379
                    Width =1592
                    Height =300
                    FontSize =10
                    FontWeight =700
                    TabIndex =2
                    Name ="TF_Summe_2"
                    ControlSource ="=[TF_Sum_Lev_1_kum_2]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4686
                    LayoutCachedTop =1379
                    LayoutCachedWidth =6278
                    LayoutCachedHeight =1679
                    Begin
                        Begin Label
                            TextAlign =0
                            Left =2213
                            Top =1379
                            Width =2044
                            Height =300
                            FontSize =10
                            FontWeight =700
                            Name ="Bezeichnungsfeld110"
                            Caption ="2) Nicht erledigt"
                            FontName ="Arial Narrow"
                            Tag ="DetachedLabel"
                            LayoutCachedLeft =2213
                            LayoutCachedTop =1379
                            LayoutCachedWidth =4257
                            LayoutCachedHeight =1679
                        End
                    End
                End
                Begin Label
                    FontUnderline = NotDefault
                    Left =2212
                    Top =450
                    Width =2044
                    Height =300
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld111"
                    Caption ="Gesamtsummen"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =2212
                    LayoutCachedTop =450
                    LayoutCachedWidth =4256
                    LayoutCachedHeight =750
                End
                Begin Line
                    BorderWidth =2
                    OverlapFlags =4
                    Left =2213
                    Top =1815
                    Width =6069
                    Name ="Linie115"
                    LayoutCachedLeft =2213
                    LayoutCachedTop =1815
                    LayoutCachedWidth =8282
                    LayoutCachedHeight =1815
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
                Begin Label
                    TextAlign =3
                    Left =4686
                    Top =450
                    Width =1592
                    Height =300
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld128"
                    Caption ="Geplantes Budget"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =4686
                    LayoutCachedTop =450
                    LayoutCachedWidth =6278
                    LayoutCachedHeight =750
                End
                Begin TextBox
                    Left =4686
                    Top =1988
                    Width =1592
                    Height =300
                    FontSize =10
                    FontWeight =700
                    TabIndex =3
                    Name ="TF_Summe_1_2"
                    ControlSource ="=[TF_Sum_Lev_1_kum_1_2]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4686
                    LayoutCachedTop =1988
                    LayoutCachedWidth =6278
                    LayoutCachedHeight =2288
                    Begin
                        Begin Label
                            TextAlign =0
                            Left =2213
                            Top =1988
                            Width =2044
                            Height =300
                            FontSize =10
                            FontWeight =700
                            Name ="Bezeichnungsfeld138"
                            Caption ="Summe 1 + 2"
                            FontName ="Arial Narrow"
                            Tag ="DetachedLabel"
                            LayoutCachedLeft =2213
                            LayoutCachedTop =1988
                            LayoutCachedWidth =4257
                            LayoutCachedHeight =2288
                        End
                    End
                End
                Begin TextBox
                    Left =4591
                    Top =2948
                    Width =1687
                    Height =300
                    FontSize =10
                    FontWeight =700
                    TabIndex =4
                    Name ="TF_Summe_3"
                    ControlSource ="=[TF_Sum_Lev_1_kum_3]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4591
                    LayoutCachedTop =2948
                    LayoutCachedWidth =6278
                    LayoutCachedHeight =3248
                    Begin
                        Begin Label
                            Left =2213
                            Top =2948
                            Width =2149
                            Height =300
                            FontSize =10
                            FontWeight =700
                            Name ="Bezeichnungsfeld140"
                            Caption ="3) Nicht mehr erforderlich"
                            FontName ="Arial Narrow"
                            Tag ="DetachedLabel"
                            LayoutCachedLeft =2213
                            LayoutCachedTop =2948
                            LayoutCachedWidth =4362
                            LayoutCachedHeight =3248
                        End
                    End
                End
                Begin TextBox
                    Left =6459
                    Top =905
                    Width =1810
                    Height =300
                    FontSize =10
                    FontWeight =700
                    TabIndex =5
                    Name ="TF_Summe_1_tats"
                    ControlSource ="=[TF_Sum_Lev_1_kum_1_tats]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6459
                    LayoutCachedTop =905
                    LayoutCachedWidth =8269
                    LayoutCachedHeight =1205
                End
                Begin TextBox
                    Left =6459
                    Top =1379
                    Width =1810
                    Height =300
                    FontSize =10
                    FontWeight =700
                    TabIndex =6
                    Name ="TF_Summe_2_tats"
                    ControlSource ="=[TF_Sum_Lev_1_kum_2_tats]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6459
                    LayoutCachedTop =1379
                    LayoutCachedWidth =8269
                    LayoutCachedHeight =1679
                End
                Begin Label
                    TextAlign =3
                    Left =6459
                    Top =450
                    Width =1810
                    Height =300
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld159"
                    Caption ="Tatsächliche Kosten"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6459
                    LayoutCachedTop =450
                    LayoutCachedWidth =8269
                    LayoutCachedHeight =750
                End
                Begin TextBox
                    Left =6459
                    Top =1988
                    Width =1810
                    Height =300
                    FontSize =10
                    FontWeight =700
                    TabIndex =7
                    Name ="TF_Summe_1_2_tats"
                    ControlSource ="=[TF_Sum_Lev_1_kum_1_2_tats]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6459
                    LayoutCachedTop =1988
                    LayoutCachedWidth =8269
                    LayoutCachedHeight =2288
                End
                Begin TextBox
                    Left =6459
                    Top =2948
                    Width =1810
                    Height =300
                    FontSize =10
                    FontWeight =700
                    TabIndex =8
                    Name ="TF_Summe_3_tats"
                    ControlSource ="=[TF_Sum_Lev_1_kum_3_tats]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6459
                    LayoutCachedTop =2948
                    LayoutCachedWidth =8269
                    LayoutCachedHeight =3248
                End
            End
        End
    End
End
CodeBehindForm
' See "Sanierungsstau Finanzplanung Erledigt_Status.cls"
