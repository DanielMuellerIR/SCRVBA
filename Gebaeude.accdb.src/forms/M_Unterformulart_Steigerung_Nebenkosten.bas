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
    ScrollBars =2
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =4195
    DatasheetFontHeight =10
    ItemSuffix =73
    Left =13395
    Top =5400
    Right =19365
    Bottom =8460
    RecSrcDt = Begin
        0x8db88a5989ede240
    End
    RecordSource ="M_Steigerungssätze Nebenkosten"
    DatasheetFontName ="Arial"
    OnLostFocus ="Personalkosten_übernehmen"
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
        Begin ListBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
        End
        Begin ComboBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin FormHeader
            Height =240
            BackColor =-2147483633
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =85
                    Width =1185
                    Height =240
                    Name ="Bezeichnungsfeld59"
                    Caption ="Kalkulationsjahr"
                End
                Begin Label
                    OverlapFlags =85
                    Left =1474
                    Width =1215
                    Height =240
                    Name ="Bezeichnungsfeld60"
                    Caption ="Nebenkostenart"
                End
                Begin Label
                    OverlapFlags =85
                    Left =3741
                    Width =195
                    Height =240
                    Name ="Bezeichnungsfeld65"
                    Caption ="%"
                End
            End
        End
        Begin Section
            Height =283
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    OverlapFlags =93
                    ListWidth =510
                    Left =56
                    Width =969
                    Height =255
                    Name ="Kalkulationsjahr"
                    ControlSource ="Kalkulationsjahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [Kalenderjahre].[Jahr] FROM [Kalenderjahre];"
                    ColumnWidths ="510"

                End
                Begin ComboBox
                    OverlapFlags =95
                    ColumnCount =2
                    ListRows =50
                    ListWidth =3495
                    Left =1020
                    Width =2324
                    Height =255
                    TabIndex =1
                    Name ="Nebenkostenart"
                    ControlSource ="Nebenkostenart"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [M_Verzeichnis Nebenkosten].ID, [M_Verzeichnis Nebenkosten].N"
                        "ebenkosten_Art FROM [M_Verzeichnis Nebenkosten] ORDER BY [M_Verzeichnis Nebenkos"
                        "ten].Nebenkosten_Art;"
                    ColumnWidths ="0;3495"

                End
                Begin TextBox
                    OverlapFlags =119
                    Left =3344
                    Width =800
                    Height =255
                    TabIndex =2
                    Name ="Steigerungssatz"
                    ControlSource ="Steigerungssatz"
                    Format ="Percent"

                End
            End
        End
        Begin FormFooter
            Height =0
            BackColor =-2147483633
            Name ="Formularfuß"
        End
    End
End
CodeBehindForm
' See "M_Unterformulart_Steigerung_Nebenkosten.cls"
