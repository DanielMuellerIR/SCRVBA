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
    Width =8220
    DatasheetFontHeight =11
    ItemSuffix =46
    Left =1358
    Top =8029
    Right =9482
    Bottom =13870
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
            Height =6122
            BackColor =16776187
            Name ="Detailbereich"
            AlternateBackColor =15921906
            AlternateBackShade =95.0
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =0
                    Left =270
                    Top =60
                    Width =3360
                    Height =315
                    FontSize =11
                    Name ="Bezeichnungsfeld2"
                    Caption ="Stammdaten zum Grundstück:"
                    GridlineColor =10921638
                    LayoutCachedLeft =270
                    LayoutCachedTop =60
                    LayoutCachedWidth =3630
                    LayoutCachedHeight =375
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2382
                    Top =1033
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

                    LayoutCachedLeft =2382
                    LayoutCachedTop =1033
                    LayoutCachedWidth =4590
                    LayoutCachedHeight =1288
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =681
                            Top =1078
                            Width =1575
                            Height =227
                            FontSize =8
                            Name ="Bezeichnungsfeld7"
                            Caption ="Straße  |  Haus-Nr.:"
                            GridlineColor =10921638
                            LayoutCachedLeft =681
                            LayoutCachedTop =1078
                            LayoutCachedWidth =2256
                            LayoutCachedHeight =1305
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    TextFontCharSet =163
                    IMESentenceMode =3
                    Left =4650
                    Top =1033
                    Width =753
                    ColumnWidth =1200
                    TabIndex =2
                    BackColor =15728383
                    Name ="Haus_Nr"
                    ControlSource ="Haus_Nr"
                    GridlineColor =10921638

                    LayoutCachedLeft =4650
                    LayoutCachedTop =1033
                    LayoutCachedWidth =5403
                    LayoutCachedHeight =1288
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2382
                    Top =733
                    Width =2517
                    ColumnWidth =5895
                    BackColor =15728383
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"
                    GridlineColor =10921638

                    LayoutCachedLeft =2382
                    LayoutCachedTop =733
                    LayoutCachedWidth =4899
                    LayoutCachedHeight =988
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =1071
                            Top =778
                            Width =1185
                            Height =227
                            FontSize =8
                            Name ="Bezeichnungsfeld9"
                            Caption ="Bezeichnung:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1071
                            LayoutCachedTop =778
                            LayoutCachedWidth =2256
                            LayoutCachedHeight =1005
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =4406
                    Top =1622
                    Width =2616
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

                    LayoutCachedLeft =4406
                    LayoutCachedTop =1622
                    LayoutCachedWidth =7022
                    LayoutCachedHeight =1877
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =2030
                            Top =1622
                            Width =2220
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld10"
                            Caption ="Objekt-Verantwortlicher:"
                            GridlineColor =10921638
                            LayoutCachedLeft =2030
                            LayoutCachedTop =1622
                            LayoutCachedWidth =4250
                            LayoutCachedHeight =1877
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2681
                    Top =3570
                    Width =1926
                    ColumnWidth =2460
                    TabIndex =8
                    BackColor =15728383
                    Name ="Nutzung des Objektes"
                    ControlSource ="Nutzung des Objektes"
                    EventProcPrefix ="Nutzung_des_Objektes"
                    GridlineColor =10921638

                    LayoutCachedLeft =2681
                    LayoutCachedTop =3570
                    LayoutCachedWidth =4607
                    LayoutCachedHeight =3825
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =345
                            Top =3570
                            Width =2175
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld11"
                            Caption ="Nutzung d. Grundstücks:"
                            GridlineColor =10921638
                            LayoutCachedLeft =345
                            LayoutCachedTop =3570
                            LayoutCachedWidth =2520
                            LayoutCachedHeight =3825
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2681
                    Top =3883
                    Width =1926
                    TabIndex =9
                    BackColor =15728383
                    Name ="Fläche"
                    ControlSource ="Fläche"
                    Format ="Standard"
                    GridlineColor =10921638

                    LayoutCachedLeft =2681
                    LayoutCachedTop =3883
                    LayoutCachedWidth =4607
                    LayoutCachedHeight =4138
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextFontCharSet =163
                            Left =1380
                            Top =3885
                            Width =1140
                            Height =270
                            FontSize =8
                            Name ="Bezeichnungsfeld15"
                            Caption ="Fläche in m²:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1380
                            LayoutCachedTop =3885
                            LayoutCachedWidth =2520
                            LayoutCachedHeight =4155
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2681
                    Top =4196
                    Width =1926
                    TabIndex =10
                    BackColor =15728383
                    Name ="Bodenrichtwert"
                    ControlSource ="Bodenrichtwert"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    GridlineColor =10921638

                    LayoutCachedLeft =2681
                    LayoutCachedTop =4196
                    LayoutCachedWidth =4607
                    LayoutCachedHeight =4451
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =1095
                            Top =4196
                            Width =1425
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld16"
                            Caption ="Bodenrichtwert:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1095
                            LayoutCachedTop =4196
                            LayoutCachedWidth =2520
                            LayoutCachedHeight =4451
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =93
                    Left =2691
                    Top =4822
                    Width =215
                    TabIndex =12
                    BorderColor =10921638
                    Name ="bebaut"
                    ControlSource ="bebaut"
                    GridlineColor =10921638

                    LayoutCachedLeft =2691
                    LayoutCachedTop =4822
                    LayoutCachedWidth =2906
                    LayoutCachedHeight =5062
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =1815
                            Top =4822
                            Width =705
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld17"
                            Caption ="bebaut"
                            GridlineColor =10921638
                            LayoutCachedLeft =1815
                            LayoutCachedTop =4822
                            LayoutCachedWidth =2520
                            LayoutCachedHeight =5077
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =93
                    Left =2691
                    Top =5120
                    Width =215
                    TabIndex =13
                    BorderColor =10921638
                    Name ="voll berechnen"
                    ControlSource ="voll berechnen"
                    EventProcPrefix ="voll_berechnen"
                    GridlineColor =10921638

                    LayoutCachedLeft =2691
                    LayoutCachedTop =5120
                    LayoutCachedWidth =2906
                    LayoutCachedHeight =5360
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =1155
                            Top =5120
                            Width =1365
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld18"
                            Caption ="voll berechnen:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1155
                            LayoutCachedTop =5120
                            LayoutCachedWidth =2520
                            LayoutCachedHeight =5375
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2691
                    Top =5418
                    Width =1926
                    TabIndex =14
                    BackColor =15728383
                    Name ="Nicht_mehr_in_Betr_seit"
                    ControlSource ="Nicht_mehr_in_Betr_seit"
                    GridlineColor =10921638

                    LayoutCachedLeft =2691
                    LayoutCachedTop =5418
                    LayoutCachedWidth =4617
                    LayoutCachedHeight =5673
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =450
                            Top =5418
                            Width =2070
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld19"
                            Caption ="Nicht mehr in Betr. seit:"
                            GridlineColor =10921638
                            LayoutCachedLeft =450
                            LayoutCachedTop =5418
                            LayoutCachedWidth =2520
                            LayoutCachedHeight =5673
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2691
                    Top =5731
                    Width =1926
                    TabIndex =16
                    BackColor =15728383
                    Name ="Nicht_mehr_in_Betr_Begründung"
                    ControlSource ="Nicht_mehr_in_Betr_Begründung"
                    GridlineColor =10921638

                    LayoutCachedLeft =2691
                    LayoutCachedTop =5731
                    LayoutCachedWidth =4617
                    LayoutCachedHeight =5986
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =1320
                            Top =5731
                            Width =1200
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld20"
                            Caption ="Begründung:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1320
                            LayoutCachedTop =5731
                            LayoutCachedWidth =2520
                            LayoutCachedHeight =5986
                        End
                    End
                End
                Begin Rectangle
                    OverlapFlags =255
                    Left =225
                    Top =536
                    Width =7977
                    Height =820
                    BorderColor =10921638
                    Name ="Rechteck81"
                    GridlineColor =10921638
                    LayoutCachedLeft =225
                    LayoutCachedTop =536
                    LayoutCachedWidth =8202
                    LayoutCachedHeight =1356
                End
                Begin Rectangle
                    OverlapFlags =255
                    Left =228
                    Top =3414
                    Width =4572
                    Height =2651
                    BorderColor =10921638
                    Name ="Rechteck21"
                    GridlineColor =10921638
                    LayoutCachedLeft =228
                    LayoutCachedTop =3414
                    LayoutCachedWidth =4800
                    LayoutCachedHeight =6065
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =247
                    TextAlign =1
                    Left =392
                    Top =420
                    Width =2100
                    Height =255
                    FontSize =8
                    BackColor =16776187
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld22"
                    Caption ="Lage des Grundstücks:"
                    GridlineColor =10921638
                    LayoutCachedLeft =392
                    LayoutCachedTop =420
                    LayoutCachedWidth =2492
                    LayoutCachedHeight =675
                    ForeShade =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =247
                    TextAlign =1
                    Left =335
                    Top =3287
                    Width =2385
                    Height =255
                    FontSize =8
                    BackColor =16776187
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld23"
                    Caption ="Angaben zum Grundstück:"
                    GridlineColor =10921638
                    LayoutCachedLeft =335
                    LayoutCachedTop =3287
                    LayoutCachedWidth =2720
                    LayoutCachedHeight =3542
                    ForeShade =100.0
                End
                Begin Rectangle
                    OverlapFlags =93
                    Left =5030
                    Top =3414
                    Width =3132
                    Height =2651
                    BorderColor =10921638
                    Name ="Rechteck24"
                    GridlineColor =10921638
                    LayoutCachedLeft =5030
                    LayoutCachedTop =3414
                    LayoutCachedWidth =8162
                    LayoutCachedHeight =6065
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =6442
                    Top =3917
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

                    LayoutCachedLeft =6442
                    LayoutCachedTop =3917
                    LayoutCachedWidth =7978
                    LayoutCachedHeight =4172
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =5626
                            Top =3917
                            Width =660
                            Height =270
                            FontSize =8
                            Name ="Bezeichnungsfeld26"
                            Caption ="Flur:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5626
                            LayoutCachedTop =3917
                            LayoutCachedWidth =6286
                            LayoutCachedHeight =4187
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =6446
                    Top =3572
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

                    LayoutCachedLeft =6446
                    LayoutCachedTop =3572
                    LayoutCachedWidth =7982
                    LayoutCachedHeight =3827
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextFontCharSet =163
                            Left =5150
                            Top =3572
                            Width =1140
                            Height =270
                            FontSize =8
                            Name ="Bezeichnungsfeld25"
                            Caption ="Gemarkung:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5150
                            LayoutCachedTop =3572
                            LayoutCachedWidth =6290
                            LayoutCachedHeight =3842
                        End
                    End
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =215
                    TextAlign =1
                    Left =5105
                    Top =3302
                    Width =2835
                    Height =255
                    FontSize =8
                    BackColor =16776187
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld27"
                    Caption ="Katasterdaten zum Grundstück:"
                    GridlineColor =10921638
                    LayoutCachedLeft =5105
                    LayoutCachedTop =3302
                    LayoutCachedWidth =7940
                    LayoutCachedHeight =3557
                    ForeShade =100.0
                End
                Begin ListBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =4
                    Left =5722
                    Top =4533
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

                    LayoutCachedLeft =5722
                    LayoutCachedTop =4533
                    LayoutCachedWidth =7978
                    LayoutCachedHeight =5962
                    ForeShade =100.0
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =1
                            Left =5722
                            Top =4276
                            Width =951
                            Height =223
                            FontSize =8
                            Name ="Bezeichnungsfeld34"
                            Caption ="Flurstücke:"
                            GridlineColor =10921638
                            LayoutCachedLeft =5722
                            LayoutCachedTop =4276
                            LayoutCachedWidth =6673
                            LayoutCachedHeight =4499
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =215
                    Left =5281
                    Top =4598
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

                    LayoutCachedLeft =5281
                    LayoutCachedTop =4598
                    LayoutCachedWidth =5566
                    LayoutCachedHeight =4973
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =215
                    Left =5281
                    Top =5057
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

                    LayoutCachedLeft =5281
                    LayoutCachedTop =5057
                    LayoutCachedWidth =5566
                    LayoutCachedHeight =5432
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
                    Left =4406
                    Top =1937
                    Width =2616
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

                    LayoutCachedLeft =4406
                    LayoutCachedTop =1937
                    LayoutCachedWidth =7022
                    LayoutCachedHeight =2192
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =1490
                            Top =1937
                            Width =2760
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld35"
                            Caption ="Grundstücks-Verantwortlicher:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1490
                            LayoutCachedTop =1937
                            LayoutCachedWidth =4250
                            LayoutCachedHeight =2192
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =4406
                    Top =2252
                    Width =2616
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

                    LayoutCachedLeft =4406
                    LayoutCachedTop =2252
                    LayoutCachedWidth =7022
                    LayoutCachedHeight =2507
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =2555
                            Top =2252
                            Width =1695
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld37"
                            Caption ="Fachplaner Elektro:"
                            GridlineColor =10921638
                            LayoutCachedLeft =2555
                            LayoutCachedTop =2252
                            LayoutCachedWidth =4250
                            LayoutCachedHeight =2507
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =4406
                    Top =2567
                    Width =2616
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

                    LayoutCachedLeft =4406
                    LayoutCachedTop =2567
                    LayoutCachedWidth =7022
                    LayoutCachedHeight =2822
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =2555
                            Top =2567
                            Width =1695
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld39"
                            Caption ="Fachplaner H/L/S:"
                            GridlineColor =10921638
                            LayoutCachedLeft =2555
                            LayoutCachedTop =2567
                            LayoutCachedWidth =4250
                            LayoutCachedHeight =2822
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =4406
                    Top =2882
                    Width =2616
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

                    LayoutCachedLeft =4406
                    LayoutCachedTop =2882
                    LayoutCachedWidth =7022
                    LayoutCachedHeight =3137
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =1475
                            Top =2882
                            Width =2775
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld41"
                            Caption ="Vermietungs-Verantwortlicher:"
                            GridlineColor =10921638
                            LayoutCachedLeft =1475
                            LayoutCachedTop =2882
                            LayoutCachedWidth =4250
                            LayoutCachedHeight =3137
                        End
                    End
                End
                Begin Rectangle
                    OverlapFlags =255
                    Left =230
                    Top =1554
                    Width =7977
                    Height =1661
                    BorderColor =10921638
                    Name ="Rechteck42"
                    GridlineColor =10921638
                    LayoutCachedLeft =230
                    LayoutCachedTop =1554
                    LayoutCachedWidth =8207
                    LayoutCachedHeight =3215
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =247
                    TextAlign =1
                    Left =395
                    Top =1427
                    Width =1455
                    Height =255
                    FontSize =8
                    BackColor =16776187
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld43"
                    Caption ="Verantwortliche:"
                    GridlineColor =10921638
                    LayoutCachedLeft =395
                    LayoutCachedTop =1427
                    LayoutCachedWidth =1850
                    LayoutCachedHeight =1682
                    ForeShade =100.0
                End
                Begin ComboBox
                    OverlapFlags =247
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2681
                    Top =4509
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

                    LayoutCachedLeft =2681
                    LayoutCachedTop =4509
                    LayoutCachedWidth =4607
                    LayoutCachedHeight =4764
                    Begin
                        Begin Label
                            OverlapFlags =247
                            Left =360
                            Top =4509
                            Width =2160
                            Height =255
                            FontSize =8
                            Name ="Bezeichnungsfeld45"
                            Caption ="Welches Geb.teil zuordn.: "
                            GridlineColor =10921638
                            LayoutCachedLeft =360
                            LayoutCachedTop =4509
                            LayoutCachedWidth =2520
                            LayoutCachedHeight =4764
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_010_030_Geb_verw_UF_Gebäudedaten - ALT.cls"
