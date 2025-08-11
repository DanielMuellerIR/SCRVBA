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
    Width =10095
    DatasheetFontHeight =10
    ItemSuffix =66
    Left =8178
    Top =2744
    RecSrcDt = Begin
        0xe8020e72ae07e540
    End
    RecordSource ="Bericht Nebenkosten"
    Caption ="Bericht_Nebenkosten"
    OnOpen ="= Maxim_Bericht()"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =1
            FontSize =10
            FontWeight =700
            FontName ="Arial"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =2
            BorderLineStyle =0
            Width =850
            Height =850
            BorderColor =12632256
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
            TextFontFamily =18
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
        End
        Begin ListBox
            TextFontFamily =18
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
        End
        Begin ComboBox
            OldBorderStyle =0
            TextFontFamily =18
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
        End
        Begin Subform
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            KeepTogether =1
            ControlSource ="Haushaltsjahr"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            KeepTogether =1
            ControlSource ="Betr_Bereich"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Bezeichnung"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Nebenkosten_Art"
        End
        Begin BreakLevel
            ControlSource ="angelegt"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =850
            BackColor =12632256
            Name ="Berichtskopf"
            Begin
                Begin Label
                    BackStyle =1
                    Left =57
                    Top =57
                    Width =5010
                    Height =615
                    FontSize =24
                    FontWeight =900
                    BackColor =12632256
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld18"
                    Caption ="Bericht Nebenkosten"
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
                    Width =10095
                    BorderColor =12632256
                    Name ="Linie22"
                End
            End
        End
        Begin PageHeader
            Height =56
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
                    Width =3450
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
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =623
            BreakLevel =1
            BackColor =12632256
            Name ="Gruppenkopf3"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    TextFontFamily =34
                    Left =56
                    Top =113
                    Width =9075
                    Height =405
                    FontSize =14
                    FontWeight =700
                    BackColor =12632256
                    Name ="Betrieb"
                    ControlSource ="Betr_Bereich"
                    FontName ="Arial"
                    InputMask ="0000"

                    LayoutCachedLeft =56
                    LayoutCachedTop =113
                    LayoutCachedWidth =9131
                    LayoutCachedHeight =518
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =566
            BreakLevel =2
            Name ="Gruppenkopf1"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Left =56
                    Top =226
                    Width =9360
                    Height =315
                    ColumnWidth =4800
                    FontSize =12
                    BorderColor =8421504
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"
                    FontName ="Arial"

                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =795
            BreakLevel =3
            Name ="Gruppenkopf2"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Left =1587
                    Top =56
                    Width =7995
                    Height =285
                    ColumnWidth =2070
                    FontSize =10
                    FontWeight =700
                    Name ="Nebenkosten_Art"
                    ControlSource ="Nebenkosten_Art"
                    FontName ="Arial"

                    Begin
                        Begin Label
                            Left =57
                            Top =57
                            Width =1395
                            Height =285
                            Name ="Nebenkosten_Art Bezeichnungsfeld"
                            Caption ="Nebenkosten:"
                            EventProcPrefix ="Nebenkosten_Art_Bezeichnungsfeld"
                        End
                    End
                End
                Begin Label
                    Left =56
                    Top =456
                    Width =705
                    Height =285
                    FontWeight =900
                    Name ="angelegt Bezeichnungsfeld"
                    Caption ="Datum"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="angelegt_Bezeichnungsfeld"
                End
                Begin Label
                    TextAlign =3
                    Left =1307
                    Top =456
                    Width =1410
                    Height =285
                    FontWeight =900
                    Name ="Kostenstelle Bezeichnungsfeld"
                    Caption ="Kostenstelle"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Kostenstelle_Bezeichnungsfeld"
                End
                Begin Label
                    Left =3008
                    Top =456
                    Width =2490
                    Height =285
                    FontWeight =900
                    Name ="Name, Vorname Bezeichnungsfeld"
                    Caption ="Zahlungsempfänger"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Name__Vorname_Bezeichnungsfeld"
                End
                Begin Label
                    TextAlign =2
                    Left =6139
                    Top =453
                    Width =705
                    Height =285
                    FontWeight =900
                    Name ="Betrag Bezeichnungsfeld"
                    Caption ="Betrag"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Betrag_Bezeichnungsfeld"
                End
                Begin Label
                    TextAlign =2
                    Left =8450
                    Top =456
                    Width =1545
                    Height =285
                    FontWeight =900
                    Name ="Name Bezeichnungsfeld"
                    Caption ="Sachbearbeiter"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Name_Bezeichnungsfeld"
                    LayoutCachedLeft =8450
                    LayoutCachedTop =456
                    LayoutCachedWidth =9995
                    LayoutCachedHeight =741
                End
                Begin Line
                    Top =780
                    Width =10095
                    Name ="Linie33"
                End
                Begin Label
                    TextAlign =2
                    Left =6973
                    Top =453
                    Width =855
                    Height =285
                    FontWeight =900
                    Name ="Bezeichnungsfeld61"
                    Caption ="Zyklus"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =6973
                    LayoutCachedTop =453
                    LayoutCachedWidth =7828
                    LayoutCachedHeight =738
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =255
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =56
                    Width =1017
                    Height =225
                    ColumnWidth =1920
                    FontSize =9
                    Name ="angelegt"
                    ControlSource ="angelegt"
                    Format ="Short Date"
                    FontName ="Arial"

                End
                Begin TextBox
                    TextAlign =2
                    TextFontFamily =34
                    Left =1310
                    Width =1407
                    Height =225
                    ColumnWidth =1305
                    FontSize =9
                    TabIndex =1
                    Name ="Kostenstelle"
                    ControlSource ="Kostenstelle"
                    FontName ="Arial"

                End
                Begin TextBox
                    TextFontFamily =34
                    Left =2948
                    Width =2577
                    Height =225
                    ColumnWidth =2640
                    FontSize =9
                    TabIndex =2
                    Name ="Empfänger"
                    ControlSource ="Empfänger"
                    FontName ="Arial"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =5555
                    Width =1317
                    Height =225
                    FontSize =9
                    TabIndex =3
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    TextFontFamily =34
                    Left =8504
                    Width =1518
                    Height =255
                    ColumnWidth =1335
                    FontSize =9
                    TabIndex =4
                    Name ="Name"
                    ControlSource ="Name"
                    FontName ="Arial"

                    LayoutCachedLeft =8504
                    LayoutCachedWidth =10022
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    TextFontFamily =34
                    Left =7037
                    Width =1410
                    Height =225
                    FontSize =9
                    TabIndex =5
                    Name ="Zyklus"
                    ControlSource ="Zyklus"
                    FontName ="Arial"

                    LayoutCachedLeft =7037
                    LayoutCachedWidth =8447
                    LayoutCachedHeight =225
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =311
            BreakLevel =3
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =5577
                    Top =56
                    Width =1317
                    Height =255
                    FontSize =9
                    Name ="SummeKostenart"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Line
                    Top =30
                    Width =10095
                    Name ="Linie25"
                End
                Begin Label
                    Left =3628
                    Top =56
                    Width =1680
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld34"
                    Caption ="Summe Kostenart:"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =2
                    TextFontFamily =34
                    Left =8975
                    Top =56
                    Width =657
                    Height =255
                    FontSize =9
                    TabIndex =1
                    Name ="lfdsummeart"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =255
            BreakLevel =2
            Name ="Gruppenfuß0"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =5573
                    Width =1317
                    Height =255
                    FontSize =9
                    Name ="SummeKostenstelle"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Left =3628
                    Width =1920
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld35"
                    Caption ="Summe Kostenstelle:"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =2
                    TextFontFamily =34
                    Left =8975
                    Width =657
                    Height =255
                    FontSize =9
                    TabIndex =1
                    Name ="lfdsummestelle"
                    ControlSource ="=Sum([Betrag])"
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
                    FontSize =9
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
                    FontSize =9
                    FontWeight =600
                    TabIndex =1
                    Name ="Text20"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial"

                End
                Begin Line
                    BorderWidth =1
                    Width =10095
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
                    Left =5500
                    Top =680
                    Width =2337
                    Height =300
                    FontWeight =600
                    Name ="Text53"
                    ControlSource ="=[lfdsummeart]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
            End
        End
    End
End
