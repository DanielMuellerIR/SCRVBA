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
    Width =10168
    DatasheetFontHeight =10
    ItemSuffix =124
    Left =8580
    Top =2190
    RecSrcDt = Begin
        0x54516d2ecccde440
    End
    RecordSource ="SELECT Archiv_Mietberechnungen.datum, Archiv_Mietberechnungen.Planjahr, Archiv_M"
        "ietberechnungen.Betrieb, Archiv_Mietberechnungen.Betrieb, Archiv_Mietberechnunge"
        "n.BereichNr, Archiv_Mietberechnungen.BereichName, Archiv_Mietberechnungen.Bezeic"
        "hnung, Archiv_Mietberechnungen.ID_Gebäudeteil, Archiv_Mietberechnungen.Kostenart"
        ", Sum(Archiv_Mietberechnungen.Betrag) AS Abschläge, Archiv_Mietberechnungen.sort"
        ", Archiv_Mietberechnungen.Bruttogrundfläche, Archiv_Mietberechnungen.Text, M_Ber"
        "eiche.ID_Betrieb, M_Bereiche.Kennummer FROM M_Betriebe RIGHT JOIN (M_Bereiche RI"
        "GHT JOIN (Archiv_Mietberechnungen LEFT JOIN tbl_100_20_Gebäudeteile ON Archiv_Mi"
        "etberechnungen.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil) ON M_Ber"
        "eiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]) ON M_Betrieb"
        "e.ID_Betrieb = M_Bereiche.ID_Betrieb GROUP BY Archiv_Mietberechnungen.datum, Arc"
        "hiv_Mietberechnungen.Planjahr, Archiv_Mietberechnungen.Betrieb, Archiv_Mietberec"
        "hnungen.BereichNr, Archiv_Mietberechnungen.BereichName, Archiv_Mietberechnungen."
        "Bezeichnung, Archiv_Mietberechnungen.ID_Gebäudeteil, Archiv_Mietberechnungen.Kos"
        "tenart, Archiv_Mietberechnungen.sort, Archiv_Mietberechnungen.Bruttogrundfläche,"
        " Archiv_Mietberechnungen.Text, M_Bereiche.ID_Betrieb, M_Bereiche.Kennummer HAVIN"
        "G (((Archiv_Mietberechnungen.datum)=F_Variable(\"dt_Fix_Datum\")) AND ((Archiv_M"
        "ietberechnungen.Planjahr) Between F_Variable(\"lng_Kalk_Jahr_Min\") And F_Variab"
        "le(\"lng_Kalk_Jahr_Max\")) AND ((Archiv_Mietberechnungen.ID_Gebäudeteil) Between"
        " F_Variable(\"lng_ID_Geb_Teil_Min\") And F_Variable(\"lng_ID_Geb_Teil_Max\")) AN"
        "D ((M_Bereiche.ID_Betrieb) Between F_Variable(\"lng_Betr_Nr_Min\") And F_Variabl"
        "e(\"lng_Betr_Nr_Max\")) AND ((M_Bereiche.Kennummer) Between F_Variable(\"lng_Ber"
        "_Nr_Min\") And F_Variable(\"lng_Ber_Nr_Max\")));"
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
            GroupFooter = NotDefault
            ControlSource ="Betrieb"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="BereichNr"
        End
        Begin BreakLevel
            ControlSource ="Bezeichnung"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="ID_Gebäudeteil"
        End
        Begin BreakLevel
            ControlSource ="Kostenart"
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
            ForceNewPage =1
            Height =2211
            BackColor =12632256
            Name ="Gruppenkopf3"
            Begin
                Begin TextBox
                    TextFontFamily =0
                    Left =56
                    Top =1247
                    Width =3458
                    Height =287
                    FontWeight =700
                    Name ="Betrieb"
                    ControlSource ="Betrieb"
                    FontName ="1"

                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    TextFontFamily =34
                    Left =2096
                    Top =737
                    Width =4110
                    Height =405
                    FontSize =14
                    FontWeight =700
                    TabIndex =1
                    BackColor =12632256
                    Name ="Haushaltsjahr"
                    ControlSource ="Planjahr"
                    FontName ="Arial"
                    InputMask ="0000"

                    Begin
                        Begin Label
                            Left =56
                            Top =738
                            Width =1935
                            Height =375
                            FontSize =14
                            Name ="Haushaltsjahr Bezeichnungsfeld"
                            Caption ="Haushaltsjahr"
                            EventProcPrefix ="Haushaltsjahr_Bezeichnungsfeld"
                        End
                    End
                End
                Begin Label
                    BackStyle =1
                    Left =56
                    Top =56
                    Width =5835
                    Height =615
                    FontSize =24
                    FontWeight =900
                    BackColor =12632256
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld18"
                    Caption ="Nebenkostenabrechnung"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =623
            BreakLevel =1
            Name ="Gruppenkopf5"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =0
                    Left =60
                    Top =150
                    Width =518
                    Height =315
                    FontWeight =700
                    Name ="BereichNr"
                    ControlSource ="BereichNr"
                    FontName ="1"

                End
                Begin TextBox
                    TextFontFamily =0
                    Left =627
                    Top =150
                    Width =3968
                    Height =315
                    FontWeight =700
                    TabIndex =1
                    Name ="BereichName"
                    ControlSource ="BereichName"
                    FontName ="1"

                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =625
            BreakLevel =3
            Name ="Gruppenkopf1"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =0
                    Left =8050
                    Width =1418
                    Height =227
                    FontSize =10
                    FontWeight =700
                    ForeColor =255
                    Name ="ID"
                    ControlSource ="ID_Gebäudeteil"
                    FontName ="1"

                End
                Begin TextBox
                    TextFontFamily =0
                    Left =56
                    Width =8003
                    Height =285
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"
                    FontName ="1"

                End
                Begin Label
                    Left =4478
                    Top =340
                    Width =1350
                    Height =285
                    Name ="Bezeichnungsfeld68"
                    Caption ="- Abschläge -"
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
                    Width =4302
                    Height =255
                    ColumnWidth =1920
                    FontSize =9
                    Name ="angelegt"
                    ControlSource ="Kostenart"
                    Format ="Short Date"
                    FontName ="Arial"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4530
                    Width =1317
                    Height =255
                    FontSize =9
                    TabIndex =1
                    Name ="Abschläge"
                    ControlSource ="Abschläge"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =1927
            BreakLevel =3
            Name ="Gruppenfuß2"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =5850
                    Top =60
                    Width =1422
                    Height =255
                    FontSize =9
                    Name ="SummeObjekt"
                    ControlSource ="=Sum([Abschläge])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Line
                    Left =4620
                    Top =15
                    Width =2719
                    Name ="Linie70"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =2891
                    Top =1360
                    Width =1422
                    Height =255
                    FontSize =9
                    TabIndex =1
                    ForeColor =255
                    Name ="SummeID"
                    ControlSource ="=nz(Sum([Abschläge]))-IIf(IsError([Nebenkostenabrechnung_Unterbericht_Zahlungen]"
                        ".[Report]![SummeZahlungenObjekt]),0,[Nebenkostenabrechnung_Unterbericht_Zahlunge"
                        "n].[Report]![SummeZahlungenObjekt])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Left =56
                    Top =56
                    Width =2760
                    Height =255
                    FontSize =9
                    FontWeight =400
                    Name ="Bezeichnungsfeld78"
                    Caption ="Summe Objekt"
                End
                Begin Subform
                    Top =396
                    Width =10168
                    Height =180
                    TabIndex =2
                    Name ="Nebenkostenabrechnung_Unterbericht_Zahlungen"
                    SourceObject ="Report.Nebenkostenabrechnung_Unterbericht_Zahlungen"
                    LinkChildFields ="ID_Gebäudeteil"
                    LinkMasterFields ="ID_Gebäudeteil"

                    LayoutCachedTop =396
                    LayoutCachedWidth =10168
                    LayoutCachedHeight =576
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =7256
                    Top =737
                    Width =1647
                    Height =255
                    FontSize =9
                    FontWeight =700
                    TabIndex =3
                    Name ="Abrechnung"
                    ControlSource ="=nz(Sum([Abschläge]))-IIf(IsError([Nebenkostenabrechnung_Unterbericht_Zahlungen]"
                        ".[Report]![SummeZahlungenObjekt]),0,[Nebenkostenabrechnung_Unterbericht_Zahlunge"
                        "n].[Report]![SummeZahlungenObjekt])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    TextFontFamily =34
                    Left =3413
                    Top =737
                    Width =2442
                    Height =255
                    FontSize =9
                    FontWeight =700
                    TabIndex =4
                    Name ="Text89"
                    ControlSource ="=IIf([Abrechnung]<0,\"Nachzahlung\",\"Guthaben\")"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Visible = NotDefault
                    Left =1757
                    Top =1360
                    Width =1065
                    Height =255
                    FontSize =9
                    FontWeight =400
                    ForeColor =255
                    Name ="Bezeichnungsfeld94"
                    Caption ="Abrechnung"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =2889
                    Top =855
                    Width =1422
                    Height =255
                    FontSize =9
                    TabIndex =5
                    ForeColor =255
                    Name ="a"
                    ControlSource ="=Sum([Abschläge])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Visible = NotDefault
                    Left =390
                    Top =855
                    Width =2430
                    Height =255
                    FontSize =9
                    FontWeight =400
                    ForeColor =255
                    Name ="Bezeichnungsfeld97"
                    Caption ="Abschläge lfd ID"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =2891
                    Top =1112
                    Width =1422
                    Height =255
                    FontSize =9
                    TabIndex =6
                    ForeColor =255
                    Name ="b"
                    ControlSource ="=IIf(IsError([Nebenkostenabrechnung_Unterbericht_Zahlungen].[Report]![SummeZahlu"
                        "ngenObjekt]),0,[Nebenkostenabrechnung_Unterbericht_Zahlungen].[Report]![SummeZah"
                        "lungenObjekt])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Visible = NotDefault
                    Left =1757
                    Top =1112
                    Width =1065
                    Height =255
                    FontSize =9
                    FontWeight =400
                    ForeColor =255
                    Name ="Bezeichnungsfeld99"
                    Caption ="Zahlungen"
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =760
            BreakLevel =1
            Name ="Gruppenfuß6"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =7305
                    Top =60
                    Width =1647
                    Height =255
                    FontSize =9
                    FontWeight =700
                    Name ="SummeBereich"
                    ControlSource ="=[SummeID]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =7313
                    Top =396
                    Width =1422
                    Height =255
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    ForeColor =255
                    Name ="SummeBetrieb_"
                    ControlSource ="=nz(Sum([Abschläge]))-IIf(IsError([Nebenkostenabrechnung_Unterbericht_Zahlungen]"
                        ".[Report]![SummeZahlungenObjekt]),0,[Nebenkostenabrechnung_Unterbericht_Zahlunge"
                        "n].[Report]![SummeZahlungenObjekt])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Left =56
                    Top =56
                    Width =2760
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld79"
                    Caption ="Summe Bereich"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =3401
                    Top =56
                    Width =2442
                    Height =255
                    FontSize =9
                    FontWeight =700
                    TabIndex =2
                    Name ="Text90"
                    ControlSource ="=IIf([SummeBereich]<0,\"Nachzahlung\",\"Guthaben\")"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =4084
                    Top =505
                    Width =1422
                    Height =255
                    FontSize =9
                    TabIndex =3
                    ForeColor =255
                    Name ="cc"
                    ControlSource ="=[SummeID]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Visible = NotDefault
                    Left =2950
                    Top =505
                    Width =1065
                    Height =255
                    FontSize =9
                    FontWeight =400
                    ForeColor =255
                    Name ="Bezeichnungsfeld101"
                    Caption ="Abrechnung"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =4082
                    Width =1422
                    Height =255
                    FontSize =9
                    TabIndex =4
                    ForeColor =255
                    Name ="aa"
                    ControlSource ="=[a]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Visible = NotDefault
                    Left =1973
                    Width =2040
                    Height =255
                    FontSize =9
                    FontWeight =400
                    ForeColor =255
                    Name ="Bezeichnungsfeld103"
                    Caption ="Abschläge lfd Bereich"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =4084
                    Top =257
                    Width =1422
                    Height =255
                    FontSize =9
                    TabIndex =5
                    ForeColor =255
                    Name ="bb"
                    ControlSource ="=[b]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Visible = NotDefault
                    Left =2950
                    Top =257
                    Width =1065
                    Height =255
                    FontSize =9
                    FontWeight =400
                    ForeColor =255
                    Name ="Bezeichnungsfeld105"
                    Caption ="Zahlungen"
                End
                Begin Rectangle
                    Width =9014
                    Height =405
                    Name ="Rechteck120"
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =963
            Name ="Gruppenfuß4"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =7313
                    Top =396
                    Width =1647
                    Height =255
                    FontSize =9
                    FontWeight =700
                    Name ="SummeBetrieb"
                    ControlSource ="=[ccc]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Left =60
                    Top =405
                    Width =2760
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld81"
                    Caption ="Summe Betrieb"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =3401
                    Top =405
                    Width =2442
                    Height =255
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    Name ="Text92"
                    ControlSource ="=IIf([SummeBetrieb]<0,\"Nachzahlung\",\"Guthaben\")"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =5839
                    Top =56
                    Width =972
                    Height =255
                    FontSize =9
                    TabIndex =2
                    ForeColor =255
                    Name ="Text93"
                    ControlSource ="=nz(Sum([Abschläge]))-IIf(IsError([Nebenkostenabrechnung_Unterbericht_Zahlungen]"
                        ".[Report]![SummeZahlungenObjekt]),0,[Nebenkostenabrechnung_Unterbericht_Zahlunge"
                        "n].[Report]![SummeZahlungenObjekt])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4084
                    Top =618
                    Width =1422
                    Height =255
                    FontSize =9
                    TabIndex =3
                    ForeColor =255
                    Name ="ccc"
                    ControlSource ="=[cc]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Visible = NotDefault
                    Left =2950
                    Top =618
                    Width =1065
                    Height =255
                    FontSize =9
                    FontWeight =400
                    ForeColor =255
                    Name ="Bezeichnungsfeld107"
                    Caption ="Abrechnung"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4082
                    Top =113
                    Width =1422
                    Height =255
                    FontSize =9
                    TabIndex =4
                    ForeColor =255
                    Name ="aaa"
                    ControlSource ="=[aa]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Visible = NotDefault
                    Left =2948
                    Top =113
                    Width =1065
                    Height =255
                    FontSize =9
                    FontWeight =400
                    ForeColor =255
                    Name ="Bezeichnungsfeld109"
                    Caption ="Abschläge"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4084
                    Top =370
                    Width =1422
                    Height =255
                    FontSize =9
                    TabIndex =5
                    ForeColor =255
                    Name ="bbb"
                    ControlSource ="=[bb]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Visible = NotDefault
                    Left =2950
                    Top =370
                    Width =1065
                    Height =255
                    FontSize =9
                    FontWeight =400
                    ForeColor =255
                    Name ="Bezeichnungsfeld111"
                    Caption ="Zahlungen"
                End
                Begin Rectangle
                    Left =15
                    Top =285
                    Width =9014
                    Height =510
                    Name ="Rechteck119"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =8617
                    Top =680
                    Width =1422
                    Height =255
                    FontSize =9
                    TabIndex =6
                    ForeColor =255
                    Name ="ccc_"
                    ControlSource ="=[cc]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =8617
                    Top =56
                    Width =1422
                    Height =255
                    FontSize =9
                    TabIndex =7
                    ForeColor =255
                    Name ="aaa_"
                    ControlSource ="=[aa]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =8617
                    Top =340
                    Width =1422
                    Height =255
                    FontSize =9
                    TabIndex =8
                    ForeColor =255
                    Name ="bbb_"
                    ControlSource ="=[bb]"
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
            ForceNewPage =1
            Height =1134
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =3970
                    Top =731
                    Width =1422
                    Height =255
                    FontSize =9
                    FontWeight =700
                    Name ="Text112"
                    ControlSource ="=[ccc_]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Left =2146
                    Top =731
                    Width =1755
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld113"
                    Caption ="Abrechnung"
                End
                Begin TextBox
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =3968
                    Top =226
                    Width =1422
                    Height =255
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    Name ="Text114"
                    ControlSource ="=[aaa_]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Left =2144
                    Top =226
                    Width =1755
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld115"
                    Caption ="Abschläge"
                End
                Begin TextBox
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =3970
                    Top =483
                    Width =1422
                    Height =255
                    FontSize =9
                    FontWeight =700
                    TabIndex =2
                    Name ="Text116"
                    ControlSource ="=[bbb_]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    Left =2146
                    Top =483
                    Width =1755
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld117"
                    Caption ="Zahlungen"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6633
                    Top =453
                    Width =1422
                    Height =255
                    FontSize =9
                    FontWeight =700
                    TabIndex =3
                    ForeColor =12632256
                    Name ="Text118"
                    ControlSource ="=DSum(\"[Betrag]\",\"A_Buchungen\",[Haushaltsjahr]=[Planjahr])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
            End
        End
    End
End
