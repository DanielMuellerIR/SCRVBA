Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7880
    DatasheetFontHeight =11
    ItemSuffix =72
    Left =13395
    Top =5325
    Right =23055
    Bottom =9090
    RecSrcDt = Begin
        0x5824133578f4e440
    End
    RecordSource ="SELECT tbl_090_10_Flurstuecke.* FROM tbl_090_10_Flurstuecke ORDER BY tbl_090_10_"
        "Flurstuecke.Flurstueck;"
    Caption ="Gemarkungen / Flure / Flurstücke .."
    DatasheetFontName ="Calibri"
    AllowDatasheetView =0
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
            BorderShade =65.0
            ForeShade =50.0
            GridlineShade =65.0
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
            GridlineShade =65.0
            BorderShade =65.0
            ShowPageHeaderAndPageFooter =1
        End
        Begin EmptyCell
            Height =240
            GridlineColor =12632256
            GridlineShade =65.0
        End
        Begin FormHeader
            Height =737
            BackColor =-2147483633
            Name ="Formularkopf"
            AlternateBackShade =95.0
            Begin
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =285
                    Top =225
                    Width =115
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld43"
                    Caption ="ID_Flurstueck"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =285
                    LayoutCachedTop =225
                    LayoutCachedWidth =400
                    LayoutCachedHeight =540
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =454
                    Top =225
                    Width =115
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld44"
                    Caption ="ID_Flur"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =454
                    LayoutCachedTop =225
                    LayoutCachedWidth =569
                    LayoutCachedHeight =540
                    ColumnStart =1
                    ColumnEnd =1
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    BackStyle =0
                    IMESentenceMode =3
                    Left =624
                    Top =225
                    Width =5723
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Text52"
                    ControlSource ="=\"Flurstücke zur Flur \" & [Forms]![frm_005_10_10_Gemarkungen]![Untergeordnet20"
                        "].[Form]![Flur] & \" der Gemarkung \" & [Forms]![frm_005_10_10_Gemarkungen]![TF_"
                        "Gemarkung]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =624
                    LayoutCachedTop =225
                    LayoutCachedWidth =6347
                    LayoutCachedHeight =540
                    ColumnStart =3
                    ColumnEnd =3
                    BorderTint =50.0
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =6463
                    Top =223
                    Width =866
                    Height =300
                    FontWeight =700
                    Name ="Bezeichnungsfeld69"
                    Caption ="Erbpacht"
                    LayoutCachedLeft =6463
                    LayoutCachedTop =223
                    LayoutCachedWidth =7329
                    LayoutCachedHeight =523
                End
                Begin Line
                    BorderWidth =2
                    OverlapFlags =85
                    Left =626
                    Top =623
                    Width =7027
                    Name ="Linie70"
                    GridlineColor =10921638
                    LayoutCachedLeft =626
                    LayoutCachedTop =623
                    LayoutCachedWidth =7653
                    LayoutCachedHeight =623
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =384
            BackColor =-2147483633
            Name ="Detailbereich"
            AlternateBackColor =-2147483633
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =285
                    Top =30
                    Width =115
                    Height =315
                    ColumnWidth =1417
                    FontSize =10
                    BorderColor =10921638
                    ForeColor =4138256
                    Name ="ID_Flurstueck"
                    ControlSource ="ID_Flurstueck"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =285
                    LayoutCachedTop =30
                    LayoutCachedWidth =400
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =2
                    IMESentenceMode =3
                    Left =624
                    Top =30
                    Width =1547
                    Height =315
                    ColumnWidth =2640
                    FontSize =10
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4138256
                    Name ="Flurstueck"
                    ControlSource ="Flurstueck"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =624
                    LayoutCachedTop =30
                    LayoutCachedWidth =2171
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =454
                    Top =30
                    Width =115
                    Height =315
                    FontSize =10
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4138256
                    Name ="ID_Flur"
                    ControlSource ="ID_Flur"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =454
                    LayoutCachedTop =30
                    LayoutCachedWidth =569
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7200
                    Top =17
                    Width =465
                    Height =315
                    TabIndex =3
                    ForeColor =4210752
                    Name ="BS_Loeschen"
                    Caption ="Befehl24"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dddddddddddddddddddddddddddddddddd7ddddddddddddd ,
                        0xd177dddddd7dddddd1177dddd17dd000dd117ddd71ddd000dd1177d117dddddd ,
                        0xddd117711dddd000ddd11111ddddd000ddd71117ddddd000777111177dddd000 ,
                        0x111ddd1177ddd000ddddddd1177dd000dddddddd11dddddddddddddddddddddd ,
                        0xdddddddddddddddd
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =7200
                    LayoutCachedTop =17
                    LayoutCachedWidth =7665
                    LayoutCachedHeight =332
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    BackColor =14136213
                    BorderColor =14136213
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =6635
                    Top =56
                    TabIndex =4
                    BorderColor =10921638
                    Name ="Erbpacht"
                    ControlSource ="Erbpacht"
                    GridlineColor =10921638

                    LayoutCachedLeft =6635
                    LayoutCachedTop =56
                    LayoutCachedWidth =6895
                    LayoutCachedHeight =296
                End
                Begin Line
                    BorderWidth =1
                    OverlapFlags =85
                    Left =626
                    Top =369
                    Width =7027
                    Name ="Linie71"
                    GridlineColor =10921638
                    LayoutCachedLeft =626
                    LayoutCachedTop =369
                    LayoutCachedWidth =7653
                    LayoutCachedHeight =369
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
            End
        End
        Begin FormFooter
            Height =69
            BackColor =-2147483633
            Name ="Formularfuß"
            AlternateBackShade =95.0
        End
    End
End
CodeBehindForm
' See "frm_005_10_25_UF_Flurstuecke.cls"
