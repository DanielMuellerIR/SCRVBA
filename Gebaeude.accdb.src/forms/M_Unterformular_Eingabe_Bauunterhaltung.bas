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
    CloseButton = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =14513
    DatasheetFontHeight =10
    ItemSuffix =56
    Left =6488
    Top =14115
    Right =16313
    Bottom =14490
    RecSrcDt = Begin
        0x6a708311efdbe240
    End
    RecordSource ="M_Bauunterhaltung"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
        End
        Begin TextBox
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin Section
            Height =396
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Left =2494
                    Top =61
                    Width =1495
                    Height =255
                    Name ="Betrag_5050000"
                    ControlSource ="Betrag_5050000"

                End
                Begin Label
                    OverlapFlags =85
                    Top =56
                    Width =2370
                    Height =240
                    Name ="Bezeichnungsfeld3"
                    Caption ="11.14.523105 - Bauunterhaltung"
                    FontName ="Arial"
                    LayoutCachedTop =56
                    LayoutCachedWidth =2370
                    LayoutCachedHeight =296
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4138
                    Top =61
                    Width =1495
                    Height =255
                    TabIndex =1
                    Name ="Berechnung505000"
                    ControlSource ="Berechnung505000"

                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =6973
                    Top =56
                    Width =670
                    Height =255
                    TabIndex =2
                    Name ="Haushaltsjahr"
                    ControlSource ="Haushaltsjahr"

                End
            End
        End
    End
End
