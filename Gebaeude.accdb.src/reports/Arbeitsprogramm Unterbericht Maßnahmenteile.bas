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
    Width =10290
    DatasheetFontHeight =10
    ItemSuffix =43
    Left =7425
    Top =1380
    RecSrcDt = Begin
        0xd589544ff3cce440
    End
    RecordSource ="SELECT [Teile der Maßnahmen].*, Sachbearbeiter.Name FROM [Teile der Maßnahmen] L"
        "EFT JOIN Sachbearbeiter ON [Teile der Maßnahmen].ID_SB = Sachbearbeiter.ID;"
    Caption ="Gebäudeliste"
    OnOpen ="= Maxim_Bericht()"
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
        Begin FormHeader
            KeepTogether = NotDefault
            Height =396
            Name ="Berichtskopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    FontItalic = NotDefault
                    TextAlign =0
                    Top =56
                    Width =1290
                    Height =255
                    FontSize =8
                    Name ="Bezeichnungsfeld42"
                    Caption ="Teilmaßnahmen:"
                    FontName ="Arial"
                    LayoutCachedTop =56
                    LayoutCachedWidth =1290
                    LayoutCachedHeight =311
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =226
            Name ="Detailbereich"
            AlternateBackThemeColorIndex =1
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    FontItalic = NotDefault
                    TextAlign =1
                    Width =6933
                    Height =225
                    ColumnWidth =1395
                    FontSize =8
                    Name ="Teilmaßname"
                    ControlSource ="Teilmaßname"
                    Format ="0000"

                    LayoutCachedWidth =6933
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    FontItalic = NotDefault
                    Left =7095
                    Width =1587
                    Height =225
                    ColumnWidth =2445
                    FontSize =8
                    TabIndex =1
                    Name ="Sachbearbeiter"
                    ControlSource ="Name"

                    LayoutCachedLeft =7095
                    LayoutCachedWidth =8682
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    FontItalic = NotDefault
                    Left =8780
                    Width =1510
                    Height =225
                    ColumnWidth =1485
                    FontSize =8
                    TabIndex =2
                    Name ="Betrag"
                    ControlSource ="voraussichtliche Kosten"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =8780
                    LayoutCachedWidth =10290
                    LayoutCachedHeight =225
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =340
            Name ="Berichtsfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    Left =8660
                    Top =60
                    Width =1630
                    Height =225
                    FontSize =8
                    Name ="Text38"
                    ControlSource ="=Sum([voraussichtliche Kosten])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =8660
                    LayoutCachedTop =60
                    LayoutCachedWidth =10290
                    LayoutCachedHeight =285
                End
                Begin Line
                    Top =45
                    Width =10203
                    BorderColor =10855845
                    Name ="Linie39"
                    LayoutCachedTop =45
                    LayoutCachedWidth =10203
                    LayoutCachedHeight =45
                End
                Begin Label
                    FontItalic = NotDefault
                    TextAlign =3
                    Left =7815
                    Top =60
                    Width =690
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld41"
                    Caption ="Summe:"
                    FontName ="Arial"
                    LayoutCachedLeft =7815
                    LayoutCachedTop =60
                    LayoutCachedWidth =8505
                    LayoutCachedHeight =285
                End
            End
        End
    End
End
