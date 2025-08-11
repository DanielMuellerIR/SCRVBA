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
    Width =7653
    DatasheetFontHeight =10
    ItemSuffix =77
    Left =13395
    Top =6570
    Right =22830
    Bottom =12990
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Auswertung Nebenkostenkalkulation"
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
            Height =4365
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =1701
                    Left =3175
                    Top =1247
                    Width =4131
                    Height =284
                    Name ="KF_HHJ"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Kalenderjahre.Jahr FROM Kalenderjahre ORDER BY Kalenderjahre."
                        "Jahr;"
                    ColumnWidths ="1701"
                    DefaultValue ="=Year(Date())"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =1247
                            Width =2550
                            Height =270
                            Name ="Gebäude_Label"
                            Caption ="Kalkulationsjahr"
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =3402
                    Left =3175
                    Top =1644
                    Width =4131
                    Height =284
                    TabIndex =1
                    Name ="KF_Kostenstelle"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Kostenstellen.Kennummer, [Kostenstelle] & \": \" & [Bezeich"
                        "nung] AS KS FROM M_Kostenstellen WHERE (((M_Kostenstellen.Gebäude_verkauft)=(Dat"
                        "e()-731) Or (M_Kostenstellen.Gebäude_verkauft) Is Null)) ORDER BY M_Kostenstelle"
                        "n.Bezeichnung;"
                    ColumnWidths ="0"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =1644
                            Width =2550
                            Height =270
                            Name ="Name_Label"
                            Caption ="Kostenstelle"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =1133
                    Top =113
                    Width =5325
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Auswertung Nebenkostenkalkulation"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3175
                    Top =3750
                    Width =1500
                    Height =345
                    TabIndex =2
                    Name ="BS_Auswerten"
                    Caption ="Daten ausgeben"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =3175
                    LayoutCachedTop =3750
                    LayoutCachedWidth =4675
                    LayoutCachedHeight =4095
                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =3969
                    Left =3175
                    Top =2040
                    Width =4131
                    Height =284
                    TabIndex =3
                    Name ="KF_Kostenart"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [M_Verzeichnis Nebenkosten].ID, [M_Verzeichnis Nebenkosten].N"
                        "ebenkosten_Art FROM [M_Verzeichnis Nebenkosten] ORDER BY [M_Verzeichnis Nebenkos"
                        "ten].Nebenkosten_Art;"
                    ColumnWidths ="0"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =2040
                            Width =2550
                            Height =270
                            Name ="Kostenart-"
                            Caption ="Kostenart"
                            EventProcPrefix ="Kostenart_"
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =3969
                    Left =3175
                    Top =2444
                    Width =4131
                    Height =284
                    TabIndex =4
                    Name ="KF_Empfänger"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW A_Empfänger.ID, LTrim([Anrede] & \" \") & [Name, Vorname] AS "
                        "Empf FROM A_Empfänger ORDER BY A_Empfänger.[Name, Vorname];"
                    ColumnWidths ="0"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =2444
                            Width =2550
                            Height =270
                            Name ="Bezeichnungsfeld69"
                            Caption ="Zahlungsempfänger"
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =1701
                    Left =3177
                    Top =840
                    Width =4131
                    Height =284
                    TabIndex =5
                    Name ="KF_Datengrundlage"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Kalenderjahre.Jahr FROM Kalenderjahre ORDER BY Kalenderjahre."
                        "Jahr;"
                    ColumnWidths ="1701"
                    DefaultValue ="=Year(Date())"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =285
                            Top =840
                            Width =2550
                            Height =270
                            Name ="Bezeichnungsfeld71"
                            Caption ="Daten für Berechnungs aus"
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =3969
                    Left =3175
                    Top =2848
                    Width =4131
                    Height =284
                    TabIndex =6
                    Name ="KF_Zyklus"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Zahlungszyklen.ID, Zahlungszyklen.Zyklus FROM Zahlungszyklen;"
                    ColumnWidths ="0"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =2848
                            Width =2550
                            Height =270
                            Name ="Bezeichnungsfeld73"
                            Caption ="Zahlungszyklus"
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =3969
                    Left =3175
                    Top =3252
                    Width =4131
                    Height =284
                    TabIndex =7
                    Name ="KF_Betrieb"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Betriebe.ID_Betrieb, M_Betriebe.Betrieb FROM M_Betriebe ORD"
                        "ER BY M_Betriebe.Betrieb;"
                    ColumnWidths ="0"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =3252
                            Width =2550
                            Height =270
                            Name ="Bezeichnungsfeld75"
                            Caption ="Betrieb"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5806
                    Top =3750
                    Width =1500
                    Height =345
                    TabIndex =8
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =5806
                    LayoutCachedTop =3750
                    LayoutCachedWidth =7306
                    LayoutCachedHeight =4095
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Bericht Nebenkostenhochrechnung.cls"
