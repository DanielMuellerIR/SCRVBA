Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowEdits = NotDefault
    DefaultView =2
    ViewsAllowed =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =12699
    DatasheetFontHeight =11
    ItemSuffix =16
    Left =13395
    Top =6090
    Right =25350
    Bottom =14430
    RecSrcDt = Begin
        0x5a393f766f5be540
    End
    RecordSource ="SELECT tbl_500_10_Begehungen.ID_Begehung, 1 AS Nr, tbl_100_10_Liegenschaften.Bez"
        "eichnung, tbl_100_20_Gebäudeteile.Gebäudeteil, [NAme] & \" \" & [tbl_100_20_Gebä"
        "udeteile].[HAus_Nr] AS Strasse, tbl_500_10_Begehungen.Begehung_bis, tbl_500_10_B"
        "egehungen.Begehung_erl_am, tbl_500_10_Begehungen.Bemerkungen FROM tbl_100_10_Lie"
        "genschaften INNER JOIN ((tbl_100_20_Gebäudeteile LEFT JOIN M_Strassenverzeichnis"
        " ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer) "
        "INNER JOIN tbl_500_10_Begehungen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl"
        "_500_10_Begehungen.ID_Gebäudeteil) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl"
        "_100_20_Gebäudeteile.ID_Gebäude WHERE ((([tbl_500_10_Begehungen].[ID_SB]=F_Varia"
        "ble(\"lng_ID_SB\") Or [tbl_500_10_Begehungen].[ID_SB_Fachpl_Elek]=F_Variable(\"l"
        "ng_ID_SB\") Or [tbl_500_10_Begehungen].[ID_SB_Fachpl_HLS]=F_Variable(\"lng_ID_SB"
        "\"))=True) AND ((tbl_500_10_Begehungen.Begehungsjahr)=F_Variable(\"lng_Beg_Jahr\""
        ")) AND ((tbl_100_20_Gebäudeteile.Beg_erf)=True)) ORDER BY tbl_100_10_Liegenschaf"
        "ten.Bezeichnung, tbl_100_20_Gebäudeteile.Gebäudeteil;"
    DatasheetFontName ="Calibri"
    AllowFormView =0
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
        Begin Section
            Height =3798
            Name ="Detailbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    Locked = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3396
                    Top =165
                    Width =1191
                    Height =315
                    ColumnOrder =0
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ID_Begehung"
                    ControlSource ="ID_Begehung"
                    GridlineColor =10921638

                    LayoutCachedLeft =3396
                    LayoutCachedTop =165
                    LayoutCachedWidth =4587
                    LayoutCachedHeight =480
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =85
                            Left =630
                            Top =165
                            Width =1860
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bezeichnungsfeld7"
                            Caption ="ID_Begehung"
                            GridlineColor =10921638
                            LayoutCachedLeft =630
                            LayoutCachedTop =165
                            LayoutCachedWidth =2490
                            LayoutCachedHeight =480
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3389
                    Top =963
                    Width =1191
                    Height =315
                    ColumnWidth =3870
                    ColumnOrder =2
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"
                    GridlineColor =10921638

                    LayoutCachedLeft =3389
                    LayoutCachedTop =963
                    LayoutCachedWidth =4580
                    LayoutCachedHeight =1278
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =623
                            Top =963
                            Width =1815
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bezeichnungsfeld8"
                            Caption ="Liegenschaft"
                            GridlineColor =10921638
                            LayoutCachedLeft =623
                            LayoutCachedTop =963
                            LayoutCachedWidth =2438
                            LayoutCachedHeight =1278
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3389
                    Top =1360
                    Width =1191
                    Height =315
                    ColumnWidth =3585
                    ColumnOrder =3
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Gebäudeteil"
                    ControlSource ="Gebäudeteil"
                    GridlineColor =10921638

                    LayoutCachedLeft =3389
                    LayoutCachedTop =1360
                    LayoutCachedWidth =4580
                    LayoutCachedHeight =1675
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =623
                            Top =1360
                            Width =1785
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bezeichnungsfeld9"
                            Caption ="Gebäude"
                            GridlineColor =10921638
                            LayoutCachedLeft =623
                            LayoutCachedTop =1360
                            LayoutCachedWidth =2408
                            LayoutCachedHeight =1675
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3389
                    Top =1757
                    Width =1191
                    Height =315
                    ColumnWidth =2948
                    ColumnOrder =4
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Strasse"
                    ControlSource ="Strasse"
                    GridlineColor =10921638

                    LayoutCachedLeft =3389
                    LayoutCachedTop =1757
                    LayoutCachedWidth =4580
                    LayoutCachedHeight =2072
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =623
                            Top =1757
                            Width =1785
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bezeichnungsfeld10"
                            Caption ="Adresse"
                            GridlineColor =10921638
                            LayoutCachedLeft =623
                            LayoutCachedTop =1757
                            LayoutCachedWidth =2408
                            LayoutCachedHeight =2072
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =2
                    IMESentenceMode =3
                    Left =3389
                    Top =2154
                    Width =1191
                    Height =315
                    ColumnWidth =1800
                    ColumnOrder =5
                    TabIndex =5
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Begehung_bis"
                    ControlSource ="Begehung_bis"
                    GridlineColor =10921638

                    LayoutCachedLeft =3389
                    LayoutCachedTop =2154
                    LayoutCachedWidth =4580
                    LayoutCachedHeight =2469
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =623
                            Top =2154
                            Width =1935
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bezeichnungsfeld11"
                            Caption ="Begehung bis"
                            GridlineColor =10921638
                            LayoutCachedLeft =623
                            LayoutCachedTop =2154
                            LayoutCachedWidth =2558
                            LayoutCachedHeight =2469
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =2
                    IMESentenceMode =3
                    Left =3389
                    Top =2551
                    Width =1191
                    Height =315
                    ColumnWidth =1530
                    ColumnOrder =6
                    TabIndex =6
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Begehung_erl_am"
                    ControlSource ="Begehung_erl_am"
                    GridlineColor =10921638

                    LayoutCachedLeft =3389
                    LayoutCachedTop =2551
                    LayoutCachedWidth =4580
                    LayoutCachedHeight =2866
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =623
                            Top =2551
                            Width =2310
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bezeichnungsfeld12"
                            Caption ="Beg. erl. am"
                            GridlineColor =10921638
                            LayoutCachedLeft =623
                            LayoutCachedTop =2551
                            LayoutCachedWidth =2933
                            LayoutCachedHeight =2866
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3389
                    Top =2948
                    Width =1191
                    Height =315
                    ColumnWidth =2430
                    ColumnOrder =7
                    TabIndex =7
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Bemerkungen"
                    ControlSource ="Bemerkungen"
                    GridlineColor =10921638

                    LayoutCachedLeft =3389
                    LayoutCachedTop =2948
                    LayoutCachedWidth =4580
                    LayoutCachedHeight =3263
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =623
                            Top =2948
                            Width =1935
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bezeichnungsfeld13"
                            Caption ="Bemerkungen"
                            GridlineColor =10921638
                            LayoutCachedLeft =623
                            LayoutCachedTop =2948
                            LayoutCachedWidth =2558
                            LayoutCachedHeight =3263
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =2
                    IMESentenceMode =3
                    Left =3396
                    Top =555
                    Width =1191
                    Height =315
                    ColumnWidth =585
                    ColumnOrder =1
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text14"
                    ControlSource ="=FctNr()"
                    GridlineColor =10921638

                    LayoutCachedLeft =3396
                    LayoutCachedTop =555
                    LayoutCachedWidth =4587
                    LayoutCachedHeight =870
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =85
                            Left =630
                            Top =555
                            Width =1860
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bezeichnungsfeld15"
                            Caption ="Nr."
                            GridlineColor =10921638
                            LayoutCachedLeft =630
                            LayoutCachedTop =555
                            LayoutCachedWidth =2490
                            LayoutCachedHeight =870
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_500_20_Geb_Begehungen_UF.cls"
