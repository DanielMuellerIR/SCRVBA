Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =20842
    DatasheetFontHeight =11
    ItemSuffix =41
    Left =9428
    Top =7508
    Right =30270
    Bottom =16290
    RecSrcDt = Begin
        0x52de03636fb8e540
    End
    RecordSource ="tbl_20_10_Aufträge"
    Caption ="Dokumente"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    OnLoad ="[Event Procedure]"
    AllowDatasheetView =0
    FilterOnLoad =0
    OrderByOnLoad =0
    OrderByOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
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
            ThemeFontIndex =1
            ForeTint =75.0
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
        Begin FormHeader
            Height =0
            Name ="Formularkopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
        End
        Begin Section
            CanGrow = NotDefault
            Height =8789
            Name ="Detailbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =3
            Begin
                Begin Label
                    OldBorderStyle =1
                    OverlapFlags =93
                    TextAlign =2
                    Left =12760
                    Top =747
                    Width =6970
                    Height =1009
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =4210752
                    Name ="Bezeichnungsfeld35"
                    Caption ="Dokumente"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =12760
                    LayoutCachedTop =747
                    LayoutCachedWidth =19730
                    LayoutCachedHeight =1756
                    ThemeFontIndex =-1
                    ForeTint =75.0
                End
                Begin TextBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    BackStyle =0
                    IMESentenceMode =3
                    Left =2376
                    Top =965
                    Width =1382
                    Height =302
                    ColumnWidth =1382
                    TabIndex =2
                    Name ="Auftragsnr"
                    ControlSource ="Auftragsnr"

                    LayoutCachedLeft =2376
                    LayoutCachedTop =965
                    LayoutCachedWidth =3758
                    LayoutCachedHeight =1267
                    BackThemeColorIndex =1
                    BorderThemeColorIndex =1
                    ForeThemeColorIndex =0
                    GridlineThemeColorIndex =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =340
                            Top =969
                            Width =1135
                            Height =302
                            BorderColor =8355711
                            Name ="Auftragsnr_Bezeichnungsfeld"
                            Caption ="AuftragsNr."
                            GridlineColor =10921638
                            LayoutCachedLeft =340
                            LayoutCachedTop =969
                            LayoutCachedWidth =1475
                            LayoutCachedHeight =1271
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    BackStyle =0
                    IMESentenceMode =3
                    Left =2382
                    Top =1372
                    Width =5666
                    Height =347
                    ColumnWidth =3000
                    TabIndex =3
                    Name ="Produktbezeichnung"
                    ControlSource ="Produktbezeichnung"

                    LayoutCachedLeft =2382
                    LayoutCachedTop =1372
                    LayoutCachedWidth =8048
                    LayoutCachedHeight =1719
                    BackThemeColorIndex =1
                    BorderThemeColorIndex =1
                    ForeThemeColorIndex =0
                    GridlineThemeColorIndex =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =340
                            Top =1372
                            Width =1975
                            Height =302
                            BorderColor =8355711
                            Name ="Produktbezeichnung_Bezeichnungsfeld"
                            Caption ="Produktbezeichnung"
                            GridlineColor =10921638
                            LayoutCachedLeft =340
                            LayoutCachedTop =1372
                            LayoutCachedWidth =2315
                            LayoutCachedHeight =1674
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =16669
                    Top =8042
                    Width =3073
                    Height =435
                    FontSize =10
                    FontWeight =700
                    ForeColor =4210752
                    Name ="bSchliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =16669
                    LayoutCachedTop =8042
                    LayoutCachedWidth =19742
                    LayoutCachedHeight =8477
                    BackColor =15123357
                    BorderColor =15123357
                    ThemeFontIndex =-1
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =340
                    Top =54
                    Width =3623
                    Height =360
                    FontSize =14
                    FontWeight =700
                    BackColor =0
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld9"
                    Caption ="Dokumente zum Auftrag"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =340
                    LayoutCachedTop =54
                    LayoutCachedWidth =3963
                    LayoutCachedHeight =414
                    ThemeFontIndex =-1
                    BackThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =215
                    Left =13042
                    Top =1182
                    Width =1985
                    Height =435
                    FontSize =10
                    FontWeight =700
                    TabIndex =6
                    ForeColor =4210752
                    Name ="bDok_Hinzu"
                    Caption ="Hinzufügen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =13042
                    LayoutCachedTop =1182
                    LayoutCachedWidth =15027
                    LayoutCachedHeight =1617
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
                    TabStop = NotDefault
                    OverlapFlags =215
                    Left =15256
                    Top =1182
                    Width =1985
                    Height =435
                    FontSize =10
                    FontWeight =700
                    TabIndex =4
                    ForeColor =4210752
                    Name ="bDokOeffnen"
                    Caption ="Öffnen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =15256
                    LayoutCachedTop =1182
                    LayoutCachedWidth =17241
                    LayoutCachedHeight =1617
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
                    TabStop = NotDefault
                    OverlapFlags =215
                    Left =17457
                    Top =1182
                    Width =1985
                    Height =435
                    FontSize =10
                    FontWeight =700
                    TabIndex =5
                    ForeColor =4210752
                    Name ="bDok_Loeschen"
                    Caption ="Löschen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =17457
                    LayoutCachedTop =1182
                    LayoutCachedWidth =19442
                    LayoutCachedHeight =1617
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
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =4021
                    Top =109
                    Width =1382
                    Height =302
                    TabIndex =7
                    Name ="AuftragID"

                    LayoutCachedLeft =4021
                    LayoutCachedTop =109
                    LayoutCachedWidth =5403
                    LayoutCachedHeight =411
                    BackThemeColorIndex =7
                    BackTint =60.0
                    BorderThemeColorIndex =1
                    ForeThemeColorIndex =0
                    GridlineThemeColorIndex =1
                End
                Begin TextBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    BackStyle =0
                    IMESentenceMode =3
                    Left =4986
                    Top =965
                    Width =3055
                    Height =302
                    TabIndex =1
                    Name ="tFirma"
                    StatusBarText ="Fremdschlüssfeld zur beauftragten Firma"

                    LayoutCachedLeft =4986
                    LayoutCachedTop =965
                    LayoutCachedWidth =8041
                    LayoutCachedHeight =1267
                    BackThemeColorIndex =1
                    BorderThemeColorIndex =1
                    ForeThemeColorIndex =2
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineThemeColorIndex =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4191
                            Top =965
                            Width =632
                            Height =302
                            BorderColor =8355711
                            Name ="ID_Fa_Bezeichnungsfeld"
                            Caption ="Firma"
                            GridlineColor =10921638
                            LayoutCachedLeft =4191
                            LayoutCachedTop =965
                            LayoutCachedWidth =4823
                            LayoutCachedHeight =1267
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =0
                    IMESentenceMode =3
                    Left =2380
                    Top =516
                    Width =5666
                    Height =347
                    TabIndex =8
                    Name ="tLeistungsort"

                    LayoutCachedLeft =2380
                    LayoutCachedTop =516
                    LayoutCachedWidth =8046
                    LayoutCachedHeight =863
                    BackThemeColorIndex =1
                    BorderThemeColorIndex =1
                    ForeThemeColorIndex =0
                    GridlineThemeColorIndex =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =340
                            Top =516
                            Width =1975
                            Height =302
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld32"
                            Caption ="Leistungsort"
                            GridlineColor =10921638
                            LayoutCachedLeft =340
                            LayoutCachedTop =516
                            LayoutCachedWidth =2315
                            LayoutCachedHeight =818
                            ForeTint =100.0
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =85
                    Left =340
                    Top =1930
                    Width =19448
                    Height =5730
                    TabIndex =9
                    BorderColor =10921638
                    Name ="frm_50_10_AuftrDok_Unterformular"
                    SourceObject ="Form.frm_50_10_AuftrDok_Unterformular"
                    LinkChildFields ="ID_Auftrag"
                    LinkMasterFields ="ID_Auftrag"
                    GridlineColor =10921638

                    LayoutCachedLeft =340
                    LayoutCachedTop =1930
                    LayoutCachedWidth =19788
                    LayoutCachedHeight =7660
                End
            End
        End
        Begin FormFooter
            Height =0
            Name ="Formularfuß"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End
CodeBehindForm
' See "frm_20_50_Auftrag_Dokumente.cls"
