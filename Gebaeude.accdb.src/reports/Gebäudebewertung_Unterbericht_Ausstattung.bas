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
    Left =6675
    Top =12000
    Filter ="([Lookup_Kennummer__Kostenstelle].[KS] Is Null OR [Lookup_Kennummer__Kostenstell"
        "e].[KS]=\"\")"
    RecSrcDt = Begin
        0x694ac5116edee440
    End
    RecordSource ="B_Abfrage_für_Bericht_5"
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
            Height =638
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Left =6462
                    Top =113
                    Width =1588
                    Height =397
                    Name ="Kennummer"
                    ControlSource ="ID_Gebäudeteil"

                End
                Begin Line
                    BorderWidth =1
                    Left =340
                    Top =623
                    Width =7938
                    Name ="Linie148"
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
                    Caption ="Ausstattung des Gebäudes:"
                    FontName ="Arial"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =2770
            Name ="Detailbereich"
            Begin
                Begin Line
                    BorderWidth =1
                    Left =8277
                    Width =0
                    Height =2770
                    Name ="Linie142"
                End
                Begin TextBox
                    TextAlign =3
                    Left =6009
                    Top =113
                    ColumnWidth =1260
                    Name ="Fassade (11%)"
                    ControlSource ="Fassade (11%)"
                    EventProcPrefix ="Fassade__11__"

                End
                Begin Label
                    Left =570
                    Top =120
                    Width =1860
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld165"
                    Caption ="Fassade (11%):"
                    FontName ="Arial"
                End
                Begin TextBox
                    TextAlign =3
                    Left =6005
                    Top =396
                    TabIndex =1
                    Name ="Fenster (14%)"
                    ControlSource ="Fenster (14%)"
                    EventProcPrefix ="Fenster__14__"

                End
                Begin Label
                    Left =566
                    Top =403
                    Width =1860
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld178"
                    Caption ="Fenster (14%):"
                    FontName ="Arial"
                End
                Begin TextBox
                    TextAlign =3
                    Left =6005
                    Top =680
                    TabIndex =2
                    Name ="Dächer (15%)"
                    ControlSource ="Dächer (15%)"
                    EventProcPrefix ="Dächer__15__"

                End
                Begin Label
                    Left =566
                    Top =687
                    Width =1860
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld180"
                    Caption ="Dächer (15%):"
                    FontName ="Arial"
                End
                Begin TextBox
                    TextAlign =3
                    Left =6005
                    Top =963
                    TabIndex =3
                    Name ="Sanitär (13%)"
                    ControlSource ="Sanitär (13%)"
                    EventProcPrefix ="Sanitär__13__"

                End
                Begin Label
                    Left =566
                    Top =970
                    Width =1860
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld182"
                    Caption ="Sanitär (13%):"
                    FontName ="Arial"
                End
                Begin TextBox
                    TextAlign =3
                    Left =6005
                    Top =1531
                    TabIndex =4
                    Name ="Innenwände Sanitärbereich (6%)"
                    ControlSource ="Innenwände Sanitärbereich (6%)"
                    EventProcPrefix ="Innenwände_Sanitärbereich__6__"

                End
                Begin Label
                    Left =566
                    Top =1538
                    Width =3405
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld184"
                    Caption ="Innenwände Sanitärbereich (6%):"
                    FontName ="Arial"
                End
                Begin TextBox
                    TextAlign =3
                    Left =6005
                    Top =1814
                    TabIndex =5
                    Name ="Innentüren (11%)"
                    ControlSource ="Innentüren (11%)"
                    EventProcPrefix ="Innentüren__11__"

                End
                Begin Label
                    Left =566
                    Top =1821
                    Width =3405
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld186"
                    Caption ="Innentüren (11%):"
                    FontName ="Arial"
                End
                Begin TextBox
                    TextAlign =3
                    Left =6005
                    Top =2098
                    TabIndex =6
                    Name ="Heizung (15%)"
                    ControlSource ="Heizung (15%)"
                    EventProcPrefix ="Heizung__15__"

                End
                Begin Label
                    Left =566
                    Top =2105
                    Width =3405
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld188"
                    Caption ="Heizung (15%):"
                    FontName ="Arial"
                End
                Begin TextBox
                    TextAlign =3
                    Left =6005
                    Top =2381
                    TabIndex =7
                    Name ="Elektroinstallation (7%)"
                    ControlSource ="Elektroinstallation (7%)"
                    EventProcPrefix ="Elektroinstallation__7__"

                End
                Begin Label
                    Left =566
                    Top =2388
                    Width =3405
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld190"
                    Caption ="Elektroinstallation (7%):"
                    FontName ="Arial"
                End
                Begin Line
                    BorderWidth =1
                    Left =340
                    Width =0
                    Height =2770
                    Name ="Linie191"
                End
                Begin TextBox
                    TextAlign =3
                    Left =6005
                    Top =1247
                    TabIndex =8
                    Name ="Bodenbeläge (8 %)"
                    ControlSource ="Bodenbeläge (8 %)"
                    EventProcPrefix ="Bodenbeläge__8___"

                End
                Begin Label
                    Left =570
                    Top =1257
                    Width =1890
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld193"
                    Caption ="Bodenbeläge (8 %):"
                    FontName ="Arial"
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =566
            Name ="Gruppenfuß1"
            Begin
                Begin Line
                    BorderWidth =1
                    Left =340
                    Width =7938
                    Name ="Linie146"
                End
            End
        End
    End
End
CodeBehindForm
' See "Gebäudebewertung_Unterbericht_Ausstattung.cls"
