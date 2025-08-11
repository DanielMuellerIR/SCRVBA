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
    Width =10112
    DatasheetFontHeight =10
    ItemSuffix =78
    Left =10020
    Top =2640
    RecSrcDt = Begin
        0x756eeda76f6fe540
    End
    RecordSource ="Zusammenstellung NK_1"
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
        Begin PageBreak
            Width =283
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            ControlSource ="Haushaltsjahr"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Betrieb"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="BereichNr"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Kostenstelle_Infoma"
        End
        Begin BreakLevel
            ControlSource ="Bezeichnung"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =0
            Name ="Berichtskopf"
        End
        Begin PageHeader
            Height =0
            Name ="Seitenkopf"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =0
            BackColor =12632256
            Name ="Gruppenkopf0"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =1530
            BreakLevel =1
            BackColor =12632256
            Name ="Gruppenkopf3"
            Begin
                Begin Label
                    BackStyle =1
                    Width =5010
                    Height =615
                    FontSize =24
                    FontWeight =900
                    BackColor =12632256
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld73"
                    Caption ="Bericht Nebenkosten"
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    TextFontFamily =34
                    Left =2097
                    Top =736
                    Width =4110
                    Height =405
                    FontSize =14
                    FontWeight =700
                    BackColor =12632256
                    Name ="Text74"
                    ControlSource ="Haushaltsjahr"
                    FontName ="Arial"
                    InputMask ="0000"

                    Begin
                        Begin Label
                            Left =57
                            Top =737
                            Width =1935
                            Height =375
                            FontSize =14
                            Name ="Bezeichnungsfeld75"
                            Caption ="Haushaltsjahr"
                        End
                    End
                End
                Begin Rectangle
                    BorderWidth =0
                    Top =680
                    Width =6579
                    Height =519
                    Name ="Rechteck76"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =623
            BreakLevel =2
            Name ="Gruppenkopf5"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Top =180
                    Width =1080
                    Height =255
                    FontSize =9
                    FontWeight =700
                    BorderColor =8421504
                    Name ="Betrieb"
                    ControlSource ="Betrieb"
                    FontName ="Arial"

                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    TextFontFamily =34
                    Left =1190
                    Top =180
                    Width =285
                    Height =255
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    BorderColor =8421504
                    Name ="BereichNr"
                    ControlSource ="BereichNr"
                    FontName ="Arial"

                End
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Left =1530
                    Top =180
                    Width =5055
                    Height =255
                    FontSize =9
                    FontWeight =700
                    TabIndex =2
                    BorderColor =8421504
                    Name ="BereichName"
                    ControlSource ="BereichName"
                    FontName ="Arial"

                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =0
            BreakLevel =3
            Name ="Gruppenkopf1"
        End
        Begin Section
            KeepTogether = NotDefault
            Visible = NotDefault
            CanShrink = NotDefault
            Height =226
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =5
                    Width =2712
                    Height =225
                    ColumnWidth =1305
                    FontSize =9
                    Name ="Nebenkosten_Art"
                    ControlSource ="Nebenkosten_Art"
                    FontName ="Arial"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =5555
                    Width =1317
                    Height =225
                    FontSize =9
                    TabIndex =1
                    Name ="Summe von Betrag"
                    ControlSource ="Summe von Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"
                    EventProcPrefix ="Summe_von_Betrag"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =283
            BreakLevel =3
            Name ="Gruppenfuß0"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =6406
                    Top =15
                    Width =2817
                    Height =255
                    FontSize =9
                    Name ="SummeKostenstelle"
                    ControlSource ="=Sum([Summe von Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =9524
                    Width =267
                    Height =255
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    Name ="Bereichssumme"
                    ControlSource ="=Sum([Summe von Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Left =1260
                    Width =4800
                    Height =255
                    FontSize =9
                    TabIndex =2
                    BorderColor =8421504
                    Name ="Text71"
                    ControlSource ="Bezeichnung"
                    FontName ="Arial"

                    LayoutCachedLeft =1260
                    LayoutCachedWidth =6060
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Width =1020
                    Height =255
                    FontSize =9
                    TabIndex =3
                    BorderColor =8421504
                    Name ="Text77"
                    ControlSource ="Kostenstelle_Infoma"
                    Format ="00000"
                    FontName ="Arial"

                    LayoutCachedWidth =1020
                    LayoutCachedHeight =255
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =623
            BreakLevel =2
            Name ="Gruppenfuß6"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =6406
                    Top =210
                    Width =2817
                    Height =255
                    FontSize =9
                    FontWeight =700
                    Name ="Text63"
                    ControlSource ="=[Bereichssumme]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =9523
                    Top =210
                    Width =267
                    Height =255
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    Name ="Betriebssumme"
                    ControlSource ="=[Bereichssumme]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Left =4422
                    Top =210
                    Width =1920
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld65"
                    Caption ="Summe Bereich:"
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =510
            BreakLevel =1
            Name ="Gruppenfuß4"
            Begin
                Begin Label
                    Left =4422
                    Top =165
                    Width =1920
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld66"
                    Caption ="Summe Betrieb:"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =6406
                    Top =165
                    Width =2817
                    Height =255
                    FontSize =9
                    FontWeight =700
                    Name ="Text67"
                    ControlSource ="=[Betriebssumme]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =9523
                    Top =165
                    Width =267
                    Height =255
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    Name ="Verwaltungssumme"
                    ControlSource ="=[Betriebssumme]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin PageBreak
                    Top =453
                    Name ="Seitenumbruch72"
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
            Height =1134
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =6349
                    Top =226
                    Width =2817
                    Height =255
                    FontSize =9
                    FontWeight =700
                    Name ="Summe Verwaltung"
                    ControlSource ="=[Verwaltungssumme]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"
                    EventProcPrefix ="Summe_Verwaltung"

                End
                Begin Label
                    Left =4365
                    Top =226
                    Width =1920
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld70"
                    Caption ="Summe alle Betriebe:"
                End
            End
        End
    End
End
