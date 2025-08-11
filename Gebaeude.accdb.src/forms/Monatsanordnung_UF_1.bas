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
    Width =2891
    DatasheetFontHeight =10
    ItemSuffix =5
    Left =13395
    Top =6615
    Right =18015
    Bottom =7830
    RecSrcDt = Begin
        0xcb6e04adb06ee540
    End
    RecordSource ="SELECT MonatsAO_temp_Buchungssatz.* FROM MonatsAO_temp_Buchungssatz;"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
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
            Height =1303
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    SpecialEffect =0
                    OverlapFlags =93
                    TextAlign =1
                    Left =56
                    Top =283
                    Width =1194
                    Height =283
                    BackColor =65535
                    Name ="Haushaltsjahr"
                    ControlSource ="=Year(Now())"

                End
                Begin TextBox
                    SpecialEffect =0
                    OverlapFlags =87
                    Left =56
                    Top =566
                    Width =1644
                    Height =283
                    TabIndex =1
                    Name ="Ausgabe"
                    ControlSource ="Ausgabe"

                End
                Begin TextBox
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =60
                    Top =870
                    Width =2769
                    Height =283
                    TabIndex =2
                    BackColor =65535
                    Name ="Verwendungszweck"
                    ControlSource ="Verwendungszweck"

                End
            End
        End
    End
End
