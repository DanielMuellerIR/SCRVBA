Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    OrderByOn = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9127
    DatasheetFontHeight =11
    ItemSuffix =47
    Left =13395
    Top =11880
    Right =23025
    Bottom =12990
    OrderBy ="Flur"
    RecSrcDt = Begin
        0x72dab55178f4e440
    End
    RecordSource ="tbl_070_10_Flure"
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
        Begin FormHeader
            Height =485
            BackColor =-2147483633
            Name ="Formularkopf"
            AlternateBackShade =95.0
            Begin
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =345
                    Top =120
                    Width =285
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld28"
                    Caption ="ID_Flur"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =345
                    LayoutCachedTop =120
                    LayoutCachedWidth =630
                    LayoutCachedHeight =435
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =690
                    Top =120
                    Width =285
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld29"
                    Caption ="ID_Gemarkung"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =690
                    LayoutCachedTop =120
                    LayoutCachedWidth =975
                    LayoutCachedHeight =435
                    ColumnStart =1
                    ColumnEnd =1
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =1035
                    Top =120
                    Width =2100
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld30"
                    Caption ="Flure zur Gemarkung"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =1035
                    LayoutCachedTop =120
                    LayoutCachedWidth =3135
                    LayoutCachedHeight =435
                    ColumnStart =2
                    ColumnEnd =2
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    OverlapFlags =85
                    BackStyle =0
                    IMESentenceMode =3
                    Left =3174
                    Top =113
                    Height =315
                    FontSize =10
                    FontWeight =700
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Text39"
                    ControlSource ="=[Forms]![frm_005_10_10_Gemarkungen]![TF_Gemarkung]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =3174
                    LayoutCachedTop =113
                    LayoutCachedWidth =4875
                    LayoutCachedHeight =428
                    BorderTint =50.0
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =345
            BackColor =-2147483633
            Name ="Detailbereich"
            AlternateBackColor =-2147483633
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =345
                    Top =30
                    Width =285
                    Height =285
                    ColumnWidth =840
                    FontSize =10
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4138256
                    Name ="ID_Flur"
                    ControlSource ="ID_Flur"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =345
                    LayoutCachedTop =30
                    LayoutCachedWidth =630
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =2
                    IMESentenceMode =3
                    Left =1035
                    Top =30
                    Width =2100
                    Height =285
                    FontSize =10
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4138256
                    Name ="TF_Flur"
                    ControlSource ="Flur"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =1035
                    LayoutCachedTop =30
                    LayoutCachedWidth =3135
                    LayoutCachedHeight =315
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
                    Left =690
                    Top =30
                    Width =285
                    Height =285
                    FontSize =10
                    BorderColor =10921638
                    ForeColor =4138256
                    Name ="ID_Gemarkung"
                    ControlSource ="ID_Gemarkung"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =690
                    LayoutCachedTop =30
                    LayoutCachedWidth =975
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3174
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

                    LayoutCachedLeft =3174
                    LayoutCachedWidth =3639
                    LayoutCachedHeight =315
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
            Height =4365
            BackColor =-2147483633
            Name ="Formularfuß"
            AlternateBackShade =95.0
            Begin
                Begin Subform
                    OverlapFlags =85
                    BorderWidth =1
                    Left =283
                    Top =111
                    Width =8566
                    Height =3751
                    BorderColor =4138256
                    Name ="Untergeordnet37"
                    SourceObject ="Form.frm_005_10_25_UF_Flurstuecke"
                    LinkChildFields ="ID_Flur"
                    LinkMasterFields ="ID_Flur"
                    GridlineColor =10921638

                    LayoutCachedLeft =283
                    LayoutCachedTop =111
                    LayoutCachedWidth =8849
                    LayoutCachedHeight =3862
                    BorderShade =50.0
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_005_10_20_UF_Flure.cls"
