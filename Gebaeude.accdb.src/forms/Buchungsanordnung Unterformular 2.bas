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
    ItemSuffix =66
    Left =13395
    Top =10875
    Right =22140
    Bottom =12285
    RecSrcDt = Begin
        0x0aeb8aead1e6e240
    End
    RecordSource ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    DatasheetFontName ="Arial"
    OnLostFocus ="[Event Procedure]"
    FilterOnLoad =0
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
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =8
            FontWeight =400
            ForeColor =-2147483630
            FontName ="MS Sans Serif"
            BorderLineStyle =0
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
            Height =301
            BackColor =14277081
            Name ="Formularkopf"
            BackShade =85.0
            Begin
                Begin Label
                    BackStyle =1
                    BorderWidth =1
                    OverlapFlags =85
                    TextAlign =1
                    Width =1590
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld47"
                    Caption =" Kostenrechnung"
                    FontName ="Arial"
                    LayoutCachedWidth =1590
                    LayoutCachedHeight =285
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =6440
                    Width =1155
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld43"
                    Caption ="Betrag in €"
                    FontName ="Arial"
                    LayoutCachedLeft =6440
                    LayoutCachedWidth =7595
                    LayoutCachedHeight =285
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =1845
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld42"
                    Caption ="Kostenstelle"
                    FontName ="Arial"
                    LayoutCachedLeft =1845
                    LayoutCachedWidth =3255
                    LayoutCachedHeight =285
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =4290
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld57"
                    Caption ="Kostenträger"
                    FontName ="Arial"
                    LayoutCachedLeft =4290
                    LayoutCachedWidth =5700
                    LayoutCachedHeight =285
                End
            End
        End
        Begin Section
            Height =362
            BackColor =14671839
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =6376
                    Top =30
                    Width =2212
                    Height =273
                    FontSize =10
                    TabIndex =2
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    OnExit ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="=NumLock_An()"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End

                    LayoutCachedLeft =6376
                    LayoutCachedTop =30
                    LayoutCachedWidth =8588
                    LayoutCachedHeight =303
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =60
                    Top =30
                    Width =967
                    Height =273
                    FontSize =12
                    FontWeight =700
                    TabIndex =3
                    Name ="ID aus Buchungen"
                    ControlSource ="ID aus Buchungen"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"
                    EventProcPrefix ="ID_aus_Buchungen"

                    LayoutCachedLeft =60
                    LayoutCachedTop =30
                    LayoutCachedWidth =1027
                    LayoutCachedHeight =303
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    FontItalic = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =8505
                    Left =1779
                    Top =30
                    Width =2217
                    Height =273
                    FontSize =10
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="KF_ID_Kostenst"
                    ControlSource ="ID aus Kostenstellen"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Kostenstellen.Kennummer, Format([Kostenstelle_Infoma],\"000"
                        "00\") & \": \" & [M_Kostenstellen].[Bezeichnung] AS Kostenst_Infoma, M_Kostenste"
                        "llen.Kostenstelle_Infoma FROM tbl_100_20_Gebäudeteile INNER JOIN (M_Kostenstelle"
                        "n INNER JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON M_Kostenstellen.Kennummer"
                        " = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst) ON tbl_100_20_Gebäudeteil"
                        "e.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil WHERE ("
                        "((Year([Datum_von])<=Year(Date()) And Year([Datum_bis])>=Year(Date()))=True)) OR"
                        "DER BY M_Kostenstellen.Bezeichnung;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    OnChange ="[Event Procedure]"

                    LayoutCachedLeft =1779
                    LayoutCachedTop =30
                    LayoutCachedWidth =3996
                    LayoutCachedHeight =303
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    FontItalic = NotDefault
                    OverlapFlags =85
                    ColumnCount =3
                    ListRows =50
                    ListWidth =8505
                    Left =4224
                    Top =30
                    Width =1917
                    Height =273
                    FontSize =10
                    TabIndex =1
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="ID aus Kostenträger"
                    ControlSource ="ID aus Kostenträger"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW A_Kostenträger.ID, A_Kostenträger.Prod_Nr, A_Kostenträger.Tex"
                        "t FROM A_Kostenträger ORDER BY A_Kostenträger.Text;"
                    ColumnWidths ="0;3143;6231"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    EventProcPrefix ="ID_aus_Kostenträger"

                    LayoutCachedLeft =4224
                    LayoutCachedTop =30
                    LayoutCachedWidth =6141
                    LayoutCachedHeight =303
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000fff20000000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =1110
                    Top =30
                    Width =225
                    Height =273
                    FontSize =10
                    FontWeight =700
                    TabIndex =4
                    ForeColor =255
                    Name ="Befehl62"
                    Caption ="L"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =1110
                    LayoutCachedTop =30
                    LayoutCachedWidth =1335
                    LayoutCachedHeight =303
                    Overlaps =1
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    TextFontFamily =0
                    IMESentenceMode =3
                    Left =1455
                    Width =211
                    Height =270
                    TabIndex =5
                    BackColor =967423
                    BorderColor =967423
                    Name ="TF_Kostenstelle_Infoma"
                    ControlSource ="Kostenstelle_Infoma"

                    LayoutCachedLeft =1455
                    LayoutCachedWidth =1666
                    LayoutCachedHeight =270
                End
            End
        End
        Begin FormFooter
            Height =363
            BackColor =14671839
            Name ="Formularfuß"
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =3055
                    Top =70
                    Width =2212
                    Height =293
                    FontSize =10
                    BackColor =14671839
                    BorderColor =14671839
                    Name ="Summe_Kostenstelle"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                    LayoutCachedLeft =3055
                    LayoutCachedTop =70
                    LayoutCachedWidth =5267
                    LayoutCachedHeight =363
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =93
                    Left =6377
                    Width =2212
                    Height =338
                    FontSize =10
                    FontWeight =600
                    TabIndex =1
                    Name ="Text63"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Line
                    OverlapFlags =119
                    Left =17
                    Top =2
                    Width =8876
                    Height =9
                    Name ="Linie64"
                End
                Begin Label
                    OverlapFlags =85
                    Left =70
                    Top =44
                    Width =2265
                    Height =240
                    Name ="Bezeichnungsfeld65"
                    Caption ="Summe eingegebener Beträge:"
                End
            End
        End
    End
End
CodeBehindForm
' See "Buchungsanordnung Unterformular 2.cls"
