Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    PictureTiling = NotDefault
    DividingLines = NotDefault
    DataEntry = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =5
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9184
    DatasheetFontHeight =10
    ItemSuffix =71
    Left =17775
    Top =6518
    Right =27143
    Bottom =10050
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Anlagen"
    DatasheetFontName ="Arial"
    OnLoad ="[Event Procedure]"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            SpecialEffect =1
            FontWeight =700
            BackColor =12632256
            ForeColor =128
            FontName ="Arial"
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            SpecialEffect =3
            Width =1701
        End
        Begin Image
            SpecialEffect =3
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
            ForeColor =128
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin OptionButton
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =2
            BorderWidth =3
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            BackStyle =1
            BorderLineStyle =0
            Width =1701
            Height =1701
            BackColor =12632256
        End
        Begin BoundObjectFrame
            SpecialEffect =3
            BorderLineStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
            BorderColor =12632256
            BackColor =12632256
        End
        Begin TextBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ListBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ComboBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin Subform
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderColor =12632256
        End
        Begin UnboundObjectFrame
            SpecialEffect =3
            BackStyle =0
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            ForeColor =128
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            FontWeight =700
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Section
            Height =3061
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =7371
                    Left =2845
                    Top =1928
                    Width =4536
                    Height =284
                    TabIndex =2
                    Name ="KF_Sortierart"
                    RowSourceType ="Value List"
                    RowSource ="\"nach Jahren -> Objekten -> Maßnahmen\";\"nach Objekten -> Jahren -> Maßnahmen\""
                    DefaultValue ="\"nach Jahren -> Objekten -> Maßnahmen\""

                    LayoutCachedLeft =2845
                    LayoutCachedTop =1928
                    LayoutCachedWidth =7381
                    LayoutCachedHeight =2212
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =510
                            Top =1928
                            Width =2160
                            Height =270
                            Name ="Gebäude_Label"
                            Caption ="Sortierung nach:"
                            LayoutCachedLeft =510
                            LayoutCachedTop =1928
                            LayoutCachedWidth =2670
                            LayoutCachedHeight =2198
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =1468
                    Top =225
                    Width =5205
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Anlagen"
                    LayoutCachedLeft =1468
                    LayoutCachedTop =225
                    LayoutCachedWidth =6673
                    LayoutCachedHeight =585
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2895
                    Top =2438
                    Width =1785
                    Height =330
                    TabIndex =1
                    Name ="BS_Alle_DAten"
                    Caption ="Bericht anzeigen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =2438
                    LayoutCachedWidth =4680
                    LayoutCachedHeight =2768
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6455
                    Top =2444
                    Width =975
                    Height =330
                    TabIndex =3
                    Name ="BS_Schließen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6455
                    LayoutCachedTop =2444
                    LayoutCachedWidth =7430
                    LayoutCachedHeight =2774
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =7371
                    Left =2845
                    Top =963
                    Width =6021
                    Height =284
                    Name ="KF_Liegenschaften"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW tbl_100_10_Liegenschaften.ID_Gebäude, [Name] & \" \" & [HAus_"
                        "Nr] & \": \" & [Bezeichnung] AS LS FROM tbl_100_10_Liegenschaften LEFT JOIN M_St"
                        "rassenverzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverz"
                        "eichnis.Kennummer ORDER BY [Name] & \" \" & [HAus_Nr] & \": \" & [Bezeichnung];"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =2845
                    LayoutCachedTop =963
                    LayoutCachedWidth =8866
                    LayoutCachedHeight =1247
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1245
                            Top =959
                            Width =1425
                            Height =270
                            Name ="Bezeichnungsfeld63"
                            Caption ="Liegenschaften:"
                            LayoutCachedLeft =1245
                            LayoutCachedTop =959
                            LayoutCachedWidth =2670
                            LayoutCachedHeight =1229
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =10773
                    Left =2845
                    Top =1334
                    Width =6021
                    Height =226
                    TabIndex =4
                    Name ="KF_Gebteile"
                    RowSourceType ="Table/Query"
                    RowSource ="Filter für Anlagen"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2845
                    LayoutCachedTop =1334
                    LayoutCachedWidth =8866
                    LayoutCachedHeight =1560
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =165
                            Top =1334
                            Width =2505
                            Height =270
                            Name ="Maßnahmen.ID_Label"
                            Caption ="Gebäudeteile zur Liegensch.:"
                            EventProcPrefix ="Maßnahmen_ID_Label"
                            LayoutCachedLeft =165
                            LayoutCachedTop =1334
                            LayoutCachedWidth =2670
                            LayoutCachedHeight =1604
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =623
                    Top =2438
                    Width =1785
                    Height =330
                    TabIndex =5
                    Name ="bExcel"
                    Caption ="Exportieren als Excel"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =623
                    LayoutCachedTop =2438
                    LayoutCachedWidth =2408
                    LayoutCachedHeight =2768
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Anlagen.cls"
