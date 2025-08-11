Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    PictureTiling = NotDefault
    DividingLines = NotDefault
    DataEntry = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =5
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9184
    DatasheetFontHeight =10
    ItemSuffix =70
    Left =11055
    Top =4395
    Right =22005
    Bottom =10875
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Sanierungsstau Jahre"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            SpecialEffect =1
            FontWeight =700
            BackColor =12632256
            ForeColor =128
            FontName ="Arial"
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
            SpecialEffect =3
            Width =1701
        End
        Begin Image
            SpecialEffect =3
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
            ForeColor =128
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin OptionButton
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =2
            BorderWidth =3
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            BackStyle =1
            BorderLineStyle =0
            Width =1701
            Height =1701
            BackColor =12632256
        End
        Begin BoundObjectFrame
            SpecialEffect =3
            BorderLineStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
            BorderColor =12632256
            BackColor =12632256
        End
        Begin TextBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ListBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ComboBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin Subform
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderColor =12632256
        End
        Begin UnboundObjectFrame
            SpecialEffect =3
            BackStyle =0
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            ForeColor =128
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            FontWeight =700
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Section
            Height =4422
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =7371
                    Left =2845
                    Top =3120
                    Width =4536
                    Height =284
                    TabIndex =2
                    Name ="KF_Sortierart"
                    RowSourceType ="Value List"
                    RowSource ="\"nach Jahren -> Objekten -> Maßnahmen\";\"nach Objekten -> Jahren -> Maßnahmen\""
                    DefaultValue ="\"nach Jahren -> Objekten -> Maßnahmen\""

                    LayoutCachedLeft =2845
                    LayoutCachedTop =3120
                    LayoutCachedWidth =7381
                    LayoutCachedHeight =3404
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =510
                            Top =3120
                            Width =2160
                            Height =270
                            Name ="Gebäude_Label"
                            Caption ="Sortierung nach:"
                            LayoutCachedLeft =510
                            LayoutCachedTop =3120
                            LayoutCachedWidth =2670
                            LayoutCachedHeight =3390
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =1468
                    Top =225
                    Width =5205
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Sanierungsstau Jahre"
                    LayoutCachedLeft =1468
                    LayoutCachedTop =225
                    LayoutCachedWidth =6673
                    LayoutCachedHeight =585
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2895
                    Top =3630
                    Width =1785
                    Height =330
                    TabIndex =1
                    Name ="BS_Alle_DAten"
                    Caption ="Daten anzeigen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =3630
                    LayoutCachedWidth =4680
                    LayoutCachedHeight =3960
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6455
                    Top =3636
                    Width =975
                    Height =330
                    TabIndex =3
                    Name ="BS_Schließen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6455
                    LayoutCachedTop =3636
                    LayoutCachedWidth =7430
                    LayoutCachedHeight =3966
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =7371
                    Left =2845
                    Top =963
                    Width =6021
                    Height =284
                    Name ="KF_Liegenschaften"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW tbl_100_10_Liegenschaften.ID_Gebäude, [Name] & \" \" & [HAus_"
                        "Nr] & \": \" & [Bezeichnung] AS LS FROM tbl_100_10_Liegenschaften LEFT JOIN M_St"
                        "rassenverzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverz"
                        "eichnis.Kennummer ORDER BY [Name] & \" \" & [HAus_Nr] & \": \" & [Bezeichnung];"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =2845
                    LayoutCachedTop =963
                    LayoutCachedWidth =8866
                    LayoutCachedHeight =1247
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1245
                            Top =959
                            Width =1425
                            Height =270
                            Name ="Bezeichnungsfeld63"
                            Caption ="Liegenschaften:"
                            LayoutCachedLeft =1245
                            LayoutCachedTop =959
                            LayoutCachedWidth =2670
                            LayoutCachedHeight =1229
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =10773
                    Left =2845
                    Top =1334
                    Width =6021
                    Height =226
                    TabIndex =4
                    Name ="KF_Gebteile"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_20_Gebäudeteile.Gebäudete"
                        "il FROM tbl_100_20_Gebäudeteile WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäude)=[Fo"
                        "rmulare]![Filter für Sanierungsstau Jahre]![KF_Liegenschaften])) ORDER BY tbl_10"
                        "0_20_Gebäudeteile.Gebäudeteil;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2845
                    LayoutCachedTop =1334
                    LayoutCachedWidth =8866
                    LayoutCachedHeight =1560
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =165
                            Top =1334
                            Width =2505
                            Height =270
                            Name ="Maßnahmen.ID_Label"
                            Caption ="Gebäudeteile zur Liegensch.:"
                            EventProcPrefix ="Maßnahmen_ID_Label"
                            LayoutCachedLeft =165
                            LayoutCachedTop =1334
                            LayoutCachedWidth =2670
                            LayoutCachedHeight =1604
                        End
                    End
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =2880
                    Top =1822
                    Width =3981
                    Height =1032
                    TabIndex =5
                    Name ="OR_Massn_einz_kum"
                    DefaultValue ="1"

                    LayoutCachedLeft =2880
                    LayoutCachedTop =1822
                    LayoutCachedWidth =6861
                    LayoutCachedHeight =2854
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =3006
                            Top =1695
                            Width =1245
                            Height =270
                            Name ="Bezeichnungsfeld65"
                            Caption ="Maßnahmen .."
                            LayoutCachedLeft =3006
                            LayoutCachedTop =1695
                            LayoutCachedWidth =4251
                            LayoutCachedHeight =1965
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =3171
                            Top =2069
                            OptionValue =1
                            Name ="Option66"

                            LayoutCachedLeft =3171
                            LayoutCachedTop =2069
                            LayoutCachedWidth =3431
                            LayoutCachedHeight =2309
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =3403
                                    Top =2040
                                    Width =3285
                                    Height =270
                                    Name ="Bezeichnungsfeld67"
                                    Caption ="getrennt nach Finanz. / Art der  Mittel"
                                    LayoutCachedLeft =3403
                                    LayoutCachedTop =2040
                                    LayoutCachedWidth =6688
                                    LayoutCachedHeight =2310
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =3171
                            Top =2415
                            TabIndex =1
                            OptionValue =2
                            Name ="Option68"

                            LayoutCachedLeft =3171
                            LayoutCachedTop =2415
                            LayoutCachedWidth =3431
                            LayoutCachedHeight =2655
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =3405
                                    Top =2385
                                    Width =1800
                                    Height =270
                                    Name ="Bezeichnungsfeld69"
                                    Caption ="kumulierte Summen"
                                    LayoutCachedLeft =3405
                                    LayoutCachedTop =2385
                                    LayoutCachedWidth =5205
                                    LayoutCachedHeight =2655
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
' See "Filter für Sanierungsstau Jahre.cls"
