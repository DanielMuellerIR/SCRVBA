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
    DividingLines = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =64
    GridY =64
    Width =9708
    DatasheetFontHeight =10
    ItemSuffix =68
    Left =13395
    Top =9015
    Right =22620
    Bottom =12060
    RecSrcDt = Begin
        0xb95ed4db36cce440
    End
    RecordSource ="SELECT MonatsAO_temp_Buchungssatz_Kostenstellen.* FROM MonatsAO_temp_Buchungssat"
        "z_Kostenstellen;"
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
            Name ="Formularkopf"
            Begin
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =45
                    Width =1890
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld42"
                    Caption ="Kostenstelle Infoma:"
                    FontName ="Arial"
                    LayoutCachedLeft =45
                    LayoutCachedWidth =1935
                    LayoutCachedHeight =285
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =5214
                    Width =1020
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld43"
                    Caption ="Betrag in €"
                    FontName ="Arial"
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =2460
                    Width =1410
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld57"
                    Caption ="Prod.-Nr."
                    FontName ="Arial"
                End
            End
        End
        Begin Section
            Height =273
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =4597
                    Width =2212
                    Height =273
                    FontSize =10
                    TabIndex =2
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"

                End
                Begin ComboBox
                    FontItalic = NotDefault
                    OverlapFlags =85
                    ColumnCount =3
                    ListRows =50
                    ListWidth =8505
                    Left =30
                    Width =1977
                    Height =273
                    FontSize =10
                    Name ="ID aus Kostenstellen"
                    ControlSource ="ID aus Kostenstellen"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Kostenstellen.Kennummer, M_Kostenstellen.Kostenstelle_Infom"
                        "a, M_Kostenstellen.Bezeichnung FROM M_Kostenstellen ORDER BY M_Kostenstellen.Bez"
                        "eichnung;"
                    ColumnWidths ="0;3142;6231"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"
                    EventProcPrefix ="ID_aus_Kostenstellen"

                End
                Begin ComboBox
                    LimitToList = NotDefault
                    FontItalic = NotDefault
                    OverlapFlags =85
                    ColumnCount =3
                    ListRows =50
                    ListWidth =8505
                    Left =2445
                    Width =1917
                    Height =273
                    FontSize =10
                    TabIndex =1
                    Name ="ID aus Kostenträger"
                    ControlSource ="ID aus Kostenträger"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW A_Kostenträger.ID, A_Kostenträger.Prod_Nr, A_Kostenträger.Tex"
                        "t FROM A_Kostenträger ORDER BY A_Kostenträger.Text;"
                    ColumnWidths ="0;1134"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"
                    EventProcPrefix ="ID_aus_Kostenträger"

                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6944
                    Width =230
                    Height =255
                    TabIndex =3
                    BackColor =967423
                    BorderColor =967423
                    Name ="TF_Kostenstelle_Infoma"
                    ControlSource ="Kostenstelle_Infoma"

                    LayoutCachedLeft =6944
                    LayoutCachedWidth =7174
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7272
                    Width =230
                    Height =255
                    TabIndex =4
                    BackColor =967423
                    BorderColor =967423
                    Name ="TF_Prod_Nr"
                    ControlSource ="Prod_Nr"

                    LayoutCachedLeft =7272
                    LayoutCachedWidth =7502
                    LayoutCachedHeight =255
                End
            End
        End
        Begin FormFooter
            Height =451
            Name ="Formularfuß"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    DecimalPlaces =2
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =4559
                    Top =87
                    Width =2197
                    Height =278
                    FontSize =10
                    FontWeight =600
                    ForeColor =255
                    Name ="neuer_AO_Betrag"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =2415
                    Top =70
                    Width =1935
                    Height =285
                    FontSize =10
                    Name ="Bezeichnungsfeld65"
                    Caption ="Auszahlungsbetrag"
                    FontName ="Arial"
                End
            End
        End
    End
End
CodeBehindForm
' See "Monatsanordnung_UF_4.cls"
