Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    RecordLocks =2
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =3514
    DatasheetFontHeight =11
    ItemSuffix =7
    Left =8599
    Top =5094
    Right =12118
    Bottom =9727
    RecSrcDt = Begin
        0x58c3a79d2ec6e440
    End
    Caption ="Alle Flurstücke zu Flur"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            FontSize =11
            FontName ="Calibri"
            BorderTint =50.0
            ForeTint =50.0
            GridlineShade =65.0
        End
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =11
            FontWeight =400
            FontName ="Calibri"
            ForeTint =75.0
            GridlineShade =65.0
            BackTint =60.0
            BorderLineStyle =0
            BorderColor =16777215
            BorderTint =60.0
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
        Begin Section
            Height =4648
            BackColor =16773103
            Name ="Detailbereich"
            AlternateBackColor =15921906
            AlternateBackShade =95.0
            Begin
                Begin ListBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =283
                    Top =737
                    Width =1536
                    Height =3786
                    FontSize =8
                    BorderColor =10921638
                    Name ="LF_Flurst_der_Flur"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT tbl_090_10_Flurstuecke.ID_Flurstueck, tbl_090_10_Flurstuecke.Flu"
                        "rstueck FROM tbl_070_10_Flure RIGHT JOIN tbl_090_10_Flurstuecke ON tbl_070_10_Fl"
                        "ure.ID_Flur = tbl_090_10_Flurstuecke.ID_Flur WHERE (((tbl_090_10_Flurstuecke.ID_"
                        "Flur)=[Formulare]![frm_010_010_Gebäudeverwaltung]![UF_GebaeudeStamm].[Formular]!"
                        "[KF_ID_Flur]));"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    OnDblClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =283
                    LayoutCachedTop =737
                    LayoutCachedWidth =1819
                    LayoutCachedHeight =4523
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =283
                            Top =340
                            Width =1470
                            Height =255
                            FontSize =8
                            FontWeight =700
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld34"
                            Caption ="Flurstücke:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =283
                            LayoutCachedTop =340
                            LayoutCachedWidth =1753
                            LayoutCachedHeight =595
                            ForeTint =100.0
                            ForeShade =50.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2762
                    Top =1700
                    Width =330
                    Height =330
                    FontSize =9
                    TabIndex =1
                    Name ="BS_Uebernehme_FS_in_LS"
                    Caption ="Üerbernehme"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dddddddddddddddddddddddddddddddddddddddddddddddd ,
                        0xddddddddddddddddddddddd4ddddddddddddddd44dddddddddddddd444dddddd ,
                        0xddddddd4444dddddd44444444444ddddd444444444444dddd44444444444dddd ,
                        0xddddddd4444dddddddddddd444ddddddddddddd44dddddddddddddd4dddddddd ,
                        0xdddddddddddddddd000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Füge Flurstück der Liegenschaft hinzu"
                    GridlineColor =10921638

                    LayoutCachedLeft =2762
                    LayoutCachedTop =1700
                    LayoutCachedWidth =3092
                    LayoutCachedHeight =2030
                    ForeTint =100.0
                    BackColor =14277081
                    BackTint =100.0
                    BackShade =85.0
                    BorderColor =14136213
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2762
                    Top =4193
                    Width =330
                    Height =330
                    FontSize =9
                    TabIndex =2
                    Name ="BS_Schliessen"
                    Caption ="Üerbernehme"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00ddddd0dddddddddddddd00ddddddddddddd030dddddddddd ,
                        0xdd0330dddddddddd0033300000000dddd03330ff0dddddddd03300ff0dddd4dd ,
                        0xd03330ff0ddd44ddd03330ff0dd44444d03330ff0d444444d03330ff0dd44444 ,
                        0xd0330fff0ddd44ddd030ffff0dddd4ddd00fffff0dddddddd00000000ddddddd ,
                        0xdddddddddddddddd000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =2762
                    LayoutCachedTop =4193
                    LayoutCachedWidth =3092
                    LayoutCachedHeight =4523
                    ForeTint =100.0
                    BackColor =14277081
                    BackTint =100.0
                    BackShade =85.0
                    BorderColor =14136213
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =2832
                    Top =1080
                    TabIndex =3
                    BorderColor =10921638
                    Name ="KK_Teilweise"
                    DefaultValue ="False"
                    GridlineColor =10921638

                    LayoutCachedLeft =2832
                    LayoutCachedTop =1080
                    LayoutCachedWidth =3092
                    LayoutCachedHeight =1320
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1928
                            Top =1080
                            Width =773
                            Height =218
                            FontSize =8
                            FontWeight =700
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld6"
                            Caption ="teilweise:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =1928
                            LayoutCachedTop =1080
                            LayoutCachedWidth =2701
                            LayoutCachedHeight =1298
                            ForeTint =100.0
                            ForeShade =50.0
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_010_020_Alle Flurstücke zu Flur.cls"
