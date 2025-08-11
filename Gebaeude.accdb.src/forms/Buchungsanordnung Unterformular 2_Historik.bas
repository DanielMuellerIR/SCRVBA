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
    ItemSuffix =65
    Left =13350
    Top =9735
    Right =22080
    Bottom =11730
    RecSrcDt = Begin
        0x0aeb8aead1e6e240
    End
    RecordSource ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    DatasheetFontName ="Arial"
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
            Height =285
            BackColor =14671839
            Name ="Formularkopf"
            Begin
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =1875
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld42"
                    Caption ="Kostenstelle"
                    FontName ="Arial"
                    LayoutCachedLeft =1875
                    LayoutCachedWidth =3285
                    LayoutCachedHeight =285
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =4240
                    Width =1410
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld57"
                    Caption ="Kostenträger"
                    FontName ="Arial"
                    LayoutCachedLeft =4240
                    LayoutCachedWidth =5650
                    LayoutCachedHeight =285
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =6872
                    Width =1020
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld43"
                    Caption ="Betrag in €"
                    FontName ="Arial"
                    LayoutCachedLeft =6872
                    LayoutCachedWidth =7892
                    LayoutCachedHeight =285
                End
            End
        End
        Begin Section
            Height =248
            BackColor =14671839
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    TextAlign =3
                    Left =6376
                    Width =2212
                    Height =248
                    FontSize =10
                    TabIndex =2
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                    LayoutCachedLeft =6376
                    LayoutCachedWidth =8588
                    LayoutCachedHeight =248
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
                    Width =967
                    Height =248
                    FontSize =12
                    FontWeight =700
                    TabIndex =3
                    Name ="ID aus Buchungen"
                    ControlSource ="ID aus Buchungen"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"
                    EventProcPrefix ="ID_aus_Buchungen"

                    LayoutCachedLeft =60
                    LayoutCachedWidth =1027
                    LayoutCachedHeight =248
                End
                Begin ComboBox
                    FontItalic = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =8505
                    Left =1779
                    Width =2217
                    Height =248
                    FontSize =10
                    Name ="ID aus Kostenstellen"
                    ControlSource ="ID aus Kostenstellen"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Kostenstellen.Kennummer, Format([M_Kostenstellen].[Kostenst"
                        "elle_Infoma],\"00000\") & \": \" & [M_Kostenstellen].[Bezeichnung] & \" (\" & [B"
                        "uch_Zeitr_Start] & \" bis \" & [Buch_Zeitr_Ende] & \")\" AS KS FROM M_Kostenstel"
                        "len INNER JOIN Plausibilitätsprüfung_Zeitsp_Kostellen ON M_Kostenstellen.Kennumm"
                        "er = Plausibilitätsprüfung_Zeitsp_Kostellen.Kennummer ORDER BY M_Kostenstellen.B"
                        "ezeichnung;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"
                    EventProcPrefix ="ID_aus_Kostenstellen"

                    LayoutCachedLeft =1779
                    LayoutCachedWidth =3996
                    LayoutCachedHeight =248
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    FontItalic = NotDefault
                    OverlapFlags =85
                    ColumnCount =3
                    ListRows =50
                    ListWidth =8505
                    Left =4224
                    Width =1917
                    Height =248
                    FontSize =10
                    TabIndex =1
                    Name ="ID aus Kostenträger"
                    ControlSource ="ID aus Kostenträger"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW A_Kostenträger.ID, A_Kostenträger.Prod_Nr, A_Kostenträger.Tex"
                        "t FROM A_Kostenträger ORDER BY A_Kostenträger.Text;"
                    ColumnWidths ="0;3143;6231"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"
                    EventProcPrefix ="ID_aus_Kostenträger"

                    LayoutCachedLeft =4224
                    LayoutCachedWidth =6141
                    LayoutCachedHeight =248
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =1274
                    Width =375
                    Height =248
                    FontSize =10
                    FontWeight =700
                    TabIndex =4
                    ForeColor =255
                    Name ="Befehl62"
                    Caption ="L"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =1274
                    LayoutCachedWidth =1649
                    LayoutCachedHeight =248
                    Overlaps =1
                End
            End
        End
        Begin FormFooter
            Height =293
            BackColor =14671839
            Name ="Formularfuß"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    TextAlign =3
                    Left =6333
                    Width =2212
                    Height =293
                    FontSize =10
                    FontWeight =700
                    Name ="Summe_Kostenstelle"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                    LayoutCachedLeft =6333
                    LayoutCachedWidth =8545
                    LayoutCachedHeight =293
                End
            End
        End
    End
End
CodeBehindForm
' See "Buchungsanordnung Unterformular 2_Historik.cls"
