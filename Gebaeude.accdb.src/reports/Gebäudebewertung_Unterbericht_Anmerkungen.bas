Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =8958
    DatasheetFontHeight =10
    ItemSuffix =195
    Left =8430
    Top =4905
    RecSrcDt = Begin
        0x6403ae71ede1e440
    End
    RecordSource ="B_Abfrage_für_Bericht_1"
    Caption ="Gebäudeliste"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =1
            FontSize =12
            FontName ="Haettenschweiler"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
        End
        Begin Image
            OldBorderStyle =0
            BorderLineStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin BoundObjectFrame
            BorderLineStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin ListBox
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin ComboBox
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin Subform
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            Width =4536
            Height =2835
        End
        Begin PageBreak
            Width =283
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =2
            ControlSource ="ID_Gebäudeteil"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =510
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Left =6462
                    Top =113
                    Width =1528
                    Height =112
                    Name ="Kennummer"
                    ControlSource ="ID_Gebäudeteil"

                End
                Begin Label
                    TextAlign =0
                    Left =340
                    Top =170
                    Width =4665
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld95"
                    Caption ="Anmerkungen zur Bewertung:"
                    FontName ="Arial"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =226
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    Left =340
                    Top =56
                    Width =7993
                    Height =57
                    ColumnWidth =1260
                    Name ="Erläuterungen"
                    ControlSource ="Erl"

                    LayoutCachedLeft =340
                    LayoutCachedTop =56
                    LayoutCachedWidth =8333
                    LayoutCachedHeight =113
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =0
            Name ="Gruppenfuß1"
        End
    End
End
CodeBehindForm
' See "Gebäudebewertung_Unterbericht_Anmerkungen.cls"
