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
    AllowUpdating =1
    ScrollBars =2
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9864
    DatasheetFontHeight =10
    ItemSuffix =224
    Left =1766
    Top =5393
    Right =11765
    Bottom =10501
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0xcc35cb008e30e540
    End
    RecordSource ="SELECT Maßnahmen_Eigenl_Stunden.* FROM tbl_010_20_01_User INNER JOIN Maßnahmen_E"
        "igenl_Stunden ON tbl_010_20_01_User.ID_SB = Maßnahmen_Eigenl_Stunden.ID_SB WHERE"
        " (((Maßnahmen_Eigenl_Stunden.ID_Teil_Massn)=F_variable(\"lng_ID_Teil_Massn\")) A"
        "ND (([Username]=getuser() Or fc_Admin()=True)=True)) ORDER BY Maßnahmen_Eigenl_S"
        "tunden.Eigenl_Datum;"
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
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin FormHeader
            Height =1587
            BackColor =16514043
            Name ="Formularkopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Label
                    OverlapFlags =93
                    Left =3926
                    Top =1128
                    Width =1549
                    Height =245
                    ForeColor =0
                    Name ="Bezeichnungsfeld190"
                    Caption ="Datum:"
                    GroupTable =1
                    LayoutCachedLeft =3926
                    LayoutCachedTop =1128
                    LayoutCachedWidth =5475
                    LayoutCachedHeight =1373
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                    GroupTable =1
                End
                Begin Label
                    Visible = NotDefault
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =285
                    Top =1128
                    Width =315
                    Height =245
                    BackColor =967423
                    Name ="Bezeichnungsfeld188"
                    Caption ="ID_Eigenl:"
                    GroupTable =1
                    LayoutCachedLeft =285
                    LayoutCachedTop =1128
                    LayoutCachedWidth =600
                    LayoutCachedHeight =1373
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    Left =5529
                    Top =1128
                    Width =1358
                    Height =245
                    ForeColor =0
                    Name ="Bezeichnungsfeld191"
                    Caption ="Stunden:"
                    GroupTable =1
                    LayoutCachedLeft =5529
                    LayoutCachedTop =1128
                    LayoutCachedWidth =6887
                    LayoutCachedHeight =1373
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =652
                    Top =1128
                    Width =3220
                    Height =245
                    ForeColor =0
                    Name ="Bezeichnungsfeld189"
                    Caption ="Sachbearbeiter:"
                    GroupTable =1
                    LayoutCachedLeft =652
                    LayoutCachedTop =1128
                    LayoutCachedWidth =3872
                    LayoutCachedHeight =1373
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                    GroupTable =1
                End
                Begin Line
                    BorderWidth =2
                    OverlapFlags =85
                    Left =226
                    Top =1476
                    Width =6696
                    Name ="Linie208"
                    LayoutCachedLeft =226
                    LayoutCachedTop =1476
                    LayoutCachedWidth =6922
                    LayoutCachedHeight =1476
                    BorderThemeColorIndex =2
                    BorderShade =50.0
                End
                Begin Label
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =0
                    Left =340
                    Top =113
                    Width =9123
                    Height =326
                    FontSize =12
                    ForeColor =0
                    Name ="Bezeichnungsfeld168"
                    Caption ="Zeitaufwendungen zu (Teil-)Maßnahmen mit aktivierter Eigenleistung"
                    LayoutCachedLeft =340
                    LayoutCachedTop =113
                    LayoutCachedWidth =9463
                    LayoutCachedHeight =439
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =1
                    Left =340
                    Top =559
                    Width =8952
                    Height =240
                    ForeColor =1643706
                    Name ="BF_Datums_Hinweis"
                    LayoutCachedLeft =340
                    LayoutCachedTop =559
                    LayoutCachedWidth =9292
                    LayoutCachedHeight =799
                End
                Begin Line
                    OverlapFlags =95
                    Left =5160
                    Top =783
                    Width =0
                    Height =300
                    BorderColor =1643706
                    Name ="Linie218"
                    LayoutCachedLeft =5160
                    LayoutCachedTop =783
                    LayoutCachedWidth =5160
                    LayoutCachedHeight =1083
                End
                Begin Label
                    Vertical = NotDefault
                    OverlapFlags =215
                    TextAlign =0
                    Left =4954
                    Top =969
                    Width =375
                    Height =180
                    FontSize =14
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld220"
                    Caption =">"
                    LayoutCachedLeft =4954
                    LayoutCachedTop =969
                    LayoutCachedWidth =5329
                    LayoutCachedHeight =1149
                End
            End
        End
        Begin Section
            Height =358
            BackColor =16514043
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =285
                    Top =41
                    Width =315
                    Height =245
                    TabIndex =1
                    BackColor =967423
                    Name ="ID_Eigenl"
                    ControlSource ="ID_Eigenl"
                    GroupTable =1

                    LayoutCachedLeft =285
                    LayoutCachedTop =41
                    LayoutCachedWidth =600
                    LayoutCachedHeight =286
                    RowStart =1
                    RowEnd =1
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                    GroupTable =1
                End
                Begin TextBox
                    SpecialEffect =2
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =3926
                    Top =41
                    Width =1549
                    Height =245
                    TabIndex =2
                    BackColor =15466495
                    ForeColor =0
                    Name ="TF_Eigenl_Datum"
                    ControlSource ="Eigenl_Datum"
                    Format ="Short Date"
                    ValidationRule =">=DT_Std_Eing_Datum_min() And <=DT_Std_Eing_Datum_max()"
                    ValidationText ="Ungültiges Datum. Bitte den roten Hinweis oben lesen..."
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GroupTable =1

                    LayoutCachedLeft =3926
                    LayoutCachedTop =41
                    LayoutCachedWidth =5475
                    LayoutCachedHeight =286
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                    GroupTable =1
                End
                Begin TextBox
                    SpecialEffect =2
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =5529
                    Top =41
                    Width =1358
                    Height =245
                    TabIndex =3
                    BackColor =15466495
                    ForeColor =0
                    Name ="TF_Stunden"
                    ControlSource ="Stunden"
                    Format ="Short Time"
                    AfterUpdate ="[Event Procedure]"
                    InputMask ="00:00;;_"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GroupTable =1

                    LayoutCachedLeft =5529
                    LayoutCachedTop =41
                    LayoutCachedWidth =6887
                    LayoutCachedHeight =286
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                    GroupTable =1
                End
                Begin Line
                    OverlapFlags =85
                    Left =283
                    Top =343
                    Width =6696
                    Name ="Linie215"
                    LayoutCachedLeft =283
                    LayoutCachedTop =343
                    LayoutCachedWidth =6979
                    LayoutCachedHeight =343
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin ComboBox
                    SpecialEffect =2
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =652
                    Top =41
                    Width =3220
                    Height =245
                    BackColor =15466495
                    ForeColor =0
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="TF_ID_SB"
                    ControlSource ="ID_SB"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, Sachbearbeiter.Name FROM Sachbearbeiter INNER JOIN tbl"
                        "_010_20_01_User ON Sachbearbeiter.ID = tbl_010_20_01_User.ID_SB WHERE (((Sachbea"
                        "rbeiter.Name)<>\"Alle\") AND (([Objektverantwortlicher]=True Or [Fachplaner_Elek"
                        "tro]=True Or [Fachplaner_HLS]=True)=True) AND (([Username]=Getuser() Or FC_Admin"
                        "()=True)=True)) ORDER BY Sachbearbeiter.Name;"
                    ColumnWidths ="0"
                    GroupTable =1

                    LayoutCachedLeft =652
                    LayoutCachedTop =41
                    LayoutCachedWidth =3872
                    LayoutCachedHeight =286
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                    GroupTable =1
                End
            End
        End
        Begin FormFooter
            Height =1247
            BackColor =16514043
            Name ="Formularfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Line
                    BorderWidth =2
                    OverlapFlags =85
                    Left =283
                    Top =60
                    Width =6696
                    Name ="Linie209"
                    LayoutCachedLeft =283
                    LayoutCachedTop =60
                    LayoutCachedWidth =6979
                    LayoutCachedHeight =60
                    BorderThemeColorIndex =2
                    BorderShade =50.0
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =3
                    BackStyle =1
                    IMESentenceMode =3
                    Left =7373
                    Top =223
                    Width =334
                    Height =240
                    FontWeight =700
                    BackColor =967423
                    Name ="TF_Summe_Tage"
                    ControlSource ="=Sum([Stunden])"
                    Format ="Standard"

                    LayoutCachedLeft =7373
                    LayoutCachedTop =223
                    LayoutCachedWidth =7707
                    LayoutCachedHeight =463
                    ForeThemeColorIndex =0
                End
                Begin CommandButton
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =343
                    Top =626
                    Width =3214
                    Height =291
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    ForeColor =4138256
                    Name ="BS_DS_Neu"
                    Caption ="Neuer Stunden-Eintrag"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =343
                    LayoutCachedTop =626
                    LayoutCachedWidth =3557
                    LayoutCachedHeight =917
                    ForeShade =50.0
                End
                Begin CommandButton
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =3701
                    Top =626
                    Width =3790
                    Height =291
                    FontSize =9
                    FontWeight =700
                    TabIndex =2
                    ForeColor =4138256
                    Name ="BS_DS_loeschen"
                    Caption ="markierten Stunden-Eintrag löschen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =3701
                    LayoutCachedTop =626
                    LayoutCachedWidth =7491
                    LayoutCachedHeight =917
                    ForeShade =50.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =3
                    IMESentenceMode =3
                    Left =5630
                    Top =226
                    Width =1304
                    Height =240
                    FontWeight =700
                    TabIndex =3
                    BorderColor =0
                    ForeColor =0
                    Name ="Text221"
                    ControlSource ="=fc_Std_Summe([TF_Summe_Tage])"

                    LayoutCachedLeft =5630
                    LayoutCachedTop =226
                    LayoutCachedWidth =6934
                    LayoutCachedHeight =466
                End
                Begin Label
                    OverlapFlags =85
                    Left =3401
                    Top =226
                    Width =2151
                    Height =240
                    ForeColor =0
                    Name ="Bezeichnungsfeld223"
                    Caption ="Stundensumme:"
                    LayoutCachedLeft =3401
                    LayoutCachedTop =226
                    LayoutCachedWidth =5552
                    LayoutCachedHeight =466
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_030_40_Maßn_SB_Eigenl_Std.cls"
