Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    ScrollBars =2
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =13606
    DatasheetFontHeight =10
    ItemSuffix =33
    Left =8895
    Top =5325
    Right =22785
    Bottom =8535
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0xdc13e9a4307ae540
    End
    RecordSource ="Abfrage für Unterformular Finanzierungen"
    Caption ="geplante Finanzierung"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    PictureSizeMode =1
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            FontName ="Arial"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderWidth =1
            BorderLineStyle =0
            Width =1701
        End
        Begin Image
            SpecialEffect =1
            BackStyle =0
            OldBorderStyle =0
            BorderLineStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin OptionButton
            SpecialEffect =1
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =1
            BorderWidth =3
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderColor =12632256
        End
        Begin BoundObjectFrame
            SpecialEffect =1
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ListBox
            SpecialEffect =1
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontName ="Arial"
        End
        Begin ComboBox
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin Subform
            SpecialEffect =1
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =1
            BackStyle =0
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin FormHeader
            Height =623
            BackColor =16514043
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =120
                    Top =270
                    Width =435
                    Height =255
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld22"
                    Caption ="Jahr"
                    LayoutCachedLeft =120
                    LayoutCachedTop =270
                    LayoutCachedWidth =555
                    LayoutCachedHeight =525
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =607
                    Top =270
                    Width =1245
                    Height =255
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld23"
                    Caption ="Ansatz"
                    LayoutCachedLeft =607
                    LayoutCachedTop =270
                    LayoutCachedWidth =1852
                    LayoutCachedHeight =525
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =1983
                    Top =285
                    Width =940
                    Height =255
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld24"
                    Caption ="HHR"
                    LayoutCachedLeft =1983
                    LayoutCachedTop =285
                    LayoutCachedWidth =2923
                    LayoutCachedHeight =540
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4786
                    Top =270
                    Width =820
                    Height =255
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld25"
                    Caption ="VE"
                    LayoutCachedLeft =4786
                    LayoutCachedTop =270
                    LayoutCachedWidth =5606
                    LayoutCachedHeight =525
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =5926
                    Top =60
                    Width =1020
                    Height =465
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld19"
                    Caption ="Inv.-\015\012Nr:"
                    LayoutCachedLeft =5926
                    LayoutCachedTop =60
                    LayoutCachedWidth =6946
                    LayoutCachedHeight =525
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =7013
                    Top =60
                    Width =743
                    Height =465
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld20"
                    Caption ="Anl.-\015\012Nr:"
                    LayoutCachedLeft =7013
                    LayoutCachedTop =60
                    LayoutCachedWidth =7756
                    LayoutCachedHeight =525
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =9253
                    Top =270
                    Width =1164
                    Height =255
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld21"
                    Caption ="Mittelart:"
                    LayoutCachedLeft =9253
                    LayoutCachedTop =270
                    LayoutCachedWidth =10417
                    LayoutCachedHeight =525
                    ForeShade =50.0
                End
                Begin Line
                    BorderWidth =2
                    OverlapFlags =85
                    Top =570
                    Width =13438
                    BorderColor =14277081
                    Name ="Linie22"
                    LayoutCachedTop =570
                    LayoutCachedWidth =13438
                    LayoutCachedHeight =570
                    BorderShade =85.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =3233
                    Top =270
                    Width =1536
                    Height =255
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld27"
                    Caption ="Buchungsstelle:"
                    LayoutCachedLeft =3233
                    LayoutCachedTop =270
                    LayoutCachedWidth =4769
                    LayoutCachedHeight =525
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =10540
                    Top =270
                    Width =1395
                    Height =255
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld28"
                    Caption ="Mittelherkunft:"
                    LayoutCachedLeft =10540
                    LayoutCachedTop =270
                    LayoutCachedWidth =11935
                    LayoutCachedHeight =525
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =12023
                    Top =272
                    Width =1426
                    Height =258
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld30"
                    Caption ="bez. Rechnungen:"
                    LayoutCachedLeft =12023
                    LayoutCachedTop =272
                    LayoutCachedWidth =13449
                    LayoutCachedHeight =530
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =7836
                    Top =270
                    Width =1281
                    Height =255
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld26"
                    Caption ="Summe"
                    LayoutCachedLeft =7836
                    LayoutCachedTop =270
                    LayoutCachedWidth =9117
                    LayoutCachedHeight =525
                    ForeShade =50.0
                End
            End
        End
        Begin Section
            Height =453
            BackColor =16514043
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =93
                    TextAlign =1
                    Left =120
                    Width =510
                    Height =255
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Jahr"
                    ControlSource ="Jahr"
                    InputMask ="0000"

                    LayoutCachedLeft =120
                    LayoutCachedWidth =630
                    LayoutCachedHeight =255
                    BorderThemeColorIndex =8
                    BorderTint =60.0
                    ForeShade =50.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =247
                    Left =607
                    Width =1326
                    Height =255
                    TabIndex =1
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Ansatz"
                    ControlSource ="Ansatz"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =607
                    LayoutCachedWidth =1933
                    LayoutCachedHeight =255
                    BorderThemeColorIndex =8
                    BorderTint =60.0
                    ForeShade =50.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =3
                    Left =1983
                    Width =1223
                    Height =255
                    TabIndex =2
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="HHR"
                    ControlSource ="HHR"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =1983
                    LayoutCachedWidth =3206
                    LayoutCachedHeight =255
                    BorderThemeColorIndex =8
                    BorderTint =60.0
                    ForeShade =50.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    Left =4786
                    Width =1078
                    Height =255
                    TabIndex =3
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="VE"
                    ControlSource ="VE"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =4786
                    LayoutCachedWidth =5864
                    LayoutCachedHeight =255
                    BorderThemeColorIndex =8
                    BorderTint =60.0
                    ForeShade =50.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    Left =9253
                    Width =1162
                    Height =255
                    TabIndex =5
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Herkunft"
                    ControlSource ="Finanzquelle"

                    LayoutCachedLeft =9253
                    LayoutCachedWidth =10415
                    LayoutCachedHeight =255
                    BorderThemeColorIndex =8
                    BorderTint =60.0
                    ForeShade =50.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =2
                    IMESentenceMode =3
                    Left =5926
                    Width =1016
                    Height =255
                    ColumnWidth =1665
                    TabIndex =6
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Vorhaben_Nr"
                    ControlSource ="Inv_Nr"

                    LayoutCachedLeft =5926
                    LayoutCachedWidth =6942
                    LayoutCachedHeight =255
                    BorderThemeColorIndex =8
                    BorderTint =60.0
                    ForeShade =50.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =2
                    IMESentenceMode =3
                    Left =7013
                    Width =730
                    Height =255
                    TabIndex =7
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Anlagen_Nr"
                    ControlSource ="Anlagen_Nr"

                    LayoutCachedLeft =7013
                    LayoutCachedWidth =7743
                    LayoutCachedHeight =255
                    BorderThemeColorIndex =8
                    BorderTint =60.0
                    ForeShade =50.0
                End
                Begin Line
                    BorderWidth =0
                    OverlapFlags =85
                    Top =288
                    Width =13438
                    BorderColor =14277081
                    Name ="Linie24"
                    LayoutCachedTop =288
                    LayoutCachedWidth =13438
                    LayoutCachedHeight =288
                    BorderShade =85.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3233
                    Width =1536
                    Height =255
                    ColumnWidth =1500
                    TabIndex =8
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Buchungsstelle"
                    ControlSource ="Buchungsstelle"

                    LayoutCachedLeft =3233
                    LayoutCachedWidth =4769
                    LayoutCachedHeight =255
                    BorderThemeColorIndex =8
                    BorderTint =60.0
                    ForeShade =50.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10485
                    Width =1501
                    Height =255
                    ColumnWidth =2610
                    TabIndex =9
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Finanzherkunft"
                    ControlSource ="Finanzherkunft"

                    LayoutCachedLeft =10485
                    LayoutCachedWidth =11986
                    LayoutCachedHeight =255
                    BorderThemeColorIndex =8
                    BorderTint =60.0
                    ForeShade =50.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =12031
                    Width =1407
                    Height =255
                    TabIndex =10
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="bez_Rechnung"
                    ControlSource ="bez_Rechnung"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =12031
                    LayoutCachedWidth =13438
                    LayoutCachedHeight =255
                    BorderThemeColorIndex =8
                    BorderTint =60.0
                    ForeShade =50.0
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    Left =7836
                    Width =1281
                    Height =255
                    TabIndex =4
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="zufVfg"
                    ControlSource ="zufVfg"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =7836
                    LayoutCachedWidth =9117
                    LayoutCachedHeight =255
                    BorderThemeColorIndex =8
                    BorderTint =60.0
                    ForeShade =50.0
                End
            End
        End
        Begin FormFooter
            Height =595
            BackColor =16514043
            Name ="Formularfuß"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =6157
                    Top =135
                    Width =1245
                    Height =255
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="finanziert:"
                    Caption ="finanziert:"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="finanziert_"
                    LayoutCachedLeft =6157
                    LayoutCachedTop =135
                    LayoutCachedWidth =7402
                    LayoutCachedHeight =390
                    ForeShade =50.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =7480
                    Top =135
                    Width =1620
                    Height =255
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Text17"
                    ControlSource ="=Sum([zufVfg])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =7480
                    LayoutCachedTop =135
                    LayoutCachedWidth =9100
                    LayoutCachedHeight =390
                    ForeShade =50.0
                End
                Begin Line
                    BorderWidth =2
                    OverlapFlags =85
                    Top =45
                    Width =13438
                    Height =14
                    BorderColor =14277081
                    Name ="Linie23"
                    LayoutCachedTop =45
                    LayoutCachedWidth =13438
                    LayoutCachedHeight =59
                    BorderShade =85.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =11932
                    Top =135
                    Width =1506
                    Height =255
                    FontWeight =700
                    TabIndex =1
                    ForeColor =4138256
                    Name ="Text31"
                    ControlSource ="=Sum([bez_Rechnung])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =11932
                    LayoutCachedTop =135
                    LayoutCachedWidth =13438
                    LayoutCachedHeight =390
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =10282
                    Top =120
                    Width =1545
                    Height =255
                    FontWeight =700
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld32"
                    Caption ="Bez. Rechnungen:"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =10282
                    LayoutCachedTop =120
                    LayoutCachedWidth =11827
                    LayoutCachedHeight =375
                    ForeShade =50.0
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_020_30_UF_Massn_Finanzierung.cls"
