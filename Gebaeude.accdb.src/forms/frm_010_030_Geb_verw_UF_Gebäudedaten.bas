Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    RecordLocks =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =8222
    DatasheetFontHeight =11
    ItemSuffix =52
    Left =8966
    Top =2568
    Right =18503
    Bottom =10528
    RecSrcDt = Begin
        0xeecc3f6c2bcce440
    End
    RecordSource ="SELECT tbl_100_10_Liegenschaften.* FROM tbl_100_10_Liegenschaften WHERE (((tbl_1"
        "00_10_Liegenschaften.ID_Gebäude)=F_Variable(\"lng_ID_Gebaeude\")));"
    Caption ="Gebäude-Stammdaten"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    AllowLayoutView =0
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            TextAlign =3
            FontSize =9
            FontWeight =700
            BorderColor =8355711
            ForeColor =4138256
            FontName ="Arial"
            BorderTint =50.0
            ForeShade =50.0
            GridlineShade =65.0
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
            BorderShade =65.0
            GridlineShade =65.0
        End
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =11
            FontWeight =400
            FontName ="Calibri"
            ForeTint =75.0
            GridlineShade =65.0
            BackTint =60.0
            BorderLineStyle =0
            BorderColor =16777215
            BorderTint =60.0
        End
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
            BorderShade =65.0
            GridlineShade =65.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            LabelAlign =3
            TextAlign =1
            BorderLineStyle =0
            Width =2031
            Height =255
            LabelX =-156
            BorderColor =10921638
            FontName ="Arial"
            AsianLineBreak =1
            BorderShade =65.0
            GridlineShade =65.0
        End
        Begin ListBox
            BorderLineStyle =0
            Width =6627
            Height =10146
            LabelX =2
            LabelY =-466
            FontSize =9
            ForeColor =4072463
            FontName ="Arial"
            AllowValueListEdits =1
            InheritValueList =1
            BorderShade =65.0
            ForeShade =50.0
            GridlineShade =65.0
        End
        Begin ComboBox
            AddColon = NotDefault
            LabelAlign =3
            TextAlign =1
            BorderLineStyle =0
            Width =2031
            Height =255
            LabelX =-156
            BorderColor =10921638
            FontName ="Arial"
            AllowValueListEdits =1
            InheritValueList =1
            BorderShade =65.0
            GridlineShade =65.0
        End
        Begin Section
            Height =7256
            BackColor =16776187
            Name ="Detailbereich"
            AlternateBackColor =15921906
            AlternateBackShade =95.0
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =0
                    Left =276
                    Top =54
                    Width =3360
                    Height =315
                    FontSize =11
                    Name ="Bezeichnungsfeld2"
                    Caption ="Stammdaten zur Liegenschaft:"
                    GridlineColor =10921638
                    LayoutCachedLeft =276
                    LayoutCachedTop =54
                    LayoutCachedWidth =3636
                    LayoutCachedHeight =369
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2388
                    Top =1001
                    Width =2208
                    ColumnWidth =3210
                    TabIndex =1
                    BackColor =15728383
                    Name ="Kennummer_Straße"
                    ControlSource ="Kennummer_Straße"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT M_Strassenverzeichnis.Kennummer, M_Strassenverzeichnis.Name FROM M_Strass"
                        "enverzeichnis ORDER BY M_Strassenverzeichnis.Name;"
                    ColumnWidths ="0"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =2388
                    LayoutCachedTop =1001
                    LayoutCachedWidth =4596
                    LayoutCachedHeight =1256
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =687
                            Top =1046
                            Width =1575
                            Height =227
                            FontSize =8
                            Name ="Bezeichnungsfeld7"
                            Caption ="Straße  |  Haus-Nr.:"
                            GridlineColor =10921638
                            LayoutCachedLeft =687
                            LayoutCachedTop =1046
                            LayoutCachedWidth =2262
                            LayoutCachedHeight =1273
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    TextFontCharSet =163
                    IMESentenceMode =3
                    Left =4656
                    Top =1001
                    Width =740
                    ColumnWidth =1200
                    TabIndex =2
                    BackColor =15728383
                    Name ="Haus_Nr"
                    ControlSource ="Haus_Nr"
                    GridlineColor =10921638

                    LayoutCachedLeft =4656
                    LayoutCachedTop =1001
                    LayoutCachedWidth =5396
                    LayoutCachedHeight =1256
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2388
                    Top =701
                    Width =3006
                    ColumnWidth =5895
                    BackColor =15728383
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"
                    GridlineColor =10921638

                    LayoutCachedLeft =2388
                    LayoutCachedTop =701
                    LayoutCachedWidth =5394
                    LayoutCachedHeight =956
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =1077
                            Top =746
                            Width =1185
                            Height =227
                            FontSize =8
                            Name ="Bezeichnungsfeld9"
                            Caption ="Bezeichnung:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1077
                            LayoutCachedTop =746
                            LayoutCachedWidth =2262
                            LayoutCachedHeight =973
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2395
                    Top =1703
                    Width =1418
                    TabIndex =3
                    BackColor =15728383
                    Name ="ID_SB"
                    ControlSource ="ID_SB"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, Sachbearbeiter.Name FROM Sachbearbeiter WHERE (((Sachb"
                        "earbeiter.Objektverantwortlicher)=True) AND ((Sachbearbeiter.ausgeschieden)=Fals"
                        "e)) ORDER BY Sachbearbeiter.Name;"
                    ColumnWidths ="0"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =2395
                    LayoutCachedTop =1703
                    LayoutCachedWidth =3813
                    LayoutCachedHeight =1958
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =231
                            Top =1703
                            Width =2003
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld10"
                            Caption ="Objekt-Verantwortlicher:"
                            GridlineColor =10921638
                            LayoutCachedLeft =231
                            LayoutCachedTop =1703
                            LayoutCachedWidth =2234
                            LayoutCachedHeight =1958
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2403
                    Top =3029
                    Width =1926
                    ColumnWidth =2460
                    TabIndex =8
                    BackColor =15728383
                    Name ="Nutzung des Objektes"
                    ControlSource ="Nutzung des Objektes"
                    EventProcPrefix ="Nutzung_des_Objektes"
                    GridlineColor =10921638

                    LayoutCachedLeft =2403
                    LayoutCachedTop =3029
                    LayoutCachedWidth =4329
                    LayoutCachedHeight =3284
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =246
                            Top =3029
                            Width =1997
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld11"
                            Caption ="Nutzung d. Grundstücks:"
                            GridlineColor =10921638
                            LayoutCachedLeft =246
                            LayoutCachedTop =3029
                            LayoutCachedWidth =2243
                            LayoutCachedHeight =3284
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2403
                    Top =3341
                    Width =1926
                    TabIndex =9
                    BackColor =15728383
                    Name ="Fläche"
                    ControlSource ="Fläche"
                    Format ="Standard"
                    GridlineColor =10921638

                    LayoutCachedLeft =2403
                    LayoutCachedTop =3341
                    LayoutCachedWidth =4329
                    LayoutCachedHeight =3596
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextFontCharSet =163
                            Left =1102
                            Top =3344
                            Width =1140
                            Height =270
                            FontSize =8
                            Name ="Bezeichnungsfeld15"
                            Caption ="Fläche in m²:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1102
                            LayoutCachedTop =3344
                            LayoutCachedWidth =2242
                            LayoutCachedHeight =3614
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2435
                    Top =3657
                    Width =1926
                    TabIndex =10
                    BackColor =15728383
                    Name ="Bodenrichtwert"
                    ControlSource ="Bodenrichtwert"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    GridlineColor =10921638

                    LayoutCachedLeft =2435
                    LayoutCachedTop =3657
                    LayoutCachedWidth =4361
                    LayoutCachedHeight =3912
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =850
                            Top =3657
                            Width =1425
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld16"
                            Caption ="Bodenrichtwert:"
                            GridlineColor =10921638
                            LayoutCachedLeft =850
                            LayoutCachedTop =3657
                            LayoutCachedWidth =2275
                            LayoutCachedHeight =3912
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =93
                    Left =2414
                    Top =4283
                    Width =215
                    TabIndex =12
                    BorderColor =10921638
                    Name ="bebaut"
                    ControlSource ="bebaut"
                    GridlineColor =10921638

                    LayoutCachedLeft =2414
                    LayoutCachedTop =4283
                    LayoutCachedWidth =2629
                    LayoutCachedHeight =4523
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =1538
                            Top =4283
                            Width =705
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld17"
                            Caption ="bebaut:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1538
                            LayoutCachedTop =4283
                            LayoutCachedWidth =2243
                            LayoutCachedHeight =4538
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =93
                    Left =2414
                    Top =4578
                    Width =215
                    TabIndex =13
                    BorderColor =10921638
                    Name ="voll berechnen"
                    ControlSource ="voll berechnen"
                    EventProcPrefix ="voll_berechnen"
                    GridlineColor =10921638

                    LayoutCachedLeft =2414
                    LayoutCachedTop =4578
                    LayoutCachedWidth =2629
                    LayoutCachedHeight =4818
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =879
                            Top =4578
                            Width =1365
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld18"
                            Caption ="voll berechnen:"
                            GridlineColor =10921638
                            LayoutCachedLeft =879
                            LayoutCachedTop =4578
                            LayoutCachedWidth =2244
                            LayoutCachedHeight =4833
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2414
                    Top =4877
                    Width =1926
                    TabIndex =14
                    BackColor =15728383
                    Name ="Nicht_mehr_in_Betr_seit"
                    ControlSource ="Nicht_mehr_in_Betr_seit"
                    GridlineColor =10921638

                    LayoutCachedLeft =2414
                    LayoutCachedTop =4877
                    LayoutCachedWidth =4340
                    LayoutCachedHeight =5132
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =294
                            Top =4877
                            Width =1948
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld19"
                            Caption ="Nicht mehr in Betr. seit:"
                            GridlineColor =10921638
                            LayoutCachedLeft =294
                            LayoutCachedTop =4877
                            LayoutCachedWidth =2242
                            LayoutCachedHeight =5132
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2414
                    Top =5191
                    Width =1926
                    TabIndex =16
                    BackColor =15728383
                    Name ="Nicht_mehr_in_Betr_Begründung"
                    ControlSource ="Nicht_mehr_in_Betr_Begründung"
                    GridlineColor =10921638

                    LayoutCachedLeft =2414
                    LayoutCachedTop =5191
                    LayoutCachedWidth =4340
                    LayoutCachedHeight =5446
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =1043
                            Top =5191
                            Width =1200
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld20"
                            Caption ="Begründung:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1043
                            LayoutCachedTop =5191
                            LayoutCachedWidth =2243
                            LayoutCachedHeight =5446
                        End
                    End
                End
                Begin Rectangle
                    OverlapFlags =255
                    Left =177
                    Top =545
                    Width =8031
                    Height =779
                    BorderColor =10921638
                    Name ="Rechteck81"
                    GridlineColor =10921638
                    LayoutCachedLeft =177
                    LayoutCachedTop =545
                    LayoutCachedWidth =8208
                    LayoutCachedHeight =1324
                End
                Begin Rectangle
                    OverlapFlags =255
                    Left =166
                    Top =2856
                    Width =4545
                    Height =2651
                    BorderColor =10921638
                    Name ="Rechteck21"
                    GridlineColor =10921638
                    LayoutCachedLeft =166
                    LayoutCachedTop =2856
                    LayoutCachedWidth =4711
                    LayoutCachedHeight =5507
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =247
                    TextAlign =1
                    Left =398
                    Top =428
                    Width =2100
                    Height =255
                    FontSize =8
                    BackColor =16776187
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld22"
                    Caption ="Lage des Grundstücks:"
                    GridlineColor =10921638
                    LayoutCachedLeft =398
                    LayoutCachedTop =428
                    LayoutCachedWidth =2498
                    LayoutCachedHeight =683
                    ForeShade =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =247
                    TextAlign =1
                    Left =341
                    Top =2749
                    Width =2385
                    Height =255
                    FontSize =8
                    BackColor =16776187
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld23"
                    Caption ="Angaben zum Grundstück:"
                    GridlineColor =10921638
                    LayoutCachedLeft =341
                    LayoutCachedTop =2749
                    LayoutCachedWidth =2726
                    LayoutCachedHeight =3004
                    ForeShade =100.0
                End
                Begin Rectangle
                    OverlapFlags =93
                    Left =4941
                    Top =2856
                    Width =3281
                    Height =2651
                    BorderColor =10921638
                    Name ="Rechteck24"
                    GridlineColor =10921638
                    LayoutCachedLeft =4941
                    LayoutCachedTop =2856
                    LayoutCachedWidth =8222
                    LayoutCachedHeight =5507
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =6448
                    Top =3342
                    Width =1536
                    TabIndex =17
                    BackColor =15728383
                    Name ="KF_ID_Flur"
                    ControlSource ="ID_Flur"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_070_10_Flure.ID_Flur, tbl_070_10_Flure.Flur FROM tbl_070_10_Flure WHE"
                        "RE (((tbl_070_10_Flure.ID_Gemarkung)=[Formulare]![frm_010_010_Gebäudeverwaltung]"
                        "![UF_GebaeudeStamm].[Formular]![KF_ID_Gemarkung]));"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =6448
                    LayoutCachedTop =3342
                    LayoutCachedWidth =7984
                    LayoutCachedHeight =3597
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =5632
                            Top =3342
                            Width =660
                            Height =270
                            FontSize =8
                            Name ="Bezeichnungsfeld26"
                            Caption ="Flur:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5632
                            LayoutCachedTop =3342
                            LayoutCachedWidth =6292
                            LayoutCachedHeight =3612
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =6452
                    Top =3031
                    Width =1536
                    TabIndex =15
                    BackColor =15728383
                    Name ="KF_ID_Gemarkung"
                    ControlSource ="ID_Gemarkung"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_050_10_Gemarkungen.ID_Gemarkung, tbl_050_10_Gemarkungen.Gemarkung FRO"
                        "M tbl_050_10_Gemarkungen;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =6452
                    LayoutCachedTop =3031
                    LayoutCachedWidth =7988
                    LayoutCachedHeight =3286
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextFontCharSet =163
                            Left =5156
                            Top =3031
                            Width =1140
                            Height =270
                            FontSize =8
                            Name ="Bezeichnungsfeld25"
                            Caption ="Gemarkung:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5156
                            LayoutCachedTop =3031
                            LayoutCachedWidth =6296
                            LayoutCachedHeight =3301
                        End
                    End
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =215
                    TextAlign =1
                    Left =5111
                    Top =2750
                    Width =2835
                    Height =255
                    FontSize =8
                    BackColor =16776187
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld27"
                    Caption ="Katasterdaten zum Grundstück:"
                    GridlineColor =10921638
                    LayoutCachedLeft =5111
                    LayoutCachedTop =2750
                    LayoutCachedWidth =7946
                    LayoutCachedHeight =3005
                    ForeShade =100.0
                End
                Begin ListBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =4
                    Left =5728
                    Top =3992
                    Width =2256
                    Height =1429
                    FontSize =8
                    TabIndex =18
                    BackColor =15728383
                    ForeColor =0
                    BorderColor =10921638
                    Name ="LF_Flurstuecke"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_090_10_Flurstuecke.ID_Flurstueck, tbl_090_10_Flurstuecke.Flurstueck, "
                        "IIf([Teilweise],\"teilw.\",\"\") AS Teilw, IIf([Erbpacht],\"Erbp.\",\"\") AS Erb"
                        "p, tbl_090_10_Flurstuecke.ID_Flur FROM tbl_090_10_Flurstuecke INNER JOIN tbl_100"
                        "_05_QV_Liegensch_Flurstuecke ON tbl_090_10_Flurstuecke.ID_Flurstueck = tbl_100_0"
                        "5_QV_Liegensch_Flurstuecke.ID_Flurstueck WHERE (((tbl_090_10_Flurstuecke.ID_Flur"
                        ")=[Formulare]![frm_010_010_Gebäudeverwaltung]![UF_GebaeudeStamm].[Formular]![KF_"
                        "ID_Flur]) AND ((tbl_100_05_QV_Liegensch_Flurstuecke.ID_Gebäude)=F_Variable(\"lng"
                        "_ID_Gebaeude\"))) ORDER BY tbl_090_10_Flurstuecke.Flurstueck;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =5728
                    LayoutCachedTop =3992
                    LayoutCachedWidth =7984
                    LayoutCachedHeight =5421
                    ForeShade =100.0
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =1
                            Left =5728
                            Top =3737
                            Width =951
                            Height =223
                            FontSize =8
                            Name ="Bezeichnungsfeld34"
                            Caption ="Flurstücke:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5728
                            LayoutCachedTop =3737
                            LayoutCachedWidth =6679
                            LayoutCachedHeight =3960
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =215
                    Left =5287
                    Top =4059
                    Width =285
                    Height =375
                    FontSize =10
                    FontWeight =700
                    TabIndex =19
                    ForeColor =-2147483630
                    Name ="BS_Flurst_neu"
                    Caption ="+"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =5287
                    LayoutCachedTop =4059
                    LayoutCachedWidth =5572
                    LayoutCachedHeight =4434
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =215
                    Left =5287
                    Top =4514
                    Width =285
                    Height =375
                    FontSize =12
                    FontWeight =700
                    TabIndex =20
                    ForeColor =-2147483630
                    Name ="BS_Flurst_weg"
                    Caption ="-"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =5287
                    LayoutCachedTop =4514
                    LayoutCachedWidth =5572
                    LayoutCachedHeight =4889
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    Overlaps =1
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =6565
                    Top =1703
                    Width =1418
                    TabIndex =4
                    BackColor =15728383
                    Name ="Kombinationsfeld34"
                    ControlSource ="ID_SB_Grundst"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, Sachbearbeiter.Name FROM Sachbearbeiter WHERE (((Sachb"
                        "earbeiter.Grundstücksverantwortlicher)=True) AND ((Sachbearbeiter.ausgeschieden)"
                        "=False)) ORDER BY Sachbearbeiter.Name;"
                    ColumnWidths ="0"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =6565
                    LayoutCachedTop =1703
                    LayoutCachedWidth =7983
                    LayoutCachedHeight =1958
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =3948
                            Top =1703
                            Width =2461
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld35"
                            Caption ="Grundstücks-Verantwortlicher:"
                            GridlineColor =10921638
                            LayoutCachedLeft =3948
                            LayoutCachedTop =1703
                            LayoutCachedWidth =6409
                            LayoutCachedHeight =1958
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2395
                    Top =2020
                    Width =1418
                    TabIndex =5
                    BackColor =15728383
                    Name ="Kombinationsfeld36"
                    ControlSource ="ID_SB_Fachpl_Elek"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, Sachbearbeiter.Name FROM Sachbearbeiter WHERE (((Sachb"
                        "earbeiter.Fachplaner_Elektro)=True) AND ((Sachbearbeiter.ausgeschieden)=False)) "
                        "ORDER BY Sachbearbeiter.Name;"
                    ColumnWidths ="0"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =2395
                    LayoutCachedTop =2020
                    LayoutCachedWidth =3813
                    LayoutCachedHeight =2275
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =540
                            Top =2020
                            Width =1695
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld37"
                            Caption ="Fachplaner Elektro:"
                            GridlineColor =10921638
                            LayoutCachedLeft =540
                            LayoutCachedTop =2020
                            LayoutCachedWidth =2235
                            LayoutCachedHeight =2275
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2394
                    Top =2335
                    Width =1418
                    TabIndex =6
                    BackColor =15728383
                    Name ="Kombinationsfeld38"
                    ControlSource ="ID_SB_Fachpl_HLS"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, Sachbearbeiter.Name FROM Sachbearbeiter WHERE (((Sachb"
                        "earbeiter.Fachplaner_HLS)=True) AND ((Sachbearbeiter.ausgeschieden)=False)) ORDE"
                        "R BY Sachbearbeiter.Name;"
                    ColumnWidths ="0"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =2394
                    LayoutCachedTop =2335
                    LayoutCachedWidth =3812
                    LayoutCachedHeight =2590
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =702
                            Top =2335
                            Width =1532
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld39"
                            Caption ="Fachplaner H/L/S:"
                            GridlineColor =10921638
                            LayoutCachedLeft =702
                            LayoutCachedTop =2335
                            LayoutCachedWidth =2234
                            LayoutCachedHeight =2590
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =6566
                    Top =2020
                    Width =1418
                    TabIndex =7
                    BackColor =15728383
                    Name ="Kombinationsfeld40"
                    ControlSource ="ID_SB_Mietverantw"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, Sachbearbeiter.Name FROM Sachbearbeiter WHERE (((Sachb"
                        "earbeiter.Mietobjektverantwortlicher)=True) AND ((Sachbearbeiter.ausgeschieden)="
                        "False)) ORDER BY Sachbearbeiter.Name;"
                    ColumnWidths ="0"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =6566
                    LayoutCachedTop =2020
                    LayoutCachedWidth =7984
                    LayoutCachedHeight =2275
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =3907
                            Top =2021
                            Width =2503
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld41"
                            Caption ="Vermietungs-Verantwortlicher:"
                            GridlineColor =10921638
                            LayoutCachedLeft =3907
                            LayoutCachedTop =2021
                            LayoutCachedWidth =6410
                            LayoutCachedHeight =2276
                        End
                    End
                End
                Begin Rectangle
                    OverlapFlags =255
                    Left =168
                    Top =1522
                    Width =8045
                    Height =1145
                    BorderColor =10921638
                    Name ="Rechteck42"
                    GridlineColor =10921638
                    LayoutCachedLeft =168
                    LayoutCachedTop =1522
                    LayoutCachedWidth =8213
                    LayoutCachedHeight =2667
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =247
                    TextAlign =1
                    Left =401
                    Top =1395
                    Width =1455
                    Height =255
                    FontSize =8
                    BackColor =16776187
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld43"
                    Caption ="Verantwortliche:"
                    GridlineColor =10921638
                    LayoutCachedLeft =401
                    LayoutCachedTop =1395
                    LayoutCachedWidth =1856
                    LayoutCachedHeight =1650
                    ForeShade =100.0
                End
                Begin ComboBox
                    OverlapFlags =247
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2403
                    Top =3967
                    Width =1926
                    TabIndex =11
                    BackColor =15728383
                    Name ="KF_Gebteil"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_20_Gebäudeteile.Gebäudete"
                        "il FROM tbl_100_20_Gebäudeteile WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäude)=F_V"
                        "ariable(\"lng_ID_Gebaeude\"))) ORDER BY tbl_100_20_Gebäudeteile.Gebäudeteil;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =2403
                    LayoutCachedTop =3967
                    LayoutCachedWidth =4329
                    LayoutCachedHeight =4222
                    Begin
                        Begin Label
                            OverlapFlags =247
                            Left =178
                            Top =3967
                            Width =2064
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld45"
                            Caption ="Welches Geb.teil zuordn.: "
                            GridlineColor =10921638
                            LayoutCachedLeft =178
                            LayoutCachedTop =3967
                            LayoutCachedWidth =2242
                            LayoutCachedHeight =4222
                        End
                    End
                End
                Begin Rectangle
                    OverlapFlags =93
                    Left =166
                    Top =5853
                    Width =8045
                    Height =1011
                    BorderColor =10921638
                    Name ="Rechteck46"
                    GridlineColor =10921638
                    LayoutCachedLeft =166
                    LayoutCachedTop =5853
                    LayoutCachedWidth =8211
                    LayoutCachedHeight =6864
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =215
                    TextAlign =1
                    Left =347
                    Top =5725
                    Width =2311
                    Height =255
                    FontSize =8
                    BackColor =16776187
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld47"
                    Caption ="Angaben zur Versicherung:"
                    GridlineColor =10921638
                    LayoutCachedLeft =347
                    LayoutCachedTop =5725
                    LayoutCachedWidth =2658
                    LayoutCachedHeight =5980
                    ForeShade =100.0
                End
                Begin TextBox
                    OverlapFlags =247
                    IMESentenceMode =3
                    Left =7482
                    Top =701
                    Width =521
                    TabIndex =21
                    BackColor =15728383
                    Name ="LiegenschaftsNr_LuGM"
                    ControlSource ="LiegenschaftsNr_LuGM"
                    InputMask ="00\\-00"
                    GridlineColor =10921638

                    LayoutCachedLeft =7482
                    LayoutCachedTop =701
                    LayoutCachedWidth =8003
                    LayoutCachedHeight =956
                    Begin
                        Begin Label
                            OverlapFlags =247
                            Left =5725
                            Top =747
                            Width =1632
                            Height =227
                            FontSize =8
                            Name ="Bezeichnungsfeld49"
                            Caption ="Liegensch-Nr LuGM:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5725
                            LayoutCachedTop =747
                            LayoutCachedWidth =7357
                            LayoutCachedHeight =974
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_010_030_Geb_verw_UF_Gebäudedaten.cls"
