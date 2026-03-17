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
    Width =19899
    DatasheetFontHeight =11
    ItemSuffix =39
    Left =405
    Top =825
    Right =20295
    Bottom =9600
    RecSrcDt = Begin
        0x52de03636fb8e540
    End
    RecordSource ="tbl_20_10_Aufträge"
    Caption ="Rechnungen"
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
                    Left =285
                    Top =7553
                    Width =6681
                    Height =1065
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld36"
                    Caption ="Rechnungsbeleg zum makierten Datensatz"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =285
                    LayoutCachedTop =7553
                    LayoutCachedWidth =6966
                    LayoutCachedHeight =8618
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    OldBorderStyle =1
                    OverlapFlags =93
                    TextAlign =2
                    Left =15025
                    Top =747
                    Width =4705
                    Height =1009
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =4210752
                    Name ="Bezeichnungsfeld35"
                    Caption ="Rechnungs-Datensatz"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =15025
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
                    TabIndex =3
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
                    TabIndex =4
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
                            Left =342
                            Top =1372
                            Width =1975
                            Height =302
                            BorderColor =8355711
                            Name ="Produktbezeichnung_Bezeichnungsfeld"
                            Caption ="Produktbezeichnung"
                            GridlineColor =10921638
                            LayoutCachedLeft =342
                            LayoutCachedTop =1372
                            LayoutCachedWidth =2317
                            LayoutCachedHeight =1674
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    DecimalPlaces =2
                    OverlapFlags =85
                    BackStyle =0
                    IMESentenceMode =3
                    Left =10705
                    Top =1370
                    Width =2058
                    Height =302
                    ColumnWidth =3000
                    TabIndex =5
                    Name ="AS_brutto"
                    ControlSource ="AS_brutto"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =10705
                    LayoutCachedTop =1370
                    LayoutCachedWidth =12763
                    LayoutCachedHeight =1672
                    BackThemeColorIndex =1
                    BorderThemeColorIndex =1
                    ForeThemeColorIndex =0
                    GridlineThemeColorIndex =1
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =8333
                            Top =1370
                            Width =2282
                            Height =302
                            BorderColor =8355711
                            Name ="AS_brutto_Bezeichnungsfeld"
                            Caption ="Auftragssumme (brutto)"
                            GridlineColor =10921638
                            LayoutCachedLeft =8333
                            LayoutCachedTop =1370
                            LayoutCachedWidth =10615
                            LayoutCachedHeight =1672
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    BackStyle =0
                    IMESentenceMode =3
                    Left =10719
                    Top =965
                    Width =2042
                    Height =302
                    ColumnWidth =3000
                    TabIndex =9
                    Name ="Auftragssumme"
                    ControlSource ="Auftragssumme"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =10719
                    LayoutCachedTop =965
                    LayoutCachedWidth =12761
                    LayoutCachedHeight =1267
                    BackThemeColorIndex =1
                    BorderThemeColorIndex =1
                    ForeThemeColorIndex =0
                    GridlineThemeColorIndex =1
                    CurrencySymbol ="€"
                    ColLCID =1031
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =8332
                            Top =965
                            Width =2153
                            Height =293
                            BorderColor =8355711
                            Name ="Auftragssumme_Bezeichnungsfeld"
                            Caption ="Auftragssumme (netto)"
                            GridlineColor =10921638
                            LayoutCachedLeft =8332
                            LayoutCachedTop =965
                            LayoutCachedWidth =10485
                            LayoutCachedHeight =1258
                            ForeTint =100.0
                        End
                    End
                End
                Begin Subform
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =285
                    Top =1932
                    Width =19442
                    Height =5446
                    TabIndex =2
                    BorderColor =1643706
                    Name ="frm_40_10_Rechnungen_Unterformular"
                    SourceObject ="Form.frm_40_10_Rechnungen_Unterformular"
                    LinkChildFields ="ID_Auftrag"
                    LinkMasterFields ="ID_Auftrag"
                    GridlineColor =10921638

                    LayoutCachedLeft =285
                    LayoutCachedTop =1932
                    LayoutCachedWidth =19727
                    LayoutCachedHeight =7378
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
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
                    Caption ="Rechnungen zum Auftrag"
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
                    Left =15256
                    Top =1182
                    Width =1985
                    Height =435
                    FontSize =10
                    FontWeight =700
                    TabIndex =8
                    ForeColor =4210752
                    Name ="bRE_Hinzu"
                    Caption ="Hinzufügen"
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
                    Left =2626
                    Top =8044
                    Width =1985
                    Height =435
                    FontSize =10
                    FontWeight =700
                    TabIndex =6
                    ForeColor =4210752
                    Name ="bDokOeffnen"
                    Caption ="Öffnen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =2626
                    LayoutCachedTop =8044
                    LayoutCachedWidth =4611
                    LayoutCachedHeight =8479
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
                    Left =17470
                    Top =1182
                    Width =1985
                    Height =435
                    FontSize =10
                    FontWeight =700
                    TabIndex =7
                    ForeColor =4210752
                    Name ="bRE_Loeschen"
                    Caption ="Löschen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =17470
                    LayoutCachedTop =1182
                    LayoutCachedWidth =19455
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
                    Left =451
                    Top =8044
                    Width =1985
                    Height =435
                    FontSize =10
                    FontWeight =700
                    TabIndex =10
                    ForeColor =4210752
                    Name ="bDokHinzu"
                    Caption ="Hinzufügen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =451
                    LayoutCachedTop =8044
                    LayoutCachedWidth =2436
                    LayoutCachedHeight =8479
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
                    Left =4825
                    Top =8044
                    Width =1985
                    Height =435
                    FontSize =10
                    FontWeight =700
                    TabIndex =11
                    ForeColor =4210752
                    Name ="bDokLoeschen"
                    Caption ="Löschen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =4825
                    LayoutCachedTop =8044
                    LayoutCachedWidth =6810
                    LayoutCachedHeight =8479
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
                    TabIndex =12
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
                    TabIndex =13
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
' See "frm_20_40_Auftrag_Rechnung.cls"
