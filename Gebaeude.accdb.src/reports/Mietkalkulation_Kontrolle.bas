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
    Width =14000
    DatasheetFontHeight =10
    ItemSuffix =20
    Left =8580
    Top =2205
    RecSrcDt = Begin
        0xd3823e2bd1dde440
    End
    RecordSource ="Mietkalkulation_Kontrolle"
    Caption ="Mietkalkulation_Kontrolle"
    OnOpen ="Formular_Mietberechnung_versteckt_öffnen.öffnen"
    OnClose ="Formular_Mietberechnung_versteckt_öffnen.schließen"
    DatasheetFontName ="Arial"
    OnLoad ="=Maxim_Bericht()"
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
            GroupFooter = NotDefault
            ControlSource ="Planjahr"
        End
        Begin BreakLevel
            GroupFooter = NotDefault
            ControlSource ="Art"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1014
            BackColor =12632256
            Name ="Berichtskopf"
            Begin
                Begin Label
                    BackStyle =1
                    Left =57
                    Top =57
                    Width =5925
                    Height =615
                    FontSize =24
                    FontWeight =900
                    BackColor =12632256
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld8"
                    Caption ="Mietkalkulation_Kontrolle"
                End
            End
        End
        Begin PageHeader
            Height =384
            Name ="Seitenkopf"
            Begin
                Begin Label
                    TextAlign =3
                    Left =57
                    Top =57
                    Width =795
                    Height =270
                    FontSize =9
                    FontWeight =900
                    Name ="Planjahr Bezeichnungsfeld"
                    Caption ="Planjahr"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Planjahr_Bezeichnungsfeld"
                End
                Begin Label
                    Left =1569
                    Top =57
                    Width =3735
                    Height =270
                    FontSize =9
                    FontWeight =900
                    Name ="Kostenart Bezeichnungsfeld"
                    Caption ="Kostenart"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Kostenart_Bezeichnungsfeld"
                End
                Begin Label
                    Left =5496
                    Top =57
                    Width =1650
                    Height =270
                    FontSize =9
                    FontWeight =900
                    Name ="Art Bezeichnungsfeld"
                    Caption ="Art"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Art_Bezeichnungsfeld"
                End
                Begin Label
                    TextAlign =3
                    Left =7203
                    Top =57
                    Width =2760
                    Height =270
                    FontSize =9
                    FontWeight =900
                    Name ="Betrag_ Bezeichnungsfeld"
                    Caption ="Betrag_"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Betrag__Bezeichnungsfeld"
                End
                Begin Line
                    BorderWidth =3
                    Left =57
                    Top =327
                    Width =9906
                    BorderColor =12632256
                    Name ="Linie11"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =396
            Name ="Gruppenkopf0"
        End
        Begin Section
            KeepTogether = NotDefault
            Height =330
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextAlign =1
                    Left =56
                    Width =1455
                    Height =330
                    ColumnWidth =960
                    Name ="Planjahr"
                    ControlSource ="Planjahr"

                End
                Begin TextBox
                    Left =1587
                    Width =4365
                    Height =330
                    ColumnWidth =3780
                    TabIndex =1
                    Name ="Kostenart"
                    ControlSource ="Kostenart"

                End
                Begin TextBox
                    Left =7221
                    Width =2760
                    Height =330
                    ColumnWidth =1485
                    TabIndex =2
                    Name ="Betrag_"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =737
            BreakLevel =1
            Name ="Gruppenfuß0"
            Begin
                Begin TextBox
                    Left =7200
                    Top =113
                    Width =2760
                    Height =330
                    Name ="Text14"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Line
                    Left =8447
                    Top =56
                    Width =1523
                    Name ="Linie15"
                End
                Begin TextBox
                    Left =5499
                    Top =113
                    Width =1650
                    Height =330
                    ColumnWidth =1335
                    TabIndex =1
                    Name ="Art"
                    ControlSource ="Art"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =453
            Name ="Gruppenfuß1"
        End
        Begin PageFooter
            Height =513
            BackColor =12632256
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =1
                    Left =57
                    Top =228
                    Width =5040
                    Height =285
                    FontSize =9
                    FontWeight =700
                    BackColor =12632256
                    Name ="Text9"
                    ControlSource ="=Now()"
                    Format ="Long Date"
                    FontName ="Arial"

                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =1
                    Left =8903
                    Top =228
                    Width =5040
                    Height =285
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    BackColor =12632256
                    Name ="Text10"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial"

                End
                Begin Line
                    BorderWidth =1
                    Left =57
                    Top =228
                    Width =13886
                    BorderColor =12632256
                    Name ="Linie12"
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =2494
            Name ="Berichtsfuß"
            Begin
                Begin Label
                    Left =453
                    Top =226
                    Width =12586
                    Height =1077
                    Name ="Bezeichnungsfeld19"
                    Caption ="Die Mietkalkulation Kontrolle weisst ein anderes Ergebnis aus als die Mietberech"
                        "nung für die Bereiche! Auf Wunsch der Kämmerei werden bei den Bereichskalkulatio"
                        "nen die berechneten Kosten jeweils gerundet. Hier werden die Kostenarten addiert"
                        " und erst danach gerundet. Daher kommt es zu Differenzen im Bereich weniger hund"
                        "ert Euro."
                End
            End
        End
    End
End
