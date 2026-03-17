Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    RecordLocks =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =10034
    DatasheetFontHeight =11
    ItemSuffix =119
    Left =2839
    Top =6344
    Right =12620
    Bottom =9768
    RecSrcDt = Begin
        0xf2bdacfe0fb2e540
    End
    RecordSource ="SELECT tbl_10_40_Firmen.* FROM tbl_10_40_Firmen WHERE (((tbl_10_40_Firmen.ID_Fa)"
        "=F_Variable(\"lng_Firma\"))); "
    DatasheetFontName ="Calibri"
    AllowDatasheetView =0
    FilterOnLoad =0
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
        Begin Image
            BackStyle =0
            OldBorderStyle =0
            BorderLineStyle =0
            SizeMode =3
            PictureAlignment =2
            Width =1701
            Height =1701
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
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
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            CanGrow = NotDefault
            Height =3685
            BackColor =-2147483633
            Name ="Detailbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3627
                    Top =1020
                    Width =1686
                    Height =315
                    ColumnWidth =915
                    FontSize =9
                    BorderColor =10921638
                    Name ="Anrede"
                    ControlSource ="Anrede"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =3627
                    LayoutCachedTop =1020
                    LayoutCachedWidth =5313
                    LayoutCachedHeight =1335
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =623
                            Top =1020
                            Width =2775
                            Height =315
                            FontSize =9
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld110"
                            Caption ="Anrede, Firmenname:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =623
                            LayoutCachedTop =1020
                            LayoutCachedWidth =3398
                            LayoutCachedHeight =1335
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =5452
                    Top =1020
                    Width =4236
                    Height =315
                    ColumnWidth =4680
                    FontSize =9
                    TabIndex =1
                    BorderColor =10921638
                    Name ="TF_Name"
                    ControlSource ="Name"
                    AfterUpdate ="=Aktul_Listenfeld()"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =5452
                    LayoutCachedTop =1020
                    LayoutCachedWidth =9688
                    LayoutCachedHeight =1335
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3627
                    Top =1759
                    Width =6066
                    Height =315
                    ColumnWidth =2445
                    FontSize =9
                    TabIndex =3
                    BorderColor =10921638
                    Name ="Ort"
                    ControlSource ="Ort"
                    AfterUpdate ="=Aktul_Listenfeld()"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =3627
                    LayoutCachedTop =1759
                    LayoutCachedWidth =9693
                    LayoutCachedHeight =2074
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =623
                            Top =1759
                            Width =2775
                            Height =315
                            FontSize =9
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld117"
                            Caption ="Ort:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =623
                            LayoutCachedTop =1759
                            LayoutCachedWidth =3398
                            LayoutCachedHeight =2074
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3627
                    Top =2149
                    Width =6066
                    Height =315
                    ColumnWidth =2595
                    FontSize =9
                    TabIndex =4
                    BorderColor =10921638
                    Name ="Straße"
                    ControlSource ="Straße"
                    AfterUpdate ="=Aktul_Listenfeld()"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =3627
                    LayoutCachedTop =2149
                    LayoutCachedWidth =9693
                    LayoutCachedHeight =2464
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =623
                            Top =2149
                            Width =2775
                            Height =315
                            FontSize =9
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld113"
                            Caption ="Straße:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =623
                            LayoutCachedTop =2149
                            LayoutCachedWidth =3398
                            LayoutCachedHeight =2464
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3627
                    Top =2539
                    Width =6066
                    Height =315
                    FontSize =9
                    TabIndex =5
                    BorderColor =10921638
                    Name ="PersID"
                    ControlSource ="PersID"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =3627
                    LayoutCachedTop =2539
                    LayoutCachedWidth =9693
                    LayoutCachedHeight =2854
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =623
                            Top =2539
                            Width =2775
                            Height =315
                            FontSize =9
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld114"
                            Caption ="Kreditoren-Nr Infoma:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =623
                            LayoutCachedTop =2539
                            LayoutCachedWidth =3398
                            LayoutCachedHeight =2854
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =3633
                    Top =1459
                    Width =245
                    TabIndex =2
                    BorderColor =10921638
                    Name ="Ausland"
                    ControlSource ="Ausland"
                    StatusBarText ="Firma mit Sitz im Ausland => MwSt-Ausweisung"
                    GridlineColor =10921638

                    LayoutCachedLeft =3633
                    LayoutCachedTop =1459
                    LayoutCachedWidth =3878
                    LayoutCachedHeight =1699
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =628
                            Top =1399
                            Width =2775
                            Height =315
                            FontSize =9
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld115"
                            Caption ="Ausland:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =628
                            LayoutCachedTop =1399
                            LayoutCachedWidth =3403
                            LayoutCachedHeight =1714
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3632
                    Top =2944
                    Width =1686
                    Height =315
                    FontSize =9
                    TabIndex =6
                    BorderColor =10921638
                    Name ="Ab_Datum_Kein_Auftrag"
                    ControlSource ="Ab_Datum_Kein_Auftrag"
                    Format ="Short Date"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =3632
                    LayoutCachedTop =2944
                    LayoutCachedWidth =5318
                    LayoutCachedHeight =3259
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =628
                            Top =2944
                            Width =2775
                            Height =315
                            FontSize =9
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld116"
                            Caption ="Kein Auftrag mehr ab::"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =628
                            LayoutCachedTop =2944
                            LayoutCachedWidth =3403
                            LayoutCachedHeight =3259
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin Label
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =1
                    Left =226
                    Top =283
                    Width =9420
                    Height =345
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld118"
                    Caption ="Firmendaten:"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =226
                    LayoutCachedTop =283
                    LayoutCachedWidth =9646
                    LayoutCachedHeight =628
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_30_20_Firme_Einzel_DS.cls"
