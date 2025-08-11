Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =14513
    DatasheetFontHeight =10
    ItemSuffix =60
    Left =13395
    Top =5400
    Right =25350
    Bottom =12990
    RecSrcDt = Begin
        0x81b08eb5ecdbe240
    End
    RecordSource ="M_Verwaltungskosten"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin TextBox
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin Section
            Height =8220
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Left =2839
                    Top =912
                    Width =1150
                    Height =255
                    Name ="Betrag_400000"
                    ControlSource ="Betrag_400000"

                End
                Begin Label
                    OverlapFlags =85
                    Top =907
                    Width =2772
                    Height =240
                    Name ="Bezeichnungsfeld3"
                    Caption ="11.13/11.14.50.. - Personalkosten"
                    FontName ="Arial"
                    LayoutCachedTop =907
                    LayoutCachedWidth =2772
                    LayoutCachedHeight =1147
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    Left =396
                    Top =113
                    Width =1845
                    Height =240
                    Name ="Bezeichnungsfeld4"
                    Caption ="Kostenart"
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    Left =2891
                    Top =113
                    Width =540
                    Height =240
                    Name ="Bezeichnungsfeld5"
                    Caption ="Betrag"
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    Left =4138
                    Top =113
                    Width =810
                    Height =240
                    Name ="Bezeichnungsfeld8"
                    Caption ="Grundlage"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4138
                    Top =912
                    Width =1495
                    Height =255
                    TabIndex =1
                    Name ="Berechnung440000"
                    ControlSource ="Berechnung440000"

                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    Left =5784
                    Top =113
                    Width =1305
                    Height =240
                    Name ="Bezeichnungsfeld10"
                    Caption ="Anteil Verwaltung"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =5737
                    Top =912
                    Width =505
                    Height =255
                    TabIndex =2
                    Name ="Anteil_400000_Verwaltung"
                    ControlSource ="Anteil_400000_Verwaltung"

                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    Left =7995
                    Top =113
                    Width =1425
                    Height =240
                    Name ="Bezeichnungsfeld12"
                    Caption ="Anteil Unterhaltung"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =7813
                    Top =912
                    Width =625
                    Height =255
                    TabIndex =4
                    Name ="Anteil_400000_Unterhaltung"
                    ControlSource ="Anteil_400000_Unterhaltung"

                End
                Begin Label
                    OverlapFlags =85
                    Left =5782
                    Top =453
                    Width =195
                    Height =240
                    Name ="Bezeichnungsfeld14"
                    Caption ="%"
                End
                Begin Label
                    OverlapFlags =85
                    Left =7813
                    Top =510
                    Width =375
                    Height =240
                    Name ="Bezeichnungsfeld15"
                    Caption ="%"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =6292
                    Top =907
                    Width =1360
                    Height =255
                    TabIndex =3
                    Name ="Summe400000V"
                    ControlSource ="=[Betrag_400000]*[Anteil_400000_Verwaltung]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    OverlapFlags =85
                    Left =6292
                    Top =453
                    Width =195
                    Height =240
                    Name ="Bezeichnungsfeld17"
                    Caption ="€"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =8617
                    Top =907
                    Width =1360
                    Height =255
                    TabIndex =5
                    Name ="Summe400000U"
                    ControlSource ="=[Betrag_400000]*[Anteil_400000_Unterhaltung]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    OverlapFlags =85
                    Left =8617
                    Top =453
                    Width =195
                    Height =240
                    Name ="Bezeichnungsfeld19"
                    Caption ="€"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2830
                    Top =1592
                    Width =1165
                    Height =255
                    TabIndex =6
                    Name ="Betrag_520000"
                    ControlSource ="Betrag_520000"

                End
                Begin Label
                    OverlapFlags =85
                    Top =1587
                    Width =2777
                    Height =240
                    Name ="Bezeichnungsfeld21"
                    Caption ="11.14.523300 - Geräte ..."
                    FontName ="Arial"
                    LayoutCachedTop =1587
                    LayoutCachedWidth =2777
                    LayoutCachedHeight =1827
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4144
                    Top =1592
                    Width =1495
                    Height =255
                    TabIndex =7
                    Name ="Berechnung520000"
                    ControlSource ="Berechnung520000"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =5743
                    Top =1592
                    Width =505
                    Height =255
                    TabIndex =8
                    Name ="Anteil_520000_Verwaltung"
                    ControlSource ="Anteil_520000_Verwaltung"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =7819
                    Top =1592
                    Width =625
                    Height =255
                    TabIndex =10
                    Name ="Anteil_520000_Unterhaltung"
                    ControlSource ="Anteil_520000_Unterhaltung"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =6298
                    Top =1587
                    Width =1360
                    Height =255
                    TabIndex =9
                    Name ="Summe520000V"
                    ControlSource ="=[Betrag_520000]*[Anteil_520000_Verwaltung]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =8623
                    Top =1587
                    Width =1360
                    Height =255
                    TabIndex =11
                    Name ="Summe5200000U"
                    ControlSource ="=[Betrag_520000]*[Anteil_520000_Unterhaltung]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2830
                    Top =1972
                    Width =1165
                    Height =255
                    TabIndex =12
                    Name ="Betrag_550000"
                    ControlSource ="Betrag_550000"

                End
                Begin Label
                    OverlapFlags =85
                    Top =1984
                    Width =2771
                    Height =240
                    Name ="Bezeichnungsfeld28"
                    Caption ="11.14.523400 - Fahrzeuge ..."
                    FontName ="Arial"
                    LayoutCachedTop =1984
                    LayoutCachedWidth =2771
                    LayoutCachedHeight =2224
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4144
                    Top =1972
                    Width =1495
                    Height =255
                    TabIndex =13
                    Name ="Berechnung550000"
                    ControlSource ="Berechnung550000"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =5743
                    Top =1972
                    Width =505
                    Height =255
                    TabIndex =14
                    Name ="Anteil_550000_Verwaltung"
                    ControlSource ="Anteil_550000_Verwaltung"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =7819
                    Top =1972
                    Width =625
                    Height =255
                    TabIndex =16
                    Name ="Anteil_550000_Unterhaltung"
                    ControlSource ="Anteil_550000_Unterhaltung"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =6298
                    Top =1967
                    Width =1360
                    Height =255
                    TabIndex =15
                    Name ="Summe550000V"
                    ControlSource ="=[Betrag_550000]*[Anteil_550000_Verwaltung]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =8623
                    Top =1967
                    Width =1360
                    Height =255
                    TabIndex =17
                    Name ="Summe5500000U"
                    ControlSource ="=[Betrag_550000]*[Anteil_550000_Unterhaltung]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    OverlapFlags =93
                    Left =2830
                    Top =2352
                    Width =1165
                    Height =255
                    TabIndex =18
                    Name ="Betrag_560000"
                    ControlSource ="Betrag_560000"

                End
                Begin Label
                    OverlapFlags =87
                    Top =2381
                    Width =2820
                    Height =240
                    Name ="Bezeichnungsfeld35"
                    Caption ="11.13/11.14.541600 - Personalaufw"
                    FontName ="Arial"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4144
                    Top =2352
                    Width =1495
                    Height =255
                    TabIndex =19
                    Name ="Berechnung560000"
                    ControlSource ="Berechnung560000"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =5743
                    Top =2352
                    Width =505
                    Height =255
                    TabIndex =20
                    Name ="Anteil_560000_Verwaltung"
                    ControlSource ="Anteil_560000_Verwaltung"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =7819
                    Top =2352
                    Width =625
                    Height =255
                    TabIndex =22
                    Name ="Anteil_560000_Unterhaltung"
                    ControlSource ="Anteil_560000_Unterhaltung"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =6298
                    Top =2347
                    Width =1360
                    Height =255
                    TabIndex =21
                    Name ="Summe560000V"
                    ControlSource ="=[Betrag_560000]*[Anteil_560000_Verwaltung]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =8623
                    Top =2347
                    Width =1360
                    Height =255
                    TabIndex =23
                    Name ="Summe5600000U"
                    ControlSource ="=[Betrag_560000]*[Anteil_560000_Unterhaltung]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2830
                    Top =2732
                    Width =1165
                    Height =255
                    TabIndex =24
                    Name ="Betrag_570000"
                    ControlSource ="Betrag_570000"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4144
                    Top =2732
                    Width =1495
                    Height =255
                    TabIndex =25
                    Name ="Berechnung570000"
                    ControlSource ="Berechnung570000"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =5743
                    Top =2732
                    Width =505
                    Height =255
                    TabIndex =26
                    Name ="Anteil_570000_Verwaltung"
                    ControlSource ="Anteil_570000_Verwaltung"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =7819
                    Top =2732
                    Width =625
                    Height =255
                    TabIndex =28
                    Name ="Anteil_570000_Unterhaltung"
                    ControlSource ="Anteil_570000_Unterhaltung"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =6298
                    Top =2727
                    Width =1360
                    Height =255
                    TabIndex =27
                    Name ="Summe570000V"
                    ControlSource ="=[Betrag_570000]*[Anteil_570000_Verwaltung]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =8623
                    Top =2727
                    Width =1360
                    Height =255
                    TabIndex =29
                    Name ="Summe5700000U"
                    ControlSource ="=[Betrag_570000]*[Anteil_570000_Unterhaltung]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2830
                    Top =3112
                    Width =1165
                    Height =255
                    TabIndex =30
                    Name ="Betrag_650000"
                    ControlSource ="Betrag_650000"

                End
                Begin Label
                    OverlapFlags =85
                    Top =3118
                    Width =2520
                    Height =240
                    Name ="Bezeichnungsfeld49"
                    Caption ="11.13/11.14.54.. - Geschäftsausg."
                    FontName ="Arial"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4144
                    Top =3112
                    Width =1495
                    Height =255
                    TabIndex =31
                    Name ="Berechnung650000"
                    ControlSource ="Berechnung650000"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =5743
                    Top =3112
                    Width =505
                    Height =255
                    TabIndex =32
                    Name ="Anteil_650000_Verwaltung"
                    ControlSource ="Anteil_650000_Verwaltung"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =7819
                    Top =3112
                    Width =625
                    Height =255
                    TabIndex =34
                    Name ="Anteil_650000_Unterhaltung"
                    ControlSource ="Anteil_650000_Unterhaltung"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =6298
                    Top =3107
                    Width =1360
                    Height =255
                    TabIndex =33
                    Name ="Summe650000V"
                    ControlSource ="=[Betrag_650000]*[Anteil_650000_Verwaltung]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =8623
                    Top =3107
                    Width =1360
                    Height =255
                    TabIndex =35
                    Name ="Summe6500000U"
                    ControlSource ="=[Betrag_650000]*[Anteil_650000_Unterhaltung]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =8623
                    Top =3482
                    Width =1360
                    Height =255
                    TabIndex =36
                    Name ="Text57"
                    ControlSource ="=[Summe5200000U]+[Summe5500000U]+[Summe5600000U]+[Summe5700000U]+[Summe6500000U]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =6298
                    Top =3474
                    Width =1360
                    Height =255
                    TabIndex =37
                    Name ="Text58"
                    ControlSource ="=[Summe520000V]+[Summe550000V]+[Summe560000V]+[Summe570000V]+[Summe650000V]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    OverlapFlags =85
                    Left =396
                    Top =3468
                    Width =1890
                    Height =240
                    Name ="Bezeichnungsfeld59"
                    Caption ="Summen Sachkosten:"
                End
            End
        End
    End
End
