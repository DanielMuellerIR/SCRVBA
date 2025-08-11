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
    Width =9984
    DatasheetFontHeight =10
    ItemSuffix =114
    Left =8640
    Top =2235
    RecSrcDt = Begin
        0xe0b5e81b101ae540
    End
    RecordSource ="SELECT [Bericht Sanierungsstau nach Finanzplanung].* FROM [Bericht Sanierungssta"
        "u nach Finanzplanung] WHERE ((([Bericht Sanierungsstau nach Finanzplanung].ID_Ge"
        "bäude) Between F_Variable(\"lng_ID_Geb_Min\") And F_Variable(\"lng_ID_Geb_Max\")"
        ") AND (([Bericht Sanierungsstau nach Finanzplanung].ID_Gebäudeteil) Between F_Va"
        "riable(\"lng_ID_Geb_Teil_Min\") And F_Variable(\"lng_ID_Geb_Teil_Max\")) AND ((["
        "Bericht Sanierungsstau nach Finanzplanung].Erledigt)=False));"
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
            ControlSource ="Kal_Jahr"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="LIegenschaft"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Haus"
        End
        Begin BreakLevel
            GroupFooter = NotDefault
            ControlSource ="Maßnahme"
        End
        Begin BreakLevel
            ControlSource ="Kal_Jahr"
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
                    Caption ="noch nicht finanzierte Maßnahmen"
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
                    Caption ="nach zeitlicher Bearbeitung"
                    FontName ="Arial Narrow"
                End
            End
        End
        Begin PageHeader
            Height =0
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
                    Width =9926
                    Height =420
                    FontSize =16
                    FontWeight =600
                    BackColor =14211288
                    Name ="TF_Level_0"
                    ControlSource ="Kal_Jahr"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =56
                    LayoutCachedWidth =9926
                    LayoutCachedHeight =476
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =568
            BreakLevel =1
            Name ="Gruppenkopf2"
            Begin
                Begin TextBox
                    BorderWidth =2
                    IMESentenceMode =3
                    Left =124
                    Top =157
                    Width =8286
                    Height =390
                    FontSize =14
                    FontWeight =700
                    Name ="TF_Level_1"
                    ControlSource ="=\"Liegensch. \" & [LIegenschaft]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =124
                    LayoutCachedTop =157
                    LayoutCachedWidth =8410
                    LayoutCachedHeight =547
                End
                Begin Line
                    BorderWidth =2
                    Left =60
                    Top =75
                    Width =9865
                    Name ="Linie101"
                    LayoutCachedLeft =60
                    LayoutCachedTop =75
                    LayoutCachedWidth =9925
                    LayoutCachedHeight =75
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            RepeatSection = NotDefault
            Height =1020
            BreakLevel =2
            Name ="Gruppenkopf0"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    Left =113
                    Top =176
                    Width =7365
                    Height =330
                    ColumnWidth =3735
                    FontSize =12
                    FontWeight =700
                    Name ="TF_Level_2"
                    ControlSource ="Haus"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =113
                    LayoutCachedTop =176
                    LayoutCachedWidth =7478
                    LayoutCachedHeight =506
                End
                Begin TextBox
                    TextAlign =2
                    Left =7650
                    Top =174
                    Width =1785
                    Height =405
                    FontSize =12
                    TabIndex =1
                    Name ="Name"
                    ControlSource ="Name"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7650
                    LayoutCachedTop =174
                    LayoutCachedWidth =9435
                    LayoutCachedHeight =579
                End
                Begin Rectangle
                    Left =60
                    Top =120
                    Width =9389
                    Height =446
                    Name ="Rechteck23"
                    LayoutCachedLeft =60
                    LayoutCachedTop =120
                    LayoutCachedWidth =9449
                    LayoutCachedHeight =566
                End
                Begin Label
                    Left =113
                    Top =660
                    Width =855
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld75"
                    Caption ="Maßnahme"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =113
                    LayoutCachedTop =660
                    LayoutCachedWidth =968
                    LayoutCachedHeight =945
                End
                Begin Label
                    TextAlign =3
                    Left =8530
                    Top =660
                    Width =1290
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld80"
                    Caption ="gepl. Fianzierung"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =8530
                    LayoutCachedTop =660
                    LayoutCachedWidth =9820
                    LayoutCachedHeight =945
                End
                Begin Line
                    BorderWidth =2
                    Left =60
                    Top =945
                    Width =9899
                    Name ="Linie81"
                    LayoutCachedLeft =60
                    LayoutCachedTop =945
                    LayoutCachedWidth =9959
                    LayoutCachedHeight =945
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin Label
                    TextAlign =3
                    Left =7710
                    Top =660
                    Width =390
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld95"
                    Caption ="Jahr"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7710
                    LayoutCachedTop =660
                    LayoutCachedWidth =8100
                    LayoutCachedHeight =945
                End
                Begin Label
                    TextAlign =3
                    Left =6885
                    Top =660
                    Width =690
                    Height =285
                    FontWeight =700
                    Name ="BF_MN_ID"
                    Caption ="Maßn.ID:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6885
                    LayoutCachedTop =660
                    LayoutCachedWidth =7575
                    LayoutCachedHeight =945
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
                Begin Label
                    TextAlign =0
                    Left =4605
                    Top =660
                    Width =915
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld106"
                    Caption ="Art d. Mittel"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =4605
                    LayoutCachedTop =660
                    LayoutCachedWidth =5520
                    LayoutCachedHeight =945
                End
                Begin Label
                    TextAlign =0
                    Left =5580
                    Top =660
                    Width =1260
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld110"
                    Caption ="Herkunft"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =5580
                    LayoutCachedTop =660
                    LayoutCachedWidth =6840
                    LayoutCachedHeight =945
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =255
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =1
                    Left =113
                    Width =4464
                    Height =255
                    Name ="Text40"
                    ControlSource ="Maßnahme"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =113
                    LayoutCachedWidth =4577
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7665
                    Width =397
                    Height =255
                    ColumnWidth =1395
                    TabIndex =1
                    Name ="Kal_Jahr"
                    ControlSource ="Kal_Jahr"
                    Format ="0000"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7665
                    LayoutCachedWidth =8062
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    IMESentenceMode =3
                    Left =8464
                    Width =1356
                    Height =255
                    TabIndex =2
                    Name ="Gepl_Finanz"
                    ControlSource ="Gepl_Finanz"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8464
                    LayoutCachedWidth =9820
                    LayoutCachedHeight =255
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =6879
                    Width =681
                    Height =255
                    TabIndex =3
                    Name ="TF_MN_ID"
                    ControlSource ="ID_Massn"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6879
                    LayoutCachedWidth =7560
                    LayoutCachedHeight =255
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
                Begin TextBox
                    IMESentenceMode =3
                    Left =4755
                    Width =750
                    Height =255
                    TabIndex =4
                    Name ="Finanzquelle"
                    ControlSource ="Finanzquelle"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4755
                    LayoutCachedWidth =5505
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    IMESentenceMode =3
                    Left =5565
                    Width =1260
                    Height =255
                    TabIndex =5
                    Name ="Finanzherkunft"
                    ControlSource ="Finanzherkunft"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5565
                    LayoutCachedWidth =6825
                    LayoutCachedHeight =255
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =255
            BreakLevel =3
            Name ="GrpFss_Massnahme"
            Begin
                Begin TextBox
                    IMESentenceMode =3
                    Left =8464
                    Width =1356
                    Height =255
                    Name ="Text107"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8464
                    LayoutCachedWidth =9820
                    LayoutCachedHeight =255
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =1
                    Left =113
                    Width =8229
                    Height =255
                    TabIndex =1
                    Name ="Text108"
                    ControlSource ="Maßnahme"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =113
                    LayoutCachedWidth =8342
                    LayoutCachedHeight =255
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =510
            BreakLevel =2
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    Left =7095
                    Top =60
                    Width =2725
                    Height =330
                    FontSize =12
                    FontWeight =700
                    Name ="Text84"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7095
                    LayoutCachedTop =60
                    LayoutCachedWidth =9820
                    LayoutCachedHeight =390
                End
                Begin TextBox
                    Left =113
                    Top =60
                    Width =6465
                    Height =330
                    FontSize =12
                    FontWeight =700
                    TabIndex =1
                    Name ="Text86"
                    ControlSource ="=\"Summe  \" & [TF_Level_2]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =113
                    LayoutCachedTop =60
                    LayoutCachedWidth =6578
                    LayoutCachedHeight =390
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =615
            BreakLevel =1
            Name ="Gruppenfuß3"
            Begin
                Begin TextBox
                    BorderWidth =2
                    Left =113
                    Top =113
                    Width =6930
                    Height =390
                    FontSize =14
                    FontWeight =700
                    Name ="Text99"
                    ControlSource ="=\"Summe \" & [TF_Level_1]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =113
                    LayoutCachedTop =113
                    LayoutCachedWidth =7043
                    LayoutCachedHeight =503
                End
                Begin TextBox
                    BorderWidth =2
                    Left =7110
                    Top =120
                    Width =2725
                    Height =390
                    FontSize =14
                    FontWeight =700
                    TabIndex =1
                    Name ="Text100"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7110
                    LayoutCachedTop =120
                    LayoutCachedWidth =9835
                    LayoutCachedHeight =510
                End
                Begin Line
                    BorderWidth =2
                    Left =60
                    Top =600
                    Width =9865
                    Name ="Linie102"
                    LayoutCachedLeft =60
                    LayoutCachedTop =600
                    LayoutCachedWidth =9925
                    LayoutCachedHeight =600
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =680
            Name ="Gruppenfuß0"
            Begin
                Begin Rectangle
                    BackStyle =1
                    OldBorderStyle =0
                    Top =165
                    Width =9926
                    Height =375
                    BackColor =14211288
                    Name ="Rechteck64"
                    LayoutCachedTop =165
                    LayoutCachedWidth =9926
                    LayoutCachedHeight =540
                End
                Begin TextBox
                    Left =6930
                    Top =165
                    Width =2905
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="TF_KJ_Summe"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6930
                    LayoutCachedTop =165
                    LayoutCachedWidth =9835
                    LayoutCachedHeight =540
                End
                Begin TextBox
                    TextAlign =3
                    Top =165
                    Width =6360
                    Height =360
                    FontSize =16
                    FontWeight =700
                    TabIndex =1
                    Name ="Text63"
                    ControlSource ="=\"Summe \" & [TF_Level_0]"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =165
                    LayoutCachedWidth =6360
                    LayoutCachedHeight =525
                End
                Begin Line
                    BorderWidth =2
                    Left =120
                    Top =630
                    Width =9864
                    Name ="Linie89"
                    LayoutCachedLeft =120
                    LayoutCachedTop =630
                    LayoutCachedWidth =9984
                    LayoutCachedHeight =630
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
            Height =657
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    Left =7456
                    Top =282
                    Width =2485
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Text41"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7456
                    LayoutCachedTop =282
                    LayoutCachedWidth =9941
                    LayoutCachedHeight =657
                End
                Begin Label
                    Top =225
                    Width =3120
                    Height =390
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld42"
                    Caption ="Summe alle Gebäude:"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedTop =225
                    LayoutCachedWidth =3120
                    LayoutCachedHeight =615
                End
            End
        End
    End
End
CodeBehindForm
' See "Sanierungsstau Finanzplanung Jahre.cls"
