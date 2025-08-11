Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    RecordLocks =2
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =20182
    DatasheetFontHeight =11
    ItemSuffix =53
    Left =3029
    Top =625
    Right =23217
    Bottom =12580
    RecSrcDt = Begin
        0x9551c80fd6b9e440
    End
    Caption ="Liegenschaften und zugehörige Gebäudeteile:"
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
            FontSize =9
            FontWeight =700
            ForeColor =4072463
            FontName ="Arial"
            BorderTint =50.0
            ForeShade =50.0
            GridlineShade =65.0
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
            GridlineShade =65.0
        End
        Begin CommandButton
            Width =3180
            Height =405
            FontSize =11
            FontName ="Arial"
            ForeTint =75.0
            GridlineShade =65.0
            BackTint =60.0
            BorderLineStyle =0
            BorderColor =16777215
            BorderTint =60.0
        End
        Begin OptionButton
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
            AsianLineBreak =1
            BorderShade =65.0
            ForeTint =75.0
            GridlineShade =65.0
        End
        Begin ListBox
            BorderLineStyle =0
            Width =2727
            Height =1431
            LabelX =0
            LabelY =-466
            BackColor =16776187
            ForeColor =4138256
            BorderColor =10040879
            FontName ="Arial"
            AllowValueListEdits =1
            InheritValueList =1
            ForeShade =50.0
            GridlineShade =65.0
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
            GridlineShade =65.0
            BorderShade =65.0
            ShowPageHeaderAndPageFooter =1
        End
        Begin Section
            CanGrow = NotDefault
            Height =11962
            BackColor =-2147483633
            Name ="Detailbereich"
            AlternateBackColor =15921906
            AlternateBackShade =95.0
            Begin
                Begin Label
                    Vertical = NotDefault
                    OverlapFlags =93
                    Left =10257
                    Top =2016
                    Width =465
                    Height =225
                    FontSize =16
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld41"
                    Caption =">"
                    GridlineColor =10921638
                    LayoutCachedLeft =10257
                    LayoutCachedTop =2016
                    LayoutCachedWidth =10722
                    LayoutCachedHeight =2241
                End
                Begin ListBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =3
                    Left =302
                    Top =675
                    Width =6055
                    Height =3688
                    BackColor =15728383
                    Name ="LF_Gebaeude"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_100_10_Liegenschaften.ID_Gebäude, tbl_100_10_Liegenschaften.Bezeichnu"
                        "ng, [PLZ] & \" \" & [NAme] & \" \" & [Haus_Nr] AS Anschrift FROM M_Strassenverze"
                        "ichnis RIGHT JOIN tbl_100_10_Liegenschaften ON M_Strassenverzeichnis.Kennummer ="
                        " tbl_100_10_Liegenschaften.Kennummer_Straße WHERE tbl_100_10_Liegenschaften.Nich"
                        "t_mehr_in_Betr_seit is Null or  tbl_100_10_Liegenschaften.Nicht_mehr_in_Betr_sei"
                        "t = 0 ORDER BY M_Strassenverzeichnis.Name, tbl_100_10_Liegenschaften.Haus_Nr;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =302
                    LayoutCachedTop =675
                    LayoutCachedWidth =6357
                    LayoutCachedHeight =4363
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =302
                            Top =453
                            Width =2340
                            Height =231
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =1643706
                            Name ="Bezeichnungsfeld1"
                            Caption ="Liegenschaften:"
                            GridlineColor =10921638
                            LayoutCachedLeft =302
                            LayoutCachedTop =453
                            LayoutCachedWidth =2642
                            LayoutCachedHeight =684
                            ForeShade =100.0
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =302
                    Top =120
                    Width =5625
                    Height =315
                    FontSize =11
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld2"
                    Caption ="Liegenschaften und zugehörige Gebäudeteile:"
                    GridlineColor =10921638
                    LayoutCachedLeft =302
                    LayoutCachedTop =120
                    LayoutCachedWidth =5927
                    LayoutCachedHeight =435
                End
                Begin ListBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =9246
                    Top =335
                    Width =5051
                    Height =1582
                    TabIndex =1
                    BackColor =15728383
                    Name ="LF_Zug_Gebaeudeteile"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_20_Gebäudeteile.Gebäudete"
                        "il FROM tbl_100_20_Gebäudeteile WHERE (tbl_100_20_Gebäudeteile.ID_Gebäude)=[Form"
                        "ulare]![frm_010_010_Gebäudeverwaltung]![LF_Gebaeude] and (tbl_100_20_Gebäudeteil"
                        "e.Nicht_mehr_in_Betr_seit is Null or tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_"
                        "seit = 0) ORDER BY tbl_100_20_Gebäudeteile.Gebäudeteil;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =9246
                    LayoutCachedTop =335
                    LayoutCachedWidth =14297
                    LayoutCachedHeight =1917
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =9297
                            Top =113
                            Width =2041
                            Height =218
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =1643706
                            Name ="Bezeichnungsfeld4"
                            Caption ="Zugehörige Gebäudeteile"
                            GridlineColor =10921638
                            LayoutCachedLeft =9297
                            LayoutCachedTop =113
                            LayoutCachedWidth =11338
                            LayoutCachedHeight =331
                            ForeShade =100.0
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =85
                    Left =303
                    Top =4792
                    Width =8397
                    Height =7031
                    TabIndex =2
                    BorderColor =10040879
                    Name ="UF_GebaeudeStamm"
                    SourceObject ="Form.frm_010_030_Geb_verw_UF_Gebäudedaten"
                    OnExit ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =303
                    LayoutCachedTop =4792
                    LayoutCachedWidth =8700
                    LayoutCachedHeight =11823
                    BorderShade =100.0
                End
                Begin Subform
                    OverlapFlags =85
                    Left =9246
                    Top =2268
                    Width =9576
                    Height =9583
                    TabIndex =3
                    BorderColor =10040879
                    Name ="UF_GebaeudeTeil"
                    SourceObject ="Form.frm_010_040_Geb_verw_UF_Gebäudeteil"
                    OnExit ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =9246
                    LayoutCachedTop =2268
                    LayoutCachedWidth =18822
                    LayoutCachedHeight =11851
                    BorderShade =100.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6515
                    Top =3746
                    Width =2347
                    Height =585
                    FontSize =9
                    TabIndex =5
                    ForeColor =4138256
                    Name ="BS_Gebaeude_loeschen"
                    Caption ="markierte Liegenschaft \015\012löschen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6515
                    LayoutCachedTop =3746
                    LayoutCachedWidth =8862
                    LayoutCachedHeight =4331
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6515
                    Top =3067
                    Width =2347
                    Height =585
                    FontSize =9
                    TabIndex =4
                    ForeColor =4138256
                    Name ="BS_Gebaeude_Neu"
                    Caption ="Neue \015\012Liegenschaft"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6515
                    LayoutCachedTop =3067
                    LayoutCachedWidth =8862
                    LayoutCachedHeight =3652
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =14509
                    Top =1576
                    Width =2156
                    Height =375
                    FontSize =9
                    TabIndex =6
                    ForeColor =4138256
                    Name ="BS_Geb_Teil_Loeschen"
                    Caption ="Gebäudeteil löschen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =14509
                    LayoutCachedTop =1576
                    LayoutCachedWidth =16665
                    LayoutCachedHeight =1951
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =14509
                    Top =1073
                    Width =2156
                    Height =375
                    FontSize =9
                    TabIndex =7
                    ForeColor =4138256
                    Name ="BS_Geb_Teil_Neu"
                    Caption ="Neues Gebäudeteil"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =14509
                    LayoutCachedTop =1073
                    LayoutCachedWidth =16665
                    LayoutCachedHeight =1448
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    Overlaps =1
                End
                Begin Line
                    OverlapFlags =93
                    Left =5556
                    Top =1056
                    Width =3459
                    BorderColor =4138256
                    Name ="Linie36"
                    GridlineColor =10921638
                    LayoutCachedLeft =5556
                    LayoutCachedTop =1056
                    LayoutCachedWidth =9015
                    LayoutCachedHeight =1056
                    BorderShade =50.0
                End
                Begin Label
                    OverlapFlags =215
                    Left =8958
                    Top =902
                    Width =225
                    Height =345
                    FontSize =14
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld35"
                    Caption =">"
                    GridlineColor =10921638
                    LayoutCachedLeft =8958
                    LayoutCachedTop =902
                    LayoutCachedWidth =9183
                    LayoutCachedHeight =1247
                End
                Begin Label
                    Vertical = NotDefault
                    OverlapFlags =93
                    Left =1539
                    Top =4480
                    Width =465
                    Height =225
                    FontSize =16
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld37"
                    Caption =">"
                    GridlineColor =10921638
                    LayoutCachedLeft =1539
                    LayoutCachedTop =4480
                    LayoutCachedWidth =2004
                    LayoutCachedHeight =4705
                End
                Begin Line
                    OverlapFlags =95
                    Left =1786
                    Top =3121
                    Width =0
                    Height =1419
                    BorderColor =4138256
                    Name ="Linie38"
                    GridlineColor =10921638
                    LayoutCachedLeft =1786
                    LayoutCachedTop =3121
                    LayoutCachedWidth =1786
                    LayoutCachedHeight =4540
                    BorderShade =50.0
                End
                Begin Line
                    OverlapFlags =95
                    Left =10507
                    Top =1617
                    Width =0
                    Height =477
                    BorderColor =4138256
                    Name ="Linie43"
                    GridlineColor =10921638
                    LayoutCachedLeft =10507
                    LayoutCachedTop =1617
                    LayoutCachedWidth =10507
                    LayoutCachedHeight =2094
                    BorderShade =50.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =18995
                    Top =11342
                    Width =1005
                    Height =360
                    FontSize =9
                    TabIndex =8
                    ForeColor =4138256
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =18995
                    LayoutCachedTop =11342
                    LayoutCachedWidth =20000
                    LayoutCachedHeight =11702
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =3800
                    Top =4397
                    Width =2541
                    Height =270
                    FontSize =9
                    TabIndex =9
                    ForeColor =4138256
                    Name ="TF_Anz_Liegsch"
                    ControlSource ="=([LF_Gebaeude].[ListIndex]+1) & \". von \" & [LF_Gebaeude].[ListCount] & \" Lie"
                        "genschaften\""
                    FontName ="Arial"

                    LayoutCachedLeft =3800
                    LayoutCachedTop =4397
                    LayoutCachedWidth =6341
                    LayoutCachedHeight =4667
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =6515
                    Top =2214
                    Width =2347
                    Height =794
                    TabIndex =10
                    Name ="OR_LiegenschAktive"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="1"
                    GridlineColor =10921638

                    LayoutCachedLeft =6515
                    LayoutCachedTop =2214
                    LayoutCachedWidth =8862
                    LayoutCachedHeight =3008
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    Begin
                        Begin OptionButton
                            OverlapFlags =87
                            Left =6585
                            Top =2369
                            OptionValue =1
                            BorderColor =10921638
                            Name ="Op_LIE_Aktiv"
                            GridlineColor =10921638

                            LayoutCachedLeft =6585
                            LayoutCachedTop =2369
                            LayoutCachedWidth =6845
                            LayoutCachedHeight =2609
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OverlapFlags =247
                                    Left =6824
                                    Top =2337
                                    Width =1802
                                    Height =255
                                    FontSize =8
                                    BackColor =-2147483633
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld89"
                                    Caption ="Aktive Liegenschaften"
                                    LayoutCachedLeft =6824
                                    LayoutCachedTop =2337
                                    LayoutCachedWidth =8626
                                    LayoutCachedHeight =2592
                                    BorderTint =100.0
                                    GridlineShade =100.0
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =6585
                            Top =2702
                            OptionValue =2
                            BorderColor =10921638
                            Name ="Op_LIE_Alle"
                            GridlineColor =10921638

                            LayoutCachedLeft =6585
                            LayoutCachedTop =2702
                            LayoutCachedWidth =6845
                            LayoutCachedHeight =2942
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OverlapFlags =247
                                    Left =6824
                                    Top =2676
                                    Width =1972
                                    Height =255
                                    FontSize =8
                                    BackColor =-2147483633
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld91"
                                    Caption ="Inaktive Liegenschaften"
                                    LayoutCachedLeft =6824
                                    LayoutCachedTop =2676
                                    LayoutCachedWidth =8796
                                    LayoutCachedHeight =2931
                                    BorderTint =100.0
                                    GridlineShade =100.0
                                End
                            End
                        End
                    End
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =14510
                    Top =170
                    Width =2156
                    Height =794
                    TabIndex =11
                    Name ="OR_GebTeile_Aktive"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="1"
                    GridlineColor =10921638

                    LayoutCachedLeft =14510
                    LayoutCachedTop =170
                    LayoutCachedWidth =16666
                    LayoutCachedHeight =964
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    Begin
                        Begin OptionButton
                            OverlapFlags =87
                            Left =14617
                            Top =317
                            OptionValue =1
                            BorderColor =10921638
                            Name ="Op_GEB_Aktiv"
                            GridlineColor =10921638

                            LayoutCachedLeft =14617
                            LayoutCachedTop =317
                            LayoutCachedWidth =14877
                            LayoutCachedHeight =557
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OverlapFlags =247
                                    Left =14850
                                    Top =285
                                    Width =1626
                                    Height =255
                                    FontSize =8
                                    BackColor =-2147483633
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld50"
                                    Caption ="Aktive Gebäudeteile"
                                    LayoutCachedLeft =14850
                                    LayoutCachedTop =285
                                    LayoutCachedWidth =16476
                                    LayoutCachedHeight =540
                                    BorderTint =100.0
                                    GridlineShade =100.0
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =14617
                            Top =651
                            OptionValue =2
                            BorderColor =10921638
                            Name ="Op_GEB_Alle"
                            GridlineColor =10921638

                            LayoutCachedLeft =14617
                            LayoutCachedTop =651
                            LayoutCachedWidth =14877
                            LayoutCachedHeight =891
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OverlapFlags =247
                                    Left =14852
                                    Top =625
                                    Width =1578
                                    Height =255
                                    FontSize =8
                                    BackColor =-2147483633
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld52"
                                    Caption ="Alle Gebäudeteile"
                                    LayoutCachedLeft =14852
                                    LayoutCachedTop =625
                                    LayoutCachedWidth =16430
                                    LayoutCachedHeight =880
                                    BorderTint =100.0
                                    GridlineShade =100.0
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
' See "frm_010_010_Gebäudeverwaltung.cls"
