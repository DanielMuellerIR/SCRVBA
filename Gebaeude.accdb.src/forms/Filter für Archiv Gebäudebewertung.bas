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
    Width =9297
    DatasheetFontHeight =10
    ItemSuffix =77
    Left =13395
    Top =6120
    Right =24480
    Bottom =11400
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Datenausgabe Gebäudebewertung"
    OnCurrent ="[Event Procedure]"
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
            Height =3231
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =2
                    ListRows =50
                    ListWidth =3688
                    Left =2834
                    Top =1521
                    Width =6066
                    Height =284
                    Name ="LF_Datei"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Bewertung_Archiv_1.Datei, Bewertung_Archiv_1.Erläuterung FROM"
                        " Bewertung_Archiv_1 GROUP BY Bewertung_Archiv_1.Datei, Bewertung_Archiv_1.Erläut"
                        "erung;"
                    ColumnWidths ="939;2835"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =2834
                    LayoutCachedTop =1521
                    LayoutCachedWidth =8900
                    LayoutCachedHeight =1805
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =963
                            Top =842
                            Width =3855
                            Height =450
                            Name ="Gebäude_Label"
                            Caption ="Bitte die gewünschte Archivdatei und mindestens eine Liegenschaft  auswählen"
                            LayoutCachedLeft =963
                            LayoutCachedTop =842
                            LayoutCachedWidth =4818
                            LayoutCachedHeight =1292
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =963
                    Top =225
                    Width =5085
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Datenausgabe Gebäudebewertung"
                    LayoutCachedLeft =963
                    LayoutCachedTop =225
                    LayoutCachedWidth =6048
                    LayoutCachedHeight =585
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =2265
                    Top =2760
                    Width =2155
                    TabIndex =1
                    Name ="BS_Drucken"
                    Caption ="Filter anwenden"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2265
                    LayoutCachedTop =2760
                    LayoutCachedWidth =4420
                    LayoutCachedHeight =3043
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =2
                    ListRows =50
                    ListWidth =5670
                    Left =2831
                    Top =1905
                    Width =6066
                    Height =284
                    TabIndex =2
                    Name ="LF_Liegensch"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW tbl_100_10_Liegenschaften.ID_Gebäude, [Name] & \" \" & [Haus_"
                        "Nr] & \": \" & [Bezeichnung] AS Bez FROM M_Strassenverzeichnis RIGHT JOIN tbl_10"
                        "0_10_Liegenschaften ON M_Strassenverzeichnis.Kennummer = tbl_100_10_Liegenschaft"
                        "en.Kennummer_Straße ORDER BY [Name] & \" \" & [Haus_Nr] & \": \" & [Bezeichnung]"
                        ";"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =2831
                    LayoutCachedTop =1905
                    LayoutCachedWidth =8897
                    LayoutCachedHeight =2189
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =2
                    ListRows =50
                    ListWidth =5670
                    Left =2831
                    Top =2309
                    Width =6066
                    Height =284
                    TabIndex =3
                    Name ="LF_Gebäudeteile"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_20_Gebäudetei"
                        "le.Gebäudeteil FROM tbl_100_20_Gebäudeteile WHERE (((tbl_100_20_Gebäudeteile.ID_"
                        "Gebäude)=CLng([Formulare]![Filter für Archiv Gebäudebewertung]![LF_Liegensch])))"
                        " ORDER BY tbl_100_20_Gebäudeteile.Gebäudeteil;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2831
                    LayoutCachedTop =2309
                    LayoutCachedWidth =8897
                    LayoutCachedHeight =2593
                End
                Begin Label
                    OverlapFlags =85
                    Left =963
                    Top =1535
                    Width =1695
                    Height =270
                    Name ="Bezeichnungsfeld64"
                    Caption ="Datei"
                    LayoutCachedLeft =963
                    LayoutCachedTop =1535
                    LayoutCachedWidth =2658
                    LayoutCachedHeight =1805
                End
                Begin Label
                    OverlapFlags =85
                    Left =960
                    Top =1919
                    Width =1695
                    Height =270
                    Name ="Bezeichnungsfeld65"
                    Caption ="Liegenschaft:"
                    LayoutCachedLeft =960
                    LayoutCachedTop =1919
                    LayoutCachedWidth =2655
                    LayoutCachedHeight =2189
                End
                Begin Label
                    OverlapFlags =85
                    Left =960
                    Top =2323
                    Width =1695
                    Height =270
                    Name ="Bezeichnungsfeld66"
                    Caption ="Gebäudeteil:"
                    LayoutCachedLeft =960
                    LayoutCachedTop =2323
                    LayoutCachedWidth =2655
                    LayoutCachedHeight =2593
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4597
                    Top =2760
                    Width =2155
                    TabIndex =4
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =4597
                    LayoutCachedTop =2760
                    LayoutCachedWidth =6752
                    LayoutCachedHeight =3043
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Archiv Gebäudebewertung.cls"
