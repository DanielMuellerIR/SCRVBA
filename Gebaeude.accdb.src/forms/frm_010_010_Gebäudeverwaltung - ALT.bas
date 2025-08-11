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
    ItemSuffix =48
    Left =2690
    Top =530
    Right =22877
    Bottom =12702
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
            Height =12188
            BackColor =-2147483633
            Name ="Detailbereich"
            AlternateBackColor =15921906
            AlternateBackShade =95.0
            Begin
                Begin Label
                    Vertical = NotDefault
                    OverlapFlags =93
                    Left =12135
                    Top =2175
                    Width =465
                    Height =225
                    FontSize =16
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld41"
                    Caption =">"
                    GridlineColor =10921638
                    LayoutCachedLeft =12135
                    LayoutCachedTop =2175
                    LayoutCachedWidth =12600
                    LayoutCachedHeight =2400
                End
                Begin ListBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =3
                    Left =468
                    Top =675
                    Width =5892
                    Height =4821
                    BackColor =15728383
                    Name ="LF_Gebaeude"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_100_10_Liegenschaften.ID_Gebäude, tbl_100_10_Liegenschaften.Bezeichnu"
                        "ng, [PLZ] & \" \" & [NAme] & \" \" & [Haus_Nr] AS Anschrift FROM M_Strassenverze"
                        "ichnis RIGHT JOIN tbl_100_10_Liegenschaften ON M_Strassenverzeichnis.Kennummer ="
                        " tbl_100_10_Liegenschaften.Kennummer_Straße ORDER BY M_Strassenverzeichnis.Name,"
                        " tbl_100_10_Liegenschaften.Haus_Nr;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =468
                    LayoutCachedTop =675
                    LayoutCachedWidth =6360
                    LayoutCachedHeight =5496
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =453
                            Top =453
                            Width =2340
                            Height =231
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =1643706
                            Name ="Bezeichnungsfeld1"
                            Caption ="Liegenschaften:"
                            GridlineColor =10921638
                            LayoutCachedLeft =453
                            LayoutCachedTop =453
                            LayoutCachedWidth =2793
                            LayoutCachedHeight =684
                            ForeShade =100.0
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =458
                    Top =120
                    Width =5625
                    Height =315
                    FontSize =11
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld2"
                    Caption ="Liegenschaften und zugehörige Gebäudeteile:"
                    GridlineColor =10921638
                    LayoutCachedLeft =458
                    LayoutCachedTop =120
                    LayoutCachedWidth =6083
                    LayoutCachedHeight =435
                End
                Begin ListBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =9244
                    Top =348
                    Width =6627
                    Height =1761
                    TabIndex =1
                    BackColor =15728383
                    Name ="LF_Zug_Gebaeudeteile"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_20_Gebäudeteile.Gebäudete"
                        "il FROM tbl_100_20_Gebäudeteile WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäude)=[Fo"
                        "rmulare]![frm_010_010_Gebäudeverwaltung]![LF_Gebaeude])) ORDER BY tbl_100_20_Geb"
                        "äudeteile.Gebäudeteil;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =9244
                    LayoutCachedTop =348
                    LayoutCachedWidth =15871
                    LayoutCachedHeight =2109
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =9242
                            Top =118
                            Width =2190
                            Height =218
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =1643706
                            Name ="Bezeichnungsfeld4"
                            Caption ="Zugehörige Gebäudeteile"
                            GridlineColor =10921638
                            LayoutCachedLeft =9242
                            LayoutCachedTop =118
                            LayoutCachedWidth =11432
                            LayoutCachedHeight =336
                            ForeShade =100.0
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =85
                    Left =463
                    Top =5949
                    Width =8397
                    Height =6117
                    TabIndex =2
                    BorderColor =10040879
                    Name ="UF_GebaeudeStamm"
                    SourceObject ="Form.frm_010_030_Geb_verw_UF_Gebäudedaten"
                    OnExit ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =463
                    LayoutCachedTop =5949
                    LayoutCachedWidth =8860
                    LayoutCachedHeight =12066
                    BorderShade =100.0
                End
                Begin Subform
                    OverlapFlags =85
                    Left =9246
                    Top =2454
                    Width =9576
                    Height =9617
                    TabIndex =3
                    BorderColor =10040879
                    Name ="UF_GebaeudeTeil"
                    SourceObject ="Form.frm_010_040_Geb_verw_UF_Gebäudeteil"
                    OnExit ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =9246
                    LayoutCachedTop =2454
                    LayoutCachedWidth =18822
                    LayoutCachedHeight =12071
                    BorderShade =100.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6481
                    Top =4893
                    Width =2156
                    Height =585
                    FontSize =9
                    TabIndex =5
                    ForeColor =4138256
                    Name ="BS_Gebaeude_loeschen"
                    Caption ="markierte Liegensch. \015\012löschen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6481
                    LayoutCachedTop =4893
                    LayoutCachedWidth =8637
                    LayoutCachedHeight =5478
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
                    Left =6475
                    Top =4278
                    Width =2156
                    Height =585
                    FontSize =9
                    TabIndex =4
                    ForeColor =4138256
                    Name ="BS_Gebaeude_Neu"
                    Caption ="Neue \015\012Liegenschaft"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6475
                    LayoutCachedTop =4278
                    LayoutCachedWidth =8631
                    LayoutCachedHeight =4863
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
                    Left =16054
                    Top =1708
                    Width =2130
                    Height =375
                    FontSize =9
                    TabIndex =6
                    ForeColor =4138256
                    Name ="BS_Geb_Teil_Loeschen"
                    Caption ="Gebäudeteil löschen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =16054
                    LayoutCachedTop =1708
                    LayoutCachedWidth =18184
                    LayoutCachedHeight =2083
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
                    Left =16054
                    Top =1191
                    Width =2130
                    Height =375
                    FontSize =9
                    TabIndex =7
                    ForeColor =4138256
                    Name ="BS_Geb_Teil_Neu"
                    Caption ="Neues Gebäudeteil"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =16054
                    LayoutCachedTop =1191
                    LayoutCachedWidth =18184
                    LayoutCachedHeight =1566
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
                    Left =6470
                    Top =1290
                    Width =2662
                    BorderColor =4138256
                    Name ="Linie36"
                    GridlineColor =10921638
                    LayoutCachedLeft =6470
                    LayoutCachedTop =1290
                    LayoutCachedWidth =9132
                    LayoutCachedHeight =1290
                    BorderShade =50.0
                End
                Begin Label
                    OverlapFlags =223
                    Left =9050
                    Top =1140
                    Width =225
                    Height =345
                    FontSize =12
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld35"
                    Caption =">"
                    GridlineColor =10921638
                    LayoutCachedLeft =9050
                    LayoutCachedTop =1140
                    LayoutCachedWidth =9275
                    LayoutCachedHeight =1485
                End
                Begin Label
                    Vertical = NotDefault
                    OverlapFlags =93
                    Left =3180
                    Top =5685
                    Width =465
                    Height =225
                    FontSize =16
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld37"
                    Caption =">"
                    GridlineColor =10921638
                    LayoutCachedLeft =3180
                    LayoutCachedTop =5685
                    LayoutCachedWidth =3645
                    LayoutCachedHeight =5910
                End
                Begin Line
                    OverlapFlags =95
                    Left =3439
                    Top =5329
                    Width =0
                    Height =462
                    BorderColor =4138256
                    Name ="Linie38"
                    GridlineColor =10921638
                    LayoutCachedLeft =3439
                    LayoutCachedTop =5329
                    LayoutCachedWidth =3439
                    LayoutCachedHeight =5791
                    BorderShade =50.0
                End
                Begin Line
                    OverlapFlags =95
                    Left =12381
                    Top =1773
                    Width =0
                    Height =477
                    BorderColor =4138256
                    Name ="Linie43"
                    GridlineColor =10921638
                    LayoutCachedLeft =12381
                    LayoutCachedTop =1773
                    LayoutCachedWidth =12381
                    LayoutCachedHeight =2250
                    BorderShade =50.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =18995
                    Top =11625
                    Width =1005
                    Height =360
                    FontSize =9
                    TabIndex =8
                    ForeColor =4138256
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =18995
                    LayoutCachedTop =11625
                    LayoutCachedWidth =20000
                    LayoutCachedHeight =11985
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
                    Left =3805
                    Top =5553
                    Width =2541
                    Height =270
                    FontSize =9
                    TabIndex =9
                    ForeColor =4138256
                    Name ="TF_Anz_Liegsch"
                    ControlSource ="=([LF_Gebaeude].[ListIndex]+1) & \". von \" & [LF_Gebaeude].[ListCount] & \" Lie"
                        "genschaften\""
                    FontName ="Arial"

                    LayoutCachedLeft =3805
                    LayoutCachedTop =5553
                    LayoutCachedWidth =6346
                    LayoutCachedHeight =5823
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_010_010_Gebäudeverwaltung - ALT.cls"
