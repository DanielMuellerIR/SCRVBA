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
    Width =15590
    DatasheetFontHeight =10
    ItemSuffix =45
    Left =524
    Top =4058
    RecSrcDt = Begin
        0x48279b414ed0e440
    End
    RecordSource ="Abfrage für Übersicht Haushalt"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    DatasheetBackColor12 =16777215
    DisplayOnSharePointSite =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextFontFamily =2
            FontName ="Arial"
            LeftPadding =30
            TopPadding =30
            RightPadding =30
            BottomPadding =30
            GridlineStyleLeft =0
            GridlineStyleTop =0
            GridlineStyleRight =0
            GridlineStyleBottom =0
            GridlineWidthLeft =1
            GridlineWidthTop =1
            GridlineWidthRight =1
            GridlineWidthBottom =1
        End
        Begin Rectangle
            Width =850
            Height =850
            LeftPadding =30
            TopPadding =30
            RightPadding =30
            BottomPadding =30
            GridlineStyleLeft =0
            GridlineStyleTop =0
            GridlineStyleRight =0
            GridlineStyleBottom =0
            GridlineWidthLeft =1
            GridlineWidthTop =1
            GridlineWidthRight =1
            GridlineWidthBottom =1
        End
        Begin Line
            Width =1701
            LeftPadding =30
            TopPadding =30
            RightPadding =30
            BottomPadding =30
            GridlineStyleLeft =0
            GridlineStyleTop =0
            GridlineStyleRight =0
            GridlineStyleBottom =0
            GridlineWidthLeft =1
            GridlineWidthTop =1
            GridlineWidthRight =1
            GridlineWidthBottom =1
        End
        Begin TextBox
            OldBorderStyle =0
            TextFontFamily =2
            Width =1701
            LabelX =-1701
            FontName ="Arial"
            LeftPadding =30
            TopPadding =30
            RightPadding =30
            BottomPadding =30
            GridlineStyleLeft =0
            GridlineStyleTop =0
            GridlineStyleRight =0
            GridlineStyleBottom =0
            GridlineWidthLeft =1
            GridlineWidthTop =1
            GridlineWidthRight =1
            GridlineWidthBottom =1
            ShowDatePicker =0
        End
        Begin Subform
            Width =1701
            Height =1701
            LeftPadding =30
            TopPadding =30
            RightPadding =30
            BottomPadding =30
            GridlineStyleLeft =0
            GridlineStyleTop =0
            GridlineStyleRight =0
            GridlineStyleBottom =0
            GridlineWidthLeft =1
            GridlineWidthTop =1
            GridlineWidthRight =1
            GridlineWidthBottom =1
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Buchungsstelle"
        End
        Begin BreakLevel
            ControlSource ="Jahr"
        End
        Begin BreakLevel
            ControlSource ="sort"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =170
            Name ="Berichtskopf"
        End
        Begin PageHeader
            Height =510
            Name ="Seitenkopf"
            Begin
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =3
                    TextFontFamily =34
                    Left =1870
                    Width =1360
                    Height =227
                    Name ="Bezeichnungsfeld22"
                    Caption ="Ansatz"
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =3
                    TextFontFamily =34
                    Left =3344
                    Width =1360
                    Height =227
                    Name ="Bezeichnungsfeld23"
                    Caption ="Haushaltsrest"
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =3
                    TextFontFamily =34
                    Left =4761
                    Width =1195
                    Height =227
                    Name ="Bezeichnungsfeld24"
                    Caption ="VE"
                End
                Begin Label
                    TextAlign =2
                    TextFontFamily =34
                    Left =6235
                    Width =1305
                    Height =227
                    Name ="Bezeichnungsfeld25"
                    Caption ="zur Verfügung"
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    Left =7596
                    Width =1075
                    Height =227
                    Name ="Bezeichnungsfeld26"
                    Caption ="Maßnahme"
                End
                Begin TextBox
                    TextAlign =2
                    Left =6240
                    Top =225
                    Width =1305
                    Height =233
                    Name ="Text31"
                    ControlSource ="=Year(Now())"

                End
                Begin Line
                    Left =6240
                    Top =465
                    Width =1304
                    Name ="Linie33"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =623
            Name ="Gruppenkopf1"
            Begin
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Top =56
                    Width =960
                    Height =225
                    FontWeight =600
                    Name ="Buchungsstelle"
                    ControlSource ="[Buchungsstelle]"

                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =1020
                    Top =56
                    Width =4245
                    Height =225
                    FontWeight =600
                    TabIndex =1
                    Name ="Text Buchungsstelle"
                    ControlSource ="Text Buchungsstelle"
                    EventProcPrefix ="Text_Buchungsstelle"

                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Top =300
                    Width =690
                    Height =255
                    FontWeight =700
                    Name ="Bezeichnungsfeld34"
                    Caption ="Jahr"
                    LayoutCachedTop =300
                    LayoutCachedWidth =690
                    LayoutCachedHeight =555
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Left =855
                    Top =300
                    Width =1305
                    Height =255
                    FontWeight =700
                    Name ="Bezeichnungsfeld35"
                    Caption ="Ansatz"
                    LayoutCachedLeft =855
                    LayoutCachedTop =300
                    LayoutCachedWidth =2160
                    LayoutCachedHeight =555
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Left =2325
                    Top =300
                    Width =1350
                    Height =255
                    FontWeight =700
                    Name ="Bezeichnungsfeld36"
                    Caption ="HHR"
                    LayoutCachedLeft =2325
                    LayoutCachedTop =300
                    LayoutCachedWidth =3675
                    LayoutCachedHeight =555
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Left =3855
                    Top =300
                    Width =1185
                    Height =255
                    FontWeight =700
                    Name ="Bezeichnungsfeld37"
                    Caption ="VE"
                    LayoutCachedLeft =3855
                    LayoutCachedTop =300
                    LayoutCachedWidth =5040
                    LayoutCachedHeight =555
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Left =5265
                    Top =300
                    Width =1305
                    Height =255
                    FontWeight =700
                    Name ="Bezeichnungsfeld38"
                    Caption ="vfg"
                    LayoutCachedLeft =5265
                    LayoutCachedTop =300
                    LayoutCachedWidth =6570
                    LayoutCachedHeight =555
                End
                Begin Label
                    TextFontFamily =34
                    Left =6810
                    Top =300
                    Width =6150
                    Height =255
                    FontWeight =700
                    Name ="Bezeichnungsfeld39"
                    Caption ="Maßnahme"
                    LayoutCachedLeft =6810
                    LayoutCachedTop =300
                    LayoutCachedWidth =12960
                    LayoutCachedHeight =555
                End
                Begin Label
                    TextFontFamily =34
                    Left =13770
                    Top =300
                    Width =1695
                    Height =255
                    FontWeight =700
                    Name ="Bezeichnungsfeld40"
                    Caption ="Finanzherkunft"
                    LayoutCachedLeft =13770
                    LayoutCachedTop =300
                    LayoutCachedWidth =15465
                    LayoutCachedHeight =555
                End
                Begin Line
                    BorderWidth =1
                    Top =600
                    Width =15450
                    BorderColor =10921638
                    Name ="Linie41"
                    LayoutCachedTop =600
                    LayoutCachedWidth =15450
                    LayoutCachedHeight =600
                    BorderShade =65.0
                End
                Begin Label
                    TextFontFamily =34
                    Left =13035
                    Top =283
                    Width =680
                    Height =255
                    FontWeight =700
                    Name ="BF_MN_ID"
                    Caption ="ID Maßn"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =13035
                    LayoutCachedTop =283
                    LayoutCachedWidth =13715
                    LayoutCachedHeight =538
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =225
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =855
                    Width =1305
                    Height =225
                    Name ="Text17"
                    ControlSource ="Ansatz"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =855
                    LayoutCachedWidth =2160
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2325
                    Width =1350
                    Height =225
                    TabIndex =1
                    Name ="Text18"
                    ControlSource ="HHR"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =2325
                    LayoutCachedWidth =3675
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =3855
                    Width =1185
                    Height =225
                    TabIndex =2
                    Name ="VE"
                    ControlSource ="VE"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =3855
                    LayoutCachedWidth =5040
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Width =690
                    Height =225
                    TabIndex =3
                    Name ="Jahr"
                    ControlSource ="Jahr"
                    FontName ="Arial Narrow"

                    LayoutCachedWidth =690
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =6810
                    Width =6150
                    Height =225
                    TabIndex =4
                    Name ="Maßnahme"
                    ControlSource ="Maßnahm"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6810
                    LayoutCachedWidth =12960
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =5265
                    Width =1305
                    Height =225
                    TabIndex =5
                    Name ="Vfg"
                    ControlSource ="vfg"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5265
                    LayoutCachedWidth =6570
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =13770
                    Width =1695
                    Height =225
                    TabIndex =6
                    Name ="Herkunft"
                    ControlSource ="Finanzquelle"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =13770
                    LayoutCachedWidth =15465
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    HideDuplicates = NotDefault
                    DecimalPlaces =0
                    TextFontFamily =34
                    BackStyle =0
                    Left =13035
                    Width =680
                    Height =225
                    TabIndex =7
                    Name ="TF_MN_ID"
                    ControlSource ="ID_Massn"
                    Format ="General Number"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =13035
                    LayoutCachedWidth =13715
                    LayoutCachedHeight =225
                    ForeThemeColorIndex =1
                    ForeShade =50.0
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =510
            Name ="Gruppenfuß2"
            Begin
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =859
                    Top =90
                    Width =1305
                    Height =225
                    FontWeight =700
                    Name ="Text7"
                    ControlSource ="=Sum([Ansatz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =859
                    LayoutCachedTop =90
                    LayoutCachedWidth =2164
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2329
                    Top =90
                    Width =1350
                    Height =225
                    FontWeight =700
                    TabIndex =1
                    Name ="Text8"
                    ControlSource ="=Sum([HHR])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =2329
                    LayoutCachedTop =90
                    LayoutCachedWidth =3679
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =3859
                    Top =90
                    Width =1185
                    Height =225
                    FontWeight =700
                    TabIndex =2
                    Name ="Text9"
                    ControlSource ="=Sum([VE])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =3859
                    LayoutCachedTop =90
                    LayoutCachedWidth =5044
                    LayoutCachedHeight =315
                End
                Begin Label
                    TextAlign =1
                    TextFontFamily =34
                    Left =60
                    Top =90
                    Width =630
                    Height =255
                    FontWeight =700
                    Name ="Bezeichnungsfeld15"
                    Caption ="Sumen:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =60
                    LayoutCachedTop =90
                    LayoutCachedWidth =690
                    LayoutCachedHeight =345
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =5269
                    Top =90
                    Width =1305
                    Height =225
                    FontWeight =700
                    TabIndex =3
                    Name ="Text29"
                    ControlSource ="=Sum([vfg])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5269
                    LayoutCachedTop =90
                    LayoutCachedWidth =6574
                    LayoutCachedHeight =315
                End
                Begin Line
                    BorderWidth =1
                    Top =45
                    Width =15450
                    BorderColor =10921638
                    Name ="Linie42"
                    LayoutCachedTop =45
                    LayoutCachedWidth =15450
                    LayoutCachedHeight =45
                    BorderShade =65.0
                End
            End
        End
        Begin PageFooter
            Height =0
            Name ="Seitenfuß"
        End
        Begin FormFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =623
            Name ="Berichtsfuß"
            Begin
                Begin Subform
                    OldBorderStyle =0
                    Top =165
                    Width =13387
                    Height =345
                    Name ="Unterbericht Finanzierung alle Maßnahmen"
                    SourceObject ="Report.Unterbericht Finanzierung alle Maßnahmen"
                    EventProcPrefix ="Unterbericht_Finanzierung_alle_Maßnahmen"

                    LayoutCachedTop =165
                    LayoutCachedWidth =13387
                    LayoutCachedHeight =510
                End
            End
        End
    End
End
CodeBehindForm
' See "Übersicht Haushalt.cls"
