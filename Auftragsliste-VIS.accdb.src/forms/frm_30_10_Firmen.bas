Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =13492
    DatasheetFontHeight =11
    ItemSuffix =54
    Left =17565
    Top =2753
    Right =32280
    Bottom =12608
    RecSrcDt = Begin
        0x9d003a057044e540
    End
    Caption ="Firmenliste .."
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    OnLoad ="[Event Procedure]"
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
        Begin Line
            BorderLineStyle =0
            Width =1701
            BorderThemeColorIndex =0
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
            Height =8957
            Name ="Detailbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =3
            Begin
                Begin Line
                    BorderWidth =3
                    OverlapFlags =93
                    Left =1303
                    Top =3401
                    Width =0
                    Height =1304
                    BorderColor =1643706
                    Name ="Linie51"
                    GridlineColor =10921638
                    LayoutCachedLeft =1303
                    LayoutCachedTop =3401
                    LayoutCachedWidth =1303
                    LayoutCachedHeight =4705
                    BorderThemeColorIndex =-1
                End
                Begin ListBox
                    ColumnHeads = NotDefault
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =4
                    Left =340
                    Top =1448
                    Width =12754
                    Height =2446
                    TabIndex =3
                    BorderColor =1643706
                    Name ="LF_Firmen"
                    RowSourceType ="Table/Query"
                    RowSource ="qry_10_10_Firmen"
                    ColumnWidths ="0;6237;;3402"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =340
                    LayoutCachedTop =1448
                    LayoutCachedWidth =13094
                    LayoutCachedHeight =3894
                    ThemeFontIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =340
                            Top =1133
                            Width =1260
                            Height =315
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld1"
                            Caption ="Firmenliste"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =340
                            LayoutCachedTop =1133
                            LayoutCachedWidth =1600
                            LayoutCachedHeight =1448
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =370
                    Top =54
                    Width =1785
                    Height =360
                    FontSize =14
                    FontWeight =700
                    BackColor =0
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld9"
                    Caption ="Firmenliste .."
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =370
                    LayoutCachedTop =54
                    LayoutCachedWidth =2155
                    LayoutCachedHeight =414
                    ThemeFontIndex =-1
                    BackThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =11060
                    Top =7995
                    Width =1935
                    Height =435
                    FontSize =10
                    FontWeight =700
                    ForeColor =4210752
                    Name ="BS_Schließen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =11060
                    LayoutCachedTop =7995
                    LayoutCachedWidth =12995
                    LayoutCachedHeight =8430
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
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
                    Left =11395
                    Top =4025
                    Width =1700
                    Height =315
                    FontWeight =700
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text29"
                    ControlSource ="=IIf([LF_Firmen].[ListCount]=0,0,[LF_Firmen].[ListCount]-1)"
                    Format ="#,##0\" Firmen\""
                    GridlineColor =10921638

                    LayoutCachedLeft =11395
                    LayoutCachedTop =4025
                    LayoutCachedWidth =13095
                    LayoutCachedHeight =4340
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3629
                    Top =165
                    Width =395
                    Height =352
                    TabIndex =2
                    ForeColor =4210752
                    Name ="BS_Filter_Firma_loeschen"
                    Caption ="Befehl18"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Firmen-Filter löschen"
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

                    LayoutCachedLeft =3629
                    LayoutCachedTop =165
                    LayoutCachedWidth =4024
                    LayoutCachedHeight =517
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3631
                    Top =617
                    Width =3969
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="TF_Filter_Firma"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =3631
                    LayoutCachedTop =617
                    LayoutCachedWidth =7600
                    LayoutCachedHeight =932
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =2325
                            Top =617
                            Width =1186
                            Height =285
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld32"
                            Caption ="Firma :"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =2325
                            LayoutCachedTop =617
                            LayoutCachedWidth =3511
                            LayoutCachedHeight =902
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =12698
                    Top =1020
                    Width =395
                    Height =352
                    TabIndex =5
                    ForeColor =4210752
                    Name ="BS_AlleFilter_Loeschen"
                    Caption ="Befehl18"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Alle Filter löschen"
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

                    LayoutCachedLeft =12698
                    LayoutCachedTop =1020
                    LayoutCachedWidth =13093
                    LayoutCachedHeight =1372
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =10544
                            Top =1020
                            Width =1800
                            Height =285
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld41"
                            Caption ="Alle Filter löschen"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =10544
                            LayoutCachedTop =1020
                            LayoutCachedWidth =12344
                            LayoutCachedHeight =1305
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =215
                    Left =345
                    Top =4650
                    Width =10050
                    Height =3690
                    TabIndex =6
                    BorderColor =1643706
                    Name ="UF_Firma"
                    SourceObject ="Form.frm_30_20_Firme_Einzel_DS"
                    GridlineColor =10921638

                    LayoutCachedLeft =345
                    LayoutCachedTop =4650
                    LayoutCachedWidth =10395
                    LayoutCachedHeight =8340
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =9122
                    Top =617
                    Width =3969
                    Height =315
                    TabIndex =7
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="TF_Filter_Strasse"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =9122
                    LayoutCachedTop =617
                    LayoutCachedWidth =13091
                    LayoutCachedHeight =932
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =7816
                            Top =617
                            Width =1186
                            Height =285
                            FontSize =10
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld49"
                            Caption ="Straße:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =7816
                            LayoutCachedTop =617
                            LayoutCachedWidth =9002
                            LayoutCachedHeight =902
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9122
                    Top =165
                    Width =395
                    Height =352
                    TabIndex =8
                    ForeColor =4210752
                    Name ="BS_Filter_Strasse_loeschen"
                    Caption ="Befehl18"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Straßenfilter löschen"
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

                    LayoutCachedLeft =9122
                    LayoutCachedTop =165
                    LayoutCachedWidth =9517
                    LayoutCachedHeight =517
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5730
                    Top =4035
                    Width =1935
                    Height =435
                    FontSize =10
                    FontWeight =700
                    TabIndex =9
                    ForeColor =4210752
                    Name ="BS_Fa_Neu"
                    Caption ="Neue Fa."
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =5730
                    LayoutCachedTop =4035
                    LayoutCachedWidth =7665
                    LayoutCachedHeight =4470
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7785
                    Top =4035
                    Width =2610
                    Height =435
                    FontSize =10
                    FontWeight =700
                    TabIndex =10
                    ForeColor =4210752
                    Name ="BS_Fa_Loeschen"
                    Caption ="markierte Fa. löschen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =7785
                    LayoutCachedTop =4035
                    LayoutCachedWidth =10395
                    LayoutCachedHeight =4470
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
' See "frm_30_10_Firmen.cls"
