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
    Width =10455
    DatasheetFontHeight =10
    ItemSuffix =164
    Left =7425
    Top =3435
    OnNoData ="[Event Procedure]"
    RecSrcDt = Begin
        0xf979a18db60ee540
    End
    RecordSource ="Bericht Sanierungsstau Prioritäten nach SB und Mitteln"
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
            ControlSource ="SB_Name"
        End
        Begin BreakLevel
            ControlSource ="Finanz_Sort"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Finanz"
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
            ControlSource ="Kal_Jahr"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1247
            Name ="Berichtskopf"
            Begin
                Begin Label
                    Left =3465
                    Top =120
                    Width =5115
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld16"
                    Caption ="noch nicht finanzierte Maßnahmen"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =3465
                    LayoutCachedTop =120
                    LayoutCachedWidth =8580
                    LayoutCachedHeight =495
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
                    Caption ="nach SB und Art der Mittel"
                    FontName ="Arial Narrow"
                End
            End
        End
        Begin PageHeader
            Height =56
            Name ="Seitenkopf"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            RepeatSection = NotDefault
            Height =680
            Name ="Gruppenkopf0"
            AlternateBackColor =16777215
            Begin
                Begin TextBox
                    OldBorderStyle =1
                    BackStyle =1
                    IMESentenceMode =3
                    Top =113
                    Width =10431
                    Height =375
                    ColumnWidth =2445
                    FontSize =14
                    FontWeight =700
                    BackColor =14277081
                    Name ="Text132"
                    ControlSource ="SB_Name"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =113
                    LayoutCachedWidth =10431
                    LayoutCachedHeight =488
                    BackShade =85.0
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            RepeatSection = NotDefault
            Height =566
            BreakLevel =2
            Name ="Gruppenkopf2"
            AlternateBackColor =16777215
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    OldBorderStyle =1
                    BorderWidth =1
                    BackStyle =1
                    Left =60
                    Top =135
                    Width =10365
                    Height =330
                    FontSize =12
                    FontWeight =700
                    BackColor =15921906
                    BorderColor =10921638
                    Name ="Bezeichung"
                    ControlSource ="=\"Mittelart: \" & [Finanz]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =60
                    LayoutCachedTop =135
                    LayoutCachedWidth =10425
                    LayoutCachedHeight =465
                    BackShade =95.0
                    BorderShade =65.0
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            RepeatSection = NotDefault
            Height =907
            BreakLevel =3
            Name ="Gruppenkopf3"
            AlternateBackColor =16777215
            Begin
                Begin TextBox
                    OldBorderStyle =1
                    BorderWidth =2
                    TextAlign =1
                    IMESentenceMode =3
                    Left =165
                    Top =120
                    Width =10221
                    Height =315
                    ColumnWidth =3870
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnung"
                    ControlSource ="Objekt"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =165
                    LayoutCachedTop =120
                    LayoutCachedWidth =10386
                    LayoutCachedHeight =435
                End
                Begin Label
                    Left =285
                    Top =540
                    Width =1350
                    Height =270
                    FontWeight =700
                    Name ="Bezeichnungsfeld94"
                    Caption ="Maßnahme"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =285
                    LayoutCachedTop =540
                    LayoutCachedWidth =1635
                    LayoutCachedHeight =810
                End
                Begin Label
                    TextAlign =3
                    Left =8925
                    Top =540
                    Width =1455
                    Height =270
                    FontWeight =700
                    Name ="Bezeichnungsfeld96"
                    Caption ="Gepl. Finanzierung"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =8925
                    LayoutCachedTop =540
                    LayoutCachedWidth =10380
                    LayoutCachedHeight =810
                End
                Begin Label
                    Left =8062
                    Top =525
                    Width =555
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld158"
                    Caption ="Kal.jahr"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =8062
                    LayoutCachedTop =525
                    LayoutCachedWidth =8617
                    LayoutCachedHeight =810
                End
                Begin Label
                    Visible = NotDefault
                    TextAlign =3
                    Left =7335
                    Top =525
                    Width =690
                    Height =285
                    Name ="BF_MN_ID"
                    Caption ="ID Maßn:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7335
                    LayoutCachedTop =525
                    LayoutCachedWidth =8025
                    LayoutCachedHeight =810
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
                Begin Label
                    Left =6399
                    Top =525
                    Width =885
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld163"
                    Caption ="Art d. Mittel"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6399
                    LayoutCachedTop =525
                    LayoutCachedWidth =7284
                    LayoutCachedHeight =810
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =300
            Name ="Detailbereich"
            AlternateBackColor =16777215
            Begin
                Begin TextBox
                    TextAlign =3
                    Left =8760
                    Width =1620
                    Height =255
                    Name ="voraussichtliche Kosten gesamt"
                    ControlSource ="Gepl_Finanz"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    EventProcPrefix ="voraussichtliche_Kosten_gesamt"

                    LayoutCachedLeft =8760
                    LayoutCachedWidth =10380
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =1
                    Left =278
                    Width =5730
                    Height =255
                    TabIndex =1
                    Name ="Gebäude"
                    ControlSource ="Maßnahme"
                    FontName ="Arial Narrow"
                    GridlineStyleLeft =1

                    LayoutCachedLeft =278
                    LayoutCachedWidth =6008
                    LayoutCachedHeight =255
                End
                Begin Line
                    Left =278
                    Top =285
                    Width =10034
                    BorderColor =10855845
                    Name ="Linie143"
                    LayoutCachedLeft =278
                    LayoutCachedTop =285
                    LayoutCachedWidth =10312
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =8220
                    Width =397
                    Height =255
                    ColumnWidth =1740
                    TabIndex =2
                    Name ="Kal_Jahr"
                    ControlSource ="Kal_Jahr"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8220
                    LayoutCachedWidth =8617
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7395
                    Width =630
                    Height =255
                    TabIndex =3
                    Name ="TF_MN_ID"
                    ControlSource ="ID_Massn"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7395
                    LayoutCachedWidth =8025
                    LayoutCachedHeight =255
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =6150
                    Width =1134
                    Height =255
                    ColumnWidth =2955
                    TabIndex =4
                    Name ="Finanzquelle"
                    ControlSource ="Finanzquelle"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6150
                    LayoutCachedWidth =7284
                    LayoutCachedHeight =255
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =737
            BreakLevel =3
            Name ="Gruppenfuß4"
            AlternateBackColor =16777215
            Begin
                Begin TextBox
                    BorderWidth =2
                    TextAlign =1
                    IMESentenceMode =3
                    Left =165
                    Top =90
                    Width =7431
                    Height =285
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    Name ="Text150"
                    ControlSource ="Objekt"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =165
                    LayoutCachedTop =90
                    LayoutCachedWidth =7596
                    LayoutCachedHeight =375
                End
                Begin TextBox
                    TextAlign =3
                    Left =8700
                    Top =90
                    Width =1680
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Text105"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8700
                    LayoutCachedTop =90
                    LayoutCachedWidth =10380
                    LayoutCachedHeight =375
                End
                Begin Label
                    TextAlign =3
                    Left =7860
                    Top =90
                    Width =765
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld152"
                    Caption ="Summe :\015\012"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7860
                    LayoutCachedTop =90
                    LayoutCachedWidth =8625
                    LayoutCachedHeight =375
                End
                Begin Line
                    BorderWidth =1
                    Left =345
                    Width =10034
                    BorderColor =10855845
                    Name ="Linie156"
                    LayoutCachedLeft =345
                    LayoutCachedWidth =10379
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =850
            BreakLevel =2
            Name ="Gruppenfuß3"
            AlternateBackColor =16777215
            Begin
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    Left =60
                    Top =60
                    Width =10365
                    Height =450
                    FontSize =12
                    FontWeight =700
                    BackColor =15921906
                    BorderColor =10921638
                    Name ="Bezeichnungsfeld90"
                    Caption ="Summe zu dieser Mittelart:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =60
                    LayoutCachedTop =60
                    LayoutCachedWidth =10425
                    LayoutCachedHeight =510
                    BackShade =95.0
                    BorderShade =65.0
                End
                Begin TextBox
                    TextAlign =3
                    Left =8400
                    Top =113
                    Width =1980
                    Height =330
                    FontSize =12
                    FontWeight =700
                    Name ="Text88"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8400
                    LayoutCachedTop =113
                    LayoutCachedWidth =10380
                    LayoutCachedHeight =443
                End
                Begin Label
                    TextAlign =3
                    Left =5087
                    Top =113
                    Width =3030
                    Height =345
                    FontSize =12
                    FontWeight =700
                    Name ="Bezeichnungsfeld153"
                    Caption ="Summe vorauss.Maßn.-Kosten:\015\012"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =5087
                    LayoutCachedTop =113
                    LayoutCachedWidth =8117
                    LayoutCachedHeight =458
                End
                Begin Line
                    BorderWidth =2
                    Left =113
                    Top =680
                    Width =10261
                    Name ="Linie159"
                    LayoutCachedLeft =113
                    LayoutCachedTop =680
                    LayoutCachedWidth =10374
                    LayoutCachedHeight =680
                    BorderThemeColorIndex =0
                End
            End
        End
        Begin BreakFooter
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =1587
            Name ="Gruppenfuß1"
            AlternateBackColor =16777215
            Begin
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =0
                    Top =330
                    Width =10410
                    Height =975
                    FontSize =14
                    FontWeight =700
                    BackColor =14277081
                    Name ="Bezeichnungsfeld137"
                    Caption ="Summe zum Sachb.: "
                    FontName ="Arial Narrow"
                    LayoutCachedTop =330
                    LayoutCachedWidth =10410
                    LayoutCachedHeight =1305
                    BackShade =85.0
                End
                Begin TextBox
                    TextAlign =3
                    BackStyle =1
                    Left =7161
                    Top =855
                    Width =3210
                    Height =375
                    FontSize =14
                    FontWeight =700
                    BackColor =14277081
                    Name ="Text135"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7161
                    LayoutCachedTop =855
                    LayoutCachedWidth =10371
                    LayoutCachedHeight =1230
                    BackShade =85.0
                End
                Begin TextBox
                    BackStyle =1
                    IMESentenceMode =3
                    Left =2381
                    Top =340
                    Width =3576
                    Height =375
                    FontSize =14
                    FontWeight =700
                    TabIndex =1
                    BackColor =14277081
                    Name ="Text136"
                    ControlSource ="SB_Name"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =2381
                    LayoutCachedTop =340
                    LayoutCachedWidth =5957
                    LayoutCachedHeight =715
                    BackShade =85.0
                End
                Begin Label
                    TextAlign =3
                    Left =3450
                    Top =855
                    Width =3630
                    Height =390
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld154"
                    Caption ="Summe vorauss.Maßn.-Kosten:\015\012"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =3450
                    LayoutCachedTop =855
                    LayoutCachedWidth =7080
                    LayoutCachedHeight =1245
                End
            End
        End
        Begin PageFooter
            Height =553
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =3
                    Left =6139
                    Top =283
                    Width =4301
                    Height =270
                    Name ="Text18"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6139
                    LayoutCachedTop =283
                    LayoutCachedWidth =10440
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
            Height =2664
            Name ="Berichtsfuß"
            Begin
                Begin Label
                    Left =226
                    Top =340
                    Width =5745
                    Height =420
                    FontSize =16
                    FontWeight =700
                    Name ="Bezeichnungsfeld42"
                    Caption ="Summe alle ausgewerteten Gebäude:"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =226
                    LayoutCachedTop =340
                    LayoutCachedWidth =5971
                    LayoutCachedHeight =760
                End
                Begin Label
                    Left =680
                    Top =2040
                    Width =5159
                    Height =298
                    Name ="Bezeichnungsfeld62"
                    Caption ="Hinweis: 0 € = Kosten sind noch zu ermitteln"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =680
                    LayoutCachedTop =2040
                    LayoutCachedWidth =5839
                    LayoutCachedHeight =2338
                End
                Begin TextBox
                    Left =7035
                    Top =825
                    Width =3375
                    Height =420
                    FontSize =16
                    FontWeight =700
                    Name ="Text91"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7035
                    LayoutCachedTop =825
                    LayoutCachedWidth =10410
                    LayoutCachedHeight =1245
                End
                Begin Line
                    BorderWidth =6
                    Top =113
                    Width =10343
                    BorderColor =12566463
                    Name ="Linie138"
                    LayoutCachedTop =113
                    LayoutCachedWidth =10343
                    LayoutCachedHeight =113
                    BorderShade =75.0
                End
                Begin Label
                    TextAlign =3
                    Left =2820
                    Top =825
                    Width =4050
                    Height =420
                    FontSize =16
                    FontWeight =700
                    Name ="Bezeichnungsfeld155"
                    Caption ="Summe vorauss.Maßn.-Kosten:\015\012"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =2820
                    LayoutCachedTop =825
                    LayoutCachedWidth =6870
                    LayoutCachedHeight =1245
                End
            End
        End
    End
End
CodeBehindForm
' See "Sanierungsstau Prioritäten nach SB und Mitteln.cls"
