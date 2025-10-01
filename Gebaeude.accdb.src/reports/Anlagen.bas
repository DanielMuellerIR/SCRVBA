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
    Width =10034
    DatasheetFontHeight =10
    ItemSuffix =117
    Left =12728
    Top =7620
    RecSrcDt = Begin
        0xa1b53fbed06ce640
    End
    RecordSource ="Abfrage_Anlagen"
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
        Begin PageBreak
            Width =283
        End
        Begin BreakLevel
            SortOrder = NotDefault
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
                    Caption ="Anlagen"
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
                    ControlSource ="=\"Liegenschaft \" & [Liegenschaft]"
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
            Height =1028
            BreakLevel =2
            Name ="Gruppenkopf0"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    Left =113
                    Top =176
                    Width =9766
                    Height =330
                    ColumnWidth =3735
                    FontSize =12
                    FontWeight =700
                    Name ="TF_Level_2"
                    ControlSource ="Haus"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =113
                    LayoutCachedTop =176
                    LayoutCachedWidth =9879
                    LayoutCachedHeight =506
                End
                Begin Rectangle
                    Left =60
                    Top =120
                    Width =9862
                    Height =446
                    Name ="Rechteck23"
                    LayoutCachedLeft =60
                    LayoutCachedTop =120
                    LayoutCachedWidth =9922
                    LayoutCachedHeight =566
                End
                Begin Label
                    Left =113
                    Top =705
                    Width =855
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld75"
                    Caption ="Maßnahme"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =113
                    LayoutCachedTop =705
                    LayoutCachedWidth =968
                    LayoutCachedHeight =990
                End
                Begin Label
                    TextAlign =3
                    Left =8958
                    Top =705
                    Width =862
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld80"
                    Caption ="Beendet"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =8958
                    LayoutCachedTop =705
                    LayoutCachedWidth =9820
                    LayoutCachedHeight =990
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
                    Left =5385
                    Top =705
                    Width =1081
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld95"
                    Caption ="Anlagen-Nr"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =5385
                    LayoutCachedTop =705
                    LayoutCachedWidth =6466
                    LayoutCachedHeight =990
                End
                Begin Label
                    Left =4605
                    Top =705
                    Width =728
                    Height =285
                    FontWeight =700
                    Name ="usmassnid"
                    Caption ="Maßn.ID"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =4605
                    LayoutCachedTop =705
                    LayoutCachedWidth =5333
                    LayoutCachedHeight =990
                End
                Begin Label
                    Left =6518
                    Top =705
                    Width =2333
                    Height =285
                    FontWeight =700
                    Name ="Bezeichnungsfeld114"
                    Caption ="Bezeichnung"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6518
                    LayoutCachedTop =705
                    LayoutCachedWidth =8851
                    LayoutCachedHeight =990
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
                    CanGrow = NotDefault
                    TextAlign =1
                    Left =113
                    Width =4479
                    Height =255
                    Name ="Text40"
                    ControlSource ="Maßnahme"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =113
                    LayoutCachedWidth =4592
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    TextAlign =1
                    IMESentenceMode =3
                    Left =4605
                    Width =750
                    Height =255
                    TabIndex =2
                    Name ="massnid"
                    ControlSource ="ID_Massn"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4605
                    LayoutCachedWidth =5355
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =8958
                    Width =862
                    Height =255
                    TabIndex =3
                    Name ="BeendetB20"
                    ControlSource ="BeendetB20"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8958
                    LayoutCachedWidth =9820
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    IMESentenceMode =3
                    Left =5385
                    Width =1081
                    Height =255
                    ColumnWidth =1395
                    TabIndex =1
                    Name ="AnlagenNr"
                    ControlSource ="AnlagenNr"
                    Format ="0000"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5385
                    LayoutCachedWidth =6466
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    IMESentenceMode =3
                    Left =6518
                    Width =2333
                    Height =255
                    TabIndex =4
                    Name ="Text115"
                    ControlSource ="Anlage"
                    Format ="0000"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6518
                    LayoutCachedWidth =8851
                    LayoutCachedHeight =255
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =113
            BreakLevel =2
            Name ="Gruppenfuß1"
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =226
            BreakLevel =1
            Name ="Gruppenfuß3"
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =113
            Name ="Gruppenfuß0"
            Begin
                Begin PageBreak
                    Top =113
                    Name ="SeitenumbruchStufe1"
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
            Height =0
            Name ="Berichtsfuß"
        End
    End
End
CodeBehindForm
' See "Anlagen.cls"
