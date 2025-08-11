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
    AllowEdits = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =1
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =12245
    DatasheetFontHeight =10
    ItemSuffix =8
    Left =6385
    Top =5583
    Right =20405
    Bottom =8042
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x4754598a0ccae440
    End
    RecordSource ="SELECT DISTINCTROW Maßnahmen.ID, tbl_100_10_Liegenschaften.Bezeichnung, [NAme] &"
        " \" \" & [Haus_Nr] AS [Straße Hausnummer], Maßnahmen.Maßnahme FROM (tbl_100_10_L"
        "iegenschaften RIGHT JOIN Maßnahmen ON tbl_100_10_Liegenschaften.ID_Gebäude = Maß"
        "nahmen.ID_Gebäude) LEFT JOIN M_Strassenverzeichnis ON tbl_100_10_Liegenschaften."
        "Kennummer_Straße = M_Strassenverzeichnis.Kennummer;"
    Caption ="Unterformular_ Objektdaten"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    PictureSizeMode =1
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            FontName ="Arial"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderWidth =1
            BorderLineStyle =0
            Width =1701
        End
        Begin Image
            SpecialEffect =1
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
            SpecialEffect =1
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =1
            BorderWidth =3
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderColor =12632256
        End
        Begin BoundObjectFrame
            SpecialEffect =1
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ListBox
            SpecialEffect =1
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontName ="Arial"
        End
        Begin ComboBox
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin Subform
            SpecialEffect =1
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =1
            BackStyle =0
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin Section
            Height =396
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =93
                    BackStyle =1
                    Left =57
                    Top =57
                    Width =1539
                    Height =255
                    ColumnWidth =0
                    FontWeight =600
                    BackColor =-2147483633
                    Name ="ID"
                    ControlSource ="ID"

                End
                Begin TextBox
                    OldBorderStyle =0
                    OverlapFlags =247
                    BackStyle =1
                    Top =56
                    Width =3567
                    Height =270
                    ColumnWidth =3735
                    FontWeight =600
                    TabIndex =1
                    BackColor =-2147483633
                    Name ="Bezeichung"
                    ControlSource ="Bezeichnung"

                End
                Begin TextBox
                    OldBorderStyle =0
                    OverlapFlags =85
                    BackStyle =1
                    Left =3628
                    Top =56
                    Width =3627
                    Height =270
                    ColumnWidth =2640
                    FontWeight =600
                    TabIndex =2
                    BackColor =-2147483633
                    Name ="Straße Hausnummer"
                    ControlSource ="Straße Hausnummer"
                    EventProcPrefix ="Straße_Hausnummer"

                End
                Begin TextBox
                    OldBorderStyle =0
                    OverlapFlags =85
                    BackStyle =1
                    Left =7314
                    Top =56
                    Width =4827
                    Height =270
                    ColumnWidth =2325
                    FontWeight =600
                    TabIndex =3
                    BackColor =-2147483633
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"

                End
            End
        End
    End
End
