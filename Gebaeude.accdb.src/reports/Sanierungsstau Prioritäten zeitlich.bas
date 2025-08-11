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
    Width =10318
    DatasheetFontHeight =10
    ItemSuffix =118
    Left =10785
    Top =3525
    RecSrcDt = Begin
        0x8065a541101ae540
    End
    RecordSource ="Bericht Sanierungsstau Prioritäten zeitlich"
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
            ControlSource ="Priosort"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Priotext"
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
                    Caption ="nach zeitlichen Prioritäten"
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
                    ControlSource ="Priotext"
                    FontName ="Arial Narrow"

                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =963
            BreakLevel =2
            Name ="Gruppenkopf3"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =1
                    Top =225
                    Width =8625
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Gebäude"
                    ControlSource ="Objekt"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =225
                    LayoutCachedWidth =8625
                    LayoutCachedHeight =510
                End
                Begin Line
                    BorderWidth =2
                    Top =113
                    Width =10206
                    Name ="Linie97"
                    LayoutCachedTop =113
                    LayoutCachedWidth =10206
                    LayoutCachedHeight =113
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
                    Left =8640
                    Top =623
                    Width =1545
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld104"
                    Caption ="gepl. Finanzierung"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =8640
                    LayoutCachedTop =623
                    LayoutCachedWidth =10185
                    LayoutCachedHeight =908
                End
                Begin Label
                    Left =7906
                    Top =623
                    Width =675
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld107"
                    Caption ="Kal.jahr"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7906
                    LayoutCachedTop =623
                    LayoutCachedWidth =8581
                    LayoutCachedHeight =908
                End
                Begin Label
                    Visible = NotDefault
                    TextAlign =3
                    Left =7195
                    Top =623
                    Width =690
                    Height =285
                    FontSize =9
                    Name ="BF_MN_ID"
                    Caption ="Maßn.ID:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7195
                    LayoutCachedTop =623
                    LayoutCachedWidth =7885
                    LayoutCachedHeight =908
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
                Begin Label
                    Left =4860
                    Top =623
                    Width =1035
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld114"
                    Caption ="Art d. Mittel:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =4860
                    LayoutCachedTop =623
                    LayoutCachedWidth =5895
                    LayoutCachedHeight =908
                End
                Begin Label
                    Left =6066
                    Top =623
                    Width =765
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld117"
                    Caption ="Herkunft"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6066
                    LayoutCachedTop =623
                    LayoutCachedWidth =6831
                    LayoutCachedHeight =908
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
                    TextAlign =3
                    Left =8730
                    Width =1455
                    Height =270
                    Name ="voraussKosten"
                    ControlSource ="Gepl_Finanz"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8730
                    LayoutCachedWidth =10185
                    LayoutCachedHeight =270
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =1
                    Left =170
                    Width =4650
                    Height =270
                    TabIndex =1
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =170
                    LayoutCachedWidth =4820
                    LayoutCachedHeight =270
                End
                Begin Line
                    BorderWidth =1
                    Left =225
                    Top =300
                    Width =9976
                    BorderColor =14211288
                    Name ="Linie102"
                    LayoutCachedLeft =225
                    LayoutCachedTop =300
                    LayoutCachedWidth =10201
                    LayoutCachedHeight =300
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =8184
                    Width =397
                    Height =255
                    ColumnWidth =1740
                    TabIndex =2
                    Name ="Kal_Jahr"
                    ControlSource ="Kal_Jahr"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8184
                    LayoutCachedWidth =8581
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7255
                    Width =630
                    Height =255
                    TabIndex =3
                    Name ="TF_MN_ID"
                    ControlSource ="ID_Massn"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7255
                    LayoutCachedWidth =7885
                    LayoutCachedHeight =255
                    BorderThemeColorIndex =0
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
                Begin TextBox
                    TextAlign =1
                    IMESentenceMode =3
                    Left =4860
                    Width =1134
                    Height =255
                    ColumnWidth =2955
                    TabIndex =4
                    Name ="Finanzquelle"
                    ControlSource ="Finanzquelle"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4860
                    LayoutCachedWidth =5994
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    TextAlign =1
                    IMESentenceMode =3
                    Left =6066
                    Width =1134
                    Height =255
                    ColumnWidth =2145
                    TabIndex =5
                    Name ="Finanzherkunft"
                    ControlSource ="Finanzherkunft"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6066
                    LayoutCachedWidth =7200
                    LayoutCachedHeight =255
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =623
            BreakLevel =2
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    Left =8520
                    Top =120
                    Width =1665
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Text94"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8520
                    LayoutCachedTop =120
                    LayoutCachedWidth =10185
                    LayoutCachedHeight =405
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =3
                    Top =120
                    Width =7200
                    Height =285
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    Name ="Text95"
                    ControlSource ="=\"Summe zu \" & [Objekt]"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =120
                    LayoutCachedWidth =7200
                    LayoutCachedHeight =405
                End
                Begin Line
                    BorderWidth =2
                    Top =465
                    Width =10206
                    Name ="Linie98"
                    LayoutCachedTop =465
                    LayoutCachedWidth =10206
                    LayoutCachedHeight =465
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
                    Width =10155
                    Height =330
                    FontSize =12
                    FontWeight =700
                    TabIndex =1
                    BackColor =14211288
                    Name ="Text99"
                    ControlSource ="Priotext"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =510
                    LayoutCachedWidth =10155
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
                    TextAlign =3
                    Left =6745
                    Top =915
                    Width =3435
                    Height =330
                    FontSize =12
                    FontWeight =700
                    Name ="Text88"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6745
                    LayoutCachedTop =915
                    LayoutCachedWidth =10180
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
                    Left =5879
                    Top =283
                    Width =4301
                    Height =270
                    FontSize =8
                    Name ="Text18"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5879
                    LayoutCachedTop =283
                    LayoutCachedWidth =10180
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
                    TextAlign =3
                    Left =7875
                    Top =285
                    Width =2310
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Text93"
                    ControlSource ="=Sum([Gepl_Finanz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7875
                    LayoutCachedTop =285
                    LayoutCachedWidth =10185
                    LayoutCachedHeight =660
                End
            End
        End
    End
End
CodeBehindForm
' See "Sanierungsstau Prioritäten zeitlich.cls"
