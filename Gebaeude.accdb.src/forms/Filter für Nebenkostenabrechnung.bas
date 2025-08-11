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
    Width =7313
    DatasheetFontHeight =10
    ItemSuffix =85
    Left =13395
    Top =7110
    Right =22500
    Bottom =13245
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Nebenkostenabrechnung"
    DatasheetFontName ="Arial"
    OnActivate ="[Event Procedure]"
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
            Height =4081
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =3
                    ListRows =50
                    ListWidth =3688
                    Left =2834
                    Top =1190
                    Width =3921
                    Height =284
                    Name ="Datei"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Archiv_Mietberechnungen.datum, Archiv_Mietberechnungen.Text F"
                        "ROM Archiv_Mietberechnungen GROUP BY Archiv_Mietberechnungen.datum, Archiv_Mietb"
                        "erechnungen.Text;"
                    ColumnWidths ="939;2835"
                    AfterUpdate ="[Event Procedure]"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1644
                            Top =566
                            Width =4695
                            Height =450
                            Name ="Gebäude_Label"
                            Caption ="Bitte mindestens die gewünschte Archivdatei der Mietberechnung und das Jahr ausw"
                                "ählen"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =1644
                    Top =120
                    Width =4815
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Nebenkostenabrechnung Archiv"
                    LayoutCachedLeft =1644
                    LayoutCachedTop =120
                    LayoutCachedWidth =6459
                    LayoutCachedHeight =480
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =2834
                    Top =3315
                    Width =1500
                    Height =345
                    TabIndex =5
                    Name ="BS_Auswerten"
                    Caption ="Filter anwenden"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2834
                    LayoutCachedTop =3315
                    LayoutCachedWidth =4334
                    LayoutCachedHeight =3660
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =2835
                    Left =2834
                    Top =1984
                    Width =3921
                    Height =284
                    TabIndex =2
                    Name ="KF_Betrieb"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Betriebe.ID_Betrieb, M_Betriebe.Betrieb FROM M_Betriebe ORD"
                        "ER BY M_Betriebe.Betrieb;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                End
                Begin Label
                    OverlapFlags =85
                    Left =963
                    Top =1204
                    Width =1695
                    Height =270
                    Name ="Bezeichnungsfeld64"
                    Caption ="Datei"
                End
                Begin Label
                    OverlapFlags =85
                    Left =963
                    Top =1998
                    Width =1695
                    Height =270
                    Name ="Betrieb_"
                    Caption ="Betrieb"
                End
                Begin Label
                    OverlapFlags =85
                    Left =963
                    Top =2402
                    Width =1695
                    Height =270
                    Name ="Bezeichnungsfeld66"
                    Caption ="Bereich"
                End
                Begin Label
                    OverlapFlags =85
                    Left =963
                    Top =1594
                    Width =1695
                    Height =270
                    Name ="Bezeichnungsfeld71"
                    Caption ="Kalkulationsjahr"
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ListRows =50
                    ListWidth =1134
                    Left =2834
                    Top =1587
                    Width =3921
                    Height =284
                    TabIndex =1
                    Name ="KF_HHJ"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Kalenderjahre.Jahr FROM Kalenderjahre GROUP BY Kalenderjahre."
                        "Jahr ORDER BY Kalenderjahre.Jahr;"
                    ColumnWidths ="941"

                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =2835
                    Left =2834
                    Top =2388
                    Width =3921
                    Height =284
                    TabIndex =3
                    Name ="KF_Bereich"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Bereiche.Kennummer, [BereichNr] & \": \" & [BereichName] AS"
                        " Bereich FROM M_Bereiche WHERE (((M_Bereiche.ID_Betrieb) Like [formulare]![filte"
                        "r für Nebenkostenabrechnung]![KF_betrieb])) ORDER BY [BereichNr] & \": \" & [Ber"
                        "eichName];"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =2834
                    LayoutCachedTop =2388
                    LayoutCachedWidth =6755
                    LayoutCachedHeight =2672
                End
                Begin Label
                    OverlapFlags =85
                    Left =963
                    Top =2806
                    Width =1695
                    Height =270
                    Name ="Bezeichnungsfeld77"
                    Caption ="Objekt"
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =10206
                    Left =2834
                    Top =2792
                    Width =3921
                    Height =284
                    TabIndex =4
                    Name ="KF_Objekt"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW tbl_100_20_Gebäudeteile.ID_Gebäudeteil, [Name] & \" \" & [tbl"
                        "_100_20_Gebäudeteile].[HAus_Nr] & \": \" & [Bezeichnung] & \": \" & [Gebäudeteil"
                        "] AS Objekt FROM tbl_100_10_Liegenschaften RIGHT JOIN (tbl_100_20_Gebäudeteile L"
                        "EFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_S"
                        "trassenverzeichnis.Kennummer) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_"
                        "20_Gebäudeteile.ID_Gebäude WHERE (((tbl_100_20_Gebäudeteile.[Kennummer aus Berei"
                        "che])=[Formulare]![Filter für Nebenkostenabrechnung]![KF_Bereich])) ORDER BY [Na"
                        "me] & \" \" & [tbl_100_20_Gebäudeteile].[HAus_Nr] & \": \" & [Bezeichnung] & \":"
                        " \" & [Gebäudeteil];"
                    ColumnWidths ="0"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5254
                    Top =3315
                    Width =1500
                    Height =345
                    TabIndex =6
                    Name ="BS_Schließen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =5254
                    LayoutCachedTop =3315
                    LayoutCachedWidth =6754
                    LayoutCachedHeight =3660
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Nebenkostenabrechnung.cls"
