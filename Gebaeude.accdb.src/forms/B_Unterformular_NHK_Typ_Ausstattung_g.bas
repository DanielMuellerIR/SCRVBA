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
    DataEntry = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =10746
    DatasheetFontHeight =10
    ItemSuffix =31
    Left =13395
    Top =23490
    Right =25905
    Bottom =28365
    RecSrcDt = Begin
        0x70625c3152e5e240
    End
    RecordSource ="NKH-Ausstattungen"
    Caption ="NHK-Typen"
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
            Height =0
            BackColor =-2147483633
            Name ="Formularkopf"
        End
        Begin Section
            CanGrow = NotDefault
            Height =2305
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin Subform
                    OverlapFlags =85
                    OldBorderStyle =0
                    SpecialEffect =0
                    Left =226
                    Top =340
                    Width =9645
                    Height =1965
                    TabIndex =1
                    Name ="B_Unterformular_NHK_Typen_Werte"
                    SourceObject ="Form.B_Unterformular_NHK_Typen_Werte"
                    LinkChildFields ="ID aus NHK-Ausstattun"
                    LinkMasterFields ="Kennummer"

                End
                Begin TextBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =3968
                    Width =517
                    Height =227
                    TabIndex =2
                    Name ="ID aus NHK-Typen"
                    ControlSource ="ID aus NHK-Typen"
                    EventProcPrefix ="ID_aus_NHK_Typen"

                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =4645
                    Width =577
                    Height =227
                    TabIndex =3
                    Name ="Kennummer"
                    ControlSource ="Kennummer"

                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    ListWidth =1440
                    Left =283
                    Top =56
                    Width =2494
                    Height =227
                    Name ="Kombinationsfeld29"
                    ControlSource ="Ausstattung"
                    RowSourceType ="Value List"
                    RowSource ="\"gehoben\""
                    ColumnWidths ="1440"

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
' See "B_Unterformular_NHK_Typ_Ausstattung_g.cls"
