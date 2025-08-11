Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    ShortcutMenu = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =22393
    DatasheetFontHeight =10
    ItemSuffix =92
    Left =611
    Top =-122
    Right =18516
    Bottom =12702
    RecSrcDt = Begin
        0x0a31aba7cab2e440
    End
    Caption ="Maßnahmen / Teilmaßnahmen / Finanzieung"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
            GridlineShade =65.0
        End
        Begin Image
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
            ForeColor =-2147483630
            FontName ="MS Sans Serif"
            BorderLineStyle =0
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
        End
        Begin TextBox
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
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
            BorderShade =65.0
            ForeTint =75.0
            GridlineShade =65.0
        End
        Begin ComboBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin Subform
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =2
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin Tab
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin Page
            Width =1701
            Height =1701
        End
        Begin Section
            CanGrow = NotDefault
            Height =12755
            BackColor =-2147483633
            Name ="Detailbereich"
            AlternateBackColor =-2147483633
            Begin
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    OverlapFlags =93
                    Left =225
                    Top =1260
                    Width =0
                    Height =720
                    BorderColor =4138256
                    Name ="Linie51"
                    GridlineColor =10921638
                    LayoutCachedLeft =225
                    LayoutCachedTop =1260
                    LayoutCachedWidth =225
                    LayoutCachedHeight =1980
                    BorderShade =50.0
                End
                Begin Line
                    BorderWidth =1
                    OverlapFlags =93
                    Left =7755
                    Top =1755
                    Width =141
                    BorderColor =4138256
                    Name ="Linie37"
                    GridlineColor =10921638
                    LayoutCachedLeft =7755
                    LayoutCachedTop =1755
                    LayoutCachedWidth =7896
                    LayoutCachedHeight =1755
                    BorderShade =50.0
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =87
                    AccessKey =76
                    ColumnCount =2
                    ListRows =30
                    ListWidth =4500
                    Left =120
                    Top =836
                    Width =5775
                    Height =285
                    TabIndex =1
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="KF_Gebäudeauswahl"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW tbl_100_10_Liegenschaften.ID_Gebäude, [NAme] & \" \" & [Haus_"
                        "Nr] & \": \" & [Bezeichnung] AS Objekt FROM M_Strassenverzeichnis RIGHT JOIN tbl"
                        "_100_10_Liegenschaften ON M_Strassenverzeichnis.Kennummer = tbl_100_10_Liegensch"
                        "aften.Kennummer_Straße ORDER BY [NAme] & \" \" & [Haus_Nr] & \": \" & [Bezeichnu"
                        "ng];"
                    ColumnWidths ="0;2657"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    UnicodeAccessKey =76

                    LayoutCachedLeft =120
                    LayoutCachedTop =836
                    LayoutCachedWidth =5895
                    LayoutCachedHeight =1121
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =125
                            Top =570
                            Width =1965
                            Height =270
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld33"
                            Caption ="Welche &Liegenschaft:"
                            FontName ="Arial"
                            LayoutCachedLeft =125
                            LayoutCachedTop =570
                            LayoutCachedWidth =2090
                            LayoutCachedHeight =840
                            ForeShade =50.0
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =125
                    Top =120
                    Width =4710
                    Height =315
                    FontSize =11
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld34"
                    Caption ="Maßnahmen / Teilmaßnahmen / Finanzieung"
                    FontName ="Arial"
                    LayoutCachedLeft =125
                    LayoutCachedTop =120
                    LayoutCachedWidth =4835
                    LayoutCachedHeight =435
                    ForeShade =50.0
                End
                Begin Subform
                    OverlapFlags =85
                    SpecialEffect =0
                    BorderWidth =1
                    Left =8163
                    Top =113
                    Width =13961
                    Height =2721
                    TabIndex =3
                    BorderColor =10040879
                    Name ="UF_Massnahme"
                    SourceObject ="Form.frm_020_20_Maßn_verw_Einzel_DS"

                    LayoutCachedLeft =8163
                    LayoutCachedTop =113
                    LayoutCachedWidth =22124
                    LayoutCachedHeight =2834
                End
                Begin Subform
                    AccessKey =84
                    OverlapFlags =215
                    SpecialEffect =0
                    BorderWidth =1
                    Left =618
                    Top =8440
                    Width =18764
                    Height =4153
                    TabIndex =4
                    BorderColor =10040879
                    Name ="UF_Teilmassnahme"
                    SourceObject ="Form.frm_020_40_UF__Teilmassnahmen"
                    UnicodeAccessKey =84

                    LayoutCachedLeft =618
                    LayoutCachedTop =8440
                    LayoutCachedWidth =19382
                    LayoutCachedHeight =12593
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =737
                            Top =8220
                            Width =3120
                            Height =225
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld42"
                            Caption ="&Teilmaßnahmen der Maßnahme:"
                            FontName ="Arial"
                            LayoutCachedLeft =737
                            LayoutCachedTop =8220
                            LayoutCachedWidth =3857
                            LayoutCachedHeight =8445
                            ForeShade =50.0
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =215
                    SpecialEffect =0
                    BorderWidth =1
                    Left =8156
                    Top =3245
                    Width =13961
                    Height =2258
                    TabIndex =5
                    BorderColor =10040879
                    Name ="UF_Geplante_Finanzierung"
                    SourceObject ="Form.frm_020_50_UF_Teilmass_Finanzierung"

                    LayoutCachedLeft =8156
                    LayoutCachedTop =3245
                    LayoutCachedWidth =22117
                    LayoutCachedHeight =5503
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =8220
                            Top =3011
                            Width =4935
                            Height =270
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld44"
                            Caption ="geplante Finanzierung zur markierten Maßnahme:"
                            FontName ="Arial"
                            LayoutCachedLeft =8220
                            LayoutCachedTop =3011
                            LayoutCachedWidth =13155
                            LayoutCachedHeight =3281
                            ForeShade =50.0
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =215
                    SpecialEffect =0
                    BorderWidth =1
                    Left =8156
                    Top =5867
                    Width =13961
                    Height =2419
                    TabIndex =6
                    BorderColor =10040879
                    Name ="UF_Gepl_Finanzierung"
                    SourceObject ="Form.frm_020_30_UF_Massn_Finanzierung"

                    LayoutCachedLeft =8156
                    LayoutCachedTop =5867
                    LayoutCachedWidth =22117
                    LayoutCachedHeight =8286
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =8220
                            Top =5616
                            Width =2220
                            Height =270
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld49"
                            Caption ="tatsächliche Finanzierung:"
                            FontName ="Arial"
                            LayoutCachedLeft =8220
                            LayoutCachedTop =5616
                            LayoutCachedWidth =10440
                            LayoutCachedHeight =5886
                            ForeShade =50.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =20239
                    Top =9184
                    Width =1005
                    Height =360
                    FontWeight =700
                    TabIndex =7
                    ForeColor =4138256
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =20239
                    LayoutCachedTop =9184
                    LayoutCachedWidth =21244
                    LayoutCachedHeight =9544
                    ForeShade =50.0
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =3914
                    Top =6519
                    Width =1785
                    Height =345
                    FontWeight =700
                    TabIndex =8
                    ForeColor =4138256
                    Name ="BS_Massn_Neu"
                    Caption ="Neue Maßnahme"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =3914
                    LayoutCachedTop =6519
                    LayoutCachedWidth =5699
                    LayoutCachedHeight =6864
                    ForeShade =50.0
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =87
                    Left =5699
                    Top =6519
                    Width =1785
                    Height =345
                    FontWeight =700
                    TabIndex =10
                    ForeColor =4138256
                    Name ="BS_Massn_Loeschen"
                    Caption ="Maßnahme löschen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =5699
                    LayoutCachedTop =6519
                    LayoutCachedWidth =7484
                    LayoutCachedHeight =6864
                    ForeShade =50.0
                    Overlaps =1
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    OverlapFlags =95
                    Left =7755
                    Top =1755
                    Width =0
                    Height =4950
                    BorderColor =4138256
                    Name ="Linie61"
                    GridlineColor =10921638
                    LayoutCachedLeft =7755
                    LayoutCachedTop =1755
                    LayoutCachedWidth =7755
                    LayoutCachedHeight =6705
                    BorderShade =50.0
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    OverlapFlags =95
                    Left =7560
                    Top =4425
                    Width =351
                    BorderColor =4138256
                    Name ="Linie62"
                    GridlineColor =10921638
                    LayoutCachedLeft =7560
                    LayoutCachedTop =4425
                    LayoutCachedWidth =7911
                    LayoutCachedHeight =4425
                    BorderShade =50.0
                End
                Begin ListBox
                    OverlapFlags =85
                    ColumnCount =2
                    Left =563
                    Top =3726
                    Width =6905
                    Height =2733
                    FontSize =8
                    BackColor =15728383
                    ForeColor =4138256
                    BorderColor =10040879
                    Name ="KF_Massn_auswahl"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    AllowValueListEdits =0
                    InheritValueList =0

                    LayoutCachedLeft =563
                    LayoutCachedTop =3726
                    LayoutCachedWidth =7468
                    LayoutCachedHeight =6459
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =93
                            Left =733
                            Top =3456
                            Width =2580
                            Height =255
                            FontWeight =700
                            BackColor =-2147483633
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld36"
                            Caption ="Maßnahmen zum Gebäudeteil:"
                            FontName ="Arial"
                            LayoutCachedLeft =733
                            LayoutCachedTop =3456
                            LayoutCachedWidth =3313
                            LayoutCachedHeight =3711
                            ForeShade =50.0
                        End
                    End
                End
                Begin ListBox
                    OverlapFlags =85
                    AccessKey =84
                    ColumnCount =2
                    Left =565
                    Top =1520
                    Width =5330
                    Height =1552
                    FontSize =8
                    TabIndex =9
                    BackColor =15728383
                    ForeColor =4138256
                    BorderColor =10040879
                    Name ="KF_Geb_Teil_Auswahl"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_20_Gebäudetei"
                        "le.Gebäudeteil FROM tbl_100_20_Gebäudeteile WHERE (((tbl_100_20_Gebäudeteile.ID_"
                        "Gebäude)=F_Variable(\"lng_ID_Gebaeude\")));"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    UnicodeAccessKey =116
                    AllowValueListEdits =0
                    InheritValueList =0

                    LayoutCachedLeft =565
                    LayoutCachedTop =1520
                    LayoutCachedWidth =5895
                    LayoutCachedHeight =3072
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            Left =735
                            Top =1260
                            Width =1860
                            Height =225
                            FontWeight =700
                            BackColor =-2147483633
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld60"
                            Caption ="Welches Gebäude&teil:"
                            FontName ="Arial"
                            LayoutCachedLeft =735
                            LayoutCachedTop =1260
                            LayoutCachedWidth =2595
                            LayoutCachedHeight =1485
                            ForeShade =50.0
                        End
                    End
                End
                Begin Line
                    BorderWidth =1
                    OverlapFlags =95
                    Left =225
                    Top =1980
                    Width =289
                    Height =13
                    BorderColor =10040879
                    Name ="Linie66"
                    GridlineColor =10921638
                    LayoutCachedLeft =225
                    LayoutCachedTop =1980
                    LayoutCachedWidth =514
                    LayoutCachedHeight =1993
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    OverlapFlags =93
                    Left =1530
                    Top =3129
                    Width =13
                    Height =177
                    BorderColor =4138256
                    Name ="Linie67"
                    GridlineColor =10921638
                    LayoutCachedLeft =1530
                    LayoutCachedTop =3129
                    LayoutCachedWidth =1543
                    LayoutCachedHeight =3306
                    BorderShade =50.0
                End
                Begin Label
                    OverlapFlags =215
                    Left =7860
                    Top =1620
                    Width =165
                    Height =210
                    FontSize =11
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld71"
                    Caption =">"
                    FontName ="Arial"
                    LayoutCachedLeft =7860
                    LayoutCachedTop =1620
                    LayoutCachedWidth =8025
                    LayoutCachedHeight =1830
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =215
                    Left =7860
                    Top =4297
                    Width =165
                    Height =210
                    FontSize =11
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld72"
                    Caption =">"
                    FontName ="Arial"
                    LayoutCachedLeft =7860
                    LayoutCachedTop =4297
                    LayoutCachedWidth =8025
                    LayoutCachedHeight =4507
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =215
                    Left =393
                    Top =1843
                    Width =165
                    Height =210
                    FontSize =11
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld74"
                    Caption =">"
                    FontName ="Arial"
                    LayoutCachedLeft =393
                    LayoutCachedTop =1843
                    LayoutCachedWidth =558
                    LayoutCachedHeight =2053
                    ForeShade =50.0
                End
                Begin Label
                    Vertical = NotDefault
                    OverlapFlags =215
                    Left =1361
                    Top =3270
                    Width =375
                    Height =180
                    FontSize =14
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld77"
                    Caption =">"
                    FontName ="Arial"
                    LayoutCachedLeft =1361
                    LayoutCachedTop =3270
                    LayoutCachedWidth =1736
                    LayoutCachedHeight =3450
                    ForeShade =50.0
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    OverlapFlags =95
                    Left =7755
                    Top =6688
                    Width =141
                    BorderColor =4138256
                    Name ="Linie80"
                    GridlineColor =10921638
                    LayoutCachedLeft =7755
                    LayoutCachedTop =6688
                    LayoutCachedWidth =7896
                    LayoutCachedHeight =6688
                    BorderShade =50.0
                End
                Begin Label
                    OverlapFlags =215
                    Left =7860
                    Top =6565
                    Width =165
                    Height =210
                    FontSize =11
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld81"
                    Caption =">"
                    FontName ="Arial"
                    LayoutCachedLeft =7860
                    LayoutCachedTop =6565
                    LayoutCachedWidth =8025
                    LayoutCachedHeight =6775
                    ForeShade =50.0
                End
                Begin Line
                    BorderWidth =1
                    OverlapFlags =93
                    Left =1530
                    Top =6519
                    Width =0
                    Height =1626
                    BorderColor =4138256
                    Name ="Linie82"
                    GridlineColor =10921638
                    LayoutCachedLeft =1530
                    LayoutCachedTop =6519
                    LayoutCachedWidth =1530
                    LayoutCachedHeight =8145
                    BorderShade =50.0
                End
                Begin Label
                    Vertical = NotDefault
                    OverlapFlags =215
                    Left =1344
                    Top =8085
                    Width =375
                    Height =180
                    FontSize =14
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld83"
                    Caption =">"
                    FontName ="Arial"
                    LayoutCachedLeft =1344
                    LayoutCachedTop =8085
                    LayoutCachedWidth =1719
                    LayoutCachedHeight =8265
                    ForeShade =50.0
                End
                Begin ComboBox
                    OverlapFlags =87
                    TextAlign =1
                    IMESentenceMode =3
                    Left =6180
                    Top =836
                    Width =1146
                    Height =285
                    TabIndex =2
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="KF_ID_Massn"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Maßnahmen.ID FROM Maßnahmen ORDER BY Maßnahmen.ID;"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =6180
                    LayoutCachedTop =836
                    LayoutCachedWidth =7326
                    LayoutCachedHeight =1121
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =6180
                            Top =371
                            Width =1110
                            Height =465
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld85"
                            Caption ="oder welche\015\012Maßn.-ID:"
                            FontName ="Arial"
                            LayoutCachedLeft =6180
                            LayoutCachedTop =371
                            LayoutCachedWidth =7290
                            LayoutCachedHeight =836
                            ForeShade =50.0
                        End
                    End
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =3978
                    Top =6972
                    Width =2670
                    Height =794
                    TabIndex =11
                    Name ="OR_Erl_Unerl_MN"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="1"

                    LayoutCachedLeft =3978
                    LayoutCachedTop =6972
                    LayoutCachedWidth =6648
                    LayoutCachedHeight =7766
                    Begin
                        Begin OptionButton
                            OverlapFlags =87
                            Left =4105
                            Top =7124
                            OptionValue =1
                            BorderColor =10921638
                            Name ="Op_MN_unerl"
                            GridlineColor =10921638

                            LayoutCachedLeft =4105
                            LayoutCachedTop =7124
                            LayoutCachedWidth =4365
                            LayoutCachedHeight =7364
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OverlapFlags =247
                                    Left =4338
                                    Top =7092
                                    Width =2100
                                    Height =255
                                    FontWeight =700
                                    BackColor =-2147483633
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld89"
                                    Caption ="Unerledigte Maßnahmen"
                                    FontName ="Arial"
                                    LayoutCachedLeft =4338
                                    LayoutCachedTop =7092
                                    LayoutCachedWidth =6438
                                    LayoutCachedHeight =7347
                                    ForeShade =50.0
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =4138
                            Top =7452
                            TabIndex =1
                            OptionValue =2
                            BorderColor =10921638
                            Name ="Op_MN_erl"
                            GridlineColor =10921638

                            LayoutCachedLeft =4138
                            LayoutCachedTop =7452
                            LayoutCachedWidth =4398
                            LayoutCachedHeight =7692
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OverlapFlags =247
                                    Left =4373
                                    Top =7426
                                    Width =1455
                                    Height =255
                                    FontWeight =700
                                    BackColor =-2147483633
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld91"
                                    Caption ="Alle Maßnahmen"
                                    FontName ="Arial"
                                    LayoutCachedLeft =4373
                                    LayoutCachedTop =7426
                                    LayoutCachedWidth =5828
                                    LayoutCachedHeight =7681
                                    ForeShade =50.0
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
' See "frm_020_10_Maßnahmenverwaltung.cls"
