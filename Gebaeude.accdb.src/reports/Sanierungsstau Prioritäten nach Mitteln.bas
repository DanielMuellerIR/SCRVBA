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
    Width =9015
    DatasheetFontHeight =10
    ItemSuffix =111
    Left =10395
    Top =3435
    RecSrcDt = Begin
        0xc8739052101ae540
    End
    RecordSource ="Bericht Sanierungsstau Prioritäten nach Mitteln"
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
            FontSize =12
            FontName ="Haettenschweiler"
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
        Begin Chart
            OldBorderStyle =1
            Width =4536
            Height =2835
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =3
            BorderShade =90.0
            ForeThemeColorIndex =2
            ForeShade =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin UnboundObjectFrame
            Width =4536
            Height =2835
        End
        Begin BreakLevel
            ControlSource ="Finanz_Sort"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
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
            Height =1077
            Name ="Berichtskopf"
            Begin
                Begin Label
                    Left =3465
                    Top =120
                    Width =4980
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld16"
                    Caption ="noch nicht finanzierte Maßnahmen"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =3465
                    LayoutCachedTop =120
                    LayoutCachedWidth =8445
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
                    Caption ="nach Mitteln"
                    FontName ="Arial Narrow"
                End
            End
        End
        Begin PageHeader
            Height =113
            Name ="Seitenkopf"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            RepeatSection = NotDefault
            ForceNewPage =1
            Height =623
            BreakLevel =1
            Name ="Gruppenkopf2"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    BackStyle =1
                    Top =56
                    Width =8730
                    Height =405
                    FontSize =12
                    FontWeight =700
                    BackColor =14211288
                    Name ="Bezeichung"
                    ControlSource ="Finanz"
                    FontName ="Arial Narrow"

                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =1020
            BreakLevel =2
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =1
                    Top =282
                    Width =8625
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Gebäude"
                    ControlSource ="Objekt"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =282
                    LayoutCachedWidth =8625
                    LayoutCachedHeight =567
                End
                Begin Line
                    BorderWidth =2
                    Top =170
                    Width =8946
                    Name ="Linie97"
                    LayoutCachedTop =170
                    LayoutCachedWidth =8946
                    LayoutCachedHeight =170
                End
                Begin Label
                    Left =170
                    Top =623
                    Width =1815
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld100"
                    Caption ="Maßnahme"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =170
                    LayoutCachedTop =623
                    LayoutCachedWidth =1985
                    LayoutCachedHeight =908
                End
                Begin Label
                    TextAlign =3
                    Left =7355
                    Top =623
                    Width =1635
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld104"
                    Caption ="Gepl. Finanzierung"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7355
                    LayoutCachedTop =623
                    LayoutCachedWidth =8990
                    LayoutCachedHeight =908
                End
                Begin Label
                    TextAlign =3
                    Left =6606
                    Top =623
                    Width =675
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld106"
                    Caption ="Kal.jahr"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6606
                    LayoutCachedTop =623
                    LayoutCachedWidth =7281
                    LayoutCachedHeight =908
                End
                Begin Label
                    Visible = NotDefault
                    TextAlign =3
                    Left =5865
                    Top =630
                    Width =690
                    Height =285
                    FontSize =9
                    Name ="BF_MN_ID"
                    Caption ="ID Maßn:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =5865
                    LayoutCachedTop =630
                    LayoutCachedWidth =6555
                    LayoutCachedHeight =915
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
                Begin Label
                    Left =4689
                    Top =630
                    Width =1185
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld110"
                    Caption ="Mittelherkunft"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =4689
                    LayoutCachedTop =630
                    LayoutCachedWidth =5874
                    LayoutCachedHeight =915
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =315
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Left =7370
                    Width =1620
                    Height =270
                    Name ="voraussKosten"
                    ControlSource ="Gepl_Finanz"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7370
                    LayoutCachedWidth =8990
                    LayoutCachedHeight =270
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =1
                    Left =170
                    Width =4530
                    Height =270
                    TabIndex =1
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =170
                    LayoutCachedWidth =4700
                    LayoutCachedHeight =270
                End
                Begin Line
                    BorderWidth =1
                    Left =225
                    Top =300
                    Width =8731
                    BorderColor =14211288
                    Name ="Linie102"
                    LayoutCachedLeft =225
                    LayoutCachedTop =300
                    LayoutCachedWidth =8956
                    LayoutCachedHeight =300
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =6884
                    Top =15
                    Width =397
                    Height =255
                    TabIndex =2
                    Name ="Kal_Jahr"
                    ControlSource ="Kal_Jahr"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6884
                    LayoutCachedTop =15
                    LayoutCachedWidth =7281
                    LayoutCachedHeight =270
                End
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =3
                    IMESentenceMode =3
                    Left =5925
                    Width =630
                    Height =255
                    TabIndex =3
                    Name ="TF_MN_ID"
                    ControlSource ="ID_MAssn"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5925
                    LayoutCachedWidth =6555
                    LayoutCachedHeight =255
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
                Begin TextBox
                    TextAlign =1
                    IMESentenceMode =3
                    Left =4740
                    Width =1134
                    Height =255
                    ColumnWidth =2955
                    TabIndex =4
                    Name ="Finanzquelle"
                    ControlSource ="Finanzherkunft"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4740
                    LayoutCachedWidth =5874
                    LayoutCachedHeight =255
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =907
            BreakLevel =2
            Name ="Gruppenfuß2"
            Begin
                Begin TextBox
                    Left =6590
                    Top =398
                    Width =2400
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Text94"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6590
                    LayoutCachedTop =398
                    LayoutCachedWidth =8990
                    LayoutCachedHeight =683
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =1
                    Top =398
                    Width =6465
                    Height =285
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    Name ="Text95"
                    ControlSource ="Objekt"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =398
                    LayoutCachedWidth =6465
                    LayoutCachedHeight =683
                End
                Begin Label
                    Top =113
                    Width =1155
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld96"
                    Caption ="Summe zu "
                    FontName ="Arial Narrow"
                    LayoutCachedTop =113
                    LayoutCachedWidth =1155
                    LayoutCachedHeight =398
                End
                Begin Line
                    BorderWidth =2
                    Top =743
                    Width =8946
                    Name ="Linie98"
                    LayoutCachedTop =743
                    LayoutCachedWidth =8946
                    LayoutCachedHeight =743
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =1360
            BreakLevel =1
            Name ="Gruppenfuß3"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    BackStyle =1
                    Top =510
                    Width =9015
                    Height =330
                    FontSize =12
                    FontWeight =700
                    TabIndex =1
                    BackColor =14211288
                    Name ="Text99"
                    ControlSource ="Finanz"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =510
                    LayoutCachedWidth =9015
                    LayoutCachedHeight =840
                End
                Begin Label
                    TextAlign =0
                    Top =113
                    Width =1365
                    Height =345
                    FontWeight =700
                    BackColor =14211288
                    Name ="Bezeichnungsfeld90"
                    Caption ="Summe zu"
                    FontName ="Arial Narrow"
                    LayoutCachedTop =113
                    LayoutCachedWidth =1365
                    LayoutCachedHeight =458
                End
                Begin TextBox
                    Left =5550
                    Top =915
                    Width =3435
                    Height =330
                    FontSize =12
                    FontWeight =700
                    Name ="Text88"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5550
                    LayoutCachedTop =915
                    LayoutCachedWidth =8985
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
                    Left =4535
                    Top =283
                    Width =4301
                    Height =270
                    FontSize =8
                    Name ="Text18"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial Narrow"

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
            Height =1587
            Name ="Berichtsfuß"
            Begin
                Begin Label
                    Top =285
                    Width =5250
                    Height =390
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld42"
                    Caption ="Summe alle ausgewerteten Gebäude:"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedTop =285
                    LayoutCachedWidth =5250
                    LayoutCachedHeight =675
                End
                Begin Label
                    Top =788
                    Width =5159
                    Height =298
                    FontSize =9
                    Name ="Bezeichnungsfeld62"
                    Caption ="Hinweis: 0 € = Kosten sind noch zu ermitteln"
                    FontName ="Arial Narrow"
                    LayoutCachedTop =788
                    LayoutCachedWidth =5159
                    LayoutCachedHeight =1086
                End
                Begin TextBox
                    Left =6680
                    Top =285
                    Width =2310
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Text93"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6680
                    LayoutCachedTop =285
                    LayoutCachedWidth =8990
                    LayoutCachedHeight =660
                End
            End
        End
    End
End
CodeBehindForm
' See "Sanierungsstau Prioritäten nach Mitteln.cls"
