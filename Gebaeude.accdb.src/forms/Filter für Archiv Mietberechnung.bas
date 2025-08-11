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
    Width =10488
    DatasheetFontHeight =10
    ItemSuffix =80
    Left =13395
    Top =7905
    Right =25665
    Bottom =13185
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Datenausgabe Mietberechnung aus Archiv"
    OnOpen ="[Event Procedure]"
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
                    ColumnHeads = NotDefault
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =4
                    ListRows =50
                    ListWidth =3688
                    Left =2828
                    Top =1537
                    Width =7434
                    Height =284
                    Name ="KF_Datei"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Archiv_Mietberechnungen.Text, Archiv_Mietberechnungen.Datum, "
                        "Archiv_Mietberechnungen.Planjahr, Archiv_Mietberechnungen.NK_Grundl_Jahr FROM Ar"
                        "chiv_Mietberechnungen GROUP BY Archiv_Mietberechnungen.Text, Archiv_Mietberechnu"
                        "ngen.Datum, Archiv_Mietberechnungen.Planjahr, Archiv_Mietberechnungen.NK_Grundl_"
                        "Jahr, Archiv_Mietberechnungen.Neu_ab_2017 HAVING (((Archiv_Mietberechnungen.Neu_"
                        "ab_2017)=True)) ORDER BY Archiv_Mietberechnungen.Datum DESC;"
                    ColumnWidths ="3402;1701"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =2828
                    LayoutCachedTop =1537
                    LayoutCachedWidth =10262
                    LayoutCachedHeight =1821
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =960
                            Top =1537
                            Width =1695
                            Height =270
                            Name ="Bezeichnungsfeld64"
                            Caption ="Datei"
                            LayoutCachedLeft =960
                            LayoutCachedTop =1537
                            LayoutCachedWidth =2655
                            LayoutCachedHeight =1807
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =963
                    Top =225
                    Width =4815
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Archivdaten Mietberechnung"
                    LayoutCachedLeft =963
                    LayoutCachedTop =225
                    LayoutCachedWidth =5778
                    LayoutCachedHeight =585
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =2895
                    Top =2835
                    Width =2155
                    TabIndex =3
                    Name ="BS_Auswertung"
                    Caption ="Auswertung starten"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =2835
                    LayoutCachedWidth =5050
                    LayoutCachedHeight =3118
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =2835
                    Left =2831
                    Top =1935
                    Width =3921
                    Height =284
                    TabIndex =1
                    Name ="KF_Mieter"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Archiv_Mietberechnungen.BereichNr, [BereichNr] & \": \" & [Be"
                        "reichName] AS Mieter FROM Archiv_Mietberechnungen GROUP BY Archiv_Mietberechnung"
                        "en.BereichNr, [BereichNr] & \": \" & [BereichName] ORDER BY [BereichNr] & \": \""
                        " & [BereichName];"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =2831
                    LayoutCachedTop =1935
                    LayoutCachedWidth =6752
                    LayoutCachedHeight =2219
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =20
                    ListWidth =2835
                    Left =2831
                    Top =2339
                    Width =7434
                    Height =284
                    TabIndex =2
                    Name ="KF_Objekt"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT Archiv_Mietberechnungen.ID_Gebäude, [M_Strassenverzeichnis].[nam"
                        "e] & \" \" & [HAus_Nr] & \": \" & [tbl_100_10_Liegenschaften].[Bezeichnung] AS O"
                        "bjekt FROM (Archiv_Mietberechnungen INNER JOIN tbl_100_10_Liegenschaften ON Arch"
                        "iv_Mietberechnungen.ID_Gebäude = tbl_100_10_Liegenschaften.ID_Gebäude) LEFT JOIN"
                        " M_Strassenverzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strasse"
                        "nverzeichnis.Kennummer GROUP BY Archiv_Mietberechnungen.ID_Gebäude, [M_Strassenv"
                        "erzeichnis].[name] & \" \" & [HAus_Nr] & \": \" & [tbl_100_10_Liegenschaften].[B"
                        "ezeichnung], Archiv_Mietberechnungen.BereichNr HAVING (((Archiv_Mietberechnungen"
                        ".BereichNr) Between F_Variable(\"lng_Ber_Nr_Min\") And F_Variable(\"lng_Ber_Nr_M"
                        "ax\"))) ORDER BY [M_Strassenverzeichnis].[name] & \" \" & [HAus_Nr] & \": \" & ["
                        "tbl_100_10_Liegenschaften].[Bezeichnung];"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2831
                    LayoutCachedTop =2339
                    LayoutCachedWidth =10265
                    LayoutCachedHeight =2623
                End
                Begin Label
                    OverlapFlags =85
                    Left =960
                    Top =1949
                    Width =1695
                    Height =270
                    Name ="Bezeichnungsfeld65"
                    Caption ="Mieter"
                    LayoutCachedLeft =960
                    LayoutCachedTop =1949
                    LayoutCachedWidth =2655
                    LayoutCachedHeight =2219
                End
                Begin Label
                    OverlapFlags =85
                    Left =960
                    Top =2353
                    Width =1695
                    Height =270
                    Name ="Bezeichnungsfeld66"
                    Caption ="Objekt"
                    LayoutCachedLeft =960
                    LayoutCachedTop =2353
                    LayoutCachedWidth =2655
                    LayoutCachedHeight =2623
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5106
                    Top =2835
                    Width =2155
                    TabIndex =4
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =5106
                    LayoutCachedTop =2835
                    LayoutCachedWidth =7261
                    LayoutCachedHeight =3118
                End
                Begin Label
                    OverlapFlags =85
                    Left =963
                    Top =792
                    Width =3855
                    Height =450
                    Name ="Gebäude_Label"
                    Caption ="Bitte die gewünschte Archivdatei (und ggfls. einzelne Datensätze)  auswählen"
                    LayoutCachedLeft =963
                    LayoutCachedTop =792
                    LayoutCachedWidth =4818
                    LayoutCachedHeight =1242
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Archiv Mietberechnung.cls"
