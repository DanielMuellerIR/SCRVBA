Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    ShortcutMenu = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    BorderStyle =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =19339
    DatasheetFontHeight =11
    ItemSuffix =58
    Left =693
    Top =1209
    Right =20350
    Bottom =13775
    OnUnload ="[Event Procedure]"
    RecSrcDt = Begin
        0x4a9e3a481305e640
    End
    Caption ="Auftragsliste VIS"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    AllowLayoutView =0
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    DatasheetBackThemeColorIndex =1
    BorderThemeColorIndex =3
    ThemeFontIndex =1
    ForeThemeColorIndex =0
    AlternateBackThemeColorIndex =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            FontSize =11
            FontName ="Calibri"
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =0
            BorderTint =50.0
            ForeThemeColorIndex =0
            ForeTint =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =11
            FontWeight =400
            FontName ="Calibri"
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =1
            Gradient =12
            BackThemeColorIndex =4
            BackTint =60.0
            BorderLineStyle =0
            BorderThemeColorIndex =4
            BorderTint =60.0
            ThemeFontIndex =1
            HoverThemeColorIndex =4
            HoverTint =40.0
            PressedThemeColorIndex =4
            PressedShade =75.0
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =0
            PressedForeTint =75.0
        End
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
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
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin ListBox
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin ComboBox
            AddColon = NotDefault
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =2
            ForeShade =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderThemeColorIndex =1
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            BorderShade =65.0
            ShowPageHeaderAndPageFooter =1
        End
        Begin Section
            CanGrow = NotDefault
            Height =13039
            Name ="Detailbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =3
            Begin
                Begin ListBox
                    ColumnHeads = NotDefault
                    OverlapFlags =87
                    IMESentenceMode =3
                    ColumnCount =10
                    Left =350
                    Top =1415
                    Width =16609
                    Height =2446
                    FontSize =9
                    TabIndex =19
                    BorderColor =1643706
                    Name ="LF_Auftraege"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="0;1363;1474;3402;4876;3969;2268;0;0"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =350
                    LayoutCachedTop =1415
                    LayoutCachedWidth =16959
                    LayoutCachedHeight =3861
                    ThemeFontIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =350
                            Top =1100
                            Width =1260
                            Height =315
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld1"
                            Caption ="Auftragsliste"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =350
                            LayoutCachedTop =1100
                            LayoutCachedWidth =1610
                            LayoutCachedHeight =1415
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =340
                    Top =54
                    Width =5925
                    Height =390
                    FontSize =14
                    FontWeight =700
                    BackColor =0
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld9"
                    Caption ="Beauftragungen ohne Beteiligung der ZVS"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =340
                    LayoutCachedTop =54
                    LayoutCachedWidth =6265
                    LayoutCachedHeight =444
                    ThemeFontIndex =-1
                    BackThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Subform
                    OverlapFlags =85
                    Left =350
                    Top =4530
                    Width =16609
                    Height =5453
                    BorderColor =1643706
                    Name ="UF_Auftrag"
                    SourceObject ="Form.frm_20_20_Auftrgasdaten_EDS"
                    OnExit ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =350
                    LayoutCachedTop =4530
                    LayoutCachedWidth =16959
                    LayoutCachedHeight =9983
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =17183
                    Top =53
                    Width =1935
                    Height =435
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    ForeColor =-2147483616
                    Name ="BS_Beenden"
                    Caption ="Beenden"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =17183
                    LayoutCachedTop =53
                    LayoutCachedWidth =19118
                    LayoutCachedHeight =488
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Gradient =0
                    BackColor =2366701
                    BackThemeColorIndex =-1
                    BackTint =100.0
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin Subform
                    OverlapFlags =87
                    Left =345
                    Top =10425
                    Width =16609
                    Height =1545
                    TabIndex =2
                    BorderColor =1643706
                    Name ="UF_Quart_Pruefungen"
                    SourceObject ="Form.frm_20_30_UF_Quartalspruefungen"
                    Tag ="*Pruefer*"
                    GridlineColor =10921638

                    LayoutCachedLeft =345
                    LayoutCachedTop =10425
                    LayoutCachedWidth =16954
                    LayoutCachedHeight =11970
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =345
                            Top =10110
                            Width =3480
                            Height =315
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld4"
                            Caption ="Quartalsprüfungen der Auftragsliste:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =345
                            LayoutCachedTop =10110
                            LayoutCachedWidth =3825
                            LayoutCachedHeight =10425
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =17185
                    Top =3016
                    Width =1935
                    Height =375
                    FontSize =10
                    FontWeight =700
                    TabIndex =3
                    ForeColor =4210752
                    Name ="BS_Neuer_Auftrag"
                    Caption ="Neuer Auftrag"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =17185
                    LayoutCachedTop =3016
                    LayoutCachedWidth =19120
                    LayoutCachedHeight =3391
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =17185
                    Top =3502
                    Width =1935
                    Height =375
                    FontSize =10
                    FontWeight =700
                    TabIndex =4
                    ForeColor =4210752
                    Name ="BS_AUftr_loeschen"
                    Caption ="Auftrag löschen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    Tag ="*Pruefer*"
                    GridlineColor =10921638

                    LayoutCachedLeft =17185
                    LayoutCachedTop =3502
                    LayoutCachedWidth =19120
                    LayoutCachedHeight =3877
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =17187
                    Top =10341
                    Width =1935
                    Height =375
                    FontSize =10
                    FontWeight =700
                    TabIndex =5
                    ForeColor =4210752
                    Name ="BS_Quartal_Neu"
                    Caption ="Neues Quartal"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    Tag ="*Pruefer*"
                    GridlineColor =10921638

                    LayoutCachedLeft =17187
                    LayoutCachedTop =10341
                    LayoutCachedWidth =19122
                    LayoutCachedHeight =10716
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =17187
                    Top =10842
                    Width =1935
                    Height =375
                    FontSize =10
                    FontWeight =700
                    TabIndex =6
                    ForeColor =4210752
                    Name ="BS_Quartal_Loeschen"
                    Caption ="Quartal löschen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    Tag ="*Pruefer*"
                    GridlineColor =10921638

                    LayoutCachedLeft =17187
                    LayoutCachedTop =10842
                    LayoutCachedWidth =19122
                    LayoutCachedHeight =11217
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4095
                    Top =3967
                    Width =2880
                    Height =375
                    FontSize =10
                    FontWeight =700
                    TabIndex =7
                    ForeColor =4210752
                    Name ="BS_Auftr_Liste_drucken"
                    Caption ="Auftragsliste ausdrucken..."
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =4095
                    LayoutCachedTop =3967
                    LayoutCachedWidth =6975
                    LayoutCachedHeight =4342
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =340
                    Top =3967
                    Width =3615
                    Height =375
                    FontSize =10
                    FontWeight =700
                    TabIndex =9
                    ForeColor =4210752
                    Name ="BS_Auftr_Liste_Export"
                    Caption ="Auftragsliste nach Excel exportieren"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =340
                    LayoutCachedTop =3967
                    LayoutCachedWidth =3955
                    LayoutCachedHeight =4342
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    DecimalPlaces =0
                    IMESentenceMode =3
                    Left =2760
                    Top =615
                    Width =1032
                    Height =315
                    TabIndex =8
                    BorderColor =10921638
                    Name ="TF_Filter_Jahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_10_20_Kalenderjahre.Jahr FROM tbl_10_20_Kalenderjahre WHERE (((tbl_10"
                        "_20_Kalenderjahre.Jahr)<=Year(Date())+1)) ORDER BY tbl_10_20_Kalenderjahre.Jahr;"
                        " "
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="Year(Date())"
                    Format ="0000"
                    GridlineColor =10921638

                    LayoutCachedLeft =2760
                    LayoutCachedTop =615
                    LayoutCachedWidth =3792
                    LayoutCachedHeight =930
                    ForeThemeColorIndex =0
                    ForeTint =75.0
                    ForeShade =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2070
                            Top =609
                            Width =570
                            Height =286
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld13"
                            Caption ="Jahr:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =2070
                            LayoutCachedTop =609
                            LayoutCachedWidth =2640
                            LayoutCachedHeight =895
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6293
                    Top =608
                    Width =1271
                    Height =315
                    TabIndex =10
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="TF_Filter_AuftrNr"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =6293
                    LayoutCachedTop =608
                    LayoutCachedWidth =7564
                    LayoutCachedHeight =923
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4537
                            Top =609
                            Width =1645
                            Height =286
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld17"
                            Caption ="lfd. Auftrags-Nr.:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =4537
                            LayoutCachedTop =609
                            LayoutCachedWidth =6182
                            LayoutCachedHeight =895
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7662
                    Top =586
                    Width =395
                    Height =352
                    TabIndex =11
                    ForeColor =4210752
                    Name ="BS_Filter_AUftrNr_loeschen"
                    Caption ="Befehl18"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ab3255d65a0000000000000000000000000000000000000000 ,
                        0x3255d62d3255d693000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ae3255d6f93255d6360000000000000000000000003255d62d ,
                        0x3255d6db3255d61e000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6153255d6db3255d6f03255d630000000003255d6303255d6ea ,
                        0x3255d66300000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000003255d61b3255d6c33255d6ed3255d66f3255d6ea3255d6ae ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x727272ff727272ff000000003255d6033255d6c63255d6ff3255d6de3255d60c ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x7272727e000000003255d6153255d6ab3255d6ff3255d6cf3255d6bd3255d696 ,
                        0x3255d609000000000000000000000000000000000000000000000000727272ff ,
                        0x000000003255d64e3255d6ed3255d6ff3255d6b73255d60c000000003255d645 ,
                        0x3255d6a53255d6420000000000000000000000000000000000000000727272ff ,
                        0x000000003255d6753255d6de3255d65a00000000000000000000000000000000 ,
                        0x000000003255d6270000000000000000000000000000000000000000727272ff ,
                        0x7272728100000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000007272726c727272ff ,
                        0x727272ff727272ff727272780000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000007272724e727272fc727272ff ,
                        0x727272ff727272ff727272ff7272725a00000000000000000000000000000000 ,
                        0x0000000000000000000000000000000072727236727272f6727272ff727272ff ,
                        0x727272ff727272ff727272ff727272f972727242000000000000000000000000 ,
                        0x00000000000000000000000072727224727272ea727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272f07272722d0000000000000000 ,
                        0x000000000000000000000000727272d2727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272e40000000000000000 ,
                        0x000000000000000000000000727272f0727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272ff0000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    LayoutCachedLeft =7662
                    LayoutCachedTop =586
                    LayoutCachedWidth =8057
                    LayoutCachedHeight =938
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3845
                    Top =586
                    Width =395
                    Height =352
                    TabIndex =18
                    ForeColor =4210752
                    Name ="BS_Filter_JAhr_loeschen"
                    Caption ="Befehl18"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ab3255d65a0000000000000000000000000000000000000000 ,
                        0x3255d62d3255d693000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ae3255d6f93255d6360000000000000000000000003255d62d ,
                        0x3255d6db3255d61e000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6153255d6db3255d6f03255d630000000003255d6303255d6ea ,
                        0x3255d66300000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000003255d61b3255d6c33255d6ed3255d66f3255d6ea3255d6ae ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x727272ff727272ff000000003255d6033255d6c63255d6ff3255d6de3255d60c ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x7272727e000000003255d6153255d6ab3255d6ff3255d6cf3255d6bd3255d696 ,
                        0x3255d609000000000000000000000000000000000000000000000000727272ff ,
                        0x000000003255d64e3255d6ed3255d6ff3255d6b73255d60c000000003255d645 ,
                        0x3255d6a53255d6420000000000000000000000000000000000000000727272ff ,
                        0x000000003255d6753255d6de3255d65a00000000000000000000000000000000 ,
                        0x000000003255d6270000000000000000000000000000000000000000727272ff ,
                        0x7272728100000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000007272726c727272ff ,
                        0x727272ff727272ff727272780000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000007272724e727272fc727272ff ,
                        0x727272ff727272ff727272ff7272725a00000000000000000000000000000000 ,
                        0x0000000000000000000000000000000072727236727272f6727272ff727272ff ,
                        0x727272ff727272ff727272ff727272f972727242000000000000000000000000 ,
                        0x00000000000000000000000072727224727272ea727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272f07272722d0000000000000000 ,
                        0x000000000000000000000000727272d2727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272e40000000000000000 ,
                        0x000000000000000000000000727272f0727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272ff0000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    LayoutCachedLeft =3845
                    LayoutCachedTop =586
                    LayoutCachedWidth =4240
                    LayoutCachedHeight =938
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =345
                    Top =12075
                    Width =4020
                    Height =375
                    FontSize =10
                    FontWeight =700
                    TabIndex =20
                    ForeColor =4210752
                    Name ="BS_Quartals_Pr_drucken"
                    Caption ="Quartalsprüfungen ausdrucken .."
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    Tag ="*Pruefer*"
                    GridlineColor =10921638

                    LayoutCachedLeft =345
                    LayoutCachedTop =12075
                    LayoutCachedWidth =4365
                    LayoutCachedHeight =12450
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =2
                    BackStyle =0
                    IMESentenceMode =3
                    Left =1288
                    Top =571
                    Width =707
                    Height =315
                    TabIndex =21
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text21"
                    ControlSource ="=F_Variable(\"str_Bereich\")"
                    GridlineColor =10921638

                    LayoutCachedLeft =1288
                    LayoutCachedTop =571
                    LayoutCachedWidth =1995
                    LayoutCachedHeight =886
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =340
                            Top =609
                            Width =870
                            Height =286
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld22"
                            Caption ="Bereich:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =340
                            LayoutCachedTop =609
                            LayoutCachedWidth =1210
                            LayoutCachedHeight =895
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    DecimalPlaces =0
                    IMESentenceMode =3
                    Left =14736
                    Top =131
                    Width =1689
                    Height =315
                    TabIndex =14
                    BorderColor =10921638
                    Name ="TF_Filter_Bearbeiter"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_10_10_User.Username FROM tbl_10_10_User WHERE (((tbl_10_10_User.nur_l"
                        "esen)<>True) AND ((tbl_10_10_User.ausgeschieden) Is Null Or (tbl_10_10_User.ausg"
                        "eschieden)>DateAdd(\"yyyy\",-2,Date()))) ORDER BY tbl_10_10_User.Username; "
                    AfterUpdate ="[Event Procedure]"
                    Format ="0000"
                    GridlineColor =10921638

                    LayoutCachedLeft =14736
                    LayoutCachedTop =131
                    LayoutCachedWidth =16425
                    LayoutCachedHeight =446
                    ForeThemeColorIndex =0
                    ForeTint =75.0
                    ForeShade =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =12920
                            Top =131
                            Width =1713
                            Height =286
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld24"
                            Caption ="Sachbearbeiter:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =12920
                            LayoutCachedTop =131
                            LayoutCachedWidth =14633
                            LayoutCachedHeight =417
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =16549
                    Top =109
                    Width =395
                    Height =352
                    TabIndex =15
                    ForeColor =4210752
                    Name ="BS_Filter_BEarbeiter_loeschen"
                    Caption ="Befehl18"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ab3255d65a0000000000000000000000000000000000000000 ,
                        0x3255d62d3255d693000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ae3255d6f93255d6360000000000000000000000003255d62d ,
                        0x3255d6db3255d61e000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6153255d6db3255d6f03255d630000000003255d6303255d6ea ,
                        0x3255d66300000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000003255d61b3255d6c33255d6ed3255d66f3255d6ea3255d6ae ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x727272ff727272ff000000003255d6033255d6c63255d6ff3255d6de3255d60c ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x7272727e000000003255d6153255d6ab3255d6ff3255d6cf3255d6bd3255d696 ,
                        0x3255d609000000000000000000000000000000000000000000000000727272ff ,
                        0x000000003255d64e3255d6ed3255d6ff3255d6b73255d60c000000003255d645 ,
                        0x3255d6a53255d6420000000000000000000000000000000000000000727272ff ,
                        0x000000003255d6753255d6de3255d65a00000000000000000000000000000000 ,
                        0x000000003255d6270000000000000000000000000000000000000000727272ff ,
                        0x7272728100000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000007272726c727272ff ,
                        0x727272ff727272ff727272780000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000007272724e727272fc727272ff ,
                        0x727272ff727272ff727272ff7272725a00000000000000000000000000000000 ,
                        0x0000000000000000000000000000000072727236727272f6727272ff727272ff ,
                        0x727272ff727272ff727272ff727272f972727242000000000000000000000000 ,
                        0x00000000000000000000000072727224727272ea727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272f07272722d0000000000000000 ,
                        0x000000000000000000000000727272d2727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272e40000000000000000 ,
                        0x000000000000000000000000727272f0727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272ff0000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    LayoutCachedLeft =16549
                    LayoutCachedTop =109
                    LayoutCachedWidth =16944
                    LayoutCachedHeight =461
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10436
                    Top =608
                    Width =1689
                    Height =315
                    TabIndex =12
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="TF_Filter_BSNr_Infoma"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =10436
                    LayoutCachedTop =608
                    LayoutCachedWidth =12125
                    LayoutCachedHeight =923
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =8455
                            Top =609
                            Width =1866
                            Height =284
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld27"
                            Caption ="Bestell-Nr. Infoma:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =8455
                            LayoutCachedTop =609
                            LayoutCachedWidth =10321
                            LayoutCachedHeight =893
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =12248
                    Top =586
                    Width =395
                    Height =352
                    TabIndex =13
                    ForeColor =4210752
                    Name ="BS_Filter_INfomaNr_loeschen"
                    Caption ="Befehl18"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ab3255d65a0000000000000000000000000000000000000000 ,
                        0x3255d62d3255d693000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ae3255d6f93255d6360000000000000000000000003255d62d ,
                        0x3255d6db3255d61e000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6153255d6db3255d6f03255d630000000003255d6303255d6ea ,
                        0x3255d66300000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000003255d61b3255d6c33255d6ed3255d66f3255d6ea3255d6ae ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x727272ff727272ff000000003255d6033255d6c63255d6ff3255d6de3255d60c ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x7272727e000000003255d6153255d6ab3255d6ff3255d6cf3255d6bd3255d696 ,
                        0x3255d609000000000000000000000000000000000000000000000000727272ff ,
                        0x000000003255d64e3255d6ed3255d6ff3255d6b73255d60c000000003255d645 ,
                        0x3255d6a53255d6420000000000000000000000000000000000000000727272ff ,
                        0x000000003255d6753255d6de3255d65a00000000000000000000000000000000 ,
                        0x000000003255d6270000000000000000000000000000000000000000727272ff ,
                        0x7272728100000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000007272726c727272ff ,
                        0x727272ff727272ff727272780000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000007272724e727272fc727272ff ,
                        0x727272ff727272ff727272ff7272725a00000000000000000000000000000000 ,
                        0x0000000000000000000000000000000072727236727272f6727272ff727272ff ,
                        0x727272ff727272ff727272ff727272f972727242000000000000000000000000 ,
                        0x00000000000000000000000072727224727272ea727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272f07272722d0000000000000000 ,
                        0x000000000000000000000000727272d2727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272e40000000000000000 ,
                        0x000000000000000000000000727272f0727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272ff0000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    LayoutCachedLeft =12248
                    LayoutCachedTop =586
                    LayoutCachedWidth =12643
                    LayoutCachedHeight =938
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    BorderWidth =3
                    OverlapFlags =85
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =15134
                    Top =3967
                    Width =1700
                    Height =315
                    FontWeight =700
                    TabIndex =22
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text29"
                    ControlSource ="=IIf([LF_Auftraege].[ListCount]=0,0,[LF_Auftraege].[ListCount]-1)"
                    Format ="#,##0\" Aufträge\""
                    GridlineColor =10921638

                    LayoutCachedLeft =15134
                    LayoutCachedTop =3967
                    LayoutCachedWidth =16834
                    LayoutCachedHeight =4282
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7662
                    Top =1005
                    Width =395
                    Height =352
                    TabIndex =17
                    ForeColor =4210752
                    Name ="BS_Filter_Firma_loeschen"
                    Caption ="Befehl18"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ab3255d65a0000000000000000000000000000000000000000 ,
                        0x3255d62d3255d693000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ae3255d6f93255d6360000000000000000000000003255d62d ,
                        0x3255d6db3255d61e000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6153255d6db3255d6f03255d630000000003255d6303255d6ea ,
                        0x3255d66300000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000003255d61b3255d6c33255d6ed3255d66f3255d6ea3255d6ae ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x727272ff727272ff000000003255d6033255d6c63255d6ff3255d6de3255d60c ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x7272727e000000003255d6153255d6ab3255d6ff3255d6cf3255d6bd3255d696 ,
                        0x3255d609000000000000000000000000000000000000000000000000727272ff ,
                        0x000000003255d64e3255d6ed3255d6ff3255d6b73255d60c000000003255d645 ,
                        0x3255d6a53255d6420000000000000000000000000000000000000000727272ff ,
                        0x000000003255d6753255d6de3255d65a00000000000000000000000000000000 ,
                        0x000000003255d6270000000000000000000000000000000000000000727272ff ,
                        0x7272728100000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000007272726c727272ff ,
                        0x727272ff727272ff727272780000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000007272724e727272fc727272ff ,
                        0x727272ff727272ff727272ff7272725a00000000000000000000000000000000 ,
                        0x0000000000000000000000000000000072727236727272f6727272ff727272ff ,
                        0x727272ff727272ff727272ff727272f972727242000000000000000000000000 ,
                        0x00000000000000000000000072727224727272ea727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272f07272722d0000000000000000 ,
                        0x000000000000000000000000727272d2727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272e40000000000000000 ,
                        0x000000000000000000000000727272f0727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272ff0000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    LayoutCachedLeft =7662
                    LayoutCachedTop =1005
                    LayoutCachedWidth =8057
                    LayoutCachedHeight =1357
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =5850
                    Top =1042
                    Width =1703
                    Height =315
                    TabIndex =16
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="TF_Filter_Firma"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =5850
                    LayoutCachedTop =1042
                    LayoutCachedWidth =7553
                    LayoutCachedHeight =1357
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =4544
                            Top =1043
                            Width =1186
                            Height =299
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld32"
                            Caption ="Firma :"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =4544
                            LayoutCachedTop =1043
                            LayoutCachedWidth =5730
                            LayoutCachedHeight =1342
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =12253
                    Top =1005
                    Width =395
                    Height =352
                    TabIndex =23
                    ForeColor =4210752
                    Name ="BS_Filter_Ort_loeschen"
                    Caption ="Befehl18"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ab3255d65a0000000000000000000000000000000000000000 ,
                        0x3255d62d3255d693000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ae3255d6f93255d6360000000000000000000000003255d62d ,
                        0x3255d6db3255d61e000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6153255d6db3255d6f03255d630000000003255d6303255d6ea ,
                        0x3255d66300000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000003255d61b3255d6c33255d6ed3255d66f3255d6ea3255d6ae ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x727272ff727272ff000000003255d6033255d6c63255d6ff3255d6de3255d60c ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x7272727e000000003255d6153255d6ab3255d6ff3255d6cf3255d6bd3255d696 ,
                        0x3255d609000000000000000000000000000000000000000000000000727272ff ,
                        0x000000003255d64e3255d6ed3255d6ff3255d6b73255d60c000000003255d645 ,
                        0x3255d6a53255d6420000000000000000000000000000000000000000727272ff ,
                        0x000000003255d6753255d6de3255d65a00000000000000000000000000000000 ,
                        0x000000003255d6270000000000000000000000000000000000000000727272ff ,
                        0x7272728100000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000007272726c727272ff ,
                        0x727272ff727272ff727272780000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000007272724e727272fc727272ff ,
                        0x727272ff727272ff727272ff7272725a00000000000000000000000000000000 ,
                        0x0000000000000000000000000000000072727236727272f6727272ff727272ff ,
                        0x727272ff727272ff727272ff727272f972727242000000000000000000000000 ,
                        0x00000000000000000000000072727224727272ea727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272f07272722d0000000000000000 ,
                        0x000000000000000000000000727272d2727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272e40000000000000000 ,
                        0x000000000000000000000000727272f0727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272ff0000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    LayoutCachedLeft =12253
                    LayoutCachedTop =1005
                    LayoutCachedWidth =12648
                    LayoutCachedHeight =1357
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =10436
                    Top =1043
                    Width =1689
                    Height =315
                    TabIndex =24
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="TF_Filter_Ort"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =10436
                    LayoutCachedTop =1043
                    LayoutCachedWidth =12125
                    LayoutCachedHeight =1358
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =8456
                            Top =1044
                            Width =1865
                            Height =285
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld36"
                            Caption ="Leistungsort :"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =8456
                            LayoutCachedTop =1044
                            LayoutCachedWidth =10321
                            LayoutCachedHeight =1329
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =16548
                    Top =1009
                    Width =395
                    Height =352
                    TabIndex =25
                    ForeColor =4210752
                    Name ="BS_Filter_ProdBez_loeschen"
                    Caption ="Befehl18"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ab3255d65a0000000000000000000000000000000000000000 ,
                        0x3255d62d3255d693000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ae3255d6f93255d6360000000000000000000000003255d62d ,
                        0x3255d6db3255d61e000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6153255d6db3255d6f03255d630000000003255d6303255d6ea ,
                        0x3255d66300000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000003255d61b3255d6c33255d6ed3255d66f3255d6ea3255d6ae ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x727272ff727272ff000000003255d6033255d6c63255d6ff3255d6de3255d60c ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x7272727e000000003255d6153255d6ab3255d6ff3255d6cf3255d6bd3255d696 ,
                        0x3255d609000000000000000000000000000000000000000000000000727272ff ,
                        0x000000003255d64e3255d6ed3255d6ff3255d6b73255d60c000000003255d645 ,
                        0x3255d6a53255d6420000000000000000000000000000000000000000727272ff ,
                        0x000000003255d6753255d6de3255d65a00000000000000000000000000000000 ,
                        0x000000003255d6270000000000000000000000000000000000000000727272ff ,
                        0x7272728100000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000007272726c727272ff ,
                        0x727272ff727272ff727272780000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000007272724e727272fc727272ff ,
                        0x727272ff727272ff727272ff7272725a00000000000000000000000000000000 ,
                        0x0000000000000000000000000000000072727236727272f6727272ff727272ff ,
                        0x727272ff727272ff727272ff727272f972727242000000000000000000000000 ,
                        0x00000000000000000000000072727224727272ea727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272f07272722d0000000000000000 ,
                        0x000000000000000000000000727272d2727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272e40000000000000000 ,
                        0x000000000000000000000000727272f0727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272ff0000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    LayoutCachedLeft =16548
                    LayoutCachedTop =1009
                    LayoutCachedWidth =16943
                    LayoutCachedHeight =1361
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =14736
                    Top =1043
                    Width =1689
                    Height =315
                    TabIndex =26
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="TF_Filter_ProdBez"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =14736
                    LayoutCachedTop =1043
                    LayoutCachedWidth =16425
                    LayoutCachedHeight =1358
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =12920
                            Top =1044
                            Width =1698
                            Height =285
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld39"
                            Caption ="Produktbez. :"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =12920
                            LayoutCachedTop =1044
                            LayoutCachedWidth =14618
                            LayoutCachedHeight =1329
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =17918
                    Top =1009
                    Width =395
                    Height =352
                    TabIndex =27
                    ForeColor =4210752
                    Name ="BS_AlleFilter_Loeschen"
                    Caption ="Befehl18"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ab3255d65a0000000000000000000000000000000000000000 ,
                        0x3255d62d3255d693000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ae3255d6f93255d6360000000000000000000000003255d62d ,
                        0x3255d6db3255d61e000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6153255d6db3255d6f03255d630000000003255d6303255d6ea ,
                        0x3255d66300000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000003255d61b3255d6c33255d6ed3255d66f3255d6ea3255d6ae ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x727272ff727272ff000000003255d6033255d6c63255d6ff3255d6de3255d60c ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x7272727e000000003255d6153255d6ab3255d6ff3255d6cf3255d6bd3255d696 ,
                        0x3255d609000000000000000000000000000000000000000000000000727272ff ,
                        0x000000003255d64e3255d6ed3255d6ff3255d6b73255d60c000000003255d645 ,
                        0x3255d6a53255d6420000000000000000000000000000000000000000727272ff ,
                        0x000000003255d6753255d6de3255d65a00000000000000000000000000000000 ,
                        0x000000003255d6270000000000000000000000000000000000000000727272ff ,
                        0x7272728100000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000007272726c727272ff ,
                        0x727272ff727272ff727272780000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000007272724e727272fc727272ff ,
                        0x727272ff727272ff727272ff7272725a00000000000000000000000000000000 ,
                        0x0000000000000000000000000000000072727236727272f6727272ff727272ff ,
                        0x727272ff727272ff727272ff727272f972727242000000000000000000000000 ,
                        0x00000000000000000000000072727224727272ea727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272f07272722d0000000000000000 ,
                        0x000000000000000000000000727272d2727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272e40000000000000000 ,
                        0x000000000000000000000000727272f0727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272ff0000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    LayoutCachedLeft =17918
                    LayoutCachedTop =1009
                    LayoutCachedWidth =18313
                    LayoutCachedHeight =1361
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =17295
                            Top =608
                            Width =1800
                            Height =285
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld41"
                            Caption ="Alle Filter löschen"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =17295
                            LayoutCachedTop =608
                            LayoutCachedWidth =19095
                            LayoutCachedHeight =893
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =16549
                    Top =586
                    Width =395
                    Height =352
                    TabIndex =28
                    ForeColor =4210752
                    Name ="BS_Filter_MeldNrInfoma_loeschen"
                    Caption ="Befehl18"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ab3255d65a0000000000000000000000000000000000000000 ,
                        0x3255d62d3255d693000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ae3255d6f93255d6360000000000000000000000003255d62d ,
                        0x3255d6db3255d61e000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6153255d6db3255d6f03255d630000000003255d6303255d6ea ,
                        0x3255d66300000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000003255d61b3255d6c33255d6ed3255d66f3255d6ea3255d6ae ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x727272ff727272ff000000003255d6033255d6c63255d6ff3255d6de3255d60c ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x7272727e000000003255d6153255d6ab3255d6ff3255d6cf3255d6bd3255d696 ,
                        0x3255d609000000000000000000000000000000000000000000000000727272ff ,
                        0x000000003255d64e3255d6ed3255d6ff3255d6b73255d60c000000003255d645 ,
                        0x3255d6a53255d6420000000000000000000000000000000000000000727272ff ,
                        0x000000003255d6753255d6de3255d65a00000000000000000000000000000000 ,
                        0x000000003255d6270000000000000000000000000000000000000000727272ff ,
                        0x7272728100000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000007272726c727272ff ,
                        0x727272ff727272ff727272780000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000007272724e727272fc727272ff ,
                        0x727272ff727272ff727272ff7272725a00000000000000000000000000000000 ,
                        0x0000000000000000000000000000000072727236727272f6727272ff727272ff ,
                        0x727272ff727272ff727272ff727272f972727242000000000000000000000000 ,
                        0x00000000000000000000000072727224727272ea727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272f07272722d0000000000000000 ,
                        0x000000000000000000000000727272d2727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272e40000000000000000 ,
                        0x000000000000000000000000727272f0727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272ff0000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    LayoutCachedLeft =16549
                    LayoutCachedTop =586
                    LayoutCachedWidth =16944
                    LayoutCachedHeight =938
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =14736
                    Top =608
                    Width =1689
                    Height =315
                    TabIndex =29
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="TF_Filter_MeldNrInfoma"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =14736
                    LayoutCachedTop =608
                    LayoutCachedWidth =16425
                    LayoutCachedHeight =923
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =12920
                            Top =608
                            Width =1699
                            Height =284
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld46"
                            Caption ="Meld-Nr. Infoma:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =12920
                            LayoutCachedTop =608
                            LayoutCachedWidth =14619
                            LayoutCachedHeight =892
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =17185
                    Top =5272
                    Width =1935
                    Height =690
                    FontSize =10
                    FontWeight =700
                    TabIndex =30
                    ForeColor =4210752
                    Name ="BS_Firmenliste"
                    Caption ="Firmenliste\015\012pflegen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    Tag ="*Pruefer*"
                    GridlineColor =10921638

                    LayoutCachedLeft =17185
                    LayoutCachedTop =5272
                    LayoutCachedWidth =19120
                    LayoutCachedHeight =5962
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =11393
                    Top =3967
                    Width =3172
                    Height =375
                    FontSize =10
                    FontWeight =700
                    TabIndex =31
                    ForeColor =4210752
                    Name ="BS_ZVS_Ausw_drucken"
                    Caption ="ZVS-Auswertung ausdrucken .."
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    Tag ="*Pruefer*"
                    GridlineColor =10921638

                    LayoutCachedLeft =11393
                    LayoutCachedTop =3967
                    LayoutCachedWidth =14565
                    LayoutCachedHeight =4342
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7200
                    Top =3967
                    Width =4005
                    Height =375
                    FontSize =10
                    FontWeight =700
                    TabIndex =32
                    ForeColor =4210752
                    Name ="BS_ZVS_Ausw_Export"
                    Caption ="ZVS-Auswertung nach Excel exportieren"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    Tag ="*Pruefer*"
                    GridlineColor =10921638

                    LayoutCachedLeft =7200
                    LayoutCachedTop =3967
                    LayoutCachedWidth =11205
                    LayoutCachedHeight =4342
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10426
                    Top =131
                    Width =1689
                    Height =315
                    TabIndex =33
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="TF_Filter_VergN_VIS"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =10426
                    LayoutCachedTop =131
                    LayoutCachedWidth =12115
                    LayoutCachedHeight =446
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =8445
                            Top =131
                            Width =1866
                            Height =284
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld53"
                            Caption ="Vergabe-Nr. VIS:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =8445
                            LayoutCachedTop =131
                            LayoutCachedWidth =10311
                            LayoutCachedHeight =415
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =12248
                    Top =131
                    Width =395
                    Height =352
                    TabIndex =34
                    ForeColor =4210752
                    Name ="BS_Filter_VergN_VIS_loeschen"
                    Caption ="Befehl18"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ab3255d65a0000000000000000000000000000000000000000 ,
                        0x3255d62d3255d693000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6ae3255d6f93255d6360000000000000000000000003255d62d ,
                        0x3255d6db3255d61e000000000000000000000000000000000000000000000000 ,
                        0x000000003255d6153255d6db3255d6f03255d630000000003255d6303255d6ea ,
                        0x3255d66300000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000003255d61b3255d6c33255d6ed3255d66f3255d6ea3255d6ae ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x727272ff727272ff000000003255d6033255d6c63255d6ff3255d6de3255d60c ,
                        0x00000000000000000000000000000000000000000000000000000000727272ff ,
                        0x7272727e000000003255d6153255d6ab3255d6ff3255d6cf3255d6bd3255d696 ,
                        0x3255d609000000000000000000000000000000000000000000000000727272ff ,
                        0x000000003255d64e3255d6ed3255d6ff3255d6b73255d60c000000003255d645 ,
                        0x3255d6a53255d6420000000000000000000000000000000000000000727272ff ,
                        0x000000003255d6753255d6de3255d65a00000000000000000000000000000000 ,
                        0x000000003255d6270000000000000000000000000000000000000000727272ff ,
                        0x7272728100000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000007272726c727272ff ,
                        0x727272ff727272ff727272780000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000007272724e727272fc727272ff ,
                        0x727272ff727272ff727272ff7272725a00000000000000000000000000000000 ,
                        0x0000000000000000000000000000000072727236727272f6727272ff727272ff ,
                        0x727272ff727272ff727272ff727272f972727242000000000000000000000000 ,
                        0x00000000000000000000000072727224727272ea727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272f07272722d0000000000000000 ,
                        0x000000000000000000000000727272d2727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272e40000000000000000 ,
                        0x000000000000000000000000727272f0727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272ff0000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    LayoutCachedLeft =12248
                    LayoutCachedTop =131
                    LayoutCachedWidth =12643
                    LayoutCachedHeight =483
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =17185
                    Top =9070
                    Width =1935
                    Height =690
                    FontSize =10
                    FontWeight =700
                    TabIndex =35
                    ForeColor =4210752
                    Name ="bRE"
                    Caption ="Rechnung eingeben"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =17185
                    LayoutCachedTop =9070
                    LayoutCachedWidth =19120
                    LayoutCachedHeight =9760
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Overlaps =1
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =4081
                    Top =1077
                    Width =284
                    Height =284
                    TabIndex =36
                    BorderColor =10921638
                    Name ="TF_Filter_Offene"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =4081
                    LayoutCachedTop =1077
                    LayoutCachedWidth =4365
                    LayoutCachedHeight =1361
                End
                Begin Label
                    OverlapFlags =85
                    Left =1928
                    Top =1043
                    Width =2048
                    Height =299
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld56"
                    Caption ="Nur offene Aufträge:"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =1928
                    LayoutCachedTop =1043
                    LayoutCachedWidth =3976
                    LayoutCachedHeight =1342
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =17185
                    Top =7993
                    Width =1935
                    Height =690
                    FontSize =10
                    FontWeight =700
                    TabIndex =37
                    ForeColor =4210752
                    Name ="bAufDok"
                    Caption ="Auftrags-dokumente"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =17185
                    LayoutCachedTop =7993
                    LayoutCachedWidth =19120
                    LayoutCachedHeight =8683
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_10_10_Startformular.cls"
