Version =20
VersionRequired =20
Begin Form
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
    Width =7823
    DatasheetFontHeight =10
    ItemSuffix =65
    Left =13395
    Top =7275
    Right =23010
    Bottom =13245
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Datenausgabe Nebenkosten"
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
            Height =3911
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =4311
                    Left =2827
                    Top =1757
                    Width =4536
                    Height =284
                    Name ="Rechnungsaussteller"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Nebenkosten.Rechnungsaussteller FROM M_Nebenkosten GROUP BY"
                        " M_Nebenkosten.Rechnungsaussteller ORDER BY M_Nebenkosten.Rechnungsaussteller;"
                    ColumnWidths ="4311"
                    DefaultValue ="\"*\""

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =340
                            Top =1757
                            Width =2160
                            Height =270
                            Name ="Gebäude_Label"
                            Caption ="Rechnungsaussteller"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =1587
                    Top =170
                    Width =4815
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Datenausgabe Nebenkosten"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1304
                    Top =3288
                    Width =2155
                    TabIndex =1
                    Name ="Befehl51"
                    Caption ="Alle Daten anzeigen"
                    OnClick ="Makro Filter für Nebenkosten.OhneFilter"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3799
                    Top =3288
                    Width =2155
                    TabIndex =2
                    Name ="Befehl57"
                    Caption ="Filter anwenden"
                    OnClick ="Makro Filter für Nebenkosten.MitFilter"

                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =5670
                    Left =2827
                    Top =1247
                    Width =4536
                    Height =284
                    TabIndex =3
                    Name ="Gebäude"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Objekte.Bezeichnung, M_Strassenverzeichnis.Name FROM M_Obje"
                        "kte LEFT JOIN M_Strassenverzeichnis ON M_Objekte.[Kennummer aus Straßenverzeichn"
                        "is] = M_Strassenverzeichnis.Kennummer GROUP BY M_Objekte.Bezeichnung, M_Strassen"
                        "verzeichnis.Name ORDER BY M_Strassenverzeichnis.Name;"
                    ColumnWidths ="2676;2676"
                    DefaultValue ="\"*\""
                    OnChange ="[Event Procedure]"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =340
                            Top =1247
                            Width =2160
                            Height =270
                            Name ="text"
                            Caption ="Gebäude"
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =2676
                    Left =2827
                    Top =2267
                    Width =4536
                    Height =284
                    TabIndex =4
                    Name ="Nebenkostenart"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [M_Verzeichnis Nebenkosten].Nebenkosten_Art FROM [M_Verzeichn"
                        "is Nebenkosten] GROUP BY [M_Verzeichnis Nebenkosten].Nebenkosten_Art ORDER BY [M"
                        "_Verzeichnis Nebenkosten].Nebenkosten_Art;"
                    ColumnWidths ="2676"
                    DefaultValue ="\"*\""

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =340
                            Top =2267
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld61"
                            Caption ="Nebenkostenart"
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =1134
                    Left =2827
                    Top =793
                    Width =4536
                    Height =284
                    TabIndex =5
                    Name ="Haushaltsjahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Bericht_Nebenkosten.Haushaltsjahr FROM M_Bericht_Nebenkoste"
                        "n GROUP BY M_Bericht_Nebenkosten.Haushaltsjahr ORDER BY M_Bericht_Nebenkosten.Ha"
                        "ushaltsjahr;"
                    ColumnWidths ="1134"
                    DefaultValue ="=Year(Now())"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =340
                            Top =793
                            Width =2160
                            Height =270
                            Name ="Jahr"
                            Caption ="Haushaltsjahr"
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Nebenkosten.cls"
