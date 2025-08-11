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
    Left =2866
    Top =530
    Right =23054
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
                    Left =3288
                    Top =4029
                    Width =465
                    Height =225
                    FontSize =16
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld41"
                    Caption =">"
                    GridlineColor =10921638
                    LayoutCachedLeft =3288
                    LayoutCachedTop =4029
                    LayoutCachedWidth =3753
                    LayoutCachedHeight =4254
                End
                Begin ListBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =3
                    Left =468
                    Top =675
                    Width =6055
                    Height =3121
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
                    LayoutCachedWidth =6523
                    LayoutCachedHeight =3796
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
                    Left =1135
                    Top =4311
                    Width =5051
                    Height =1978
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

                    LayoutCachedLeft =1135
                    LayoutCachedTop =4311
                    LayoutCachedWidth =6186
                    LayoutCachedHeight =6289
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1133
                            Top =4081
                            Width =2041
                            Height =218
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =1643706
                            Name ="Bezeichnungsfeld4"
                            Caption ="Zugehörige Gebäudeteile"
                            GridlineColor =10921638
                            LayoutCachedLeft =1133
                            LayoutCachedTop =4081
                            LayoutCachedWidth =3174
                            LayoutCachedHeight =4299
                            ForeShade =100.0
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =85
                    Left =463
                    Top =6459
                    Width =8397
                    Height =5613
                    TabIndex =2
                    BorderColor =10040879
                    Name ="UF_GebaeudeStamm"
                    SourceObject ="Form.frm_010_030_Geb_verw_UF_Gebäudedaten"
                    OnExit ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =463
                    LayoutCachedTop =6459
                    LayoutCachedWidth =8860
                    LayoutCachedHeight =12072
                    BorderShade =100.0
                End
                Begin Subform
                    OverlapFlags =87
                    Left =9246
                    Top =675
                    Width =9576
                    Height =11397
                    TabIndex =3
                    BorderColor =10040879
                    Name ="UF_GebaeudeTeil"
                    SourceObject ="Form.frm_010_040_Geb_verw_UF_Gebäudeteil"
                    OnExit ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =9246
                    LayoutCachedTop =675
                    LayoutCachedWidth =18822
                    LayoutCachedHeight =12072
                    BorderShade =100.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6684
                    Top =3179
                    Width =2156
                    Height =585
                    FontSize =9
                    TabIndex =5
                    ForeColor =4138256
                    Name ="BS_Gebaeude_loeschen"
                    Caption ="markierte Liegensch. \015\012löschen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6684
                    LayoutCachedTop =3179
                    LayoutCachedWidth =8840
                    LayoutCachedHeight =3764
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
                    Left =6684
                    Top =2500
                    Width =2156
                    Height =585
                    FontSize =9
                    TabIndex =4
                    ForeColor =4138256
                    Name ="BS_Gebaeude_Neu"
                    Caption ="Neue \015\012Liegenschaft"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6684
                    LayoutCachedTop =2500
                    LayoutCachedWidth =8840
                    LayoutCachedHeight =3085
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
                    Left =6344
                    Top =5842
                    Width =2156
                    Height =375
                    FontSize =9
                    TabIndex =6
                    ForeColor =4138256
                    Name ="BS_Geb_Teil_Loeschen"
                    Caption ="Gebäudeteil löschen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6344
                    LayoutCachedTop =5842
                    LayoutCachedWidth =8500
                    LayoutCachedHeight =6217
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
                    Left =6344
                    Top =5339
                    Width =2156
                    Height =375
                    FontSize =9
                    TabIndex =7
                    ForeColor =4138256
                    Name ="BS_Geb_Teil_Neu"
                    Caption ="Neues Gebäudeteil"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6344
                    LayoutCachedTop =5339
                    LayoutCachedWidth =8500
                    LayoutCachedHeight =5714
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
                    Left =5612
                    Top =4458
                    Width =3459
                    BorderColor =4138256
                    Name ="Linie36"
                    GridlineColor =10921638
                    LayoutCachedLeft =5612
                    LayoutCachedTop =4458
                    LayoutCachedWidth =9071
                    LayoutCachedHeight =4458
                    BorderShade =50.0
                End
                Begin Label
                    OverlapFlags =223
                    Left =9020
                    Top =4288
                    Width =225
                    Height =345
                    FontSize =12
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld35"
                    Caption =">"
                    GridlineColor =10921638
                    LayoutCachedLeft =9020
                    LayoutCachedTop =4288
                    LayoutCachedWidth =9245
                    LayoutCachedHeight =4633
                End
                Begin Label
                    Vertical = NotDefault
                    OverlapFlags =93
                    Left =571
                    Top =6181
                    Width =465
                    Height =225
                    FontSize =16
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld37"
                    Caption =">"
                    GridlineColor =10921638
                    LayoutCachedLeft =571
                    LayoutCachedTop =6181
                    LayoutCachedWidth =1036
                    LayoutCachedHeight =6406
                End
                Begin Line
                    OverlapFlags =95
                    Left =817
                    Top =3686
                    Width =0
                    Height =2552
                    BorderColor =4138256
                    Name ="Linie38"
                    GridlineColor =10921638
                    LayoutCachedLeft =817
                    LayoutCachedTop =3686
                    LayoutCachedWidth =817
                    LayoutCachedHeight =6238
                    BorderShade =50.0
                End
                Begin Line
                    OverlapFlags =95
                    Left =3534
                    Top =3627
                    Width =0
                    Height =477
                    BorderColor =4138256
                    Name ="Linie43"
                    GridlineColor =10921638
                    LayoutCachedLeft =3534
                    LayoutCachedTop =3627
                    LayoutCachedWidth =3534
                    LayoutCachedHeight =4104
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
                    Left =3967
                    Top =3829
                    Width =2541
                    Height =270
                    FontSize =9
                    TabIndex =9
                    ForeColor =4138256
                    Name ="TF_Anz_Liegsch"
                    ControlSource ="=([LF_Gebaeude].[ListIndex]+1) & \". von \" & [LF_Gebaeude].[ListCount] & \" Lie"
                        "genschaften\""
                    FontName ="Arial"

                    LayoutCachedLeft =3967
                    LayoutCachedTop =3829
                    LayoutCachedWidth =6508
                    LayoutCachedHeight =4099
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
' See "frm_010_010_Gebäudeverwaltung - ALT01.cls"
