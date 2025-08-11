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
    Width =8617
    DatasheetFontHeight =10
    ItemSuffix =156
    Left =7320
    Top =11835
    RecSrcDt = Begin
        0x3a58ff7f6ce0e440
    End
    RecordSource ="B_Abfrage_für_Bericht_2"
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
            Height =808
            Name ="Gruppenkopf0"
            Begin
                Begin Label
                    TextAlign =0
                    Left =340
                    Top =396
                    Width =4665
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld95"
                    Caption ="Zusammenstellung Sanierungsstau:"
                    FontName ="Arial"
                End
                Begin TextBox
                    Visible = NotDefault
                    Left =6462
                    Top =113
                    Width =1588
                    Height =397
                    Name ="Kennummer"
                    ControlSource ="ID_Gebäudeteil"

                End
                Begin Label
                    Left =7993
                    Top =453
                    Width =225
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld218"
                    Caption ="9)"
                    FontName ="Arial"
                End
                Begin Line
                    BorderWidth =1
                    Left =340
                    Top =793
                    Width =7938
                    Name ="Linie153"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =285
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Left =393
                    Width =5766
                    Height =255
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"

                    LayoutCachedLeft =393
                    LayoutCachedWidth =6159
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    Left =6236
                    Width =1686
                    Height =255
                    TabIndex =1
                    Name ="voraussichtliche Kosten gesamt"
                    ControlSource ="voraussichtliche Kosten gesamt"
                    EventProcPrefix ="voraussichtliche_Kosten_gesamt"

                End
                Begin Subform
                    CanShrink = NotDefault
                    Left =345
                    Top =285
                    Width =8209
                    Height =0
                    TabIndex =2
                    Name ="Gebäudebewertung_UB_Sanierungsstau_UB_Jahre"
                    SourceObject ="Report.Gebäudebewertung_UB_San_Stau_UB_Jahre"
                    LinkChildFields ="ID_Massnahme"
                    LinkMasterFields ="ID_Massn"

                    LayoutCachedLeft =345
                    LayoutCachedTop =285
                    LayoutCachedWidth =8554
                    LayoutCachedHeight =285
                End
                Begin Line
                    BorderWidth =1
                    Left =8280
                    Width =0
                    Height =280
                    Name ="Linie154"
                    LayoutCachedLeft =8280
                    LayoutCachedWidth =8280
                    LayoutCachedHeight =280
                End
                Begin Line
                    BorderWidth =1
                    Left =340
                    Width =0
                    Height =280
                    Name ="Linie155"
                    LayoutCachedLeft =340
                    LayoutCachedWidth =340
                    LayoutCachedHeight =280
                End
                Begin TextBox
                    Visible = NotDefault
                    Left =5102
                    Width =853
                    Height =232
                    TabIndex =3
                    ForeColor =255
                    Name ="ID"
                    ControlSource ="ID_Massn"

                    LayoutCachedLeft =5102
                    LayoutCachedWidth =5955
                    LayoutCachedHeight =232
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =566
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    Left =6238
                    Top =56
                    Width =1686
                    Height =255
                    Name ="Sanierungsstau"
                    ControlSource ="=IIf(IsNull(Sum([voraussichtliche Kosten gesamt])),0,Sum([voraussichtliche Koste"
                        "n gesamt]))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =0
                    Left =450
                    Top =45
                    Width =2790
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld140"
                    Caption ="Summe Sanierungsstau:"
                    FontName ="Arial"
                End
                Begin Line
                    BorderWidth =1
                    Left =340
                    Width =0
                    Height =396
                    Name ="Linie144"
                End
                Begin Line
                    BorderWidth =1
                    Left =8277
                    Width =0
                    Height =396
                    Name ="Linie145"
                End
                Begin Line
                    BorderWidth =1
                    Left =340
                    Top =396
                    Width =7938
                    Name ="Linie146"
                End
                Begin Line
                    Left =6803
                    Width =1072
                    Name ="Linie147"
                End
            End
        End
    End
End
CodeBehindForm
' See "Gebäudebewertung_Unterbericht_Sanierungsstau.cls"
