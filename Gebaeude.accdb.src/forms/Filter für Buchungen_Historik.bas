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
    Width =7823
    DatasheetFontHeight =10
    ItemSuffix =60
    Left =13395
    Top =7110
    Right =23010
    Bottom =13305
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Datenausgabe Buchungen"
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
            Height =4138
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =1701
                    Left =2770
                    Top =964
                    Width =4536
                    Height =284
                    Name ="Haushaltsjahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW A_Buchungen.Haushaltsjahr FROM A_Buchungen GROUP BY A_Buchung"
                        "en.Haushaltsjahr;"
                    ColumnWidths ="1701"
                    DefaultValue ="=Year(Now())"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =964
                            Width =2160
                            Height =270
                            Name ="Gebäude_Label"
                            Caption ="Haushaltsjahr"
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =1134
                    Left =2770
                    Top =1587
                    Width =4536
                    Height =284
                    TabIndex =1
                    Name ="Sachbearbeiter"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Sachbearbeiter.ID, Sachbearbeiter.Name FROM Sachbearbeiter WH"
                        "ERE (((Sachbearbeiter.Buchungsverantwortlicher)=True));"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="\"*\""

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =1587
                            Width =2160
                            Height =270
                            Name ="Name_Label"
                            Caption ="Sachbearbeiter"
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =5
                    ListRows =50
                    ListWidth =9072
                    Left =2770
                    Top =2721
                    Width =4536
                    Height =226
                    TabIndex =2
                    Name ="Betrag"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW A_Buchungen.ID, A_Buchungen.Betrag, A_Buchungen.angelegt, A_E"
                        "mpfänger.[Name, Vorname], [M_Verzeichnis Nebenkosten].Nebenkosten_Art FROM (A_Bu"
                        "chungen LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID) LE"
                        "FT JOIN [M_Verzeichnis Nebenkosten] ON A_Buchungen.[ID Nebenkostenart] = [M_Verz"
                        "eichnis Nebenkosten].ID WHERE (((A_Buchungen.[ID Empfänger]) Like [formulare]![F"
                        "ilter für Buchungen_Historik]![Empfänger] Or (A_Buchungen.[ID Empfänger]) Is Nul"
                        "l) AND ((A_Buchungen.Haushaltsjahr) Like [formulare]![Filter für Buchungen_Histo"
                        "rik]![Haushaltsjahr])) ORDER BY A_Buchungen.Betrag;"
                    ColumnWidths ="0;1080;1646;3402;2268"
                    DefaultValue ="\"*\""
                    OnGotFocus ="[Event Procedure]"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =2721
                            Width =2160
                            Height =270
                            Name ="Maßnahmen.ID_Label"
                            Caption ="Betrag"
                            EventProcPrefix ="Maßnahmen_ID_Label"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =1580
                    Top =113
                    Width =4815
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Datenausgabe Buchungen"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2891
                    Top =3288
                    Width =2155
                    TabIndex =3
                    Name ="Befehl57"
                    Caption ="Filter anwenden"
                    OnClick ="Makro Filter Buchungsanordnung Historik.OhneFilter"

                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =3
                    ListRows =50
                    ListWidth =3969
                    Left =2770
                    Top =2154
                    Width =4536
                    Height =284
                    TabIndex =4
                    Name ="Empfänger"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW A_Empfänger.ID, A_Empfänger.[Name, Vorname], A_Empfänger.Anre"
                        "de FROM A_Empfänger LEFT JOIN A_Buchungen ON A_Empfänger.ID = A_Buchungen.[ID Em"
                        "pfänger] WHERE (((A_Buchungen.[ID Sachbearbeiter]) Like [formulare]![Filter für "
                        "Buchungen_Historik]![Sachbearbeiter] Or (A_Buchungen.[ID Sachbearbeiter]) Is Not"
                        " Null)) GROUP BY A_Empfänger.ID, A_Empfänger.[Name, Vorname], A_Empfänger.Anrede"
                        " ORDER BY A_Empfänger.[Name, Vorname];"
                    ColumnWidths ="0;2676;1134"
                    DefaultValue ="\"*\""

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =2154
                            Width =2160
                            Height =270
                            Name ="Empfänger_"
                            Caption ="Empfänger"
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Buchungen_Historik.cls"
