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
    Width =10544
    DatasheetFontHeight =10
    ItemSuffix =122
    Left =6360
    Top =3435
    RecSrcDt = Begin
        0x2779c3628d63e640
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
            ControlSource ="Objekt"
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
            Height =1133
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
                    Width =8269
                    Height =405
                    ColumnWidth =3735
                    FontSize =14
                    FontWeight =700
                    Name ="TF_Level_1"
                    ControlSource ="Objekt"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =60
                    LayoutCachedTop =176
                    LayoutCachedWidth =8329
                    LayoutCachedHeight =581
                    BorderThemeColorIndex =0
                End
                Begin TextBox
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =2
                    Left =8392
                    Top =174
                    Width =1866
                    Height =405
                    FontSize =14
                    TabIndex =1
                    Name ="Name"
                    ControlSource ="SB"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8392
                    LayoutCachedTop =174
                    LayoutCachedWidth =10258
                    LayoutCachedHeight =579
                    BorderThemeColorIndex =0
                End
                Begin Label
                    Left =60
                    Top =808
                    Width =1035
                    Height =270
                    FontWeight =700
                    Name ="Bezeichnungsfeld75"
                    Caption ="Maßnahme"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =60
                    LayoutCachedTop =808
                    LayoutCachedWidth =1095
                    LayoutCachedHeight =1078
                End
                Begin Label
                    TextAlign =3
                    Left =7992
                    Top =804
                    Width =1026
                    Height =271
                    FontWeight =700
                    Name ="Bezeichnungsfeld80"
                    Caption ="gepl. Budget"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7992
                    LayoutCachedTop =804
                    LayoutCachedWidth =9018
                    LayoutCachedHeight =1075
                End
                Begin Line
                    BorderWidth =2
                    Left =60
                    Top =1080
                    Width =10319
                    Name ="Linie81"
                    LayoutCachedLeft =60
                    LayoutCachedTop =1080
                    LayoutCachedWidth =10379
                    LayoutCachedHeight =1080
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin Label
                    TextAlign =3
                    Left =6995
                    Top =812
                    Width =615
                    Height =240
                    FontWeight =700
                    Name ="Bezeichnungsfeld95"
                    Caption ="Fin.Jahr"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6995
                    LayoutCachedTop =812
                    LayoutCachedWidth =7610
                    LayoutCachedHeight =1052
                End
                Begin Label
                    TextAlign =3
                    Left =6345
                    Top =795
                    Width =657
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld96"
                    Caption ="erl. Jahr:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6345
                    LayoutCachedTop =795
                    LayoutCachedWidth =7002
                    LayoutCachedHeight =1080
                End
                Begin Label
                    Visible = NotDefault
                    TextAlign =3
                    Left =5610
                    Top =804
                    Width =735
                    Height =285
                    Name ="BF_MN_ID"
                    Caption ="ID-Maßn.:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =5610
                    LayoutCachedTop =804
                    LayoutCachedWidth =6345
                    LayoutCachedHeight =1089
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
                Begin Label
                    TextAlign =3
                    Left =7676
                    Top =812
                    Width =278
                    Height =240
                    FontWeight =700
                    Name ="Bezeichnungsfeld106"
                    Caption ="Erl."
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7676
                    LayoutCachedTop =812
                    LayoutCachedWidth =7954
                    LayoutCachedHeight =1052
                End
                Begin Label
                    TextAlign =3
                    Left =9121
                    Top =804
                    Width =1134
                    Height =240
                    FontWeight =700
                    Name ="Bezeichnungsfeld118"
                    Caption ="tats. Kosten"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =9121
                    LayoutCachedTop =804
                    LayoutCachedWidth =10255
                    LayoutCachedHeight =1044
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =340
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    Left =7980
                    Width =1134
                    Height =255
                    Name ="voraussKosten"
                    ControlSource ="Gepl_Finanz"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7980
                    LayoutCachedWidth =9114
                    LayoutCachedHeight =255
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =1
                    Left =30
                    Width =5582
                    Height =255
                    TabIndex =1
                    Name ="Text40"
                    ControlSource ="Maßnahme"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =30
                    LayoutCachedWidth =5612
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7028
                    Width =533
                    Height =255
                    ColumnWidth =1395
                    TabIndex =2
                    Name ="Kal_Jahr"
                    ControlSource ="Kal_Jahr"
                    Format ="0000"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7028
                    LayoutCachedWidth =7561
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =2
                    IMESentenceMode =3
                    Left =6389
                    Width =567
                    Height =255
                    TabIndex =3
                    Name ="erledigt im Jahr"
                    ControlSource ="erledigt im Jahr"
                    FontName ="Arial Narrow"
                    EventProcPrefix ="erledigt_im_Jahr"

                    LayoutCachedLeft =6389
                    LayoutCachedWidth =6956
                    LayoutCachedHeight =255
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
                    Left =60
                    Top =312
                    Width =10319
                    Name ="Linie99"
                    LayoutCachedLeft =60
                    LayoutCachedTop =312
                    LayoutCachedWidth =10379
                    LayoutCachedHeight =312
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =3
                    IMESentenceMode =3
                    Left =5722
                    Width =630
                    Height =255
                    ColumnWidth =1125
                    TabIndex =5
                    Name ="TF_MN_ID"
                    ControlSource ="ID_Massn"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5722
                    LayoutCachedWidth =6352
                    LayoutCachedHeight =255
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
                Begin CheckBox
                    Left =7731
                    Top =23
                    Width =196
                    Height =198
                    TabIndex =6
                    Name ="Kontrollkästchen104"
                    ControlSource ="Erl"

                    LayoutCachedLeft =7731
                    LayoutCachedTop =23
                    LayoutCachedWidth =7927
                    LayoutCachedHeight =221
                End
                Begin TextBox
                    Left =9120
                    Width =1134
                    Height =255
                    TabIndex =7
                    Name ="Text119"
                    ControlSource ="tats_Kosten_Infoma"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =9120
                    LayoutCachedWidth =10254
                    LayoutCachedHeight =255
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =573
            BreakLevel =1
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    Left =7003
                    Top =60
                    Width =1595
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="TF_Sum_Lev_1"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7003
                    LayoutCachedTop =60
                    LayoutCachedWidth =8598
                    LayoutCachedHeight =435
                End
                Begin TextBox
                    CanGrow = NotDefault
                    Left =165
                    Top =60
                    Width =6822
                    Height =405
                    FontSize =14
                    FontWeight =700
                    TabIndex =1
                    Name ="Text86"
                    ControlSource ="=\"Summe zu \" & [TF_Level_1]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =165
                    LayoutCachedTop =60
                    LayoutCachedWidth =6987
                    LayoutCachedHeight =465
                End
                Begin Line
                    BorderWidth =2
                    Left =57
                    Top =30
                    Width =10319
                    Name ="Linie97"
                    LayoutCachedLeft =57
                    LayoutCachedTop =30
                    LayoutCachedWidth =10376
                    LayoutCachedHeight =30
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    BackStyle =1
                    Left =7714
                    Top =514
                    Width =2153
                    Height =59
                    FontSize =14
                    FontWeight =700
                    TabIndex =2
                    BackColor =967423
                    Name ="TF_Sum_Lev_1_kum_3"
                    ControlSource ="=Sum(IIf(Left([Erledigt_Status],1)=\"3\",[Gepl_Finanz],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7714
                    LayoutCachedTop =514
                    LayoutCachedWidth =9867
                    LayoutCachedHeight =573
                End
                Begin TextBox
                    Visible = NotDefault
                    RunningSum =2
                    BackStyle =1
                    Left =5499
                    Top =510
                    Width =2153
                    Height =59
                    FontSize =14
                    FontWeight =700
                    TabIndex =3
                    BackColor =967423
                    Name ="TF_Sum_Lev_1_kum_1_2"
                    ControlSource ="=Sum(IIf(Left([Erledigt_Status],1)<>\"3\",[Gepl_Finanz],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5499
                    LayoutCachedTop =510
                    LayoutCachedWidth =7652
                    LayoutCachedHeight =569
                End
                Begin TextBox
                    Left =8618
                    Top =56
                    Width =1758
                    Height =375
                    FontSize =14
                    FontWeight =700
                    TabIndex =4
                    Name ="Text120"
                    ControlSource ="=Sum([tats_Kosten_Infoma])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8618
                    LayoutCachedTop =56
                    LayoutCachedWidth =10376
                    LayoutCachedHeight =431
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
                    Top =165
                    Width =10436
                    Height =375
                    BackColor =14211288
                    Name ="Rechteck64"
                    LayoutCachedTop =165
                    LayoutCachedWidth =10436
                    LayoutCachedHeight =540
                End
                Begin TextBox
                    DecimalPlaces =0
                    Left =7003
                    Top =166
                    Width =1596
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="TF_KJ_Summe"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7003
                    LayoutCachedTop =166
                    LayoutCachedWidth =8599
                    LayoutCachedHeight =541
                End
                Begin TextBox
                    TextAlign =3
                    Left =105
                    Top =165
                    Width =6883
                    Height =360
                    FontSize =14
                    FontWeight =700
                    TabIndex =1
                    Name ="Text63"
                    ControlSource ="=\"Summe zu \" & [TF_Level_0]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =105
                    LayoutCachedTop =165
                    LayoutCachedWidth =6988
                    LayoutCachedHeight =525
                End
                Begin Line
                    BorderWidth =2
                    Left =120
                    Top =630
                    Width =10319
                    Name ="Linie89"
                    LayoutCachedLeft =120
                    LayoutCachedTop =630
                    LayoutCachedWidth =10439
                    LayoutCachedHeight =630
                End
                Begin TextBox
                    Left =8618
                    Top =170
                    Width =1758
                    Height =375
                    FontSize =14
                    FontWeight =700
                    TabIndex =2
                    Name ="Text121"
                    ControlSource ="=Sum([tats_Kosten_Infoma])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8618
                    LayoutCachedTop =170
                    LayoutCachedWidth =10376
                    LayoutCachedHeight =545
                End
            End
        End
        Begin PageFooter
            Height =553
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =3
                    Left =4535
                    Top =283
                    Width =5276
                    Height =270
                    FontSize =8
                    Name ="Text18"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4535
                    LayoutCachedTop =283
                    LayoutCachedWidth =9811
                    LayoutCachedHeight =553
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
            Height =2675
            Name ="Berichtsfuß"
            Begin
                Begin Rectangle
                    BackStyle =1
                    Left =677
                    Top =343
                    Width =9760
                    Height =2332
                    Name ="Rechteck112"
                    LayoutCachedLeft =677
                    LayoutCachedTop =343
                    LayoutCachedWidth =10437
                    LayoutCachedHeight =2675
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
                    Left =7712
                    Top =908
                    Width =2153
                    Height =343
                    FontSize =14
                    FontWeight =700
                    TabIndex =1
                    Name ="TF_Summe_1_2"
                    ControlSource ="=[TF_Sum_Lev_1_kum_1_2]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7712
                    LayoutCachedTop =908
                    LayoutCachedWidth =9865
                    LayoutCachedHeight =1251
                    Begin
                        Begin Label
                            TextAlign =3
                            Left =1864
                            Top =908
                            Width =5666
                            Height =369
                            FontSize =14
                            FontWeight =700
                            Name ="Bezeichnungsfeld109"
                            Caption ="Summe zu 1 + 2 ( erledigt und nicht erledigt):"
                            FontName ="Arial Narrow"
                            Tag ="DetachedLabel"
                            LayoutCachedLeft =1864
                            LayoutCachedTop =908
                            LayoutCachedWidth =7530
                            LayoutCachedHeight =1277
                        End
                    End
                End
                Begin TextBox
                    Left =7712
                    Top =1382
                    Width =2153
                    Height =343
                    FontSize =14
                    FontWeight =700
                    TabIndex =2
                    Name ="TF_Summe_3"
                    ControlSource ="=[TF_Sum_Lev_1_kum_3]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7712
                    LayoutCachedTop =1382
                    LayoutCachedWidth =9865
                    LayoutCachedHeight =1725
                    Begin
                        Begin Label
                            TextAlign =3
                            Left =2662
                            Top =1380
                            Width =4868
                            Height =369
                            FontSize =14
                            FontWeight =700
                            Name ="Bezeichnungsfeld110"
                            Caption ="Summe zu 3 (nicht mehr erforderlich):"
                            FontName ="Arial Narrow"
                            Tag ="DetachedLabel"
                            LayoutCachedLeft =2662
                            LayoutCachedTop =1380
                            LayoutCachedWidth =7530
                            LayoutCachedHeight =1749
                        End
                    End
                End
                Begin Label
                    Left =1864
                    Top =454
                    Width =1929
                    Height =369
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld111"
                    Caption ="Gesamtsummen:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =1864
                    LayoutCachedTop =454
                    LayoutCachedWidth =3793
                    LayoutCachedHeight =823
                End
                Begin TextBox
                    Left =7712
                    Top =1990
                    Width =2153
                    Height =343
                    FontSize =14
                    FontWeight =700
                    TabIndex =3
                    Name ="Text113"
                    ControlSource ="=[TF_Summe_1_2]+[TF_Summe_3]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7712
                    LayoutCachedTop =1990
                    LayoutCachedWidth =9865
                    LayoutCachedHeight =2333
                    Begin
                        Begin Label
                            TextAlign =3
                            Left =2653
                            Top =1988
                            Width =4868
                            Height =369
                            FontSize =14
                            FontWeight =700
                            Name ="Bezeichnungsfeld114"
                            Caption ="Gesamt:"
                            FontName ="Arial Narrow"
                            Tag ="DetachedLabel"
                            LayoutCachedLeft =2653
                            LayoutCachedTop =1988
                            LayoutCachedWidth =7521
                            LayoutCachedHeight =2357
                        End
                    End
                End
                Begin Line
                    BorderWidth =2
                    Left =2146
                    Top =1817
                    Width =7709
                    Name ="Linie115"
                    LayoutCachedLeft =2146
                    LayoutCachedTop =1817
                    LayoutCachedWidth =9855
                    LayoutCachedHeight =1817
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
            End
        End
    End
End
CodeBehindForm
' See "Sanierungsstau Finanzplanung Erledigt_Status.cls"
