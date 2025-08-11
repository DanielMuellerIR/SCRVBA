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
    BorderStyle =1
    PictureAlignment =5
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7766
    DatasheetFontHeight =10
    ItemSuffix =61
    Left =13395
    Top =7110
    Right =22950
    Bottom =11925
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Datenausgabe Controlling"
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
            Height =2777
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =1580
                    Top =113
                    Width =4815
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Datenausgabe Controlling"
                    LayoutCachedLeft =1580
                    LayoutCachedTop =113
                    LayoutCachedWidth =6395
                    LayoutCachedHeight =473
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2655
                    Top =2040
                    Width =2155
                    Height =343
                    Name ="Befehl51"
                    Caption =" Daten anzeigen"
                    OnClick ="Makro Filter Controllingbericht.OhneFilter"

                    LayoutCachedLeft =2655
                    LayoutCachedTop =2040
                    LayoutCachedWidth =4810
                    LayoutCachedHeight =2383
                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =4
                    ListRows =50
                    ListWidth =7938
                    Left =2770
                    Top =1360
                    Width =4536
                    Height =284
                    TabIndex =1
                    BackColor =8454016
                    Name ="AuswahlBuchungsstelle"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Buchungsstellen.Buchungsstelle, Gebäudeliste.[Straße Hausnumm"
                        "er], Gebäudeliste.Bezeichung, Maßnahmen.Maßnahme FROM ((Maßnahmen LEFT JOIN Gebä"
                        "udeliste ON Maßnahmen.[ID aus Gebäudeliste] = Gebäudeliste.ID) INNER JOIN Hausha"
                        "ltsdaten ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]) LEFT JOIN Buchungs"
                        "stellen ON Haushaltsdaten.[ID aus Buchungsstelle] = Buchungsstellen.ID GROUP BY "
                        "Buchungsstellen.Buchungsstelle, Gebäudeliste.[Straße Hausnummer], Gebäudeliste.B"
                        "ezeichung, Maßnahmen.Maßnahme ORDER BY Gebäudeliste.[Straße Hausnummer];"
                    ColumnWidths ="0;2268;2268;3402"
                    DefaultValue ="\"*\""

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =1360
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld59"
                            Caption ="Baumassnahme"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5142
                    Top =2040
                    Width =2155
                    Height =343
                    TabIndex =2
                    Name ="BS_Schließen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =5142
                    LayoutCachedTop =2040
                    LayoutCachedWidth =7297
                    LayoutCachedHeight =2383
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Controllingbericht.cls"
