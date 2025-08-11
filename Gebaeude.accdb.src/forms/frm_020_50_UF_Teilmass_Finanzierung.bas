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
    AllowAdditions = NotDefault
    ScrollBars =2
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =13833
    DatasheetFontHeight =10
    ItemSuffix =39
    Left =9048
    Top =6602
    Right =22741
    Bottom =8586
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x2a3c063f3181e540
    End
    RecordSource ="SELECT [geplante Finanzierung].*, Finanzherkunft.Finanzherkunft FROM Finanzherku"
        "nft RIGHT JOIN [geplante Finanzierung] ON Finanzherkunft.ID_Fin_Her = [geplante "
        "Finanzierung].ID_Fin_Her WHERE ((([geplante Finanzierung].ID_Massnahme)=F_Variab"
        "le(\"lng_ID_Massn\"))) ORDER BY [geplante Finanzierung].Kalenderjahr DESC;"
    Caption ="geplante Finanzierung"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    PictureSizeMode =1
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            FontName ="Arial"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderWidth =1
            BorderLineStyle =0
            Width =1701
        End
        Begin Image
            SpecialEffect =1
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
            FontWeight =400
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin OptionButton
            SpecialEffect =1
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =1
            BorderWidth =3
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderColor =12632256
        End
        Begin BoundObjectFrame
            SpecialEffect =1
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ListBox
            SpecialEffect =1
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontName ="Arial"
        End
        Begin ComboBox
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin Subform
            SpecialEffect =1
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =1
            BackStyle =0
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin FormHeader
            Height =340
            BackColor =16514043
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =75
                    Top =45
                    Width =725
                    Height =270
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Kalenderjahr Bezeichnungsfeld"
                    Caption ="Jahr"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Kalenderjahr_Bezeichnungsfeld"
                    LayoutCachedLeft =75
                    LayoutCachedTop =45
                    LayoutCachedWidth =800
                    LayoutCachedHeight =315
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =1644
                    Top =45
                    Width =1261
                    Height =255
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Betrag Bezeichnungsfeld"
                    Caption ="gepl. Budget:"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Betrag_Bezeichnungsfeld"
                    LayoutCachedLeft =1644
                    LayoutCachedTop =45
                    LayoutCachedWidth =2905
                    LayoutCachedHeight =300
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =3032
                    Top =45
                    Width =1201
                    Height =270
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld12"
                    Caption ="Mittelart:"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =3032
                    LayoutCachedTop =45
                    LayoutCachedWidth =4233
                    LayoutCachedHeight =315
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =6833
                    Top =45
                    Width =330
                    Height =255
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld20"
                    Caption ="Erl."
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =6833
                    LayoutCachedTop =45
                    LayoutCachedWidth =7163
                    LayoutCachedHeight =300
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =1089
                    Top =45
                    Width =408
                    Height =270
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld21"
                    Caption ="ID"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =1089
                    LayoutCachedTop =45
                    LayoutCachedWidth =1497
                    LayoutCachedHeight =315
                    ForeShade =50.0
                End
                Begin Line
                    BorderWidth =2
                    OverlapFlags =85
                    Left =3004
                    Width =6623
                    BorderColor =12566463
                    Name ="Linie147"
                    LayoutCachedLeft =3004
                    LayoutCachedWidth =9627
                    BorderShade =75.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =4429
                    Top =45
                    Width =1676
                    Height =270
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld24"
                    Caption ="Mittelherkunft:"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =4429
                    LayoutCachedTop =45
                    LayoutCachedWidth =6105
                    LayoutCachedHeight =315
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =10828
                    Top =45
                    Width =1983
                    Height =270
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld27"
                    Caption ="Bemerkung:"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =10828
                    LayoutCachedTop =45
                    LayoutCachedWidth =12811
                    LayoutCachedHeight =315
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =6305
                    Top =45
                    Width =510
                    Height =255
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld29"
                    Caption ="S-BSt"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =6305
                    LayoutCachedTop =45
                    LayoutCachedWidth =6815
                    LayoutCachedHeight =300
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =7268
                    Top =45
                    Width =1929
                    Height =270
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld32"
                    Caption ="Maßnahmen-Nr. Infoma:"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =7268
                    LayoutCachedTop =45
                    LayoutCachedWidth =9197
                    LayoutCachedHeight =315
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =9354
                    Top =45
                    Width =1303
                    Height =255
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld35"
                    Caption ="tats. Kosten:"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =9354
                    LayoutCachedTop =45
                    LayoutCachedWidth =10657
                    LayoutCachedHeight =300
                    ForeShade =50.0
                End
            End
        End
        Begin Section
            Height =340
            BackColor =16514043
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =93
                    Left =1663
                    Width =1248
                    Height =270
                    ColumnWidth =2310
                    TabIndex =1
                    ForeColor =4138256
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =1663
                    LayoutCachedWidth =2911
                    LayoutCachedHeight =270
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =1
                    Left =1087
                    Width =471
                    Height =271
                    ColumnWidth =1170
                    TabIndex =3
                    ForeColor =10921638
                    Name ="ID aus Maßnahmen"
                    ControlSource ="ID_Massnahme"
                    EventProcPrefix ="ID_aus_Maßnahmen"

                    LayoutCachedLeft =1087
                    LayoutCachedWidth =1558
                    LayoutCachedHeight =271
                    ForeShade =65.0
                End
                Begin ComboBox
                    OverlapFlags =85
                    ListRows =20
                    ListWidth =510
                    Left =75
                    Width =857
                    Height =271
                    ForeColor =4138256
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="KF_KJ"
                    ControlSource ="Kalenderjahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Kalenderjahre.Jahr FROM Kalenderjahre ORDER BY Kalenderjahre."
                        "Jahr;"
                    ColumnWidths ="510"

                    LayoutCachedLeft =75
                    LayoutCachedWidth =932
                    LayoutCachedHeight =271
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin ComboBox
                    OverlapFlags =93
                    ColumnCount =2
                    ListRows =20
                    ListWidth =510
                    Left =3032
                    Width =1294
                    Height =271
                    TabIndex =2
                    ForeColor =4138256
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="KF_Mittelart"
                    ControlSource ="ID_Fin_Qu"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Finanzquellen.ID_Fin_Qu, Finanzquellen.Finanzquelle FROM Fina"
                        "nzquellen ORDER BY Finanzquellen.Finanzquelle;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =3032
                    LayoutCachedWidth =4326
                    LayoutCachedHeight =271
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =0
                    OverlapFlags =87
                    Left =2907
                    Width =123
                    Height =270
                    TabIndex =4
                    ForeColor =4138256
                    Name ="FinanzierungohneVE"
                    ControlSource ="=IIf([Finanzierung]<>\"VE\",[Betrag],0)"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =2907
                    LayoutCachedWidth =3030
                    LayoutCachedHeight =270
                    ForeShade =50.0
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =6942
                    Top =61
                    Width =215
                    Height =225
                    TabIndex =7
                    Name ="Erledigt"
                    ControlSource ="Erledigt"

                    LayoutCachedLeft =6942
                    LayoutCachedTop =61
                    LayoutCachedWidth =7157
                    LayoutCachedHeight =286
                End
                Begin Line
                    BorderWidth =0
                    OverlapFlags =85
                    Top =307
                    Width =13721
                    BorderColor =12566463
                    Name ="Linie22"
                    LayoutCachedTop =307
                    LayoutCachedWidth =13721
                    LayoutCachedHeight =307
                    BorderShade =75.0
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =93
                    ColumnCount =2
                    ListRows =20
                    ListWidth =510
                    Left =4429
                    Width =1966
                    Height =271
                    TabIndex =5
                    ForeColor =4138256
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="KF_Mittelherk"
                    ControlSource ="ID_Fin_Her"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Finanzherkunft.ID_Fin_Her, Finanzherkunft.Finanzherkunft FROM"
                        " Finanzherkunft WHERE (((Finanzherkunft.FH_nicht_mehr_vorh)=False)) ORDER BY Fin"
                        "anzherkunft.Finanzherkunft;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =4429
                    LayoutCachedWidth =6395
                    LayoutCachedHeight =271
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10828
                    Width =2905
                    Height =271
                    FontSize =9
                    TabIndex =8
                    ForeColor =4138256
                    Name ="Bemerkung"
                    ControlSource ="Bemerkung"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =10828
                    LayoutCachedWidth =13733
                    LayoutCachedHeight =271
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =6537
                    Top =60
                    Width =215
                    Height =225
                    TabIndex =6
                    Name ="KK_Sammel_BS"
                    ControlSource ="Sammelbuchungsstelle"

                    LayoutCachedLeft =6537
                    LayoutCachedTop =60
                    LayoutCachedWidth =6752
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7268
                    Width =1987
                    Height =271
                    FontSize =9
                    TabIndex =9
                    ForeColor =4138256
                    Name ="Text33"
                    ControlSource ="Maßn_Nr_Infoma"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =7268
                    LayoutCachedWidth =9255
                    LayoutCachedHeight =271
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =9354
                    Width =1370
                    Height =270
                    TabIndex =10
                    ForeColor =4138256
                    Name ="Text34"
                    ControlSource ="tats_Kosten_Infoma"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =9354
                    LayoutCachedWidth =10724
                    LayoutCachedHeight =270
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =247
                    IMESentenceMode =3
                    Left =4430
                    Width =1698
                    Height =272
                    TabIndex =11
                    Name ="Text37"
                    ControlSource ="Finanzherkunft"

                    LayoutCachedLeft =4430
                    LayoutCachedWidth =6128
                    LayoutCachedHeight =272
                End
            End
        End
        Begin FormFooter
            Height =566
            BackColor =16514043
            Name ="Formularfuß"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =1663
                    Top =109
                    Width =1247
                    Height =270
                    FontWeight =700
                    ForeColor =4138256
                    Name ="summeverteilt"
                    ControlSource ="=Sum([betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    DefaultValue ="0"

                    LayoutCachedLeft =1663
                    LayoutCachedTop =109
                    LayoutCachedWidth =2910
                    LayoutCachedHeight =379
                    ForeShade =50.0
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =5887
                    Top =114
                    Width =2533
                    Height =300
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    ForeColor =4138256
                    Name ="BS_DS_loeschen"
                    Caption ="Finanz.Eintr. löschen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Datensatz löschen"

                    LayoutCachedLeft =5887
                    LayoutCachedTop =114
                    LayoutCachedWidth =8420
                    LayoutCachedHeight =414
                    ForeShade =50.0
                    Overlaps =1
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =3400
                    Top =114
                    Width =2266
                    Height =300
                    FontSize =9
                    FontWeight =700
                    TabIndex =2
                    ForeColor =4138256
                    Name ="BS_DS_Neu"
                    Caption ="Neuer Finanz.-Eintrag"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    ControlTipText ="Datensatz löschen"

                    LayoutCachedLeft =3400
                    LayoutCachedTop =114
                    LayoutCachedWidth =5666
                    LayoutCachedHeight =414
                    ForeShade =50.0
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =9300
                    Top =109
                    Width =1410
                    Height =270
                    FontWeight =700
                    TabIndex =3
                    ForeColor =4138256
                    Name ="Text36"
                    ControlSource ="=Sum([tats_Kosten_Infoma])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    DefaultValue ="0"

                    LayoutCachedLeft =9300
                    LayoutCachedTop =109
                    LayoutCachedWidth =10710
                    LayoutCachedHeight =379
                    ForeShade =50.0
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_020_50_UF_Teilmass_Finanzierung.cls"
