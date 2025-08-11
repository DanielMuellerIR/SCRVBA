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
    Width =10148
    DatasheetFontHeight =10
    ItemSuffix =102
    Left =8415
    Top =3120
    RecSrcDt = Begin
        0x5e910f1b4fd0e440
    End
    RecordSource ="SELECT [M_Strassenverzeichnis].[NAme] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_"
        "Nr] & \": \" & [Bezeichnung] & \" -> \" & [Gebäudeteil] AS Haus, tbl_100_10_Lieg"
        "enschaften.ID_Gebäude, tbl_100_20_Gebäudeteile.ID_Gebäudeteil, Maßnahmen.ID AS I"
        "D_Massn, Maßnahmen.Maßnahme, Sachbearbeiter.Name, Maßnahmen.[voraussichtliche Ko"
        "sten gesamt], Maßnahmen.[erledigt im Jahr] FROM tbl_100_10_Liegenschaften RIGHT "
        "JOIN ((tbl_100_20_Gebäudeteile LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Geb"
        "äudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer) RIGHT JOIN (Maßnah"
        "men LEFT JOIN Sachbearbeiter ON Maßnahmen.ID_SB = Sachbearbeiter.ID) ON tbl_100_"
        "20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil) ON tbl_100_10_Liegens"
        "chaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude WHERE (((Maßnahmen.[vora"
        "ussichtliche Kosten gesamt]) Is Null Or (Maßnahmen.[voraussichtliche Kosten gesa"
        "mt])=0) AND ((Maßnahmen.[erledigt im Jahr]) Is Null)) ORDER BY [M_Strassenverzei"
        "chnis].[NAme] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichn"
        "ung] & \" -> \" & [Gebäudeteil];"
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
            ControlSource ="Haus"
        End
        Begin BreakLevel
            ControlSource ="Maßnahme"
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
                    Caption ="Maßnahmen mit noch fehlenden"
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
                    Caption ="voraussichtlichen Kosten"
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
            CanGrow = NotDefault
            RepeatSection = NotDefault
            Height =1190
            Name ="Gruppenkopf0"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    Left =60
                    Top =176
                    Width =7620
                    Height =405
                    ColumnWidth =3735
                    FontSize =14
                    FontWeight =700
                    Name ="TF_Level_1"
                    ControlSource ="Haus"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =60
                    LayoutCachedTop =176
                    LayoutCachedWidth =7680
                    LayoutCachedHeight =581
                End
                Begin TextBox
                    OverlapFlags =12
                    TextAlign =2
                    Left =8085
                    Top =174
                    Width =1785
                    Height =405
                    FontSize =14
                    FontWeight =700
                    TabIndex =1
                    Name ="Name"
                    ControlSource ="Name"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8085
                    LayoutCachedTop =174
                    LayoutCachedWidth =9870
                    LayoutCachedHeight =579
                End
                Begin Rectangle
                    Left =60
                    Top =120
                    Width =9899
                    Height =566
                    Name ="Rechteck23"
                    LayoutCachedLeft =60
                    LayoutCachedTop =120
                    LayoutCachedWidth =9959
                    LayoutCachedHeight =686
                End
                Begin Label
                    Left =60
                    Top =750
                    Width =1035
                    Height =270
                    FontWeight =700
                    Name ="Bezeichnungsfeld75"
                    Caption ="Maßnahme"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =60
                    LayoutCachedTop =750
                    LayoutCachedWidth =1095
                    LayoutCachedHeight =1020
                End
                Begin Label
                    TextAlign =3
                    Left =8461
                    Top =750
                    Width =1455
                    Height =270
                    FontWeight =700
                    Name ="Bezeichnungsfeld80"
                    Caption ="Vorauss. Kosten"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =8461
                    LayoutCachedTop =750
                    LayoutCachedWidth =9916
                    LayoutCachedHeight =1020
                End
                Begin Line
                    BorderWidth =2
                    Left =60
                    Top =1095
                    Width =9899
                    Name ="Linie81"
                    LayoutCachedLeft =60
                    LayoutCachedTop =1095
                    LayoutCachedWidth =9959
                    LayoutCachedHeight =1095
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin Label
                    TextAlign =3
                    Left =7425
                    Top =735
                    Width =915
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld98"
                    Caption ="erl. im Jahr:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7425
                    LayoutCachedTop =735
                    LayoutCachedWidth =8340
                    LayoutCachedHeight =1020
                End
                Begin Label
                    TextAlign =3
                    Left =6666
                    Top =737
                    Width =705
                    Height =285
                    FontWeight =700
                    Name ="BF_MN_ID"
                    Caption ="Maßn.ID:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6666
                    LayoutCachedTop =737
                    LayoutCachedWidth =7371
                    LayoutCachedHeight =1022
                    ForeThemeColorIndex =1
                    ForeShade =50.0
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
                    Left =8431
                    Width =1455
                    Height =255
                    Name ="voraussKosten"
                    ControlSource ="voraussichtliche Kosten gesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8431
                    LayoutCachedWidth =9886
                    LayoutCachedHeight =255
                    ForeThemeColorIndex =1
                    ForeShade =75.0
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =1
                    Left =30
                    Width =6429
                    Height =255
                    TabIndex =1
                    Name ="Text40"
                    ControlSource ="Maßnahme"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =30
                    LayoutCachedWidth =6459
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7494
                    Width =846
                    Height =255
                    ColumnWidth =3120
                    TabIndex =2
                    Name ="erledigt im Jahr"
                    ControlSource ="erledigt im Jahr"
                    FontName ="Arial Narrow"
                    EventProcPrefix ="erledigt_im_Jahr"

                    LayoutCachedLeft =7494
                    LayoutCachedWidth =8340
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =3
                    IMESentenceMode =3
                    Left =6630
                    Width =741
                    Height =255
                    ColumnWidth =1125
                    TabIndex =3
                    Name ="TF_MN_ID"
                    ControlSource ="ID_Massn"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6630
                    LayoutCachedWidth =7371
                    LayoutCachedHeight =255
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =737
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    Left =7156
                    Top =105
                    Width =2725
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Text84"
                    ControlSource ="=Sum([voraussichtliche Kosten gesamt])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7156
                    LayoutCachedTop =105
                    LayoutCachedWidth =9881
                    LayoutCachedHeight =480
                    ForeThemeColorIndex =1
                    ForeShade =75.0
                End
                Begin TextBox
                    Left =165
                    Top =105
                    Width =6930
                    Height =405
                    FontSize =14
                    FontWeight =700
                    TabIndex =1
                    Name ="Text86"
                    ControlSource ="=\"Summe zu \" & [TF_Level_1]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =165
                    LayoutCachedTop =105
                    LayoutCachedWidth =7095
                    LayoutCachedHeight =510
                End
                Begin Line
                    BorderWidth =2
                    Left =60
                    Top =45
                    Width =9899
                    Name ="Linie96"
                    LayoutCachedLeft =60
                    LayoutCachedTop =45
                    LayoutCachedWidth =9959
                    LayoutCachedHeight =45
                    BorderThemeColorIndex =1
                    BorderShade =65.0
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
                    ControlSource ="=Sum([voraussichtliche Kosten gesamt])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7456
                    LayoutCachedTop =282
                    LayoutCachedWidth =9941
                    LayoutCachedHeight =657
                    ForeThemeColorIndex =1
                    ForeShade =75.0
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
' See "Sanierungsstau Finanzplanung ohne VoraussKosten.cls"
