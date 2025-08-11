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
    Width =8674
    DatasheetFontHeight =10
    ItemSuffix =49
    Left =7425
    Top =1380
    RecSrcDt = Begin
        0xf799516f725ae440
    End
    RecordSource ="Abfrage für Unterbericht Arbeitsprogramm"
    OnOpen ="=Maxim_Bericht()"
    MenuBar ="CAISY"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextFontFamily =2
            FontName ="Arial"
        End
        Begin Rectangle
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
        End
        Begin TextBox
            OldBorderStyle =0
            TextFontFamily =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Arial"
            ShowDatePicker =0
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Buchungsstelle"
        End
        Begin BreakLevel
            ControlSource ="Jahr"
        End
        Begin BreakLevel
            ControlSource ="sort"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =672
            Name ="Gruppenkopf1"
            Begin
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    Left =113
                    Top =396
                    Width =390
                    Height =255
                    Name ="Bezeichnungsfeld22"
                    Caption ="Jahr"
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    Left =907
                    Top =396
                    Width =600
                    Height =255
                    Name ="Bezeichnungsfeld23"
                    Caption ="Ansatz"
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    Left =2381
                    Top =396
                    Width =390
                    Height =255
                    Name ="Bezeichnungsfeld24"
                    Caption ="HHR"
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    Left =3855
                    Top =396
                    Width =285
                    Height =255
                    Name ="Bezeichnungsfeld25"
                    Caption ="VE"
                End
                Begin Label
                    FontUnderline = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    Left =4422
                    Top =396
                    Width =600
                    Height =255
                    Name ="Bezeichnungsfeld26"
                    Caption ="Summe"
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =45
                    Top =60
                    Width =2325
                    Height =270
                    FontWeight =700
                    Name ="Text18"
                    ControlSource ="=\"Buchungsstelle \" & [Buchungsstelle]"
                    InputMask ="0000"

                End
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =5045
                    Top =453
                    Width =675
                    Height =165
                    TabIndex =1
                    ForeColor =255
                    Name ="ID aus Maßnahmen"
                    ControlSource ="ID aus Maßnahmen"
                    InputMask ="0000"
                    EventProcPrefix ="ID_aus_Maßnahmen"

                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =2486
                    Top =56
                    Width =5775
                    Height =270
                    FontWeight =700
                    TabIndex =2
                    Name ="Massnahme_"
                    ControlSource ="Massnahme_"
                    InputMask ="0000"

                End
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =6576
                    Top =226
                    Width =675
                    Height =165
                    TabIndex =3
                    ForeColor =255
                    Name ="Text22"
                    ControlSource ="Buchungsstelle"
                    InputMask ="0000"

                End
                Begin Line
                    Width =8674
                    Name ="Linie34"
                End
                Begin Line
                    LineSlant = NotDefault
                    Left =8670
                    Top =15
                    Width =0
                    Height =657
                    Name ="Linie40"
                End
                Begin Line
                    LineSlant = NotDefault
                    Width =0
                    Height =657
                    Name ="Linie42"
                End
                Begin Line
                    Top =360
                    Width =8674
                    Name ="Linie45"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =287
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =30
                    Width =735
                    Height =270
                    Name ="Jahr"
                    ControlSource ="Jahr"
                    InputMask ="0000"

                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =629
                    Width =1200
                    Height =255
                    TabIndex =1
                    Name ="Ansatz"
                    ControlSource ="Ansatz"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =1870
                    Width =1245
                    Height =270
                    TabIndex =2
                    Name ="HHR"
                    ControlSource ="HHR"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =3118
                    Width =1140
                    Height =270
                    TabIndex =3
                    Name ="VE"
                    ControlSource ="VE"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =4308
                    Width =1170
                    Height =270
                    TabIndex =4
                    Name ="zufVfg"
                    ControlSource ="zufVfg"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =5557
                    Width =2040
                    Height =270
                    TabIndex =5
                    Name ="Herkunft"
                    ControlSource ="Herkunft"

                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =6633
                    Width =1170
                    Height =270
                    TabIndex =6
                    Name ="Text4"
                    ControlSource ="zufVfgohneVE"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Line
                    Left =8670
                    Top =15
                    Width =0
                    Height =272
                    Name ="Linie38"
                End
                Begin Line
                    Width =0
                    Height =272
                    Name ="Linie39"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =8050
                    Width =435
                    Height =270
                    TabIndex =7
                    Name ="Sammelbuchungsstelle"
                    ControlSource ="Sammelbuchungsstelle"
                    Format ="True/False"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =1303
            OnFormat ="[Event Procedure]"
            Name ="Gruppenfuß0"
            Begin
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =3858
                    Top =56
                    Width =1620
                    Height =225
                    Name ="Betrag"
                    ControlSource ="=Sum([zufVfg])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =1
                    TextFontFamily =34
                    Left =30
                    Top =56
                    Width =885
                    Height =225
                    Name ="Bezeichnungsfeld3"
                    Caption ="finanziert"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =3858
                    Top =283
                    Width =1620
                    Height =225
                    TabIndex =1
                    Name ="offene Auträge"
                    ControlSource ="=IIf(IsNull([Aufträge]),0,[Aufträge])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="offene_Auträge"

                End
                Begin Label
                    TextAlign =1
                    TextFontFamily =34
                    Left =30
                    Top =283
                    Width =1185
                    Height =225
                    Name ="Bezeichnungsfeld7"
                    Caption ="offene Auträge:"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =3858
                    Top =528
                    Width =1620
                    Height =225
                    TabIndex =2
                    Name ="bezahlte Rechnungen"
                    ControlSource ="=IIf(IsNull([sollgesamt]),0,[sollgesamt])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="bezahlte_Rechnungen"

                End
                Begin Label
                    TextAlign =1
                    TextFontFamily =34
                    Left =30
                    Top =528
                    Width =1695
                    Height =225
                    Name ="Bezeichnungsfeld9"
                    Caption ="bezahlte Rechnungen:"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =3858
                    Top =793
                    Width =1620
                    Height =225
                    FontWeight =600
                    TabIndex =3
                    Name ="nochfrei"
                    ControlSource ="=[Betrag]-[bezahlte Rechnungen]-[offene Auträge]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =1
                    TextFontFamily =34
                    Left =30
                    Top =793
                    Width =2205
                    Height =225
                    FontWeight =600
                    Name ="Bezeichnungsfeld11"
                    Caption ="noch zur Verfügung:"
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =5732
                    Top =793
                    Width =2775
                    Height =225
                    FontWeight =700
                    TabIndex =4
                    Name ="Text12"
                    ControlSource ="=IIf([Betrag]=0,\"Keine Mittel zur Verfügung\",IIf([nochfrei]<=0,\"Keine Mittel "
                        "mehr vorhanden\",[nochfrei]/[Betrag]))"
                    Format ="Percent"

                End
                Begin Line
                    Left =4260
                    Width =1239
                    Name ="Linie17"
                End
                Begin Line
                    LineSlant = NotDefault
                    Left =8674
                    Width =0
                    Height =1265
                    Name ="Linie36"
                End
                Begin Line
                    LineSlant = NotDefault
                    Width =0
                    Height =1265
                    Name ="Linie37"
                End
                Begin Line
                    Top =1247
                    Width =8674
                    Name ="Linie43"
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =0
                    Left =6292
                    Top =793
                    Width =1590
                    Height =225
                    FontWeight =700
                    TabIndex =5
                    Name ="Text44"
                    ControlSource ="=IIf([betrag]=0,\"\",IIf([nochfrei]/[Betrag]>0,\"der Mittel noch frei\",\"\"))"

                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =963
                    Top =56
                    Width =1065
                    Height =225
                    TabIndex =6
                    Name ="Text45"
                    ControlSource ="=Year(Now())"

                End
                Begin Line
                    Visible = NotDefault
                    LineSlant = NotDefault
                    BorderWidth =1
                    Left =3798
                    Width =1757
                    Height =1133
                    Name ="Linie46"
                End
                Begin Line
                    Visible = NotDefault
                    BorderWidth =1
                    Left =3798
                    Width =1757
                    Height =1133
                    Name ="Linie48"
                End
            End
        End
    End
End
CodeBehindForm
' See "Unterbericht Finanzierung.cls"
