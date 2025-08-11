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
    CloseButton = NotDefault
    DividingLines = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =11111
    DatasheetFontHeight =10
    ItemSuffix =59
    Left =8966
    Top =5257
    Right =21872
    Bottom =8395
    RecSrcDt = Begin
        0xf76a466136e9e540
    End
    RecordSource ="SELECT Maßnahmen.ID_Gebäudeteil, Maßnahmen.Maßnahme, Maßnahmen.Bilanz_relevant, "
        "Maßnahmen.[erledigt im Jahr] FROM Maßnahmen WHERE (((Maßnahmen.ID_Gebäudeteil)=F"
        "_Variable(\"lng_ID_Geb_Teil\")) AND ((Maßnahmen.Bilanz_relevant)=True) AND ((Maß"
        "nahmen.[erledigt im Jahr]) Is Null)) ORDER BY Maßnahmen.Maßnahme;"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
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
            ForeColor =-2147483630
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
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
        Begin PageBreak
            Width =283
        End
        Begin Tab
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin Page
            Width =1701
            Height =1701
        End
        Begin FormHeader
            Height =0
            BackColor =-2147483633
            Name ="Formularkopf"
        End
        Begin Section
            CanGrow = NotDefault
            Height =312
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =113
                    Top =57
                    Width =9918
                    Height =255
                    ColumnWidth =9480
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"

                    LayoutCachedLeft =113
                    LayoutCachedTop =57
                    LayoutCachedWidth =10031
                    LayoutCachedHeight =312
                End
            End
        End
        Begin FormFooter
            Height =170
            BackColor =-2147483633
            Name ="Formularfuß"
        End
    End
End
CodeBehindForm
' See "B_Unterformular_Sanierungsbedarf.cls"
