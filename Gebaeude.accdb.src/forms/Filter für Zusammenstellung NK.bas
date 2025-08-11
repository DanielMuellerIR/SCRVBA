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
    ItemSuffix =71
    Left =13395
    Top =6705
    Right =21225
    Bottom =10605
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Zusammenstellung Nebenkosten"
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
            Height =3920
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =2
                    ListRows =50
                    ListWidth =8505
                    Left =2832
                    Top =1980
                    Width =4536
                    Height =284
                    TabIndex =2
                    Name ="KF_Bereich"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Bereiche.Kennummer, [BereichNr] & \": \" & [BereichName] AS"
                        " Ber FROM M_Bereiche WHERE (((M_Bereiche.ID_Betrieb)=[Formulare]![Filter für Zus"
                        "ammenstellung NK]![KF_Betrieb])) ORDER BY M_Bereiche.BereichNr;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2832
                    LayoutCachedTop =1980
                    LayoutCachedWidth =7368
                    LayoutCachedHeight =2264
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =345
                            Top =1980
                            Width =2160
                            Height =270
                            Name ="Gebäude_Label"
                            Caption ="Bereich"
                            LayoutCachedLeft =345
                            LayoutCachedTop =1980
                            LayoutCachedWidth =2505
                            LayoutCachedHeight =2250
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
                    Caption ="Filter für Zusammenstellung Nebenkosten"
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =2
                    ListRows =50
                    ListWidth =5670
                    Left =2827
                    Top =1247
                    Width =4536
                    Height =284
                    TabIndex =1
                    Name ="KF_Betrieb"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Betriebe.ID_Betrieb, M_Betriebe.Betrieb FROM M_Betriebe ORD"
                        "ER BY M_Betriebe.Betrieb;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =340
                            Top =1247
                            Width =2160
                            Height =270
                            Name ="text"
                            Caption ="Betrieb"
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =2
                    ListRows =50
                    ListWidth =5670
                    Left =2832
                    Top =2490
                    Width =4536
                    Height =284
                    TabIndex =3
                    Name ="KF_Kostenstelle"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Kostenstellen.Kennummer, Format([Kostenstelle_Infoma],\"000"
                        "00\") & \": \" & [Bezeichnung] AS KS FROM M_Kostenstellen ORDER BY M_Kostenstell"
                        "en.Bezeichnung;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2832
                    LayoutCachedTop =2490
                    LayoutCachedWidth =7368
                    LayoutCachedHeight =2774
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =345
                            Top =2490
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld61"
                            Caption ="Kostenstelle"
                            LayoutCachedLeft =345
                            LayoutCachedTop =2490
                            LayoutCachedWidth =2505
                            LayoutCachedHeight =2760
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    ListRows =50
                    ListWidth =1134
                    Left =2827
                    Top =793
                    Width =4536
                    Height =284
                    Name ="KF_HHJ"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Kalenderjahre.Jahr FROM Kalenderjahre GROUP BY Kalenderjahre."
                        "Jahr ORDER BY Kalenderjahre.Jahr;"
                    ColumnWidths ="1134"

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
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =2
                    ListRows =50
                    ListWidth =2676
                    Left =2837
                    Top =2968
                    Width =4536
                    Height =284
                    TabIndex =4
                    Name ="KF_Kostenart"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [M_Verzeichnis Nebenkosten].ID, [M_Verzeichnis Nebenkosten].N"
                        "ebenkosten_Art FROM [M_Verzeichnis Nebenkosten] GROUP BY [M_Verzeichnis Nebenkos"
                        "ten].ID, [M_Verzeichnis Nebenkosten].Nebenkosten_Art ORDER BY [M_Verzeichnis Neb"
                        "enkosten].Nebenkosten_Art;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2837
                    LayoutCachedTop =2968
                    LayoutCachedWidth =7373
                    LayoutCachedHeight =3252
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =350
                            Top =2968
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld66"
                            Caption ="Kostenart"
                            LayoutCachedLeft =350
                            LayoutCachedTop =2968
                            LayoutCachedWidth =2510
                            LayoutCachedHeight =3238
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2837
                    Top =3454
                    Width =1095
                    Height =345
                    TabIndex =5
                    Name ="BS_Auswerten"
                    Caption ="Auswerten"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2837
                    LayoutCachedTop =3454
                    LayoutCachedWidth =3932
                    LayoutCachedHeight =3799
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6278
                    Top =3454
                    Width =1095
                    Height =345
                    TabIndex =6
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6278
                    LayoutCachedTop =3454
                    LayoutCachedWidth =7373
                    LayoutCachedHeight =3799
                End
                Begin Label
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =2115
                    Top =1680
                    Width =5250
                    Height =255
                    FontWeight =400
                    BorderColor =12632256
                    ForeColor =0
                    Name ="Bezeichnungsfeld77"
                    Caption ="(zum Auswählen eines Bereichs bitte vorher einen Betrieb auswählen)"
                    LayoutCachedLeft =2115
                    LayoutCachedTop =1680
                    LayoutCachedWidth =7365
                    LayoutCachedHeight =1935
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Zusammenstellung NK.cls"
