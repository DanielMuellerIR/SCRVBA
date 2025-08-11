Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    PictureTiling = NotDefault
    DividingLines = NotDefault
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =5
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =23640
    DatasheetFontHeight =10
    ItemSuffix =75
    Left =8175
    Top =5325
    Right =26085
    Bottom =9660
    PaintPalette = Begin
        0x000301000000000000000000
    End
    Filter ="([Lookup_ID aus Maßnahmen].[Massn] Like \"WILHELMSTR*\")"
    RecSrcDt = Begin
        0x8e9fb30acd76e540
    End
    RecordSource ="SELECT Buchungsstellen.Buchungsstelle, Haushaltsdaten.ID AS ID_HHD, Haushaltsdat"
        "en.[ID aus Buchungsstelle], Haushaltsdaten.Kostentraeger, Haushaltsdaten.Jahr, H"
        "aushaltsdaten.Ansatz, Haushaltsdaten.HHR, Haushaltsdaten.VE, Haushaltsdaten.ID_F"
        "in_Her, Haushaltsdaten.ID_Fin_Qu, Haushaltsdaten.[ID aus Maßnahmen], Haushaltsda"
        "ten.Inv_Nr, Haushaltsdaten.Anlagen_Nr, Maßnahmen.[erledigt im Jahr], Haushaltsda"
        "ten.FP_Nr, Buchungsstellen.ID AS ID_BS FROM Finanzquellen INNER JOIN (Maßnahmen "
        "INNER JOIN (Buchungsstellen INNER JOIN Haushaltsdaten ON Buchungsstellen.ID = Ha"
        "ushaltsdaten.[ID aus Buchungsstelle]) ON Maßnahmen.ID = Haushaltsdaten.[ID aus M"
        "aßnahmen]) ON Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu WHERE (((Hausha"
        "ltsdaten.Jahr)>Year(Now())-2) AND ((Haushaltsdaten.HHR)<>0) AND ((Maßnahmen.[erl"
        "edigt im Jahr]) Is Null)) OR (((Haushaltsdaten.Jahr)>Year(Now())-1) AND ((Maßnah"
        "men.[erledigt im Jahr]) Is Null)) ORDER BY Buchungsstellen.Buchungsstelle, Haush"
        "altsdaten.Jahr;"
    Caption ="Haushaltsdaten in DB übernehmen"
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
        Begin FormHeader
            Height =623
            BackColor =12632256
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =113
                    Top =226
                    Width =2210
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Straße Hausnummer Bezeichnungsfeld"
                    Caption ="Nr. BuSt"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Straße_Hausnummer_Bezeichnungsfeld"
                    LayoutCachedLeft =113
                    LayoutCachedTop =226
                    LayoutCachedWidth =2323
                    LayoutCachedHeight =526
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =6660
                    Top =223
                    Width =3063
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichung Bezeichnungsfeld"
                    Caption ="Maßnahme"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Bezeichung_Bezeichnungsfeld"
                    LayoutCachedLeft =6660
                    LayoutCachedTop =223
                    LayoutCachedWidth =9723
                    LayoutCachedHeight =523
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =9767
                    Top =223
                    Width =913
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Name Bezeichnungsfeld"
                    Caption ="HH-Jahr"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Name_Bezeichnungsfeld"
                    LayoutCachedLeft =9767
                    LayoutCachedTop =223
                    LayoutCachedWidth =10680
                    LayoutCachedHeight =523
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =10735
                    Top =223
                    Width =1353
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld17"
                    Caption ="Ansatz"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =10735
                    LayoutCachedTop =223
                    LayoutCachedWidth =12088
                    LayoutCachedHeight =523
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =12148
                    Top =223
                    Width =1248
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld18"
                    Caption ="HH-Rest"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =12148
                    LayoutCachedTop =223
                    LayoutCachedWidth =13396
                    LayoutCachedHeight =523
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =13458
                    Top =223
                    Width =1188
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld19"
                    Caption ="VE"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =13458
                    LayoutCachedTop =223
                    LayoutCachedWidth =14646
                    LayoutCachedHeight =523
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =16116
                    Top =223
                    Width =1874
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld20"
                    Caption ="Mittelherkunft"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =16116
                    LayoutCachedTop =223
                    LayoutCachedWidth =17990
                    LayoutCachedHeight =523
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =22050
                    Top =223
                    Width =1368
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld35"
                    Caption ="zur Vfg."
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =22050
                    LayoutCachedTop =223
                    LayoutCachedWidth =23418
                    LayoutCachedHeight =523
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =18053
                    Top =223
                    Width =1295
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld61"
                    Caption ="Inv.-Nr"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =18053
                    LayoutCachedTop =223
                    LayoutCachedWidth =19348
                    LayoutCachedHeight =523
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =19467
                    Top =223
                    Width =1178
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld62"
                    Caption ="Anlagen-Nr"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =19467
                    LayoutCachedTop =223
                    LayoutCachedWidth =20645
                    LayoutCachedHeight =523
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =14701
                    Top =223
                    Width =1364
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld64"
                    Caption ="Mittelart"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =14701
                    LayoutCachedTop =223
                    LayoutCachedWidth =16065
                    LayoutCachedHeight =523
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =2381
                    Top =226
                    Width =1871
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld68"
                    Caption ="Sachkonto"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =2381
                    LayoutCachedTop =226
                    LayoutCachedWidth =4252
                    LayoutCachedHeight =526
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =4365
                    Top =226
                    Width =2222
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld72"
                    Caption ="Kostenträger"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =4365
                    LayoutCachedTop =226
                    LayoutCachedWidth =6587
                    LayoutCachedHeight =526
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =20760
                    Top =223
                    Width =1178
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld74"
                    Caption ="FP-Nr."
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =20760
                    LayoutCachedTop =223
                    LayoutCachedWidth =21938
                    LayoutCachedHeight =523
                End
            End
        End
        Begin Section
            Height =340
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =2
                    ListWidth =510
                    Left =9767
                    Top =56
                    Width =915
                    Height =270
                    TabIndex =4
                    BackColor =16777215
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="HH_Jahr"
                    ControlSource ="Jahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Kalenderjahre.Jahr FROM Kalenderjahre ORDER BY Kalenderjahre."
                        "Jahr;"
                    ColumnWidths ="510"

                    LayoutCachedLeft =9767
                    LayoutCachedTop =56
                    LayoutCachedWidth =10682
                    LayoutCachedHeight =326
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =3
                    ListRows =50
                    ListWidth =6996
                    Left =56
                    Top =56
                    Width =2267
                    Height =270
                    BackColor =16777215
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="IDBuSt"
                    ControlSource ="ID aus Buchungsstelle"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Buchungsstellen.ID, Buchungsstellen.Buchungsstelle, Buchungss"
                        "tellen.[Text Buchungsstelle] FROM Buchungsstellen ORDER BY Buchungsstellen.Buchu"
                        "ngsstelle;"
                    ColumnWidths ="0;2010;5556"
                    OnGotFocus ="[Event Procedure]"
                    Format ="000,000,000"

                    LayoutCachedLeft =56
                    LayoutCachedTop =56
                    LayoutCachedWidth =2323
                    LayoutCachedHeight =326
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =10735
                    Top =56
                    Width =1347
                    Height =270
                    TabIndex =5
                    BackColor =16777215
                    Name ="Ansatz"
                    ControlSource ="Ansatz"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    DefaultValue ="0"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =10735
                    LayoutCachedTop =56
                    LayoutCachedWidth =12082
                    LayoutCachedHeight =326
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =12148
                    Top =56
                    Width =1242
                    Height =270
                    TabIndex =6
                    BackColor =16777215
                    Name ="HHR"
                    ControlSource ="HHR"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    DefaultValue ="0"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =12148
                    LayoutCachedTop =56
                    LayoutCachedWidth =13390
                    LayoutCachedHeight =326
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =13458
                    Top =56
                    Width =1182
                    Height =270
                    TabIndex =7
                    BackColor =16777215
                    Name ="VE"
                    ControlSource ="VE"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    DefaultValue ="0"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =13458
                    LayoutCachedTop =56
                    LayoutCachedWidth =14640
                    LayoutCachedHeight =326
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListWidth =1800
                    Left =14701
                    Top =56
                    Width =1355
                    Height =270
                    TabIndex =8
                    BackColor =16777215
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="KF_Mittelart"
                    ControlSource ="ID_Fin_Qu"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Finanzquellen.ID_Fin_Qu, Finanzquellen.Finanzquelle FROM Fina"
                        "nzquellen;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =14701
                    LayoutCachedTop =56
                    LayoutCachedWidth =16056
                    LayoutCachedHeight =326
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    DecimalPlaces =0
                    SpecialEffect =0
                    OverlapFlags =85
                    Left =22102
                    Top =71
                    Width =1249
                    Height =255
                    TabIndex =13
                    BackColor =16777215
                    Name ="ZURvFG"
                    ControlSource ="=[HHR]+[Ansatz]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    DefaultValue ="0"

                    LayoutCachedLeft =22102
                    LayoutCachedTop =71
                    LayoutCachedWidth =23351
                    LayoutCachedHeight =326
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =2
                    ListRows =50
                    ListWidth =11340
                    Left =6660
                    Top =56
                    Width =3064
                    Height =270
                    TabIndex =3
                    BackColor =16777215
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="ID aus Maßnahmen"
                    ControlSource ="ID aus Maßnahmen"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Maßnahmen.ID, [NAme] & \" \" & [tbl_100_20_Gebäudeteile].[Hau"
                        "s_Nr] & \" \" & [Bezeichnung] & \" -> \" & [Gebäudeteil] & \": \" & [Maßnahme] A"
                        "S Massn FROM (tbl_100_10_Liegenschaften RIGHT JOIN (tbl_100_20_Gebäudeteile RIGH"
                        "T JOIN Maßnahmen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäud"
                        "eteil) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebä"
                        "ude) LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße"
                        " = M_Strassenverzeichnis.Kennummer WHERE (((Maßnahmen.[erledigt im Jahr]) Is Nul"
                        "l)) ORDER BY [NAme] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \" \" & [Bez"
                        "eichnung] & \" -> \" & [Gebäudeteil] & \": \" & [Maßnahme];"
                    ColumnWidths ="0"
                    OnLostFocus ="[Event Procedure]"
                    EventProcPrefix ="ID_aus_Maßnahmen"

                    LayoutCachedLeft =6660
                    LayoutCachedTop =56
                    LayoutCachedWidth =9724
                    LayoutCachedHeight =326
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =18105
                    Top =56
                    Width =1247
                    Height =270
                    TabIndex =10
                    BackColor =16777215
                    Name ="TF_Kenn_Nr"
                    ControlSource ="Inv_Nr"
                    DefaultValue ="0"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =18105
                    LayoutCachedTop =56
                    LayoutCachedWidth =19352
                    LayoutCachedHeight =326
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =19467
                    Top =56
                    Width =1182
                    Height =270
                    TabIndex =11
                    BackColor =16777215
                    Name ="TF_Anl_Nr"
                    ControlSource ="Anlagen_Nr"
                    DefaultValue ="0"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =19467
                    LayoutCachedTop =56
                    LayoutCachedWidth =20649
                    LayoutCachedHeight =326
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListWidth =1800
                    Left =16116
                    Top =56
                    Width =1917
                    Height =270
                    TabIndex =9
                    BackColor =16777215
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="KF_MittelHerk"
                    ControlSource ="ID_Fin_Her"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Finanzherkunft.ID_Fin_Her, Finanzherkunft.Finanzherkunft FROM"
                        " Finanzherkunft;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =16116
                    LayoutCachedTop =56
                    LayoutCachedWidth =18033
                    LayoutCachedHeight =326
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =3
                    ListRows =50
                    ListWidth =6996
                    Left =2381
                    Top =56
                    Width =1874
                    Height =270
                    TabIndex =1
                    BackColor =16777215
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="TF_Sachkonto"
                    ControlSource ="ID aus Buchungsstelle"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Buchungsstellen.ID, Buchungsstellen.Sachkonto, Buchungsstelle"
                        "n.[Text Buchungsstelle] FROM Buchungsstellen;"
                    ColumnWidths ="0;2011;5556"
                    Format ="000,000,000"

                    LayoutCachedLeft =2381
                    LayoutCachedTop =56
                    LayoutCachedWidth =4255
                    LayoutCachedHeight =326
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =4365
                    Top =56
                    Width =2222
                    Height =270
                    TabIndex =2
                    BackColor =16777215
                    Name ="TF_Kont_Nr"
                    ControlSource ="Kostentraeger"
                    DefaultValue ="0"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =4365
                    LayoutCachedTop =56
                    LayoutCachedWidth =6587
                    LayoutCachedHeight =326
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =20760
                    Top =56
                    Width =1182
                    Height =270
                    TabIndex =12
                    BackColor =16777215
                    Name ="Text73"
                    ControlSource ="FP_Nr"
                    DefaultValue ="0"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =20760
                    LayoutCachedTop =56
                    LayoutCachedWidth =21942
                    LayoutCachedHeight =326
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000ffc20e00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
            End
        End
        Begin FormFooter
            Height =793
            BackColor =12632256
            Name ="Formularfuß"
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =14223
                    Top =109
                    Width =576
                    Height =576
                    Name ="Befehl10"
                    Caption ="Befehl10"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadad0dadadadadaadad00adadadadaddad030dadadadada ,
                        0xad0330adadadadad0033300000000adaa03330ff0dadadadd03300ff0adad4da ,
                        0xa03330ff0dad44add03330ff0ad44444a03330ff0d444444d03330ff0ad44444 ,
                        0xa0330fff0dad44add030ffff0adad4daa00fffff0dadadadd00000000adadada ,
                        0xadadadadadadadad000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Formular schließen"

                    LayoutCachedLeft =14223
                    LayoutCachedTop =109
                    LayoutCachedWidth =14799
                    LayoutCachedHeight =685
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =177
                    Top =177
                    Width =3143
                    Height =420
                    TabIndex =1
                    Name ="BF_BS_Neu"
                    Caption ="Neue Buchungsstelle einrichten"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =177
                    LayoutCachedTop =177
                    LayoutCachedWidth =3320
                    LayoutCachedHeight =597
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =10773
                    Top =177
                    Width =3143
                    Height =420
                    TabIndex =2
                    Name ="Befehl58"
                    Caption ="Formular drucken"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =10773
                    LayoutCachedTop =177
                    LayoutCachedWidth =13916
                    LayoutCachedHeight =597
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6983
                    Top =177
                    Width =3468
                    Height =420
                    TabIndex =3
                    Name ="BS_HH_DS_Loeschen"
                    Caption ="markierten Haushalts-Datensatz löschen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6983
                    LayoutCachedTop =177
                    LayoutCachedWidth =10451
                    LayoutCachedHeight =597
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3573
                    Top =177
                    Width =3143
                    Height =420
                    TabIndex =4
                    Name ="BS_BS_bearbeiten"
                    Caption ="markierte Buchungsstelle ändern"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =3573
                    LayoutCachedTop =177
                    LayoutCachedWidth =6716
                    LayoutCachedHeight =597
                End
            End
        End
    End
End
CodeBehindForm
' See "Haushaltsdaten eingeben.cls"
