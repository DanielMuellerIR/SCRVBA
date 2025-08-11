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
    AllowAdditions = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =3741
    DatasheetFontHeight =10
    ItemSuffix =15
    Left =13395
    Top =5400
    Right =18915
    Bottom =8250
    RecSrcDt = Begin
        0x8e25710ceffee240
    End
    RecordSource ="MonatsAO_temp_Buchungssatz_fällig"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
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
        Begin Section
            Height =793
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    SpecialEffect =0
                    OldBorderStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =1247
                    Top =393
                    Width =1359
                    Height =283
                    BackColor =65535
                    Name ="andere Fälligkeit"
                    ControlSource ="andere Fälligkeit"
                    AfterUpdate ="[Event Procedure]"
                    EventProcPrefix ="andere_Fälligkeit"

                End
                Begin CheckBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =1757
                    Top =53
                    Width =170
                    Height =170
                    TabIndex =1
                    Name ="sofort"
                    ControlSource ="sofort"
                    DefaultValue ="Yes"

                End
                Begin Label
                    OverlapFlags =85
                    Top =45
                    Width =1194
                    Height =283
                    Name ="Bezeichnungsfeld12"
                    Caption ="Fällig sofort"
                End
                Begin Label
                    OverlapFlags =85
                    Top =390
                    Width =1194
                    Height =283
                    Name ="Bezeichnungsfeld13"
                    Caption ="Fälligkeit"
                End
            End
        End
    End
End
CodeBehindForm
' See "Monatsanordnung_UF_3.cls"
