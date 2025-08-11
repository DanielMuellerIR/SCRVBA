Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    RecordLocks =2
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =8824
    DatasheetFontHeight =11
    ItemSuffix =12
    Top =600
    RecSrcDt = Begin
        0x6a425903ef55e440
    End
    RecordSource ="SELECT DISTINCTROW [Bericht Sanierungsstau nach Finanzplanung noch nicht zugeord"
        "net].* FROM [Bericht Sanierungsstau nach Finanzplanung noch nicht zugeordnet] WH"
        "ERE ((([Bericht Sanierungsstau nach Finanzplanung noch nicht zugeordnet].[ID aus"
        " Maßnahmen]) Is Not Null) AND (([Bericht Sanierungsstau nach Finanzplanung noch "
        "nicht zugeordnet].Haus)=[Berichte]![Sanierungsstau-neu-]![Bezeichung]));"
    DatasheetFontName ="Calibri"
    FilterOnLoad =255
    FitToPage =1
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            FontSize =10
            FontWeight =700
            FontName ="Arial"
            BorderTint =50.0
            GridlineShade =65.0
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
            GridlineShade =65.0
        End
        Begin TextBox
            AutoLabel = NotDefault
            AddColon = NotDefault
            FELineBreak = NotDefault
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            Height =315
            LabelX =-1701
            FontSize =10
            FontWeight =700
            FontName ="Arial"
            AsianLineBreak =1
            ShowDatePicker =0
            BorderTint =50.0
            GridlineShade =65.0
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =850
            Name ="Berichtskopf"
            AlternateBackShade =95.0
            Begin
                Begin Label
                    Width =4425
                    Height =345
                    FontSize =12
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld1"
                    Caption ="noch nicht zugeordnete Restbudgets:"
                    GridlineColor =10921638
                    LayoutCachedWidth =4425
                    LayoutCachedHeight =345
                End
                Begin Label
                    Top =450
                    Width =1125
                    Height =285
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld3"
                    Caption ="Maßnahme"
                    GridlineColor =10921638
                    LayoutCachedTop =450
                    LayoutCachedWidth =1125
                    LayoutCachedHeight =735
                End
                Begin Label
                    TextAlign =3
                    Left =6424
                    Top =450
                    Width =2400
                    Height =285
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld6"
                    Caption ="noch nicht zugeordnet"
                    GridlineColor =10921638
                    LayoutCachedLeft =6424
                    LayoutCachedTop =450
                    LayoutCachedWidth =8824
                    LayoutCachedHeight =735
                End
                Begin Line
                    BorderWidth =1
                    Top =795
                    Width =8504
                    BorderColor =10855845
                    Name ="Linie10"
                    GridlineColor =10921638
                    LayoutCachedTop =795
                    LayoutCachedWidth =8504
                    LayoutCachedHeight =795
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =315
            Name ="Detailbereich"
            AlternateBackColor =16777215
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OldBorderStyle =1
                    BackStyle =1
                    IMESentenceMode =3
                    Width =111
                    FontSize =11
                    FontWeight =400
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="TF_ID"
                    ControlSource ="ID"
                    FontName ="Calibri"
                    GridlineColor =10921638

                    LayoutCachedWidth =111
                    LayoutCachedHeight =315
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =75.0
                End
                Begin TextBox
                    IMESentenceMode =3
                    Width =5436
                    Height =285
                    FontWeight =400
                    TabIndex =1
                    BorderColor =8355711
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"
                    GridlineColor =10921638

                    LayoutCachedWidth =5436
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7314
                    Width =1510
                    Height =285
                    FontWeight =400
                    TabIndex =2
                    BorderColor =8355711
                    Name ="nnzg"
                    ControlSource ="nnzg"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    GridlineColor =10921638

                    LayoutCachedLeft =7314
                    LayoutCachedWidth =8824
                    LayoutCachedHeight =285
                    CurrencySymbol ="€"
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =510
            Name ="Berichtsfuß"
            AlternateBackShade =95.0
            Begin
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7363
                    Top =120
                    Width =1461
                    Height =285
                    BorderColor =8355711
                    Name ="TF_Sum_NNZG"
                    ControlSource ="=Sum([nnzg])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    GridlineColor =10921638

                    LayoutCachedLeft =7363
                    LayoutCachedTop =120
                    LayoutCachedWidth =8824
                    LayoutCachedHeight =405
                    CurrencySymbol ="€"
                End
                Begin Line
                    BorderWidth =1
                    Top =45
                    Width =8504
                    BorderColor =10855845
                    Name ="Linie11"
                    GridlineColor =10921638
                    LayoutCachedTop =45
                    LayoutCachedWidth =8504
                    LayoutCachedHeight =45
                End
                Begin TextBox
                    FELineBreak = NotDefault
                    TextAlign =3
                    Top =150
                    Width =6063
                    Height =255
                    FontSize =9
                    TabIndex =1
                    Name ="Text89"
                    ControlSource ="=\"Summe zu: \" & [Haus]"
                    AsianLineBreak =0
                    ShowDatePicker =1

                    LayoutCachedTop =150
                    LayoutCachedWidth =6063
                    LayoutCachedHeight =405
                    BorderTint =100.0
                    GridlineShade =100.0
                End
            End
        End
    End
End
