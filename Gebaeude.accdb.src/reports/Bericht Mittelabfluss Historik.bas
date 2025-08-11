Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =10204
    DatasheetFontHeight =10
    ItemSuffix =106
    Left =11715
    Top =2355
    RecSrcDt = Begin
        0xbf4fcc4b94c8e440
    End
    RecordSource ="Mittelabfluss_5_Zeitablauf"
    OnOpen ="= Maxim_Bericht()"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextFontFamily =2
            FontName ="Arial"
        End
        Begin Rectangle
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
        End
        Begin TextBox
            OldBorderStyle =0
            TextFontFamily =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Arial"
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin EmptyCell
            Height =240
            GridlineColor =12632256
            GridlineShade =65.0
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1587
            Name ="Berichtskopf"
            Begin
                Begin Label
                    TextAlign =1
                    TextFontFamily =34
                    Left =2891
                    Top =56
                    Width =5160
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld16"
                    Caption ="Mittelabfluss Vermögenshaushalt"
                End
                Begin Label
                    FontItalic = NotDefault
                    SpecialEffect =1
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =513
                    Top =67
                    Width =1865
                    Height =401
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    Name ="Caisy"
                    Caption ="Caisy Bau"
                End
                Begin Label
                    FontItalic = NotDefault
                    TextAlign =2
                    TextFontFamily =34
                    Width =2840
                    Height =799
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    ForeColor =65535
                    Name ="Bezeichnungsfeld18"
                    Caption ="Caisy Bau"
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Top =1247
                    Width =1134
                    Height =227
                    FontWeight =700
                    Name ="Bezeichnungsfeld65"
                    Caption ="Datum"
                    LayoutCachedTop =1247
                    LayoutCachedWidth =1134
                    LayoutCachedHeight =1474
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Left =1274
                    Top =1247
                    Width =1134
                    Height =227
                    FontWeight =700
                    Name ="Bezeichnungsfeld66"
                    Caption ="Ansätze"
                    LayoutCachedLeft =1274
                    LayoutCachedTop =1247
                    LayoutCachedWidth =2408
                    LayoutCachedHeight =1474
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Left =2548
                    Top =1247
                    Width =1134
                    Height =227
                    FontWeight =700
                    Name ="Bezeichnungsfeld67"
                    Caption ="VE"
                    LayoutCachedLeft =2548
                    LayoutCachedTop =1247
                    LayoutCachedWidth =3682
                    LayoutCachedHeight =1474
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Left =3822
                    Top =1247
                    Width =1134
                    Height =227
                    FontWeight =700
                    Name ="Bezeichnungsfeld68"
                    Caption ="HHR"
                    LayoutCachedLeft =3822
                    LayoutCachedTop =1247
                    LayoutCachedWidth =4956
                    LayoutCachedHeight =1474
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Left =5096
                    Top =1247
                    Width =1134
                    Height =227
                    FontWeight =700
                    Name ="Bezeichnungsfeld69"
                    Caption ="bezahlt"
                    LayoutCachedLeft =5096
                    LayoutCachedTop =1247
                    LayoutCachedWidth =6230
                    LayoutCachedHeight =1474
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Left =6370
                    Top =1247
                    Width =1134
                    Height =227
                    FontWeight =700
                    Name ="Bezeichnungsfeld70"
                    Caption ="Aufträge"
                    LayoutCachedLeft =6370
                    LayoutCachedTop =1247
                    LayoutCachedWidth =7504
                    LayoutCachedHeight =1474
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Left =7644
                    Top =1247
                    Width =1134
                    Height =227
                    FontWeight =700
                    Name ="Bezeichnungsfeld71"
                    Caption ="noch zur Vfg"
                    LayoutCachedLeft =7644
                    LayoutCachedTop =1247
                    LayoutCachedWidth =8778
                    LayoutCachedHeight =1474
                End
                Begin Label
                    TextAlign =3
                    TextFontFamily =34
                    Left =8918
                    Top =1247
                    Width =1134
                    Height =227
                    FontWeight =700
                    Name ="Bezeichnungsfeld72"
                    Caption ="in%"
                    LayoutCachedLeft =8918
                    LayoutCachedTop =1247
                    LayoutCachedWidth =10052
                    LayoutCachedHeight =1474
                End
                Begin Line
                    Top =1545
                    Width =10035
                    Name ="Linie73"
                    LayoutCachedTop =1545
                    LayoutCachedWidth =10035
                    LayoutCachedHeight =1545
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =227
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Width =1134
                    Height =227
                    Name ="Archivierungsdatum"
                    ControlSource ="Archivierungsdatum"

                    LayoutCachedWidth =1134
                    LayoutCachedHeight =227
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    BackStyle =0
                    Left =1274
                    Width =1134
                    Height =227
                    TabIndex =1
                    Name ="Ansätze"
                    ControlSource ="Ansätze"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =1274
                    LayoutCachedWidth =2408
                    LayoutCachedHeight =227
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    BackStyle =0
                    Left =2548
                    Width =1134
                    Height =227
                    TabIndex =2
                    Name ="VE"
                    ControlSource ="VE"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =2548
                    LayoutCachedWidth =3682
                    LayoutCachedHeight =227
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    BackStyle =0
                    Left =3822
                    Width =1134
                    Height =227
                    TabIndex =3
                    Name ="HHR"
                    ControlSource ="HHR"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =3822
                    LayoutCachedWidth =4956
                    LayoutCachedHeight =227
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    BackStyle =0
                    Left =5096
                    Width =1134
                    Height =227
                    TabIndex =4
                    Name ="bezahlt"
                    ControlSource ="bezahlt"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =5096
                    LayoutCachedWidth =6230
                    LayoutCachedHeight =227
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    BackStyle =0
                    Left =6370
                    Width =1134
                    Height =227
                    TabIndex =5
                    Name ="Aufträge"
                    ControlSource ="Aufträge"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =6370
                    LayoutCachedWidth =7504
                    LayoutCachedHeight =227
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    BackStyle =0
                    Left =7644
                    Width =1134
                    Height =227
                    TabIndex =6
                    Name ="noch zur Vfg"
                    ControlSource ="noch zur Vfg"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="noch_zur_Vfg"

                    LayoutCachedLeft =7644
                    LayoutCachedWidth =8778
                    LayoutCachedHeight =227
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =8918
                    Width =1134
                    Height =225
                    TabIndex =7
                    Name ="in%"
                    ControlSource ="in%"
                    Format ="Percent"
                    EventProcPrefix ="in_"

                    LayoutCachedLeft =8918
                    LayoutCachedWidth =10052
                    LayoutCachedHeight =225
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =2948
            Name ="Berichtsfuß"
            Begin
                Begin Label
                    TextAlign =1
                    TextFontFamily =34
                    Left =226
                    Top =226
                    Width =7170
                    Height =2370
                    FontSize =10
                    FontWeight =700
                    Name ="Bezeichnungsfeld80"
                    Caption ="Achtung: \015\012\015\012Dieser Bericht arbeitet erst ab dem Termin korrekt, zu "
                        "dem\015\012Bereich 20 alle Daten in die Haushaltsdatei eingegeben hat! \015\012\015"
                        "\012Bis zu diesem Zeitpunkt werden hier nur Daten zu solchen \015\012Maßnahmen w"
                        "iedergegeben, für die bereits Datenmaterial \015\012zum Zeitpunkt der Speicherun"
                        "gin der Haushaltsdatei vorhanden\015\012war."
                    LayoutCachedLeft =226
                    LayoutCachedTop =226
                    LayoutCachedWidth =7396
                    LayoutCachedHeight =2596
                End
            End
        End
    End
End
