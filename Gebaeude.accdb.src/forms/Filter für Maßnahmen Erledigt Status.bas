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
    Width =9070
    DatasheetFontHeight =10
    ItemSuffix =67
    Left =17393
    Top =6165
    Right =27443
    Bottom =11280
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Sanierungsstau Jahre"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
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
            Height =3627
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =7371
                    Left =2845
                    Top =1605
                    Width =4536
                    Height =284
                    TabIndex =2
                    Name ="KF_Sortierart"
                    RowSourceType ="Value List"
                    RowSource ="\"nach Erledigt-Status -> Objekten\";\"nach Objekten -> Erledigt-Status\""
                    DefaultValue ="\"nach Erledigt-Status -> Objekten\""

                    LayoutCachedLeft =2845
                    LayoutCachedTop =1605
                    LayoutCachedWidth =7381
                    LayoutCachedHeight =1889
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =165
                            Top =1605
                            Width =2505
                            Height =270
                            Name ="Gebäude_Label"
                            Caption ="Sortierung nach:"
                            LayoutCachedLeft =165
                            LayoutCachedTop =1605
                            LayoutCachedWidth =2670
                            LayoutCachedHeight =1875
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =165
                    Top =345
                    Width =8505
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Maßnahmen Erledigt / nicht erledigt"
                    LayoutCachedLeft =165
                    LayoutCachedTop =345
                    LayoutCachedWidth =8670
                    LayoutCachedHeight =705
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2949
                    Top =3180
                    Width =1785
                    Height =330
                    TabIndex =5
                    Name ="BS_Alle_DAten"
                    Caption ="Daten anzeigen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2949
                    LayoutCachedTop =3180
                    LayoutCachedWidth =4734
                    LayoutCachedHeight =3510
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6509
                    Top =3186
                    Width =975
                    Height =330
                    TabIndex =6
                    Name ="BS_Schließen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6509
                    LayoutCachedTop =3186
                    LayoutCachedWidth =7484
                    LayoutCachedHeight =3516
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =7371
                    Left =2845
                    Top =859
                    Width =5871
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
                    LayoutCachedTop =859
                    LayoutCachedWidth =8716
                    LayoutCachedHeight =1143
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =165
                            Top =855
                            Width =2505
                            Height =270
                            Name ="Bezeichnungsfeld63"
                            Caption ="Liegenschaften:"
                            LayoutCachedLeft =165
                            LayoutCachedTop =855
                            LayoutCachedWidth =2670
                            LayoutCachedHeight =1125
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
                    Top =1260
                    Width =5871
                    Height =226
                    TabIndex =1
                    Name ="KF_Gebteile"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_20_Gebäudeteile.Gebäudete"
                        "il FROM tbl_100_20_Gebäudeteile WHERE (((tbl_100_20_Gebäudeteile.ID_Gebäude)=[Fo"
                        "rmulare]![Filter für Maßnahmen Erledigt Status]![KF_Liegenschaften])) ORDER BY t"
                        "bl_100_20_Gebäudeteile.Gebäudeteil;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2845
                    LayoutCachedTop =1260
                    LayoutCachedWidth =8716
                    LayoutCachedHeight =1486
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =165
                            Top =1260
                            Width =2505
                            Height =270
                            Name ="Maßnahmen.ID_Label"
                            Caption ="Gebäudeteile zur Liegensch.:"
                            EventProcPrefix ="Maßnahmen_ID_Label"
                            LayoutCachedLeft =165
                            LayoutCachedTop =1260
                            LayoutCachedWidth =2670
                            LayoutCachedHeight =1530
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =7371
                    Left =2845
                    Top =2009
                    Width =1519
                    Height =284
                    TabIndex =3
                    Name ="KF_Ab_Jahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Kalenderjahre.Jahr FROM Kalenderjahre ORDER BY Kalenderjahre.Jahr;"

                    LayoutCachedLeft =2845
                    LayoutCachedTop =2009
                    LayoutCachedWidth =4364
                    LayoutCachedHeight =2293
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =165
                            Top =2009
                            Width =2505
                            Height =270
                            Name ="Bezeichnungsfeld65"
                            Caption ="Historie ab:"
                            LayoutCachedLeft =165
                            LayoutCachedTop =2009
                            LayoutCachedWidth =2670
                            LayoutCachedHeight =2279
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4483
                    Top =2009
                    Width =394
                    Height =284
                    TabIndex =4
                    Name ="BS_Jahr_Loeschen"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00ddddddddddddddddddddddddddddddddddddddddddddd0fd ,
                        0xddd0fddddddddddddd000fdddddd0fdddd000fddddd0fdddddd000fddd00fddd ,
                        0xdddd000fd00fddddddddd00000fddddddddddd000fddddddddddd00000fddddd ,
                        0xdddd000fd0fddddddd0000fddd00fdddd0000fddddd00fddd00fdddddddd00fd ,
                        0xdddddddddddddddd000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End

                    LayoutCachedLeft =4483
                    LayoutCachedTop =2009
                    LayoutCachedWidth =4877
                    LayoutCachedHeight =2293
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Maßnahmen Erledigt Status.cls"
