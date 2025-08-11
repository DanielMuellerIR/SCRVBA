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
    ItemSuffix =117
    Left =10785
    Top =2685
    RecSrcDt = Begin
        0x41b1edc5cfe1e240
    End
    RecordSource ="Union_Abfrage_Mietberechnung_ohne_Filter"
    OnOpen ="= Maxim_Bericht()"
    OnClose ="Makro Filter Mietberechnung.SchließenFilter"
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
        End
        Begin BreakLevel
            ControlSource ="Planjahr"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =2
            ControlSource ="Betrieb"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =2
            ControlSource ="BereichNr"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="ID"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="sort"
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
            Height =170
            Name ="Seitenkopf"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =2097
            BreakLevel =1
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Top =1700
                    Width =1476
                    Height =225
                    FontSize =10
                    Name ="Betrieb"
                    ControlSource ="Betrieb"

                End
                Begin Label
                    TextFontFamily =34
                    Top =1247
                    Width =2385
                    Height =330
                    FontSize =12
                    Name ="Bezeichnungsfeld7"
                    Caption ="Kalkulation Mieten für "
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =2381
                    Top =1247
                    Width =1011
                    Height =330
                    FontSize =12
                    TabIndex =1
                    Name ="Planjahr"
                    ControlSource ="Planjahr"

                End
                Begin Label
                    FontItalic = NotDefault
                    SpecialEffect =1
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =513
                    Top =67
                    Width =2600
                    Height =491
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    Name ="Caisy"
                    Caption ="Caisy B 60"
                End
                Begin Label
                    FontItalic = NotDefault
                    TextAlign =2
                    TextFontFamily =34
                    Width =3530
                    Height =1129
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    ForeColor =65535
                    Name ="Text4"
                    Caption ="Caisy B 60"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =453
            BreakLevel =2
            Name ="Gruppenkopf2"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =850
                    Top =113
                    Width =516
                    Height =225
                    FontSize =9
                    Name ="BereichNr"
                    ControlSource ="BereichNr"

                End
                Begin Label
                    TextFontFamily =34
                    Top =113
                    Width =795
                    Height =225
                    FontSize =9
                    Name ="Bezeichnungsfeld2"
                    Caption ="Bereich:"
                End
                Begin TextBox
                    TextFontFamily =34
                    Left =1417
                    Top =113
                    Width =5106
                    Height =225
                    FontSize =9
                    TabIndex =1
                    Name ="BereichName"
                    ControlSource ="BereichName"

                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =1020
            BreakLevel =3
            Name ="Gruppenkopf4"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    SpecialEffect =2
                    OldBorderStyle =1
                    TextFontFamily =34
                    Left =4762
                    Top =226
                    Width =456
                    Height =255
                    BackColor =-2147483643
                    ForeColor =-2147483640
                    Name ="ID"
                    ControlSource ="ID"
                    FontName ="MS Sans Serif"

                End
                Begin Label
                    Top =226
                    Width =795
                    Height =225
                    Name ="Bezeichnungsfeld9"
                    Caption ="Objekt:"
                End
                Begin TextBox
                    Left =907
                    Top =226
                    Width =6126
                    Height =225
                    TabIndex =1
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"

                End
                Begin Line
                    Top =56
                    Width =8617
                    Name ="Linie14"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    Left =907
                    Top =453
                    Width =741
                    Height =225
                    TabIndex =2
                    Name ="Bruttogrundfläche"
                    ControlSource ="Bruttogrundfläche"
                    Format ="Standard"

                End
                Begin Label
                    Left =1757
                    Top =453
                    Width =270
                    Height =225
                    Name ="Meter"
                    Caption ="m²"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextAlign =3
                    Left =2494
                    Top =453
                    Width =741
                    Height =225
                    TabIndex =3
                    ForeColor =255
                    Name ="Fläche"
                    ControlSource ="Bruttogrundfläche"
                    Format ="Standard"

                End
                Begin TextBox
                    CanGrow = NotDefault
                    DecimalPlaces =2
                    TextAlign =3
                    Left =637
                    Top =680
                    Width =1011
                    Height =225
                    TabIndex =4
                    Name ="Text112"
                    ControlSource ="=Sum(IIf([Sort]=\"B\",[betrag],0))/12/[Bruttogrundfläche]"
                    Format ="Standard"

                End
                Begin Label
                    Left =1757
                    Top =680
                    Width =615
                    Height =225
                    Name ="Bezeichnungsfeld113"
                    Caption ="€ / m²"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    Left =3571
                    Top =623
                    Width =1356
                    Height =285
                    TabIndex =5
                    ForeColor =16711680
                    Name ="reine_Miet"
                    ControlSource ="=Sum(IIf([Sort]=\"B\",[betrag],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =113
            BreakLevel =4
            Name ="Gruppenkopf1"
        End
        Begin Section
            KeepTogether = NotDefault
            Height =225
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Width =4146
                    Height =225
                    Name ="Text11"
                    ControlSource ="Kostenart"

                End
                Begin TextBox
                    DecimalPlaces =2
                    Left =4253
                    Width =1131
                    Height =225
                    TabIndex =1
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    Left =5442
                    Width =906
                    Height =225
                    TabIndex =2
                    Name ="sort"
                    ControlSource ="sort"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =345
            BreakLevel =4
            Name ="Gruppenfuß0"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    Left =6281
                    Top =113
                    Width =1101
                    Height =225
                    Name ="Summe_Kostenart"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Line
                    Left =4542
                    Top =113
                    Width =2830
                    Name ="Linie17"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    Width =1356
                    Height =225
                    TabIndex =1
                    ForeColor =255
                    Name ="a"
                    ControlSource ="=Sum(IIf([Sort]=\"A\",[betrag],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    Left =1304
                    Width =1356
                    Height =225
                    TabIndex =2
                    ForeColor =255
                    Name ="b"
                    ControlSource ="=Sum(IIf([Sort]=\"B\",[betrag],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    Left =2665
                    Width =1356
                    Height =225
                    TabIndex =3
                    ForeColor =255
                    Name ="c"
                    ControlSource ="=Sum(IIf([Sort]=\"C\",[betrag],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    Left =4025
                    Width =1356
                    Height =225
                    TabIndex =4
                    ForeColor =255
                    Name ="d"
                    ControlSource ="=Sum(IIf([Sort]=\"D\",[betrag],0))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =566
            BreakLevel =3
            Name ="Gruppenfuß2"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    Width =1356
                    Height =285
                    ForeColor =16711680
                    Name ="aa"
                    ControlSource ="=[a]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    Left =1304
                    Width =1356
                    Height =285
                    TabIndex =1
                    ForeColor =16711680
                    Name ="bb"
                    ControlSource ="=[b]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    Left =2665
                    Width =1356
                    Height =285
                    TabIndex =2
                    ForeColor =16711680
                    Name ="cc"
                    ControlSource ="=[c]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    Left =4025
                    Width =1356
                    Height =285
                    TabIndex =3
                    ForeColor =16711680
                    Name ="dd"
                    ControlSource ="=[d]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Line
                    LineSlant = NotDefault
                    Left =6236
                    Top =98
                    Width =2395
                    Name ="Linie95"
                End
                Begin TextBox
                    DecimalPlaces =2
                    Left =7483
                    Top =170
                    Width =1101
                    Height =225
                    TabIndex =4
                    Name ="Text96"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =1530
            BreakLevel =2
            Name ="Gruppenfuß3"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4025
                    Top =963
                    Width =1581
                    Height =225
                    Name ="aaa"
                    ControlSource ="=Int([aa])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4024
                    Top =510
                    Width =1581
                    Height =225
                    TabIndex =1
                    Name ="bbb"
                    ControlSource ="=Int([bb])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4024
                    Top =736
                    Width =1581
                    Height =225
                    TabIndex =2
                    Name ="ccc"
                    ControlSource ="=Int([cc])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4025
                    Top =283
                    Width =1581
                    Height =225
                    TabIndex =3
                    Name ="ddd"
                    ControlSource ="=Int([dd])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    Visible = NotDefault
                    Left =2211
                    Top =963
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld59"
                    Caption ="Abschreibung:"
                End
                Begin Label
                    Left =2210
                    Top =510
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld60"
                    Caption ="Miete:"
                End
                Begin Label
                    Left =2210
                    Top =737
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld61"
                    Caption ="Nebenkosten:"
                End
                Begin Label
                    Left =2205
                    Top =285
                    Width =1515
                    Height =225
                    Name ="Bezeichnungsfeld62"
                    Caption ="Nebenkostenumlage:"
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =226
                    Top =283
                    Width =1071
                    Height =225
                    TabIndex =4
                    Name ="Text63"
                    ControlSource ="=\"Bereich \" & [BereichNr]"

                End
                Begin Rectangle
                    BackStyle =0
                    Top =170
                    Width =5782
                    Height =1134
                    Name ="Rechteck64"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6066
                    Top =56
                    Width =1356
                    Height =225
                    TabIndex =5
                    ForeColor =8388863
                    Name ="bet_a"
                    ControlSource ="=Int([aa])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6066
                    Top =283
                    Width =1356
                    Height =225
                    TabIndex =6
                    ForeColor =8388863
                    Name ="bet_b"
                    ControlSource ="=Int([bb])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6066
                    Top =509
                    Width =1356
                    Height =225
                    TabIndex =7
                    ForeColor =8388863
                    Name ="bet_c"
                    ControlSource ="=Int([cc])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6066
                    Top =736
                    Width =1356
                    Height =225
                    TabIndex =8
                    ForeColor =8388863
                    Name ="bet_d"
                    ControlSource ="=Int([dd])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    Left =1257
                    Top =510
                    Width =270
                    Height =225
                    Name ="Bezeichnungsfeld100"
                    Caption ="m²"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    DecimalPlaces =2
                    TextAlign =1
                    Left =226
                    Top =510
                    Width =981
                    Height =225
                    TabIndex =9
                    Name ="summeflächebereich"
                    ControlSource ="=[Fläche]"
                    Format ="Standard"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextAlign =3
                    Left =226
                    Top =968
                    Width =1746
                    Height =225
                    TabIndex =10
                    ForeColor =255
                    Name ="summeflächebetrieb"
                    ControlSource ="=[summeflächebereich]"
                    Format ="Standard"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            ForceNewPage =2
            Height =2097
            BreakLevel =1
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4025
                    Top =1417
                    Width =1581
                    Height =225
                    Name ="Text69"
                    ControlSource ="=[bet_a]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4024
                    Top =963
                    Width =1581
                    Height =225
                    TabIndex =1
                    Name ="Text70"
                    ControlSource ="=[bet_b]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4024
                    Top =1189
                    Width =1581
                    Height =225
                    TabIndex =2
                    Name ="Text71"
                    ControlSource ="=[bet_c]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4025
                    Top =737
                    Width =1581
                    Height =225
                    TabIndex =3
                    Name ="Text72"
                    ControlSource ="=[bet_d]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    Visible = NotDefault
                    Left =2211
                    Top =1417
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld73"
                    Caption ="Abschreibung:"
                End
                Begin Label
                    Left =2210
                    Top =963
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld74"
                    Caption ="Miete:"
                End
                Begin Label
                    Left =2210
                    Top =1190
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld75"
                    Caption ="Nebenkosten:"
                End
                Begin Label
                    Left =2205
                    Top =735
                    Width =1515
                    Height =225
                    Name ="Bezeichnungsfeld76"
                    Caption ="Nebenkostenumlage:"
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =226
                    Top =736
                    Width =1071
                    Height =225
                    TabIndex =4
                    Name ="Text77"
                    ControlSource ="Betrieb"

                End
                Begin Rectangle
                    BackStyle =0
                    Top =623
                    Width =5782
                    Height =1134
                    Name ="Rechteck78"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6009
                    Top =737
                    Width =1356
                    Height =225
                    TabIndex =5
                    Name ="A-Verw"
                    ControlSource ="=[bet_a]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="A_Verw"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6009
                    Top =964
                    Width =1356
                    Height =225
                    TabIndex =6
                    Name ="B_Verw"
                    ControlSource ="=[bet_b]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6009
                    Top =1190
                    Width =1356
                    Height =225
                    TabIndex =7
                    Name ="C_Verw"
                    ControlSource ="=[bet_c]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =6009
                    Top =1417
                    Width =1356
                    Height =225
                    TabIndex =8
                    Name ="D_Verw"
                    ControlSource ="=[bet_d]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    Left =1077
                    Top =963
                    Width =270
                    Height =225
                    Name ="Bezeichnungsfeld107"
                    Caption ="m²"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =1
                    Left =226
                    Top =963
                    Width =741
                    Height =225
                    TabIndex =9
                    Name ="Text108"
                    ControlSource ="=[summeflächebetrieb]"
                    Format ="Standard"

                End
            End
        End
        Begin PageFooter
            Height =523
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    BackStyle =0
                    Top =283
                    Width =3402
                    Name ="Text15"
                    ControlSource ="=Format(Date(),\"Long Date\") & \" \" & Format(Time(),\"Long Time\")"

                End
                Begin TextBox
                    BackStyle =0
                    Left =6916
                    Top =283
                    TabIndex =1
                    Name ="Text79"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"

                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =2154
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4025
                    Top =1417
                    Width =1581
                    Height =225
                    Name ="Text84"
                    ControlSource ="=[A_Verw]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4024
                    Top =963
                    Width =1581
                    Height =225
                    TabIndex =1
                    Name ="Text85"
                    ControlSource ="=[B_Verw]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4024
                    Top =1189
                    Width =1581
                    Height =225
                    TabIndex =2
                    Name ="Text86"
                    ControlSource ="=[C_Verw]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4025
                    Top =737
                    Width =1581
                    Height =225
                    TabIndex =3
                    Name ="Text87"
                    ControlSource ="=[D_Verw]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    Visible = NotDefault
                    Left =2211
                    Top =1417
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld88"
                    Caption ="Abschreibung:"
                End
                Begin Label
                    Left =2210
                    Top =963
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld89"
                    Caption ="Miete:"
                End
                Begin Label
                    Left =2210
                    Top =1190
                    Width =1245
                    Height =225
                    Name ="Bezeichnungsfeld90"
                    Caption ="Nebenkosten:"
                End
                Begin Label
                    Left =2205
                    Top =735
                    Width =1515
                    Height =225
                    Name ="Bezeichnungsfeld91"
                    Caption ="Nebenkostenumlage:"
                End
                Begin Rectangle
                    BackStyle =0
                    Top =623
                    Width =5782
                    Height =1134
                    Name ="Rechteck93"
                End
                Begin Label
                    TextFontFamily =34
                    Left =165
                    Top =730
                    Width =1815
                    Height =255
                    FontSize =9
                    Name ="Bezeichnungsfeld94"
                    Caption ="Gesamte Kalkulation:"
                End
            End
        End
    End
End
