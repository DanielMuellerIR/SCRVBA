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
    Width =13662
    DatasheetFontHeight =10
    ItemSuffix =33
    Left =7457
    Top =2563
    RecSrcDt = Begin
        0x3ce84eaf34ece440
    End
    Caption ="M_Plausitbilitätsprüfungen"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =1
            FontSize =10
            FontWeight =700
            FontName ="Arial"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
            BorderColor =8388608
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
            BorderColor =8388608
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
            FontName ="Arial"
        End
        Begin ListBox
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontName ="Arial"
        End
        Begin ComboBox
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
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
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Fehler"
        End
        Begin BreakLevel
            ControlSource ="Obj"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1417
            Name ="Berichtskopf"
            Begin
                Begin Label
                    FontItalic = NotDefault
                    BackStyle =1
                    Left =57
                    Top =57
                    Width =8445
                    Height =510
                    FontSize =20
                    BackColor =14277081
                    Name ="Bezeichnungsfeld10"
                    Caption ="Plausibilitätsprüfungen"
                    LayoutCachedLeft =57
                    LayoutCachedTop =57
                    LayoutCachedWidth =8502
                    LayoutCachedHeight =567
                    BackShade =85.0
                End
                Begin Label
                    Left =57
                    Top =680
                    Width =12975
                    Height =390
                    FontSize =14
                    Name ="BF_Hinweis"
                    Caption ="  "
                    LayoutCachedLeft =57
                    LayoutCachedTop =680
                    LayoutCachedWidth =13032
                    LayoutCachedHeight =1070
                End
            End
        End
        Begin PageHeader
            Height =0
            Name ="Seitenkopf"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            RepeatSection = NotDefault
            Height =907
            Name ="Gruppenkopf0"
            Begin
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =2
                    Top =396
                    Width =13428
                    BorderColor =0
                    Name ="Linie13"
                    LayoutCachedTop =396
                    LayoutCachedWidth =13428
                    LayoutCachedHeight =396
                End
                Begin TextBox
                    Top =56
                    Width =13387
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Fehler"
                    ControlSource ="Fehler"

                    LayoutCachedTop =56
                    LayoutCachedWidth =13387
                    LayoutCachedHeight =341
                End
                Begin Label
                    Left =60
                    Top =510
                    Width =7530
                    Height =285
                    Name ="Bezeichnungsfeld26"
                    Caption ="Liegenschaft / Gebäude"
                    LayoutCachedLeft =60
                    LayoutCachedTop =510
                    LayoutCachedWidth =7590
                    LayoutCachedHeight =795
                End
                Begin Label
                    Left =7803
                    Top =510
                    Width =1665
                    Height =285
                    Name ="Bezeichnungsfeld27"
                    Caption ="Gemarkung"
                    LayoutCachedLeft =7803
                    LayoutCachedTop =510
                    LayoutCachedWidth =9468
                    LayoutCachedHeight =795
                End
                Begin Label
                    TextAlign =2
                    Left =9588
                    Top =510
                    Width =975
                    Height =285
                    Name ="Bezeichnungsfeld28"
                    Caption ="Flur"
                    LayoutCachedLeft =9588
                    LayoutCachedTop =510
                    LayoutCachedWidth =10563
                    LayoutCachedHeight =795
                End
                Begin Label
                    Left =10664
                    Top =510
                    Width =2794
                    Height =285
                    Name ="Bezeichnungsfeld29"
                    Caption ="Flurstücke"
                    LayoutCachedLeft =10664
                    LayoutCachedTop =510
                    LayoutCachedWidth =13458
                    LayoutCachedHeight =795
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =300
            Name ="Detailbereich"
            Begin
                Begin Line
                    BorderWidth =1
                    Left =60
                    Top =285
                    Width =13363
                    BorderColor =12632256
                    Name ="Linie31"
                    LayoutCachedLeft =60
                    LayoutCachedTop =285
                    LayoutCachedWidth =13423
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    CanGrow = NotDefault
                    Left =10661
                    Width =2794
                    Height =270
                    TabIndex =3
                    Name ="Text25"
                    ControlSource ="Flurstücke"

                    LayoutCachedLeft =10661
                    LayoutCachedWidth =13455
                    LayoutCachedHeight =270
                End
                Begin TextBox
                    TextAlign =2
                    Left =9585
                    Width =975
                    Height =270
                    ColumnWidth =1980
                    TabIndex =2
                    Name ="Flurstücke"
                    ControlSource ="Flur"

                    LayoutCachedLeft =9585
                    LayoutCachedWidth =10560
                    LayoutCachedHeight =270
                End
                Begin TextBox
                    Left =7800
                    Width =1665
                    Height =270
                    ColumnWidth =2145
                    TabIndex =1
                    Name ="Flur"
                    ControlSource ="Gemarkung"

                    LayoutCachedLeft =7800
                    LayoutCachedWidth =9465
                    LayoutCachedHeight =270
                End
                Begin TextBox
                    Left =57
                    Width =7530
                    Height =270
                    ColumnWidth =5100
                    Name ="Gemarkung"
                    ControlSource ="Obj"

                    LayoutCachedLeft =57
                    LayoutCachedWidth =7587
                    LayoutCachedHeight =270
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =283
            Name ="Gruppenfuß0"
        End
        Begin PageFooter
            Height =528
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    TextAlign =1
                    Left =57
                    Top =228
                    Width =5040
                    Height =300
                    FontSize =9
                    Name ="Text11"
                    ControlSource ="=Now()"
                    Format ="Long Date"

                End
                Begin TextBox
                    FontItalic = NotDefault
                    TextAlign =3
                    Left =8390
                    Top =226
                    Width =5040
                    Height =300
                    FontSize =9
                    TabIndex =1
                    Name ="Text12"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"

                End
                Begin Line
                    BorderWidth =3
                    Left =57
                    Top =228
                    Width =13543
                    BorderColor =12632256
                    Name ="Linie14"
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =0
            Name ="Berichtsfuß"
        End
    End
End
CodeBehindForm
' See "Pausibilitätsprüfung Gebäudebewertung.cls"
