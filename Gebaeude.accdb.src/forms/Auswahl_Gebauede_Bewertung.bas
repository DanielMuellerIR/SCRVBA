Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
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
    Width =6973
    DatasheetFontHeight =10
    ItemSuffix =83
    Left =5258
    Top =3000
    Right =12428
    Bottom =7230
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Auswahl Ergebnisse als Liste"
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
            Height =3741
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =453
                    Top =453
                    Width =5715
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Auswahl Ergebnisse als Liste"
                    LayoutCachedLeft =453
                    LayoutCachedTop =453
                    LayoutCachedWidth =6168
                    LayoutCachedHeight =813
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =1190
                    Top =2323
                    Width =2595
                    Height =345
                    Name ="BS_Ausdruck"
                    Caption =" Daten drucken"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =1190
                    LayoutCachedTop =2323
                    LayoutCachedWidth =3785
                    LayoutCachedHeight =2668
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4251
                    Top =3004
                    Width =2155
                    Height =343
                    TabIndex =1
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =4251
                    LayoutCachedTop =3004
                    LayoutCachedWidth =6406
                    LayoutCachedHeight =3347
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =503
                    Top =973
                    Width =5906
                    Height =1184
                    TabIndex =2
                    Name ="OR_Listenauswahl"
                    BeforeUpdate ="[Event Procedure]"

                    LayoutCachedLeft =503
                    LayoutCachedTop =973
                    LayoutCachedWidth =6409
                    LayoutCachedHeight =2157
                    Begin
                        Begin OptionButton
                            OverlapFlags =87
                            Left =1181
                            Top =1313
                            OptionValue =1
                            Name ="OP_Alle_Geb"

                            LayoutCachedLeft =1181
                            LayoutCachedTop =1313
                            LayoutCachedWidth =1441
                            LayoutCachedHeight =1553
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =1411
                                    Top =1283
                                    Width =3555
                                    Height =270
                                    Name ="Bezeichnungsfeld69"
                                    Caption ="Liste mit Herstellkosten"
                                    LayoutCachedLeft =1411
                                    LayoutCachedTop =1283
                                    LayoutCachedWidth =4966
                                    LayoutCachedHeight =1553
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =1184
                            Top =1695
                            TabIndex =1
                            OptionValue =2
                            Name ="OP_Ein_Geb"

                            LayoutCachedLeft =1184
                            LayoutCachedTop =1695
                            LayoutCachedWidth =1444
                            LayoutCachedHeight =1935
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =1414
                                    Top =1665
                                    Width =3555
                                    Height =270
                                    Name ="Bezeichnungsfeld71"
                                    Caption ="Liste mit Versicherungswerten"
                                    LayoutCachedLeft =1414
                                    LayoutCachedTop =1665
                                    LayoutCachedWidth =4969
                                    LayoutCachedHeight =1935
                                End
                            End
                        End
                    End
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =3818
                    Top =2323
                    Width =2595
                    Height =345
                    TabIndex =3
                    Name ="BS_Exc_Export"
                    Caption =" Daten nach Excel exportieren"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =3818
                    LayoutCachedTop =2323
                    LayoutCachedWidth =6413
                    LayoutCachedHeight =2668
                End
            End
        End
    End
End
CodeBehindForm
' See "Auswahl_Gebauede_Bewertung.cls"
