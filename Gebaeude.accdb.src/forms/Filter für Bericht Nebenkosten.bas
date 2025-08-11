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
    Width =7860
    DatasheetFontHeight =10
    ItemSuffix =78
    Left =13395
    Top =9300
    Right =23040
    Bottom =15900
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Auswertung Nebenkosten"
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
            Height =4541
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =1701
                    Left =2772
                    Top =735
                    Width =4536
                    Height =284
                    Name ="KF_HHJ"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Kalenderjahre.Jahr FROM Kalenderjahre ORDER BY Kalenderjahre."
                        "Jahr;"
                    ColumnWidths ="1701"
                    ValidationRule ="Is Not Null"
                    ValidationText ="Bitte geben Sie  ein Haushaltsjahr ein"
                    DefaultValue ="=Year(Date())"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =285
                            Top =735
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
                    ListWidth =5670
                    Left =2772
                    Top =2497
                    Width =4536
                    Height =284
                    TabIndex =4
                    Name ="KF_Kostenstelle"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Kostenstellen.Kennummer, [Kostenstelle] & \": \" & [Bezeich"
                        "nung] AS KS FROM M_Kostenstellen WHERE (((M_Kostenstellen.Gebäude_verkauft)=(Dat"
                        "e()-731) Or (M_Kostenstellen.Gebäude_verkauft) Is Null)) ORDER BY M_Kostenstelle"
                        "n.Bezeichnung;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2772
                    LayoutCachedTop =2497
                    LayoutCachedWidth =7308
                    LayoutCachedHeight =2781
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =285
                            Top =2497
                            Width =2160
                            Height =270
                            Name ="Name_Label"
                            Caption ="Kostenstelle"
                            LayoutCachedLeft =285
                            LayoutCachedTop =2497
                            LayoutCachedWidth =2445
                            LayoutCachedHeight =2767
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
                    Caption ="Filter für Auswertung Nebenkosten"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2772
                    Top =4121
                    Width =1845
                    Height =345
                    TabIndex =8
                    Name ="BS_Auswertung"
                    Caption ="Auswertung starten"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2772
                    LayoutCachedTop =4121
                    LayoutCachedWidth =4617
                    LayoutCachedHeight =4466
                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =3969
                    Left =2772
                    Top =2835
                    Width =4536
                    Height =284
                    TabIndex =5
                    Name ="KF_Kostenart"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [M_Verzeichnis Nebenkosten].ID, [M_Verzeichnis Nebenkosten].N"
                        "ebenkosten_Art FROM [M_Verzeichnis Nebenkosten] ORDER BY [M_Verzeichnis Nebenkos"
                        "ten].Nebenkosten_Art;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2772
                    LayoutCachedTop =2835
                    LayoutCachedWidth =7308
                    LayoutCachedHeight =3119
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =285
                            Top =2835
                            Width =2160
                            Height =270
                            Name ="Kostenart-"
                            Caption ="Kostenart"
                            EventProcPrefix ="Kostenart_"
                            LayoutCachedLeft =285
                            LayoutCachedTop =2835
                            LayoutCachedWidth =2445
                            LayoutCachedHeight =3105
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =3969
                    Left =2772
                    Top =2145
                    Width =4536
                    Height =284
                    TabIndex =3
                    Name ="KF_Bereich"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Bereiche.Kennummer, [BereichNr] & \": \" & [BereichName] AS"
                        " Bereich FROM M_Bereiche WHERE (((M_Bereiche.ID_Betrieb)=[Formulare]![Filter für"
                        " Bericht Nebenkosten]![KF_Betrieb])) ORDER BY [BereichNr] & \": \" & [BereichNam"
                        "e];"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2772
                    LayoutCachedTop =2145
                    LayoutCachedWidth =7308
                    LayoutCachedHeight =2429
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =285
                            Top =2145
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld67"
                            Caption ="Bereich"
                            LayoutCachedLeft =285
                            LayoutCachedTop =2145
                            LayoutCachedWidth =2445
                            LayoutCachedHeight =2415
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =5103
                    Left =2772
                    Top =3180
                    Width =4536
                    Height =284
                    TabIndex =6
                    Name ="KF_Empfänger"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW A_Empfänger.ID, LTrim([Anrede] & \" \") & [Name, Vorname] AS "
                        "Empf FROM A_Empfänger ORDER BY A_Empfänger.[Name, Vorname];"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2772
                    LayoutCachedTop =3180
                    LayoutCachedWidth =7308
                    LayoutCachedHeight =3464
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =285
                            Top =3180
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld69"
                            Caption ="Zahlungsempfänger"
                            LayoutCachedLeft =285
                            LayoutCachedTop =3180
                            LayoutCachedWidth =2445
                            LayoutCachedHeight =3450
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =3969
                    Left =2772
                    Top =3540
                    Width =4536
                    Height =284
                    TabIndex =7
                    Name ="KF_Zyklus"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Zahlungszyklen.ID, Zahlungszyklen.Zyklus FROM Zahlungszyklen;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2772
                    LayoutCachedTop =3540
                    LayoutCachedWidth =7308
                    LayoutCachedHeight =3824
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =285
                            Top =3540
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld71"
                            Caption ="Zahlungszyklus"
                            LayoutCachedLeft =285
                            LayoutCachedTop =3540
                            LayoutCachedWidth =2445
                            LayoutCachedHeight =3810
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =3969
                    Left =2770
                    Top =1077
                    Width =4536
                    Height =315
                    TabIndex =1
                    Name ="KF_RE_Datum_bis"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT Format(CDate([angelegt]),\"dd/mm/yyyy\") AS t, Format([angelegt]"
                        ",\"yy/mm/dd\") AS t2 FROM A_Buchungen GROUP BY Format(CDate([angelegt]),\"dd/mm/"
                        "yyyy\"), Format([angelegt],\"yy/mm/dd\") ORDER BY Format([angelegt],\"yy/mm/dd\""
                        ") DESC;"
                    ColumnWidths ="2268"
                    DefaultValue ="=dmax(\"[angelegt]\",\"A_Buchungen\")"
                    Format ="Short Date"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =1077
                            Width =2160
                            Height =315
                            Name ="Bezeichnungsfeld73"
                            Caption ="Rechnungen bis"
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =1701
                    Left =2770
                    Top =1474
                    Width =4536
                    Height =284
                    TabIndex =2
                    Name ="KF_Betrieb"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Betriebe.ID_Betrieb, M_Betriebe.Betrieb FROM M_Betriebe ORD"
                        "ER BY M_Betriebe.Betrieb;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =1474
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld75"
                            Caption ="Betrieb"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5477
                    Top =4121
                    Width =1845
                    Height =345
                    TabIndex =9
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =5477
                    LayoutCachedTop =4121
                    LayoutCachedWidth =7322
                    LayoutCachedHeight =4466
                End
                Begin Label
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =2100
                    Top =1845
                    Width =5250
                    Height =255
                    FontWeight =400
                    BorderColor =12632256
                    ForeColor =0
                    Name ="Bezeichnungsfeld77"
                    Caption ="(zum Auswählen eines Bereichs bitte vorher einen Betrieb auswählen)"
                    LayoutCachedLeft =2100
                    LayoutCachedTop =1845
                    LayoutCachedWidth =7350
                    LayoutCachedHeight =2100
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Bericht Nebenkosten.cls"
