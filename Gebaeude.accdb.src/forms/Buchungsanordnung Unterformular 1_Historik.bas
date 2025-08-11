Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =64
    GridY =64
    Width =8895
    DatasheetFontHeight =10
    ItemSuffix =58
    Left =18855
    Top =11970
    Right =26325
    Bottom =13200
    RecSrcDt = Begin
        0x09730ad4d0e6e240
    End
    RecordSource ="A_Buchungen_Aufteilung_auf_Buchungsstellen"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
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
            Width =1701
        End
        Begin CheckBox
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin TextBox
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin ComboBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =2
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin FormHeader
            Height =0
            Name ="Formularkopf"
        End
        Begin Section
            Height =673
            Name ="Detailbereich"
            Begin
                Begin Label
                    BackStyle =1
                    BorderWidth =1
                    OverlapFlags =93
                    TextAlign =1
                    Width =8895
                    Height =668
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld47"
                    Caption ="  Buchungsstelle(n) \015\012  (nur für doppischen Probebetrieb)"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =223
                    TextAlign =1
                    Left =3118
                    Top =17
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld42"
                    Caption ="Sachkonto"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =223
                    TextAlign =1
                    Left =6979
                    Width =1020
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld43"
                    Caption ="Betrag in €"
                    FontName ="Arial"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =215
                    Left =6377
                    Top =275
                    Width =2212
                    Height =293
                    FontSize =10
                    TabIndex =1
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =223
                    Left =5190
                    Width =967
                    Height =293
                    FontSize =12
                    FontWeight =700
                    TabIndex =2
                    Name ="ID aus Buchungen"
                    ControlSource ="ID aus Buchungen"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"
                    EventProcPrefix ="ID_aus_Buchungen"

                End
                Begin ComboBox
                    FontItalic = NotDefault
                    OverlapFlags =215
                    ColumnCount =3
                    ListRows =50
                    ListWidth =8505
                    Left =3118
                    Top =301
                    Width =3102
                    Height =273
                    FontSize =10
                    Name ="ID aus Buchungsstellen"
                    ControlSource ="ID aus Buchungsstellen"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [Buchungsstellen _Doppik].Kennummer, [Buchungsstellen _Doppik"
                        "].Sachkonto, [Buchungsstellen _Doppik].Bezeichnung FROM [Buchungsstellen _Doppik"
                        "] WHERE ((([Buchungsstellen _Doppik].Stillges_seit) Is Null)) ORDER BY [Buchungs"
                        "stellen _Doppik].Bezeichnung;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"
                    EventProcPrefix ="ID_aus_Buchungsstellen"

                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =215
                    IMESentenceMode =3
                    Left =1966
                    Width =211
                    Height =255
                    TabIndex =3
                    BackColor =967423
                    BorderColor =967423
                    Name ="TF_Sachkonto"
                    ControlSource ="Sachkonto"

                    LayoutCachedLeft =1966
                    LayoutCachedWidth =2177
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =215
                    IMESentenceMode =3
                    Left =2338
                    Top =17
                    Width =211
                    Height =255
                    TabIndex =4
                    BackColor =967423
                    BorderColor =967423
                    Name ="TF_Prod_Nr"
                    ControlSource ="Prod_Nr"

                    LayoutCachedLeft =2338
                    LayoutCachedTop =17
                    LayoutCachedWidth =2549
                    LayoutCachedHeight =272
                End
            End
        End
        Begin FormFooter
            Height =23
            Name ="Formularfuß"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =6360
                    Width =2212
                    Height =23
                    FontSize =10
                    Name ="Summe_Buchungsstelle"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
            End
        End
    End
End
CodeBehindForm
' See "Buchungsanordnung Unterformular 1_Historik.cls"
