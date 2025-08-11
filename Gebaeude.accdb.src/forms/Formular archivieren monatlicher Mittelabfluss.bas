Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    ShortcutMenu = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    OrderByOn = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =2948
    DatasheetFontHeight =10
    ItemSuffix =7
    Left =13395
    Top =5400
    Right =18135
    Bottom =8745
    OrderBy ="[Archiv monatlicher Mittelabfluss].Archivierungsdatum DESC"
    RecSrcDt = Begin
        0xfa03470694f3e240
    End
    RecordSource ="Archiv monatlicher Mittelabfluss"
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
            Height =1303
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Left =907
                    Top =340
                    Width =1417
                    Height =283
                    Name ="DatumDatei"
                    ControlSource ="=DMax(\"[Archivierungsdatum]\",\"Archiv monatlicher Mittelabfluss\")"
                    Format ="mm\\/yyyy"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =907
                    Top =680
                    Width =1417
                    Height =226
                    TabIndex =1
                    Name ="DatumHeute"
                    ControlSource ="=Int(Now())"
                    Format ="mm\\/yyyy"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =907
                    Top =1026
                    Width =1417
                    Height =226
                    TabIndex =2
                    Name ="archivieren"
                    ControlSource ="=IIf(Month(DMax(\"[Archivierungsdatum]\",\"Archiv monatlicher Mittelabfluss\",Ye"
                        "ar([Archivierungsdatum])=Year(Now())))<Month(Now()) Or IsNull(Month(DMax(\"[Arch"
                        "ivierungsdatum]\",\"Archiv monatlicher Mittelabfluss\",Year([Archivierungsdatum]"
                        ")=Year(Now())))),1,0)"

                End
            End
        End
    End
End
