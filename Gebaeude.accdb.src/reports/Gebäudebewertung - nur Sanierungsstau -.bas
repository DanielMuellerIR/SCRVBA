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
    Width =8560
    DatasheetFontHeight =10
    ItemSuffix =162
    Left =11385
    Top =2415
    RecSrcDt = Begin
        0x9f80d87dd36ee340
    End
    RecordSource ="Abfrage für Gebäudebewertung nur Sanierungsstau"
    Caption ="Gebäudeliste"
    OnOpen ="= Maxim_Bericht()"
    OnClose ="Makro Filter.SchließenFilter"
    MenuBar ="CAISY"
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
            ControlSource ="Kennummer"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =737
            Name ="Berichtskopf"
            Begin
                Begin Label
                    TextAlign =0
                    Left =285
                    Top =120
                    Width =5400
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld95"
                    Caption ="Zusammenstellung Sanierungsstau in Gebäudebewertung:"
                    FontName ="Arial"
                End
                Begin Line
                    Left =56
                    Top =623
                    Width =8504
                    Name ="Linie161"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =850
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Left =6462
                    Top =113
                    Width =1588
                    Height =397
                    Name ="Kennummer"
                    ControlSource ="Kennummer"

                End
                Begin TextBox
                    Left =283
                    Width =3118
                    Height =255
                    FontWeight =600
                    TabIndex =1
                    Name ="Text156"
                    ControlSource ="Bezeichnung"

                End
                Begin TextBox
                    Left =283
                    Top =283
                    Width =3118
                    Height =255
                    FontWeight =600
                    TabIndex =2
                    Name ="Text158"
                    ControlSource ="Straße"

                End
                Begin TextBox
                    Left =3458
                    Width =3118
                    Height =255
                    FontWeight =600
                    TabIndex =3
                    Name ="Text159"
                    ControlSource ="Gebäudeteil"

                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =303
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Left =283
                    Width =5706
                    Height =255
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"

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
                    Left =283
                    Top =283
                    Width =5614
                    Height =20
                    TabIndex =2
                    Name ="Gebäudebewertung_Unterbericht_Sanierungsstau_Unterbericht_Jahre"
                    SourceObject ="Report.Gebäudebewertung_Unterbericht_Sanierungsstau_Unterbericht_Jahre"
                    LinkChildFields ="ID aus Maßnahmen"
                    LinkMasterFields ="ID"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =623
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    Left =6238
                    Top =113
                    Width =1686
                    Height =255
                    Name ="Sanierungsstau"
                    ControlSource ="=IIf(IsNull(Sum([voraussichtliche Kosten gesamt])),0,Sum([voraussichtliche Koste"
                        "n gesamt]))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =0
                    Left =283
                    Top =113
                    Width =2790
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld140"
                    Caption ="Summe Sanierungsstau:"
                    FontName ="Arial"
                End
                Begin Line
                    Left =6803
                    Width =1072
                    Name ="Linie147"
                End
                Begin Line
                    Left =56
                    Top =453
                    Width =8504
                    Name ="Linie160"
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =510
            Name ="Berichtsfuß"
        End
    End
End
CodeBehindForm
' See "Gebäudebewertung - nur Sanierungsstau -.cls"
