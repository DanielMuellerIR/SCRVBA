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
    PictureTiling = NotDefault
    DividingLines = NotDefault
    DataEntry = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =5
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7880
    DatasheetFontHeight =10
    ItemSuffix =78
    Left =13395
    Top =6360
    Right =23055
    Bottom =14250
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Verwaltungbericht Maßnahmekosten / Restebildung"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            SpecialEffect =1
            FontWeight =700
            BackColor =12632256
            ForeColor =128
            FontName ="Arial"
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            SpecialEffect =3
            Width =1701
        End
        Begin Image
            SpecialEffect =3
            BackStyle =0
            OldBorderStyle =0
            BorderLineStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =8
            ForeColor =128
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin OptionButton
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =2
            BorderWidth =3
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            BackStyle =1
            BorderLineStyle =0
            Width =1701
            Height =1701
            BackColor =12632256
        End
        Begin BoundObjectFrame
            SpecialEffect =3
            BorderLineStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
            BorderColor =12632256
            BackColor =12632256
        End
        Begin TextBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ListBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ComboBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin Subform
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderColor =12632256
        End
        Begin UnboundObjectFrame
            SpecialEffect =3
            BackStyle =0
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            ForeColor =128
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            FontWeight =700
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Section
            Height =5839
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =340
                    Top =170
                    Width =7005
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Verwaltungbericht Maßnahmekosten / Restebildung"
                    LayoutCachedLeft =340
                    LayoutCachedTop =170
                    LayoutCachedWidth =7345
                    LayoutCachedHeight =530
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =340
                    Top =4320
                    Width =3120
                    Name ="BS_Ausw_Bericht"
                    Caption ="Maßnahmekosten als Bericht"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =340
                    LayoutCachedTop =4320
                    LayoutCachedWidth =3460
                    LayoutCachedHeight =4603
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =340
                    Top =4672
                    Width =3120
                    Height =345
                    TabIndex =1
                    Name ="BS_Ausw_Excel_Exp"
                    Caption ="Auswertung exportieren nach Excel"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =340
                    LayoutCachedTop =4672
                    LayoutCachedWidth =3460
                    LayoutCachedHeight =5017
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =1134
                    Left =2827
                    Top =795
                    Width =2721
                    Height =284
                    TabIndex =2
                    Name ="KF_Haushaltsjahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Kalenderjahre.Jahr FROM Kalenderjahre GROUP BY Kalenderjahre."
                        "Jahr ORDER BY Kalenderjahre.Jahr;"
                    ColumnWidths ="1134"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="=Year(Now())"

                    LayoutCachedLeft =2827
                    LayoutCachedTop =795
                    LayoutCachedWidth =5548
                    LayoutCachedHeight =1079
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =340
                            Top =795
                            Width =2160
                            Height =270
                            Name ="Jahr"
                            Caption ="Haushaltsjahr"
                            LayoutCachedLeft =340
                            LayoutCachedTop =795
                            LayoutCachedWidth =2500
                            LayoutCachedHeight =1065
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2365
                    Top =5100
                    Width =3120
                    Height =345
                    TabIndex =3
                    Name ="BS_Schließen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2365
                    LayoutCachedTop =5100
                    LayoutCachedWidth =5485
                    LayoutCachedHeight =5445
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =4263
                    Top =4322
                    Width =3120
                    TabIndex =4
                    Name ="BS_Resteb_Bericht"
                    Caption ="Restebildung als Bericht"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =4263
                    LayoutCachedTop =4322
                    LayoutCachedWidth =7383
                    LayoutCachedHeight =4605
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =4263
                    Top =4674
                    Width =3120
                    Height =345
                    TabIndex =5
                    Name ="BS_Resteb_Excel_Exp"
                    Caption ="Restebildung exportieren nach Excel"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =4263
                    LayoutCachedTop =4674
                    LayoutCachedWidth =7383
                    LayoutCachedHeight =5019
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =340
                    Top =2959
                    Width =7087
                    Height =1080
                    FontSize =9
                    TabIndex =6
                    Name ="TF_Hinweistext"
                    TextFormat =1

                    LayoutCachedLeft =340
                    LayoutCachedTop =2959
                    LayoutCachedWidth =7427
                    LayoutCachedHeight =4039
                    BackThemeColorIndex =1
                    BackShade =95.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =340
                            Top =2551
                            Width =2985
                            Height =270
                            Name ="Bezeichnungsfeld71"
                            Caption ="Hinweistext im Kopf des Berichtes:"
                            LayoutCachedLeft =340
                            LayoutCachedTop =2551
                            LayoutCachedWidth =3325
                            LayoutCachedHeight =2821
                        End
                    End
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =345
                    Top =1260
                    Width =3005
                    Height =1047
                    TabIndex =7
                    Name ="OR_Alle_Investiv"
                    DefaultValue ="1"

                    LayoutCachedLeft =345
                    LayoutCachedTop =1260
                    LayoutCachedWidth =3350
                    LayoutCachedHeight =2307
                    Begin
                        Begin OptionButton
                            OverlapFlags =87
                            Left =575
                            Top =1500
                            OptionValue =1
                            Name ="Option74"

                            LayoutCachedLeft =575
                            LayoutCachedTop =1500
                            LayoutCachedWidth =835
                            LayoutCachedHeight =1740
                            Begin
                                Begin Label
                                    OverlapFlags =87
                                    Left =908
                                    Top =1470
                                    Width =2235
                                    Height =270
                                    Name ="Bezeichnungsfeld75"
                                    Caption ="Alle Maßnahmen"
                                    LayoutCachedLeft =908
                                    LayoutCachedTop =1470
                                    LayoutCachedWidth =3143
                                    LayoutCachedHeight =1740
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =575
                            Top =1876
                            OptionValue =2
                            Name ="Option76"

                            LayoutCachedLeft =575
                            LayoutCachedTop =1876
                            LayoutCachedWidth =835
                            LayoutCachedHeight =2116
                            Begin
                                Begin Label
                                    OverlapFlags =87
                                    Left =905
                                    Top =1845
                                    Width =2235
                                    Height =270
                                    Name ="Bezeichnungsfeld77"
                                    Caption ="Nur Investive Maßnahmen"
                                    LayoutCachedLeft =905
                                    LayoutCachedTop =1845
                                    LayoutCachedWidth =3140
                                    LayoutCachedHeight =2115
                                End
                            End
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Verwalt_Kosten_Massnahmen.cls"
