Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =8050
    DatasheetFontHeight =10
    ItemSuffix =626
    Left =10440
    Top =10785
    RecSrcDt = Begin
        0xd7fe58b48df9e440
    End
    RecordSource ="SELECT tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil, tbl_200_30_20_Bew_Bilanz_Wer"
        "terhoehungen.Bauteil, tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Aktivierungs_Datu"
        "m, tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Nutz_dauer_Jahre_Verl, tbl_200_30_20"
        "_Bew_Bilanz_Werterhoehungen.Mehrwert FROM tbl_200_10_10_Bewertungsbilanzen INNER"
        " JOIN tbl_200_30_20_Bew_Bilanz_Werterhoehungen ON tbl_200_10_10_Bewertungsbilanz"
        "en.ID_Bew_Bil = tbl_200_30_20_Bew_Bilanz_Werterhoehungen.ID_Bew_Bil WHERE (((tbl"
        "_200_30_20_Bew_Bilanz_Werterhoehungen.DS_Typ)=2)) ORDER BY tbl_200_30_20_Bew_Bil"
        "anz_Werterhoehungen.Aktivierungs_Datum;"
    Caption ="Gebäudeliste"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =2
            FontSize =10
            FontWeight =700
            FontName ="Arial Narrow"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
        End
        Begin Image
            OldBorderStyle =0
            BorderLineStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin BoundObjectFrame
            BorderLineStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            OldBorderStyle =0
            LabelAlign =3
            TextAlign =3
            BorderLineStyle =0
            BackStyle =0
            Width =1410
            Height =285
            LabelX =1410
            LabelY =-300
            FontSize =10
            FontName ="Arial Narrow"
            BorderThemeColorIndex =1
            BorderShade =50.0
        End
        Begin ListBox
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin ComboBox
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin Subform
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            Width =4536
            Height =2835
        End
        Begin PageBreak
            Width =283
        End
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin BreakLevel
            ControlSource ="Aktivierungs_Datum"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =850
            Name ="Berichtskopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Label
                    TextAlign =1
                    Left =120
                    Top =105
                    Width =2490
                    Height =270
                    FontSize =9
                    Name ="Bezeichnungsfeld593"
                    Caption ="Werterhöhende Bauteile:"
                    FontName ="Arial"
                    GroupTable =2
                    LayoutCachedLeft =120
                    LayoutCachedTop =105
                    LayoutCachedWidth =2610
                    LayoutCachedHeight =375
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                    GroupTable =2
                End
                Begin Label
                    TextAlign =3
                    Left =5010
                    Top =435
                    Width =1140
                    Height =285
                    FontSize =9
                    Name ="Bezeichnungsfeld562"
                    Caption ="Verläng.:"
                    FontName ="Arial"
                    LayoutCachedLeft =5010
                    LayoutCachedTop =435
                    LayoutCachedWidth =6150
                    LayoutCachedHeight =720
                    ColumnStart =3
                    ColumnEnd =3
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Label
                    TextAlign =3
                    Left =3630
                    Top =435
                    Width =1320
                    Height =285
                    FontSize =9
                    Name ="Bezeichnungsfeld561"
                    Caption ="Aktiv.-Datum:"
                    FontName ="Arial"
                    LayoutCachedLeft =3630
                    LayoutCachedTop =435
                    LayoutCachedWidth =4950
                    LayoutCachedHeight =720
                    ColumnStart =2
                    ColumnEnd =2
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Label
                    Visible = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    TextAlign =3
                    Top =435
                    Width =105
                    Height =285
                    FontSize =9
                    BackColor =967423
                    BorderColor =967423
                    Name ="Bezeichnungsfeld559"
                    Caption ="ID_Bew_Bil:"
                    FontName ="Arial"
                    LayoutCachedTop =435
                    LayoutCachedWidth =105
                    LayoutCachedHeight =720
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Label
                    TextAlign =1
                    Left =158
                    Top =435
                    Width =3180
                    Height =285
                    FontSize =9
                    Name ="Bezeichnungsfeld560"
                    Caption ="Bauteil:"
                    FontName ="Arial"
                    LayoutCachedLeft =158
                    LayoutCachedTop =435
                    LayoutCachedWidth =3338
                    LayoutCachedHeight =720
                    ColumnStart =1
                    ColumnEnd =1
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Label
                    TextAlign =3
                    Left =6210
                    Top =435
                    Width =1665
                    Height =285
                    FontSize =9
                    Name ="Bezeichnungsfeld563"
                    Caption ="Werterhöhung:"
                    FontName ="Arial"
                    LayoutCachedLeft =6210
                    LayoutCachedTop =435
                    LayoutCachedWidth =7875
                    LayoutCachedHeight =720
                    ColumnStart =4
                    ColumnEnd =4
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Line
                    BorderWidth =1
                    Top =832
                    Width =7938
                    Name ="Linie148"
                    LayoutCachedTop =832
                    LayoutCachedWidth =7938
                    LayoutCachedHeight =832
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =315
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OldBorderStyle =1
                    BackStyle =1
                    IMESentenceMode =3
                    Left =7
                    Top =30
                    Width =105
                    ColumnWidth =1620
                    FontSize =9
                    BackColor =967423
                    BorderColor =967423
                    Name ="ID_Bew_Bil"
                    ControlSource ="ID_Bew_Bil"
                    FontName ="Arial"

                    LayoutCachedLeft =7
                    LayoutCachedTop =30
                    LayoutCachedWidth =112
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin TextBox
                    TextAlign =1
                    IMESentenceMode =3
                    Left =165
                    Top =30
                    Width =3630
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    Name ="Bauteil"
                    ControlSource ="Bauteil"
                    FontName ="Arial"

                    LayoutCachedLeft =165
                    LayoutCachedTop =30
                    LayoutCachedWidth =3795
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin TextBox
                    IMESentenceMode =3
                    Left =3922
                    Top =30
                    Width =1035
                    FontSize =9
                    TabIndex =2
                    Name ="Aktivierungs_Datum"
                    ControlSource ="Aktivierungs_Datum"
                    Format ="mmm yyyy"
                    FontName ="Arial"

                    LayoutCachedLeft =3922
                    LayoutCachedTop =30
                    LayoutCachedWidth =4957
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin TextBox
                    IMESentenceMode =3
                    Left =5017
                    Top =30
                    Width =1140
                    FontSize =9
                    TabIndex =3
                    Name ="Nutz_dauer_Jahre_Verl"
                    ControlSource ="Nutz_dauer_Jahre_Verl"
                    Format ="#\"  Jahre\""
                    FontName ="Arial"
                    ConditionalFormat = Begin
                        0x01000000a8000000010000000100000000000000000000002300000001000000 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x560061006c0028004e007a0028005b004e00750074007a005f00640061007500 ,
                        0x650072005f004a0061006800720065005f005600650072006c005d0029002900 ,
                        0x3d00300000000000
                    End

                    LayoutCachedLeft =5017
                    LayoutCachedTop =30
                    LayoutCachedWidth =6157
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    ConditionalFormat14 = Begin
                        0x010001000000010000000000000001000000ffffff00ffffff00220000005600 ,
                        0x61006c0028004e007a0028005b004e00750074007a005f006400610075006500 ,
                        0x72005f004a0061006800720065005f005600650072006c005d00290029003d00 ,
                        0x3000000000000000000000000000000000000000000000
                    End
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin TextBox
                    IMESentenceMode =3
                    Left =6237
                    Top =30
                    Width =1701
                    FontSize =9
                    TabIndex =4
                    Name ="Mehrwert"
                    ControlSource ="Mehrwert"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                    LayoutCachedLeft =6237
                    LayoutCachedTop =30
                    LayoutCachedWidth =7938
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                    CurrencySymbol ="€"
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =566
            Name ="Berichtsfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin TextBox
                    OldBorderStyle =1
                    IMESentenceMode =3
                    Left =6237
                    Top =113
                    Width =1701
                    FontSize =9
                    FontWeight =700
                    Name ="TF_Werterh_Summe"
                    ControlSource ="=Sum([Mehrwert])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                    LayoutCachedLeft =6237
                    LayoutCachedTop =113
                    LayoutCachedWidth =7938
                    LayoutCachedHeight =398
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Visible = NotDefault
                    OldBorderStyle =1
                    BackStyle =1
                    IMESentenceMode =3
                    Left =5017
                    Top =113
                    Width =435
                    FontSize =9
                    TabIndex =1
                    BackColor =967423
                    BorderColor =967423
                    Name ="TF_Nutzd_Verl_Summe"
                    ControlSource ="=Sum([Nutz_dauer_Jahre_Verl])"
                    Format ="#\" Jahre\""
                    FontName ="Arial"

                    LayoutCachedLeft =5017
                    LayoutCachedTop =113
                    LayoutCachedWidth =5452
                    LayoutCachedHeight =398
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Label
                    Left =5670
                    Top =120
                    Width =495
                    Height =285
                    FontSize =9
                    Name ="Bezeichnungsfeld314"
                    Caption ="C:"
                    FontName ="Arial"
                    LayoutCachedLeft =5670
                    LayoutCachedTop =120
                    LayoutCachedWidth =6165
                    LayoutCachedHeight =405
                    ForeThemeColorIndex =1
                    ForeShade =75.0
                End
                Begin Label
                    TextAlign =0
                    Left =165
                    Top =120
                    Width =2970
                    Height =270
                    FontSize =9
                    FontWeight =600
                    Name ="Bezeichnungsfeld140"
                    Caption ="Summe werterhöhende Bauteile:"
                    FontName ="Arial"
                    LayoutCachedLeft =165
                    LayoutCachedTop =120
                    LayoutCachedWidth =3135
                    LayoutCachedHeight =390
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_200_10_52_Bew_Bil_Werterh_Nach_2009.cls"
