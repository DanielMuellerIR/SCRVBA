Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    ScrollBars =0
    ViewsAllowed =1
    RecordLocks =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =14173
    DatasheetFontHeight =11
    ItemSuffix =126
    Left =7404
    Top =3233
    Right =21573
    Bottom =7567
    RecSrcDt = Begin
        0x7198cb8fcc19e540
    End
    RecordSource ="SELECT tbl_100_40_Zuordn_Gebteile_Koststellen.*, [NAme] & \" \" & [tbl_100_20_Ge"
        "bäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & \" --> \" & [Gebäudeteil] AS Ob"
        "j FROM tbl_100_10_Liegenschaften INNER JOIN ((tbl_100_20_Gebäudeteile LEFT JOIN "
        "M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenve"
        "rzeichnis.Kennummer) INNER JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON tbl_10"
        "0_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Geb"
        "äudeteil) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_G"
        "ebäude WHERE (((tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil)=F_Variabl"
        "e(\"lng_ID_Geb_Teil\"))) ORDER BY tbl_100_40_Zuordn_Gebteile_Koststellen.Datum_v"
        "on;"
    Caption ="Kostenstellen-Historie zum Gebäudeteil:"
    DatasheetFontName ="Calibri"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    AllowLayoutView =0
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            FontSize =9
            FontWeight =700
            ForeColor =4072463
            FontName ="Arial"
            BorderTint =50.0
            ForeShade =50.0
            GridlineShade =65.0
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
            BorderShade =65.0
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
        Begin CheckBox
            BorderLineStyle =0
            LabelX =-1304
            LabelY =27
            BorderShade =65.0
            GridlineShade =65.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            BorderLineStyle =0
            Width =1701
            Height =315
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
            AsianLineBreak =1
            BorderShade =65.0
            ForeTint =75.0
            GridlineShade =65.0
        End
        Begin ListBox
            BorderLineStyle =0
            Width =6627
            Height =516
            LabelX =-1588
            LabelY =57
            FontSize =9
            ForeColor =4072463
            FontName ="Arial"
            AllowValueListEdits =1
            InheritValueList =1
            BorderShade =65.0
            ForeShade =50.0
            GridlineShade =65.0
        End
        Begin ComboBox
            BorderLineStyle =0
            Width =3462
            Height =315
            LabelX =-1701
            LabelY =39
            FontSize =9
            FontName ="Arial"
            AllowValueListEdits =1
            InheritValueList =1
            BorderShade =65.0
            ForeTint =75.0
            GridlineShade =65.0
        End
        Begin FormHeader
            Height =1644
            BackColor =16774131
            Name ="Formularkopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =128
                    Top =174
                    Width =5970
                    Height =315
                    FontSize =11
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld2"
                    Caption ="Kostenstellen-Historie zum Gebäudeteil:"
                    GridlineColor =10921638
                    LayoutCachedLeft =128
                    LayoutCachedTop =174
                    LayoutCachedWidth =6098
                    LayoutCachedHeight =489
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    BorderWidth =3
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =0
                    IMESentenceMode =3
                    Left =1934
                    Top =564
                    Width =12012
                    Height =345
                    ColumnWidth =5160
                    ColumnOrder =0
                    FontSize =12
                    FontWeight =700
                    TabIndex =1
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Gebäudeteil"
                    ControlSource ="Obj"
                    GridlineColor =10921638

                    LayoutCachedLeft =1934
                    LayoutCachedTop =564
                    LayoutCachedWidth =13946
                    LayoutCachedHeight =909
                    BorderTint =50.0
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =113
                            Top =564
                            Width =1530
                            Height =345
                            FontSize =12
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld11"
                            Caption ="Gebäudeteil:"
                            GridlineColor =10921638
                            LayoutCachedLeft =113
                            LayoutCachedTop =564
                            LayoutCachedWidth =1643
                            LayoutCachedHeight =909
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6180
                    Top =165
                    Height =270
                    ColumnWidth =1575
                    ColumnOrder =1
                    Name ="TF_ID_Gebäudeteil"
                    ControlSource ="ID_Gebäudeteil"
                    StatusBarText ="Primärschlüssel"

                    LayoutCachedLeft =6180
                    LayoutCachedTop =165
                    LayoutCachedWidth =7881
                    LayoutCachedHeight =435
                    ForeThemeColorIndex =1
                    ForeTint =100.0
                    ForeShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =2540
                    Top =1141
                    Width =5665
                    Height =258
                    FontSize =8
                    Name ="Bezeichnungsfeld94"
                    Caption ="Kostenstelle Infoma:"
                    GroupTable =1
                    LayoutCachedLeft =2540
                    LayoutCachedTop =1141
                    LayoutCachedWidth =8205
                    LayoutCachedHeight =1399
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    Left =122
                    Top =1141
                    Width =1141
                    Height =258
                    FontSize =8
                    Name ="Bezeichnungsfeld95"
                    Caption ="Datum von:"
                    GroupTable =1
                    LayoutCachedLeft =122
                    LayoutCachedTop =1141
                    LayoutCachedWidth =1263
                    LayoutCachedHeight =1399
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    Left =1331
                    Top =1141
                    Width =1141
                    Height =258
                    FontSize =8
                    Name ="Bezeichnungsfeld96"
                    Caption ="Datum bis:"
                    GroupTable =1
                    LayoutCachedLeft =1331
                    LayoutCachedTop =1141
                    LayoutCachedWidth =2472
                    LayoutCachedHeight =1399
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    Left =8273
                    Top =1141
                    Width =5665
                    Height =258
                    FontSize =8
                    Name ="Bezeichnungsfeld97"
                    Caption ="Bemerkung:"
                    GroupTable =1
                    LayoutCachedLeft =8273
                    LayoutCachedTop =1141
                    LayoutCachedWidth =13938
                    LayoutCachedHeight =1399
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin Line
                    BorderWidth =2
                    OverlapFlags =85
                    Left =120
                    Top =1474
                    Width =13756
                    Name ="Linie110"
                    GridlineColor =10921638
                    LayoutCachedLeft =120
                    LayoutCachedTop =1474
                    LayoutCachedWidth =13876
                    LayoutCachedHeight =1474
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
            End
        End
        Begin Section
            Height =396
            BackColor =16774131
            Name ="Detailbereich"
            AlternateBackColor =16774131
            Begin
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2540
                    Top =41
                    Width =5665
                    Height =258
                    ColumnWidth =7320
                    FontSize =8
                    TabIndex =2
                    Name ="KF_Kenn_Kostst"
                    ControlSource ="Kenn_Kostst"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT M_Kostenstellen.Kennummer, Format([Kostenstelle_Infoma],\"00000\") & \": "
                        "\" & [Bezeichnung] AS KS FROM M_Kostenstellen ORDER BY M_Kostenstellen.Bezeichnu"
                        "ng;"
                    ColumnWidths ="0"
                    GroupTable =1
                    AllowValueListEdits =0

                    LayoutCachedLeft =2540
                    LayoutCachedTop =41
                    LayoutCachedWidth =8205
                    LayoutCachedHeight =299
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =122
                    Top =41
                    Width =1141
                    Height =258
                    FontSize =8
                    Name ="TF_Datum_von"
                    ControlSource ="Datum_von"
                    GroupTable =1

                    LayoutCachedLeft =122
                    LayoutCachedTop =41
                    LayoutCachedWidth =1263
                    LayoutCachedHeight =299
                    RowStart =1
                    RowEnd =1
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1331
                    Top =41
                    Width =1141
                    Height =258
                    FontSize =8
                    TabIndex =1
                    Name ="TF_Datum_bis"
                    ControlSource ="Datum_bis"
                    GroupTable =1

                    LayoutCachedLeft =1331
                    LayoutCachedTop =41
                    LayoutCachedWidth =2472
                    LayoutCachedHeight =299
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8273
                    Top =41
                    Width =5665
                    Height =258
                    FontSize =8
                    TabIndex =3
                    Name ="TF_Bemerkung"
                    ControlSource ="Bemerkung"
                    GroupTable =1

                    LayoutCachedLeft =8273
                    LayoutCachedTop =41
                    LayoutCachedWidth =13938
                    LayoutCachedHeight =299
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
            End
        End
        Begin FormFooter
            Height =737
            BackColor =16774131
            Name ="Formularfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Line
                    BorderWidth =2
                    OverlapFlags =85
                    Left =120
                    Top =75
                    Width =13756
                    Name ="Linie111"
                    GridlineColor =10921638
                    LayoutCachedLeft =120
                    LayoutCachedTop =75
                    LayoutCachedWidth =13876
                    LayoutCachedHeight =75
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =12871
                    Top =226
                    Width =1005
                    Height =360
                    FontSize =9
                    FontWeight =700
                    ForeColor =4138256
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =12871
                    LayoutCachedTop =226
                    LayoutCachedWidth =13876
                    LayoutCachedHeight =586
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                    UseTheme =0
                    Shape =0
                    Gradient =0
                    BackThemeColorIndex =-1
                    BackTint =100.0
                    BorderColor =0
                    BorderThemeColorIndex =-1
                    BorderTint =100.0
                    ThemeFontIndex =-1
                    HoverThemeColorIndex =-1
                    HoverTint =100.0
                    PressedThemeColorIndex =-1
                    PressedShade =100.0
                    HoverForeThemeColorIndex =-1
                    HoverForeTint =100.0
                    PressedForeThemeColorIndex =-1
                    PressedForeTint =100.0
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =120
                    Top =226
                    Width =3870
                    Height =360
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    ForeColor =4138256
                    Name ="BS_KS_Neu"
                    Caption ="Neue Kostenstellen-Zuordnung anlegen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =120
                    LayoutCachedTop =226
                    LayoutCachedWidth =3990
                    LayoutCachedHeight =586
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                    UseTheme =0
                    Shape =0
                    Gradient =0
                    BackThemeColorIndex =-1
                    BackTint =100.0
                    BorderColor =0
                    BorderThemeColorIndex =-1
                    BorderTint =100.0
                    ThemeFontIndex =-1
                    HoverThemeColorIndex =-1
                    HoverTint =100.0
                    PressedThemeColorIndex =-1
                    PressedShade =100.0
                    HoverForeThemeColorIndex =-1
                    HoverForeTint =100.0
                    PressedForeThemeColorIndex =-1
                    PressedForeTint =100.0
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4095
                    Top =225
                    Width =4237
                    Height =360
                    FontSize =9
                    FontWeight =700
                    TabIndex =2
                    ForeColor =4138256
                    Name ="BS_KS_Loeschen"
                    Caption ="markierte Kostenstellen-Zuordnung löschen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =4095
                    LayoutCachedTop =225
                    LayoutCachedWidth =8332
                    LayoutCachedHeight =585
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineThemeColorIndex =-1
                    GridlineShade =100.0
                    UseTheme =0
                    Shape =0
                    Gradient =0
                    BackThemeColorIndex =-1
                    BackTint =100.0
                    BorderColor =0
                    BorderThemeColorIndex =-1
                    BorderTint =100.0
                    ThemeFontIndex =-1
                    HoverThemeColorIndex =-1
                    HoverTint =100.0
                    PressedThemeColorIndex =-1
                    PressedShade =100.0
                    HoverForeThemeColorIndex =-1
                    HoverForeTint =100.0
                    PressedForeThemeColorIndex =-1
                    PressedForeTint =100.0
                    Overlaps =1
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_010_050_GebTeil_UF_Kostenst_Hitorie.cls"
