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
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    ScrollBars =0
    RecordLocks =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =12869
    DatasheetFontHeight =10
    ItemSuffix =16
    Left =13395
    Top =9300
    Right =25350
    Bottom =12990
    RecSrcDt = Begin
        0x8688fd020dcae440
    End
    RecordSource ="SELECT Maßnahme_Berichte.* FROM Maßnahme_Berichte WHERE (((Maßnahme_Berichte.[ID"
        " aus Maßnahme])=[Formulare]![Formular Berichte]![ID aus Maßnahme]));"
    Caption ="Maßnahme_Berichte1"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            BackColor =-2147483633
            ForeColor =-2147483630
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
            SpecialEffect =3
            Width =1701
        End
        Begin Image
            BackStyle =0
            OldBorderStyle =0
            BorderLineStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin OptionButton
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin BoundObjectFrame
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ListBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ComboBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin Subform
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =2
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin FormHeader
            Height =340
            BackColor =-2147483633
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =85
                    Width =1197
                    Height =255
                    Name ="Name Bezeichnungsfeld"
                    Caption ="Name"
                    EventProcPrefix ="Name_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    Left =1360
                    Width =1197
                    Height =255
                    Name ="Tag Bezeichnungsfeld"
                    Caption ="Tag"
                    EventProcPrefix ="Tag_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    Left =2790
                    Width =615
                    Height =240
                    Name ="Bezeichnungsfeld13"
                    Caption ="Text"
                End
            End
        End
        Begin Section
            Height =340
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Left =1369
                    Top =30
                    Width =1245
                    Height =285
                    ColumnWidth =825
                    FontWeight =500
                    TabIndex =1
                    BackColor =65535
                    Name ="Tag"
                    ControlSource ="Tag"
                    Format ="Short Date"
                    FontName ="Arial"

                    LayoutCachedLeft =1369
                    LayoutCachedTop =30
                    LayoutCachedWidth =2614
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    Visible = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =9585
                    Top =86
                    Width =226
                    Height =170
                    FontWeight =500
                    TabIndex =3
                    BackColor =65535
                    Name ="ID aus Maßnahme"
                    ControlSource ="ID aus Maßnahme"
                    FontName ="Arial"
                    EventProcPrefix ="ID_aus_Maßnahme"

                    LayoutCachedLeft =9585
                    LayoutCachedTop =86
                    LayoutCachedWidth =9811
                    LayoutCachedHeight =256
                End
                Begin ComboBox
                    OverlapFlags =85
                    ListRows =80
                    ListWidth =1440
                    Left =60
                    Top =30
                    Width =1190
                    Height =285
                    FontWeight =500
                    BackColor =65535
                    Name ="Name"
                    ControlSource ="Name"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Sachbearbeiter.Name FROM Sachbearbeiter ORDER BY Sachbearbeit"
                        "er.Name;"
                    ColumnWidths ="2268"
                    FontName ="Arial"

                    LayoutCachedLeft =60
                    LayoutCachedTop =30
                    LayoutCachedWidth =1250
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    OverlapFlags =247
                    Left =2777
                    Top =30
                    Width =9907
                    Height =285
                    FontWeight =500
                    TabIndex =2
                    BackColor =65535
                    Name ="Text12"
                    ControlSource ="Text"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"

                    LayoutCachedLeft =2777
                    LayoutCachedTop =30
                    LayoutCachedWidth =12684
                    LayoutCachedHeight =315
                End
            End
        End
        Begin FormFooter
            Height =453
            BackColor =-2147483633
            Name ="Formularfuß"
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =4762
                    Top =56
                    Name ="BS_Bericht_Neu"
                    Caption ="Neuer Bericht"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =4762
                    LayoutCachedTop =56
                    LayoutCachedWidth =6463
                    LayoutCachedHeight =339
                    BorderColor =4138256
                    BorderShade =50.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6576
                    Top =56
                    TabIndex =1
                    Name ="BS_Bericht_Loeschen"
                    Caption ="Bericht löschen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6576
                    LayoutCachedTop =56
                    LayoutCachedWidth =8277
                    LayoutCachedHeight =339
                    BorderColor =4138256
                    BorderShade =50.0
                End
            End
        End
    End
End
CodeBehindForm
' See "Formular Berichte Unterformular.cls"
