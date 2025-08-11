Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =11678
    DatasheetFontHeight =11
    ItemSuffix =33
    Left =6711
    Top =1970
    Right =18679
    Bottom =10311
    RecSrcDt = Begin
        0x476d093378f4e440
    End
    RecordSource ="SELECT tbl_050_10_Gemarkungen.* FROM tbl_050_10_Gemarkungen ORDER BY tbl_050_10_"
        "Gemarkungen.Gemarkung;"
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
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
            GridlineShade =65.0
            BorderShade =65.0
            ShowPageHeaderAndPageFooter =1
        End
        Begin FormHeader
            Height =793
            BackColor =-2147483633
            Name ="Formularkopf"
            AlternateBackShade =95.0
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =226
                    Top =56
                    Width =1695
                    Height =345
                    FontSize =12
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld3"
                    Caption ="Gemarkungen"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =226
                    LayoutCachedTop =56
                    LayoutCachedWidth =1921
                    LayoutCachedHeight =401
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =285
                    Top =450
                    Width =1695
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld4"
                    Caption ="Gemarkung"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =285
                    LayoutCachedTop =450
                    LayoutCachedWidth =1980
                    LayoutCachedHeight =765
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =2040
                    Top =450
                    Width =915
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld5"
                    Caption ="Abkürzung"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =2040
                    LayoutCachedTop =450
                    LayoutCachedWidth =2955
                    LayoutCachedHeight =765
                    ColumnStart =1
                    ColumnEnd =1
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =3015
                    Top =450
                    Width =1965
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld6"
                    Caption ="Gemark.-Schluessel"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =3015
                    LayoutCachedTop =450
                    LayoutCachedWidth =4980
                    LayoutCachedHeight =765
                    ColumnStart =2
                    ColumnEnd =2
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =5040
                    Top =450
                    Width =246
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld13"
                    Caption ="ID_Gemarkung"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =5040
                    LayoutCachedTop =450
                    LayoutCachedWidth =5286
                    LayoutCachedHeight =765
                    ColumnStart =3
                    ColumnEnd =3
                    ForeTint =100.0
                    ForeShade =50.0
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =375
            BackColor =-2147483633
            Name ="Detailbereich"
            AlternateBackColor =-2147483633
            Begin
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =285
                    Top =30
                    Width =1695
                    Height =315
                    ColumnWidth =2505
                    FontSize =10
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="TF_Gemarkung"
                    ControlSource ="Gemarkung"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =285
                    LayoutCachedTop =30
                    LayoutCachedWidth =1980
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2040
                    Top =30
                    Width =915
                    Height =315
                    ColumnWidth =1620
                    FontSize =10
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Gemark_Abk"
                    ControlSource ="Gemark_Abk"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =2040
                    LayoutCachedTop =30
                    LayoutCachedWidth =2955
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3015
                    Top =30
                    Width =1965
                    Height =315
                    FontSize =10
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Gemark_Schluessel"
                    ControlSource ="Gemark_Schluessel"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =3015
                    LayoutCachedTop =30
                    LayoutCachedWidth =4980
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5040
                    Top =30
                    Width =246
                    Height =315
                    ColumnWidth =990
                    FontSize =10
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="ID_Gemarkung"
                    ControlSource ="ID_Gemarkung"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =5040
                    LayoutCachedTop =30
                    LayoutCachedWidth =5286
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5325
                    Top =15
                    Width =465
                    Height =315
                    TabIndex =4
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

                    LayoutCachedLeft =5325
                    LayoutCachedTop =15
                    LayoutCachedWidth =5790
                    LayoutCachedHeight =330
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    BackColor =14136213
                    BorderColor =14136213
                End
            End
        End
        Begin FormFooter
            CanGrow = NotDefault
            Height =6803
            BackColor =-2147483633
            Name ="Formularfuß"
            AlternateBackShade =95.0
            Begin
                Begin Subform
                    OverlapFlags =85
                    BorderWidth =1
                    Left =283
                    Top =226
                    Width =9910
                    Height =6471
                    BorderColor =4138256
                    Name ="Untergeordnet20"
                    SourceObject ="Form.frm_005_10_20_UF_Flure"
                    LinkChildFields ="ID_Gemarkung"
                    LinkMasterFields ="ID_Gemarkung"
                    GridlineColor =10921638

                    LayoutCachedLeft =283
                    LayoutCachedTop =226
                    LayoutCachedWidth =10193
                    LayoutCachedHeight =6697
                    BorderShade =50.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =10488
                    Top =6337
                    Width =1005
                    Height =360
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    ForeColor =4138256
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =10488
                    LayoutCachedTop =6337
                    LayoutCachedWidth =11493
                    LayoutCachedHeight =6697
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_005_10_10_Gemarkungen.cls"
