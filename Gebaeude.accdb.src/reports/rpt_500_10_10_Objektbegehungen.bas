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
    Width =10601
    DatasheetFontHeight =10
    ItemSuffix =182
    Left =8055
    Top =2460
    RecSrcDt = Begin
        0x1051d5e3735be540
    End
    RecordSource ="SELECT tbl_100_10_Liegenschaften.Bezeichnung, tbl_100_20_Gebäudeteile.Gebäudetei"
        "l, [Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] AS Adresse, tbl_500_10_B"
        "egehungen.Begehung_bis, IIf([Begehung_erl_am] Is Null,\"\",\"Ö\") AS Erl_Haken, "
        "IIf([Begehung_bis]=F_Variable(\"lng_Beg_Jahr\")+1,1,0) AS Zaehler_Naechst_Jahr F"
        "ROM tbl_100_10_Liegenschaften INNER JOIN ((tbl_100_20_Gebäudeteile LEFT JOIN M_S"
        "trassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverze"
        "ichnis.Kennummer) INNER JOIN tbl_500_10_Begehungen ON tbl_100_20_Gebäudeteile.ID"
        "_Gebäudeteil = tbl_500_10_Begehungen.ID_Gebäudeteil) ON tbl_100_10_Liegenschafte"
        "n.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude WHERE ((([tbl_500_10_Begehunge"
        "n].[ID_SB]=F_Variable(\"lng_ID_SB\") Or [tbl_500_10_Begehungen].[ID_SB_Fachpl_El"
        "ek]=F_Variable(\"lng_ID_SB\") Or [tbl_500_10_Begehungen].[ID_SB_Fachpl_HLS]=F_Va"
        "riable(\"lng_ID_SB\"))=True) AND ((tbl_100_20_Gebäudeteile.Beg_erf)=True) AND (("
        "tbl_500_10_Begehungen.Begehungsjahr)=F_Variable(\"lng_Beg_Jahr\"))) ORDER BY tbl"
        "_100_10_Liegenschaften.Bezeichnung, tbl_100_20_Gebäudeteile.Gebäudeteil;"
    Caption ="Gebäudeliste"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =1
            FontSize =9
            FontWeight =700
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
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            Height =255
            LabelX =-1133
            FontSize =9
            FontName ="Arial"
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
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin BreakLevel
            ControlSource ="Bezeichnung"
        End
        Begin BreakLevel
            ControlSource ="Gebäudeteil"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =623
            Name ="Berichtskopf"
            Begin
                Begin TextBox
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    BackStyle =1
                    IMESentenceMode =3
                    Top =120
                    Width =10545
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Text81"
                    ControlSource ="=DLookUp(\"[Name]\",\"Sachbearbeiter\",\"[ID] = \" & F_Variable(\"lng_ID_SB\")) "
                        "& \" - Gebäudebegehungen \" & F_VAriable(\"lng_Beg_Jahr\") & \" / \" & F_VAriabl"
                        "e(\"lng_Beg_Jahr\")+1"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =120
                    LayoutCachedWidth =10545
                    LayoutCachedHeight =495
                    BackThemeColorIndex =1
                    BackShade =95.0
                    BorderThemeColorIndex =1
                    BorderShade =50.0
                End
            End
        End
        Begin PageHeader
            Height =737
            Name ="Seitenkopf"
            Begin
                Begin Label
                    TextAlign =0
                    Left =630
                    Top =390
                    Width =2652
                    Height =255
                    FontSize =10
                    Name ="Bezeichnungsfeld137"
                    Caption ="Bezeichnung:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =630
                    LayoutCachedTop =390
                    LayoutCachedWidth =3282
                    LayoutCachedHeight =645
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Label
                    TextAlign =0
                    Left =3345
                    Top =390
                    Width =2835
                    Height =255
                    FontSize =10
                    Name ="Bezeichnungsfeld138"
                    Caption ="Gebäudeteil:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =3345
                    LayoutCachedTop =390
                    LayoutCachedWidth =6180
                    LayoutCachedHeight =645
                    ColumnStart =1
                    ColumnEnd =1
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Label
                    TextAlign =0
                    Left =6412
                    Top =394
                    Width =2268
                    Height =255
                    FontSize =10
                    Name ="Bezeichnungsfeld139"
                    Caption ="Adresse:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6412
                    LayoutCachedTop =394
                    LayoutCachedWidth =8680
                    LayoutCachedHeight =649
                    ColumnStart =2
                    ColumnEnd =2
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Label
                    TextAlign =2
                    Left =9075
                    Top =394
                    Width =780
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld140"
                    Caption ="Beg. bis:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =9075
                    LayoutCachedTop =394
                    LayoutCachedWidth =9855
                    LayoutCachedHeight =679
                    ColumnStart =3
                    ColumnEnd =3
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Label
                    TextAlign =2
                    Left =10078
                    Top =390
                    Width =437
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld141"
                    Caption ="Erl.:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =10078
                    LayoutCachedTop =390
                    LayoutCachedWidth =10515
                    LayoutCachedHeight =675
                    ColumnStart =4
                    ColumnEnd =4
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Line
                    BorderWidth =2
                    Top =690
                    Width =10591
                    Name ="Linie152"
                    LayoutCachedTop =690
                    LayoutCachedWidth =10591
                    LayoutCachedHeight =690
                    BorderThemeColorIndex =0
                    BorderTint =50.0
                End
                Begin TextBox
                    BorderWidth =1
                    TextAlign =1
                    BackStyle =1
                    IMESentenceMode =3
                    Width =9366
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Text158"
                    ControlSource ="=IIf([Page]=1,\"\",DLookUp(\"[Name]\",\"Sachbearbeiter\",\"[ID] = \" & F_Variabl"
                        "e(\"lng_ID_SB\")) & \" - Gebäudebegehungen \" & F_VAriable(\"lng_Beg_Jahr\") & \""
                        " / \" & F_VAriable(\"lng_Beg_Jahr\")+1)"
                    FontName ="Arial Narrow"

                    LayoutCachedWidth =9366
                    LayoutCachedHeight =285
                    BackThemeColorIndex =1
                End
                Begin Label
                    TextAlign =2
                    Top =390
                    Width =522
                    Height =255
                    FontSize =10
                    Name ="Bezeichnungsfeld174"
                    Caption ="Nr."
                    FontName ="Arial Narrow"
                    LayoutCachedTop =390
                    LayoutCachedWidth =522
                    LayoutCachedHeight =645
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =276
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    IMESentenceMode =3
                    Left =455
                    Top =6
                    Width =2827
                    ColumnWidth =4755
                    FontSize =10
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =455
                    LayoutCachedTop =6
                    LayoutCachedWidth =3282
                    LayoutCachedHeight =261
                    RowStart =1
                    RowEnd =1
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin TextBox
                    CanGrow = NotDefault
                    IMESentenceMode =3
                    Left =3345
                    Top =6
                    Width =2998
                    FontSize =10
                    TabIndex =1
                    Name ="Gebäudeteil"
                    ControlSource ="Gebäudeteil"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =3345
                    LayoutCachedTop =6
                    LayoutCachedWidth =6343
                    LayoutCachedHeight =261
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin TextBox
                    CanGrow = NotDefault
                    IMESentenceMode =3
                    Left =6412
                    Width =2431
                    FontSize =10
                    TabIndex =2
                    Name ="Adresse"
                    ControlSource ="Adresse"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6412
                    LayoutCachedWidth =8843
                    LayoutCachedHeight =255
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin TextBox
                    TextAlign =2
                    IMESentenceMode =3
                    Left =8898
                    Width =1258
                    FontSize =10
                    TabIndex =3
                    Name ="Begehung_bis"
                    ControlSource ="Begehung_bis"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8898
                    LayoutCachedWidth =10156
                    LayoutCachedHeight =255
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin TextBox
                    TextFontCharSet =2
                    TextAlign =2
                    TextFontFamily =18
                    IMESentenceMode =3
                    Left =10202
                    Width =220
                    FontSize =10
                    TabIndex =4
                    Name ="Erl_Haken"
                    ControlSource ="Erl_Haken"
                    FontName ="Symbol"

                    LayoutCachedLeft =10202
                    LayoutCachedWidth =10422
                    LayoutCachedHeight =255
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Line
                    BorderWidth =1
                    Top =261
                    Width =10591
                    Name ="Linie153"
                    LayoutCachedTop =261
                    LayoutCachedWidth =10591
                    LayoutCachedHeight =261
                    BorderThemeColorIndex =0
                    BorderTint =50.0
                End
                Begin TextBox
                    RunningSum =2
                    TextAlign =2
                    IMESentenceMode =3
                    Top =2
                    Width =390
                    FontSize =10
                    TabIndex =5
                    Name ="Bezeichnungsfeld164"
                    ControlSource ="=1"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =2
                    LayoutCachedWidth =390
                    LayoutCachedHeight =257
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
            End
        End
        Begin PageFooter
            Height =330
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =1
                    Top =60
                    Width =4421
                    Height =270
                    FontSize =10
                    Name ="Text17"
                    ControlSource ="=Now()"
                    Format ="Long Date"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =60
                    LayoutCachedWidth =4421
                    LayoutCachedHeight =330
                End
                Begin TextBox
                    TextAlign =3
                    Left =7189
                    Top =60
                    Width =3281
                    Height =270
                    FontSize =10
                    TabIndex =1
                    Name ="Text18"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7189
                    LayoutCachedTop =60
                    LayoutCachedWidth =10470
                    LayoutCachedHeight =330
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =1474
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =9295
                    Top =967
                    Width =1158
                    FontSize =10
                    FontWeight =700
                    Name ="TF_Anz_Naechst_Jahr"
                    ControlSource ="=Sum([Zaehler_Naechst_Jahr])"
                    Format ="#\" Gebäude\""
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =9295
                    LayoutCachedTop =967
                    LayoutCachedWidth =10453
                    LayoutCachedHeight =1222
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =5490
                    Top =967
                    Width =3690
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    Name ="Bezeichnungsfeld176"
                    ControlSource ="=\"davon in \" & F_Variable(\"lng_Beg_JAhr\")+1 & \": \""
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5490
                    LayoutCachedTop =967
                    LayoutCachedWidth =9180
                    LayoutCachedHeight =1222
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =9295
                    Top =345
                    Width =1158
                    FontSize =10
                    FontWeight =700
                    TabIndex =2
                    Name ="TF_Anz_ges"
                    ControlSource ="=Count(*)"
                    Format ="#\" Gebäude\""
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =9295
                    LayoutCachedTop =345
                    LayoutCachedWidth =10453
                    LayoutCachedHeight =600
                End
                Begin Label
                    TextAlign =3
                    Left =6363
                    Top =345
                    Width =2817
                    Height =255
                    FontSize =10
                    Name ="Bezeichnungsfeld178"
                    Caption ="Anzahl Begehungen:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6363
                    LayoutCachedTop =345
                    LayoutCachedWidth =9180
                    LayoutCachedHeight =600
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =5490
                    Top =656
                    Width =3690
                    FontSize =10
                    FontWeight =700
                    TabIndex =3
                    Name ="Text179"
                    ControlSource ="=\"davon in \" & F_Variable(\"lng_Beg_JAhr\") & \": \""
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5490
                    LayoutCachedTop =656
                    LayoutCachedWidth =9180
                    LayoutCachedHeight =911
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =9295
                    Top =656
                    Width =1158
                    FontSize =10
                    FontWeight =700
                    TabIndex =4
                    Name ="TF_Anz_Akt_Jahr"
                    ControlSource ="=[TF_Anz_ges]-[TF_Anz_Naechst_Jahr]"
                    Format ="#\" Gebäude\""
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =9295
                    LayoutCachedTop =656
                    LayoutCachedWidth =10453
                    LayoutCachedHeight =911
                End
                Begin Line
                    BorderWidth =2
                    Top =120
                    Width =10591
                    Name ="Linie181"
                    LayoutCachedTop =120
                    LayoutCachedWidth =10591
                    LayoutCachedHeight =120
                    BorderThemeColorIndex =0
                    BorderTint =50.0
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_500_10_10_Objektbegehungen.cls"
