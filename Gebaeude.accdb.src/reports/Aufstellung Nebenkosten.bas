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
    Width =9070
    DatasheetFontHeight =10
    ItemSuffix =79
    Left =11385
    Top =2415
    RecSrcDt = Begin
        0xc5ed47abece1e240
    End
    RecordSource ="M_Bericht_Nebenkosten"
    Caption ="Gebäudeliste"
    OnOpen ="= Maxim_Bericht()"
    OnClose ="Makro Filter für Nebenkosten.SchließenFilter"
    MenuBar ="CAISY"
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
        Begin UnboundObjectFrame
            Width =4536
            Height =2835
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =2
            ControlSource ="Bezeichnung"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Haushaltsjahr"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =0
            Name ="Berichtskopf"
        End
        Begin PageHeader
            Height =1587
            Name ="Seitenkopf"
            Begin
                Begin Label
                    Left =3465
                    Top =120
                    Width =4605
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld16"
                    Caption ="gezahlte Nebenkosten"
                    FontName ="Arial"
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
                    FontName ="Arial"
                End
                Begin Label
                    FontItalic = NotDefault
                    TextAlign =2
                    Width =3530
                    Height =1129
                    FontSize =16
                    FontWeight =700
                    BackColor =12632256
                    ForeColor =65535
                    Name ="Text4"
                    Caption ="Caisy B 60"
                    FontName ="Arial"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =963
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    Top =339
                    Width =8895
                    Height =405
                    ColumnWidth =3735
                    FontSize =14
                    Name ="ID aus Objekte"
                    ControlSource ="Bezeichnung"
                    EventProcPrefix ="ID_aus_Objekte"

                End
                Begin Rectangle
                    Top =283
                    Width =9014
                    Height =566
                    Name ="Rechteck23"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =470
            BreakLevel =1
            Name ="Gruppenkopf1"
            Begin
                Begin TextBox
                    TextAlign =1
                    Top =56
                    Width =1487
                    Height =255
                    FontWeight =700
                    Name ="Haushaltsjahr"
                    ControlSource ="Haushaltsjahr"

                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =283
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Width =1697
                    Height =255
                    FontSize =8
                    Name ="Nebenkosten_Art"
                    ControlSource ="Nebenkosten_Art"

                End
                Begin TextBox
                    Left =1757
                    Width =2162
                    Height =255
                    FontSize =8
                    TabIndex =1
                    Name ="Rechnungsaussteller"
                    ControlSource ="Rechnungsaussteller"

                End
                Begin TextBox
                    TextAlign =3
                    Left =4025
                    Width =857
                    Height =255
                    FontSize =8
                    TabIndex =2
                    Name ="Menge"
                    ControlSource ="Menge"

                End
                Begin TextBox
                    TextAlign =1
                    Left =4937
                    Width =512
                    Height =255
                    FontSize =8
                    TabIndex =3
                    Name ="Einheit"
                    ControlSource ="Einheit"

                End
                Begin TextBox
                    Left =5556
                    Width =857
                    Height =255
                    FontSize =8
                    TabIndex =4
                    Name ="berechnet_von"
                    ControlSource ="berechnet_von"

                End
                Begin TextBox
                    Left =6463
                    Width =857
                    Height =255
                    FontSize =8
                    TabIndex =5
                    Name ="berechnet_bis"
                    ControlSource ="berechnet_bis"

                End
                Begin TextBox
                    Left =7597
                    Width =1367
                    Height =255
                    FontSize =8
                    TabIndex =6
                    Name ="Betrag"
                    ControlSource ="Betrag"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =510
            BreakLevel =1
            Name ="Gruppenfuß0"
            Begin
                Begin TextBox
                    RunningSum =1
                    Left =7596
                    Top =170
                    Width =1367
                    Height =255
                    FontSize =8
                    Name ="SummeJahr"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Line
                    Left =7483
                    Top =113
                    Width =1587
                    Name ="Linie74"
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =283
            Name ="Gruppenfuß1"
        End
        Begin PageFooter
            Height =498
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =3
                    Left =5159
                    Top =226
                    Width =3791
                    Height =270
                    FontSize =8
                    Name ="Text58"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"

                End
                Begin TextBox
                    Top =226
                    Width =4257
                    TabIndex =1
                    Name ="Text67"
                    ControlSource ="=Format(Date(),\"Long Date\") & \" \" & Format(Time(),\"Long Time\")"

                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =737
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    RunningSum =1
                    Left =7596
                    Top =170
                    Width =1367
                    Height =255
                    FontSize =8
                    Name ="Text78"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
            End
        End
    End
End
