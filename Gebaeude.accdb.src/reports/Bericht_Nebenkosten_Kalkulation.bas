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
    Width =10601
    DatasheetFontHeight =10
    ItemSuffix =83
    Left =8143
    Top =2252
    RecSrcDt = Begin
        0xf7a68674acd5e440
    End
    RecordSource ="Hochrechnung_Nebenkosten_3"
    Caption ="Bericht_Nebenkosten"
    OnOpen ="= Maxim_Bericht()"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    DatasheetBackColor12 =16777215
    DisplayOnSharePointSite =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =1
            FontSize =10
            FontWeight =700
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
            BackStyle =0
            BorderWidth =2
            Width =850
            Height =850
            BorderColor =12632256
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
        Begin Image
            OldBorderStyle =0
            PictureAlignment =2
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
        Begin CheckBox
            LabelX =230
            LabelY =-30
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
        Begin BoundObjectFrame
            Width =4536
            Height =2835
            LabelX =-1701
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
            TextFontFamily =18
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
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
        Begin ListBox
            TextFontFamily =18
            OldBorderStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
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
        Begin ComboBox
            OldBorderStyle =0
            TextFontFamily =18
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
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
        Begin Subform
            OldBorderStyle =0
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
        Begin UnboundObjectFrame
            OldBorderStyle =1
            Width =4536
            Height =2835
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
            ControlSource ="Haushaltsjahr"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Bezeichnung"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Nebenkosten_Art"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =850
            BackColor =12632256
            Name ="Berichtskopf"
            Begin
                Begin Label
                    BackStyle =1
                    Left =60
                    Top =60
                    Width =6600
                    Height =615
                    FontSize =24
                    FontWeight =900
                    BackColor =12632256
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld18"
                    Caption ="Hochrechnung Nebenkosten"
                End
                Begin Line
                    BorderWidth =2
                    Top =57
                    Width =10095
                    BorderColor =12632256
                    Name ="Linie21"
                End
                Begin Line
                    BorderWidth =2
                    Top =737
                    Width =9705
                    Height =60
                    BorderColor =12632256
                    Name ="Linie22"
                End
            End
        End
        Begin PageHeader
            Height =0
            Name ="Seitenkopf"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =519
            BackColor =12632256
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    TextFontFamily =34
                    Left =2097
                    Top =56
                    Width =4110
                    Height =405
                    FontSize =14
                    FontWeight =700
                    BackColor =12632256
                    Name ="Haushaltsjahr"
                    ControlSource ="Haushaltsjahr"
                    FontName ="Arial"
                    InputMask ="0000"

                    Begin
                        Begin Label
                            Left =57
                            Top =57
                            Width =1935
                            Height =375
                            FontSize =14
                            Name ="Haushaltsjahr Bezeichnungsfeld"
                            Caption ="Haushaltsjahr"
                            EventProcPrefix ="Haushaltsjahr_Bezeichnungsfeld"
                        End
                    End
                End
                Begin Rectangle
                    BorderWidth =0
                    Width =6579
                    Height =519
                    Name ="Rechteck26"
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =8094
                    Top =118
                    Width =2337
                    Height =285
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    Name ="Text79"
                    ControlSource ="Haushaltsjahr"
                    FontName ="Arial"

                End
                Begin Label
                    Left =6406
                    Top =113
                    Width =1650
                    Height =285
                    Name ="Bezeichnungsfeld80"
                    Caption ="Datengrundlage:"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =566
            BreakLevel =1
            Name ="Gruppenkopf1"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Top =170
                    Width =6300
                    Height =270
                    ColumnWidth =4800
                    FontSize =10
                    FontWeight =600
                    BorderColor =8421504
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"
                    FontName ="Arial"

                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =525
            BreakLevel =2
            Name ="Gruppenkopf2"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Left =1587
                    Top =56
                    Width =7995
                    ColumnWidth =2070
                    FontSize =8
                    FontWeight =700
                    Name ="Nebenkosten_Art"
                    ControlSource ="Nebenkosten_Art"
                    FontName ="Arial"

                    Begin
                        Begin Label
                            Top =57
                            Width =1140
                            Height =240
                            FontSize =8
                            Name ="Nebenkosten_Art Bezeichnungsfeld"
                            Caption ="Nebenkosten:"
                            EventProcPrefix ="Nebenkosten_Art_Bezeichnungsfeld"
                        End
                    End
                End
                Begin Line
                    Top =510
                    Width =10485
                    Name ="Linie33"
                End
                Begin Label
                    Top =283
                    Width =915
                    Height =225
                    FontSize =8
                    FontWeight =400
                    Name ="Bezeichnungsfeld59"
                    Caption ="Empfänger:"
                End
                Begin Label
                    Left =2267
                    Top =283
                    Width =600
                    Height =225
                    FontSize =8
                    FontWeight =400
                    Name ="Bezeichnungsfeld60"
                    Caption ="Zyklus:"
                End
                Begin Label
                    Left =3912
                    Top =283
                    Width =435
                    Height =225
                    FontSize =8
                    FontWeight =400
                    Name ="Bezeichnungsfeld62"
                    Caption ="Zhlg:"
                End
                Begin Label
                    Left =5725
                    Top =283
                    Width =1170
                    Height =225
                    FontSize =8
                    FontWeight =400
                    Name ="Bezeichnungsfeld64"
                    Caption ="Hochrechnung:"
                End
                Begin Label
                    Left =6973
                    Top =286
                    Width =900
                    Height =225
                    FontSize =8
                    FontWeight =400
                    Name ="Bezeichnungsfeld66"
                    Caption ="Steigerung:"
                End
                Begin Label
                    Left =4762
                    Top =283
                    Width =645
                    Height =225
                    FontSize =8
                    FontWeight =400
                    Name ="Bezeichnungsfeld67"
                    Caption ="bezahlt:"
                End
                Begin Label
                    Left =8050
                    Top =283
                    Width =900
                    Height =225
                    FontSize =8
                    FontWeight =400
                    Name ="Bezeichnungsfeld69"
                    Caption ="Steigerung:"
                End
                Begin Label
                    Left =9807
                    Top =283
                    Width =630
                    Height =225
                    FontSize =8
                    FontWeight =400
                    Name ="Bezeichnungsfeld72"
                    Caption ="Kosten:"
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
                    Width =2187
                    Height =225
                    ColumnWidth =2640
                    FontSize =8
                    Name ="Empfänger"
                    ControlSource ="Name, Vorname"
                    FontName ="Arial"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =6916
                    Width =792
                    Height =225
                    FontSize =8
                    TabIndex =1
                    Name ="Steigerungssatz"
                    ControlSource ="Steigerungssatz_"
                    Format ="Percent"
                    FontName ="Arial"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    TextFontFamily =34
                    Left =2267
                    Width =1527
                    Height =225
                    FontSize =8
                    TabIndex =2
                    Name ="Text61"
                    ControlSource ="Zyklus"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                    LayoutCachedLeft =2267
                    LayoutCachedWidth =3794
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Left =3855
                    Width =492
                    Height =225
                    FontSize =8
                    TabIndex =3
                    Name ="Anzahl von Betrag"
                    ControlSource ="Anzahl von Betrag"
                    Format ="Fixed"
                    FontName ="Arial"
                    EventProcPrefix ="Anzahl_von_Betrag"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =5725
                    Width =1032
                    Height =225
                    FontSize =8
                    TabIndex =4
                    Name ="hochgerechnet"
                    ControlSource ="hochgerechnet"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4592
                    Width =1017
                    Height =225
                    FontSize =8
                    TabIndex =5
                    Name ="Summe von Betrag"
                    ControlSource ="Summe von Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"
                    EventProcPrefix ="Summe_von_Betrag"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =7993
                    Width =897
                    Height =225
                    FontSize =8
                    TabIndex =6
                    Name ="Steigerung"
                    ControlSource ="Steigerung"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =9031
                    Width =1437
                    Height =225
                    FontSize =8
                    TabIndex =7
                    Name ="Kosten"
                    ControlSource ="Kosten"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =340
            BreakLevel =2
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =9151
                    Width =1317
                    Height =225
                    FontSize =8
                    Name ="SummeKostenart"
                    ControlSource ="=Sum([Kosten])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Left =7710
                    Width =1425
                    Height =225
                    FontSize =8
                    FontWeight =400
                    Name ="Bezeichnungsfeld34"
                    Caption ="Summe Kostenart:"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =2
                    TextFontFamily =34
                    Left =1247
                    Width =1467
                    Height =225
                    FontSize =8
                    TabIndex =1
                    ForeColor =255
                    Name ="lfdsummeart"
                    ControlSource ="=Sum([Kosten])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =2
                    TextFontFamily =34
                    Left =2778
                    Width =1197
                    Height =225
                    FontSize =8
                    TabIndex =2
                    ForeColor =255
                    Name ="lfdsummebezahlt"
                    ControlSource ="=Sum([Summe von Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =396
            BreakLevel =1
            Name ="Gruppenfuß0"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =9151
                    Top =56
                    Width =1317
                    FontSize =8
                    FontWeight =700
                    Name ="SummeKostenstelle"
                    ControlSource ="=Sum([Kosten])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Left =7086
                    Top =56
                    Width =1725
                    Height =240
                    FontSize =8
                    Name ="Bezeichnungsfeld35"
                    Caption ="Summe Kostenstelle:"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =2
                    TextFontFamily =34
                    Left =1757
                    Top =56
                    Width =657
                    Height =225
                    FontSize =8
                    TabIndex =1
                    Name ="lfdsummestelle"
                    ControlSource ="=Sum([Kosten])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =2
                    TextFontFamily =34
                    Left =4705
                    Top =56
                    Width =657
                    Height =225
                    FontSize =8
                    TabIndex =2
                    Name ="Text75"
                    ControlSource ="=Sum([Summe von Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
            End
        End
        Begin PageFooter
            Height =453
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =1
                    Left =56
                    Top =113
                    Width =5040
                    Height =255
                    FontSize =8
                    FontWeight =600
                    Name ="Text19"
                    ControlSource ="=Now()"
                    Format ="Long Date"
                    FontName ="Arial"

                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =1
                    Left =5888
                    Top =113
                    Width =3630
                    Height =255
                    FontSize =8
                    FontWeight =600
                    TabIndex =1
                    Name ="Text20"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial"

                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    Width =10485
                    BorderColor =12632256
                    Name ="Linie24"
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =1474
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =8050
                    Top =510
                    Width =2337
                    Height =300
                    FontWeight =600
                    Name ="Text53"
                    ControlSource ="=[lfdsummeart]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =3968
                    Top =566
                    Width =2337
                    Height =300
                    FontWeight =600
                    TabIndex =1
                    Name ="Text76"
                    ControlSource ="=[lfdsummebezahlt]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
            End
        End
    End
End
