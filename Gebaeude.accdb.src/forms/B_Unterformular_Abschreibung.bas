Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    ShortcutMenu = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =11968
    DatasheetFontHeight =10
    ItemSuffix =71
    Left =8966
    Top =6222
    Right =21451
    Bottom =8151
    RecSrcDt = Begin
        0xfc7fd6d935cce440
    End
    RecordSource ="SELECT Zuordnung_Abschreibung.* FROM Zuordnung_Abschreibung WHERE (((Zuordnung_A"
        "bschreibung.ID_Gebäudeteil)=F_Variable(\"lng_ID_Geb_Teil\")));"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Image
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
            ForeColor =-2147483630
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin TextBox
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin ComboBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin Subform
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =2
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin PageBreak
            Width =283
        End
        Begin Tab
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin Page
            Width =1701
            Height =1701
        End
        Begin FormHeader
            Height =0
            BackColor =-2147483633
            Name ="Formularkopf"
            AlternateBackShade =95.0
        End
        Begin Section
            CanGrow = NotDefault
            Height =256
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    ColumnHeads = NotDefault
                    OverlapFlags =85
                    ColumnCount =5
                    ListRows =50
                    Left =56
                    Top =30
                    Width =10206
                    Height =226
                    BackColor =15466495
                    Name ="TF_ID_Mietpartei"
                    ControlSource ="ID_Mietpartei"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_100_30_Mietparteien.ID_Mietpartei, tbl_100_30_Mietparteien.Mietpartei"
                        " AS Mieter, [Name] & \" \" & [Haus_Nr] & \": \" & [Gebäudeteil] AS Bez, M_Bereic"
                        "he.BereichName AS Ber, Format([BGF],\"#,##0.0\"\" m²\"\"\") AS BG FROM tbl_100_3"
                        "0_Mietparteien INNER JOIN (((M_Bereiche INNER JOIN tbl_100_20_Gebäudeteile ON M_"
                        "Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]) LEFT JOIN"
                        " M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenv"
                        "erzeichnis.Kennummer) INNER JOIN Zuordnung_Abschreibung ON tbl_100_20_Gebäudetei"
                        "le.ID_Gebäudeteil = Zuordnung_Abschreibung.ID_Gebäudeteil) ON tbl_100_30_Mietpar"
                        "teien.ID_Mietpartei = Zuordnung_Abschreibung.ID_Mietpartei ORDER BY [Name] & \" "
                        "\" & [Haus_Nr] & \": \" & [Gebäudeteil];"
                    ColumnWidths ="0;2835;4536;1134"

                    LayoutCachedLeft =56
                    LayoutCachedTop =30
                    LayoutCachedWidth =10262
                    LayoutCachedHeight =256
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    TextAlign =2
                    Left =10320
                    Width =1184
                    Height =226
                    TabIndex =1
                    BackColor =15466495
                    Name ="Anteil"
                    ControlSource ="Anteil"
                    Format ="Percent"

                    LayoutCachedLeft =10320
                    LayoutCachedWidth =11504
                    LayoutCachedHeight =226
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =11624
                    Width =171
                    Height =255
                    TabIndex =2
                    Name ="TF_ID_Zuordn"
                    ControlSource ="ID_Zuordn"

                    LayoutCachedLeft =11624
                    LayoutCachedWidth =11795
                    LayoutCachedHeight =255
                End
            End
        End
        Begin FormFooter
            Height =396
            BackColor =-2147483633
            Name ="Formularfuß"
            AlternateBackShade =95.0
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =9985
                    Top =60
                    Width =1561
                    Height =286
                    Name ="BS_DS_Loeschen"
                    Caption ="Datensatz löschen"
                    OnClick ="[Event Procedure]"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End

                    LayoutCachedLeft =9985
                    LayoutCachedTop =60
                    LayoutCachedWidth =11546
                    LayoutCachedHeight =346
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =8278
                    Top =60
                    Width =1561
                    Height =286
                    TabIndex =1
                    Name ="BS_DS_Neu"
                    Caption ="Neuer Eintrag"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =8278
                    LayoutCachedTop =60
                    LayoutCachedWidth =9839
                    LayoutCachedHeight =346
                End
            End
        End
    End
End
CodeBehindForm
' See "B_Unterformular_Abschreibung.cls"
