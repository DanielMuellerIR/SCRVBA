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
    Width =7937
    DatasheetFontHeight =10
    ItemSuffix =89
    Left =9903
    Top =2255
    Right =19630
    Bottom =7254
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Liegenschaften und zugehörige Verantwortliche"
    DatasheetFontName ="Arial"
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
            Height =2948
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =165
                    Top =120
                    Width =7545
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Liegenschaften und zugehörige Verantwortliche"
                    LayoutCachedLeft =165
                    LayoutCachedTop =120
                    LayoutCachedWidth =7710
                    LayoutCachedHeight =480
                End
                Begin ComboBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2772
                    Top =1190
                    Width =4371
                    Height =270
                    Name ="KF_Liegenschaften"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_100_10_Liegenschaften.ID_Gebäude, [NAme] & \" \" & [Haus_Nr] & \": \""
                        " & [Bezeichnung] AS LS FROM tbl_100_10_Liegenschaften LEFT JOIN M_Strassenverzei"
                        "chnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kenn"
                        "ummer WHERE (((tbl_100_10_Liegenschaften.Nicht_mehr_in_Betr_seit) Is Null Or (tb"
                        "l_100_10_Liegenschaften.Nicht_mehr_in_Betr_seit)=0)) ORDER BY [NAme] & \" \" & ["
                        "Haus_Nr] & \": \" & [Bezeichnung];"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2772
                    LayoutCachedTop =1190
                    LayoutCachedWidth =7143
                    LayoutCachedHeight =1460
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =510
                            Top =1190
                            Width =2115
                            Height =270
                            Name ="Bezeichnungsfeld77"
                            Caption ="Liegenschaft:"
                            LayoutCachedLeft =510
                            LayoutCachedTop =1190
                            LayoutCachedWidth =2625
                            LayoutCachedHeight =1460
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2772
                    Top =1580
                    Width =4371
                    Height =270
                    TabIndex =1
                    Name ="KF_Verantwort"
                    RowSourceType ="Value List"
                    RowSource ="0;\"Alle Verantwortlichen\";1;\"Objekt-Verantwortliche\";2;\"Grundstücks-Verantw"
                        "ortliche\";3;\"Fachplaner Elektro\";4;\"Fachplaner H/L/S\";5;\"Vermietungs-Veran"
                        "twortliche\""
                    ColumnWidths ="0"

                    LayoutCachedLeft =2772
                    LayoutCachedTop =1580
                    LayoutCachedWidth =7143
                    LayoutCachedHeight =1850
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =510
                            Top =1580
                            Width =2115
                            Height =270
                            Name ="Bezeichnungsfeld85"
                            Caption ="Welche Verantwortliche:"
                            LayoutCachedLeft =510
                            LayoutCachedTop =1580
                            LayoutCachedWidth =2625
                            LayoutCachedHeight =1850
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3628
                    Top =2211
                    TabIndex =2
                    Name ="BS_Anzeigen"
                    Caption ="Anzeigen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =3628
                    LayoutCachedTop =2211
                    LayoutCachedWidth =5329
                    LayoutCachedHeight =2494
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5440
                    Top =2217
                    TabIndex =3
                    Name ="BS_Schließen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =5440
                    LayoutCachedTop =2217
                    LayoutCachedWidth =7141
                    LayoutCachedHeight =2500
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Verantwortungen.cls"
