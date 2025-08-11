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
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    DefaultView =0
    AllowUpdating =1
    ScrollBars =2
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =21881
    DatasheetFontHeight =10
    ItemSuffix =217
    Left =1440
    Top =1060
    Right =23583
    Bottom =11194
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0xe4005df58d2fe540
    End
    Caption ="Zeitaufwendungen zu (Teil-)Maßnahmen mit aktivierter Eigenleistung"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    PictureSizeMode =1
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =3
            FontSize =9
            FontWeight =700
            ForeColor =10040879
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
            LabelAlign =3
            TextAlign =1
            BorderLineStyle =0
            BackStyle =0
            Width =3228
            Height =270
            LabelX =-191
            FontSize =9
            BorderColor =12632256
            ForeColor =10040879
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
            AutoLabel = NotDefault
            TextAlign =1
            BorderLineStyle =0
            BackStyle =0
            Width =3228
            Height =270
            LabelX =-1701
            FontSize =9
            BorderColor =12632256
            ForeColor =10040879
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
        Begin Section
            CanGrow = NotDefault
            Height =10148
            BackColor =16514043
            Name ="Detailbereich"
            Begin
                Begin ListBox
                    SpecialEffect =3
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =111
                    Top =1024
                    Width =1817
                    Height =2268
                    FontSize =9
                    BackColor =15466495
                    BorderColor =12632256
                    Name ="LF_SB_er"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, Sachbearbeiter.Name FROM Sachbearbeiter WHERE (((Sachb"
                        "earbeiter.Name)<>\"Alle\") AND (([Objektverantwortlicher]=True Or [Fachplaner_El"
                        "ektro]=True Or [Fachplaner_HLS]=True)=True)) ORDER BY Sachbearbeiter.Name;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="=Year(Date())"

                    LayoutCachedLeft =111
                    LayoutCachedTop =1024
                    LayoutCachedWidth =1928
                    LayoutCachedHeight =3292
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =0
                            Left =113
                            Top =680
                            Width =1414
                            Height =240
                            ForeColor =0
                            Name ="Bezeichnungsfeld83"
                            Caption ="Sachbearbeiter:"
                            LayoutCachedLeft =113
                            LayoutCachedTop =680
                            LayoutCachedWidth =1527
                            LayoutCachedHeight =920
                        End
                    End
                End
                Begin Label
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =0
                    Left =113
                    Top =113
                    Width =17700
                    Height =345
                    FontSize =12
                    ForeColor =0
                    Name ="Bezeichnungsfeld168"
                    Caption ="Zeitaufwendungen zu (Teil-)Maßnahmen mit aktivierbarer Eigenleistung"
                    LayoutCachedLeft =113
                    LayoutCachedTop =113
                    LayoutCachedWidth =17813
                    LayoutCachedHeight =458
                End
                Begin ListBox
                    SpecialEffect =3
                    OverlapFlags =87
                    IMESentenceMode =3
                    ColumnCount =4
                    Left =2497
                    Top =1021
                    Width =15538
                    Height =2268
                    TabIndex =1
                    BackColor =15466495
                    BorderColor =12632256
                    Name ="LF_Teilmassnahmen"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT [Teile der Maßnahmen].ID, Maßnahmen.ID, [M_Strassenverzeichnis].[name] & "
                        "\" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & \" > \" &"
                        " [Gebäudeteil] & \": \" & [Maßnahme] & \"->\" & [Teilmaßname] AS massn, Maßnahme"
                        "n.Aktiv_Eigenl_Bem FROM tbl_100_10_Liegenschaften INNER JOIN ((tbl_100_20_Gebäud"
                        "eteile LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Stra"
                        "ße = M_Strassenverzeichnis.Kennummer) INNER JOIN (Maßnahmen INNER JOIN [Teile de"
                        "r Maßnahmen] ON Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]) ON tbl_"
                        "100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil) ON tbl_100_10_Lie"
                        "genschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude WHERE (((Maßnahmen.A"
                        "ktiv_Eigenl)=True) AND (([Teile der Maßnahmen].ID_SB)=F_variable(\"lng_ID_SB\"))"
                        " AND (([Teile der Maßnahmen].Umsetzungsjahr) Between (IIf(Month(Date())=1,Year(D"
                        "ate())-1,Year(Date()))) And Year(Date()))) ORDER BY [M_Strassenverzeichnis].[nam"
                        "e] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & \" >"
                        " \" & [Gebäudeteil] & \": \" & [Maßnahme] & \"->\" & [Teilmaßname];"
                    ColumnWidths ="0;0;;0"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="=Year(Date())"

                    LayoutCachedLeft =2497
                    LayoutCachedTop =1021
                    LayoutCachedWidth =18035
                    LayoutCachedHeight =3289
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =0
                            Left =2503
                            Top =677
                            Width =5777
                            Height =240
                            ForeColor =0
                            Name ="Bezeichnungsfeld187"
                            Caption ="Teilmaßnahmen des Sachbearbeiters mit aktivierter Eigenleistung:"
                            LayoutCachedLeft =2503
                            LayoutCachedTop =677
                            LayoutCachedWidth =8280
                            LayoutCachedHeight =917
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =85
                    SpecialEffect =0
                    BorderWidth =1
                    Left =2494
                    Top =3806
                    Width =10273
                    Height =5374
                    TabIndex =2
                    Name ="UF_Stunden"
                    SourceObject ="Form.frm_030_40_Maßn_SB_Eigenl_Std"

                    LayoutCachedLeft =2494
                    LayoutCachedTop =3806
                    LayoutCachedWidth =12767
                    LayoutCachedHeight =9180
                    BorderThemeColorIndex =0
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =0
                    Left =2128
                    Top =1414
                    Width =165
                    Height =210
                    FontSize =11
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld71"
                    Caption =">"
                    LayoutCachedLeft =2128
                    LayoutCachedTop =1414
                    LayoutCachedWidth =2293
                    LayoutCachedHeight =1624
                    ForeShade =50.0
                End
                Begin Line
                    OverlapFlags =85
                    Width =141
                    BorderColor =4138256
                    Name ="Linie37"
                    GridlineColor =10921638
                    LayoutCachedWidth =141
                    BorderShade =50.0
                    GridlineShade =65.0
                End
                Begin Line
                    OverlapFlags =87
                    Left =2042
                    Top =1551
                    Width =115
                    BorderColor =4138256
                    Name ="Linie189"
                    GridlineColor =10921638
                    LayoutCachedLeft =2042
                    LayoutCachedTop =1551
                    LayoutCachedWidth =2157
                    LayoutCachedHeight =1551
                    BorderShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    Vertical = NotDefault
                    OverlapFlags =93
                    TextAlign =0
                    Left =3574
                    Top =3609
                    Width =375
                    Height =180
                    FontSize =14
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld190"
                    Caption =">"
                    LayoutCachedLeft =3574
                    LayoutCachedTop =3609
                    LayoutCachedWidth =3949
                    LayoutCachedHeight =3789
                    ForeShade =50.0
                End
                Begin Line
                    OverlapFlags =87
                    Left =3770
                    Top =3341
                    Width =0
                    Height =335
                    BorderColor =4138256
                    Name ="Linie82"
                    GridlineColor =10921638
                    LayoutCachedLeft =3770
                    LayoutCachedTop =3341
                    LayoutCachedWidth =3770
                    LayoutCachedHeight =3676
                    BorderShade =50.0
                    GridlineShade =65.0
                End
                Begin OptionGroup
                    BorderWidth =2
                    OverlapFlags =93
                    Left =13323
                    Top =4429
                    Width =7605
                    Height =1638
                    TabIndex =3
                    Name ="OR_Ausw_Auswertung"
                    DefaultValue ="1"
                    Tag ="*Admin*Speziell_A*"

                    LayoutCachedLeft =13323
                    LayoutCachedTop =4429
                    LayoutCachedWidth =20928
                    LayoutCachedHeight =6067
                    BorderThemeColorIndex =0
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =223
                            TextAlign =0
                            Left =13494
                            Top =4311
                            Width =4183
                            Height =240
                            BackColor =16514043
                            Name ="Bezeichnungsfeld193"
                            Caption ="Auswertung der aktiverten Eigenleistungen zu .."
                            Tag ="*Admin*Speziell_A*"
                            LayoutCachedLeft =13494
                            LayoutCachedTop =4311
                            LayoutCachedWidth =17677
                            LayoutCachedHeight =4551
                            ForeThemeColorIndex =0
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =13551
                            Top =4684
                            OptionValue =1
                            Name ="Option194"
                            Tag ="*Admin*Speziell_A*"

                            LayoutCachedLeft =13551
                            LayoutCachedTop =4684
                            LayoutCachedWidth =13811
                            LayoutCachedHeight =4924
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    TextAlign =0
                                    Left =13777
                                    Top =4654
                                    Width =6441
                                    Height =240
                                    Name ="Bezeichnungsfeld195"
                                    Caption ="allen Stunden aller Sachbearbeiter zu allen Maßnahmen"
                                    Tag ="*Admin*Speziell_A*"
                                    LayoutCachedLeft =13777
                                    LayoutCachedTop =4654
                                    LayoutCachedWidth =20218
                                    LayoutCachedHeight =4894
                                    ForeThemeColorIndex =0
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =13554
                            Top =5018
                            TabIndex =1
                            OptionValue =2
                            Name ="Option196"
                            Tag ="*Admin*Speziell_A*"

                            LayoutCachedLeft =13554
                            LayoutCachedTop =5018
                            LayoutCachedWidth =13814
                            LayoutCachedHeight =5258
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    TextAlign =0
                                    Left =13777
                                    Top =4989
                                    Width =6441
                                    Height =240
                                    Name ="Bezeichnungsfeld197"
                                    Caption ="allen Stunden aller Sachbearbeiter zur markierten Maßnahme"
                                    Tag ="*Admin*Speziell_A*"
                                    LayoutCachedLeft =13777
                                    LayoutCachedTop =4989
                                    LayoutCachedWidth =20218
                                    LayoutCachedHeight =5229
                                    ForeThemeColorIndex =0
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =13554
                            Top =5352
                            TabIndex =2
                            OptionValue =3
                            Name ="Option198"
                            Tag ="*Admin*Speziell_A*"

                            LayoutCachedLeft =13554
                            LayoutCachedTop =5352
                            LayoutCachedWidth =13814
                            LayoutCachedHeight =5592
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    TextAlign =0
                                    Left =13785
                                    Top =5323
                                    Width =6441
                                    Height =240
                                    Name ="Bezeichnungsfeld199"
                                    Caption ="allen Stunden zum markierten Sachbearbeiter zu allen Maßnahmen"
                                    Tag ="*Admin*Speziell_A*"
                                    LayoutCachedLeft =13785
                                    LayoutCachedTop =5323
                                    LayoutCachedWidth =20226
                                    LayoutCachedHeight =5563
                                    ForeThemeColorIndex =0
                                End
                            End
                        End
                    End
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =13383
                    Top =7029
                    Width =1876
                    Height =291
                    FontSize =9
                    FontWeight =700
                    TabIndex =4
                    ForeColor =4138256
                    Name ="BS_Drucken"
                    Caption ="Bericht drucken .."
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    Tag ="*Admin*Speziell_A*"
                    ControlTipText ="Datensatz löschen"

                    LayoutCachedLeft =13383
                    LayoutCachedTop =7029
                    LayoutCachedWidth =15259
                    LayoutCachedHeight =7320
                    ForeShade =50.0
                    Overlaps =1
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =15438
                    Top =7029
                    Width =1628
                    Height =291
                    FontSize =9
                    FontWeight =700
                    TabIndex =5
                    ForeColor =4138256
                    Name ="BS_Excel_Exp"
                    Caption ="Excel-Export"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    Tag ="*Admin*Speziell_A*"
                    ControlTipText ="Datensatz löschen"

                    LayoutCachedLeft =15438
                    LayoutCachedTop =7029
                    LayoutCachedWidth =17066
                    LayoutCachedHeight =7320
                    ForeShade =50.0
                    Overlaps =1
                End
                Begin Rectangle
                    OverlapFlags =255
                    Left =13099
                    Top =3806
                    Width =8224
                    Height =3849
                    BorderColor =2366701
                    Name ="Rechteck202"
                    Tag ="*Admin*Speziell_A*"
                    LayoutCachedLeft =13099
                    LayoutCachedTop =3806
                    LayoutCachedWidth =21323
                    LayoutCachedHeight =7655
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =19686
                    Top =8619
                    Width =1628
                    Height =291
                    FontSize =9
                    FontWeight =700
                    TabIndex =6
                    ForeColor =4138256
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    ControlTipText ="Datensatz löschen"

                    LayoutCachedLeft =19686
                    LayoutCachedTop =8619
                    LayoutCachedWidth =21314
                    LayoutCachedHeight =8910
                    ForeShade =50.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =247
                    TextAlign =0
                    Left =13151
                    Top =3857
                    Width =1635
                    Height =255
                    BackColor =16514043
                    ForeColor =2366701
                    Name ="Bezeichnungsfeld204"
                    Caption ="nur Admin:"
                    Tag ="*Admin*Speziell_A*"
                    LayoutCachedLeft =13151
                    LayoutCachedTop =3857
                    LayoutCachedWidth =14786
                    LayoutCachedHeight =4112
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =93
                    TextAlign =3
                    IMESentenceMode =3
                    Left =15820
                    Top =3291
                    Width =2215
                    Height =240
                    FontWeight =700
                    TabIndex =7
                    ForeColor =1643706
                    Name ="Text205"
                    ControlSource ="=[LF_Teilmassnahmen].[ListCount]"
                    Format ="#\" Teilmaßnahme(n)\""

                    LayoutCachedLeft =15820
                    LayoutCachedTop =3291
                    LayoutCachedWidth =18035
                    LayoutCachedHeight =3531
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =0
                    IMESentenceMode =3
                    Left =18138
                    Top =1013
                    Width =3184
                    Height =2279
                    FontWeight =700
                    TabIndex =8
                    ForeColor =1643706
                    Name ="Text207"
                    ControlSource ="=[LF_Teilmassnahmen].[column](3)"

                    LayoutCachedLeft =18138
                    LayoutCachedTop =1013
                    LayoutCachedWidth =21322
                    LayoutCachedHeight =3292
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =0
                            Left =18143
                            Top =677
                            Width =1105
                            Height =240
                            ForeColor =0
                            Name ="Bezeichnungsfeld208"
                            Caption ="Bemerkung:"
                            LayoutCachedLeft =18143
                            LayoutCachedTop =677
                            LayoutCachedWidth =19248
                            LayoutCachedHeight =917
                        End
                    End
                End
                Begin TextBox
                    SpecialEffect =2
                    OverlapFlags =247
                    BackStyle =1
                    IMESentenceMode =3
                    Left =14866
                    Top =6236
                    Width =1351
                    Height =249
                    TabIndex =9
                    BackColor =15466495
                    Name ="TF_Stichtag_ab"
                    Format ="Short Date"
                    DefaultValue ="cdate(\"01.01.\" & Year(Date()))"
                    Tag ="*Admin*Speziell_A*"

                    LayoutCachedLeft =14866
                    LayoutCachedTop =6236
                    LayoutCachedWidth =16217
                    LayoutCachedHeight =6485
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            Left =13596
                            Top =6236
                            Width =1080
                            Height =240
                            Name ="Bezeichnungsfeld214"
                            Caption ="ab Stichtag:"
                            Tag ="*Admin*Speziell_A*"
                            LayoutCachedLeft =13596
                            LayoutCachedTop =6236
                            LayoutCachedWidth =14676
                            LayoutCachedHeight =6476
                            ForeThemeColorIndex =0
                        End
                    End
                End
                Begin TextBox
                    SpecialEffect =2
                    OverlapFlags =247
                    BackStyle =1
                    IMESentenceMode =3
                    Left =14863
                    Top =6540
                    Width =1351
                    Height =249
                    TabIndex =10
                    BackColor =15466495
                    Name ="TF_Stichtag_bis"
                    Format ="Short Date"
                    DefaultValue ="CDate(\"31.12.\" & Year(Date()))"
                    Tag ="*Admin*Speziell_A*"

                    LayoutCachedLeft =14863
                    LayoutCachedTop =6540
                    LayoutCachedWidth =16214
                    LayoutCachedHeight =6789
                    ForeThemeColorIndex =0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            Left =13546
                            Top =6540
                            Width =1123
                            Height =240
                            Name ="Bezeichnungsfeld216"
                            Caption ="bis Stichtag:"
                            Tag ="*Admin*Speziell_A*"
                            LayoutCachedLeft =13546
                            LayoutCachedTop =6540
                            LayoutCachedWidth =14669
                            LayoutCachedHeight =6780
                            ForeThemeColorIndex =0
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_030_30_Maßn_SB_Eigenleistungen.cls"
