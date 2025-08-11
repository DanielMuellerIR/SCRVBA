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
    Width =9070
    DatasheetFontHeight =10
    ItemSuffix =76
    Left =11385
    Top =2415
    RecSrcDt = Begin
        0x3366746430fde240
    End
    RecordSource ="Abfrage für Bericht Vergabevorlagen"
    Caption ="Gebäudeliste"
    OnOpen ="= Maxim_Bericht()"
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
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =2
            ControlSource ="Gebäude"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Maßnahme"
        End
        Begin BreakLevel
            ControlSource ="Vergabevorlage vom"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1129
            Name ="Berichtskopf"
            Begin
                Begin Label
                    Left =4818
                    Top =113
                    Width =3405
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld16"
                    Caption ="Vergabevorlagen"
                    FontName ="Arial"
                End
                Begin Label
                    FontItalic = NotDefault
                    SpecialEffect =1
                    BackStyle =1
                    TextAlign =2
                    Left =513
                    Top =67
                    Width =2600
                    Height =491
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    Name ="Caisy"
                    Caption ="Caisy Bau"
                    FontName ="Arial"
                End
                Begin Label
                    FontItalic = NotDefault
                    TextAlign =2
                    Width =3530
                    Height =1129
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    ForeColor =65535
                    Name ="Text4"
                    Caption ="Caisy Bau"
                    FontName ="Arial"
                End
            End
        End
        Begin PageHeader
            Height =283
            Name ="Seitenkopf"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =963
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    OldBorderStyle =1
                    Top =396
                    Width =7155
                    Height =405
                    ColumnWidth =3735
                    FontSize =14
                    Name ="Bezeichung"
                    ControlSource ="Gebäude"

                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =396
            BreakLevel =1
            Name ="Gruppenkopf1"
            Begin
                Begin TextBox
                    Top =56
                    Width =8847
                    Height =285
                    FontWeight =600
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"

                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =623
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Top =45
                    Width =964
                    Height =227
                    Name ="Vergabevorlage vom"
                    ControlSource ="Vergabevorlage vom"
                    EventProcPrefix ="Vergabevorlage_vom"

                End
                Begin TextBox
                    Left =1020
                    Top =45
                    Width =4204
                    Height =227
                    TabIndex =1
                    Name ="Firma"
                    ControlSource ="Firma"

                End
                Begin TextBox
                    Left =5670
                    Top =45
                    Width =1369
                    Height =227
                    TabIndex =2
                    Name ="Wert Auftrag"
                    ControlSource ="Wert Auftrag"
                    EventProcPrefix ="Wert_Auftrag"

                End
                Begin TextBox
                    Left =1020
                    Top =300
                    Width =7939
                    Height =227
                    TabIndex =3
                    Name ="Auftragsinhalt"
                    ControlSource ="Auftragsinhalt"

                End
                Begin TextBox
                    CanGrow = NotDefault
                    FontItalic = NotDefault
                    Left =2205
                    Top =555
                    Width =6739
                    Height =13
                    TabIndex =4
                    Name ="Begründung"
                    ControlSource ="Begründung"

                End
                Begin TextBox
                    CanGrow = NotDefault
                    FontItalic = NotDefault
                    Left =1035
                    Top =555
                    Width =1084
                    Height =13
                    TabIndex =5
                    Name ="Text74"
                    ControlSource ="=IIf(IsNull([Begründung]),\"\",\"Begründung:\")"

                End
                Begin TextBox
                    Left =5329
                    Top =45
                    Width =214
                    Height =227
                    TabIndex =6
                    Name ="Text75"
                    ControlSource ="=IIf([Nachtragsauftrag]=0,\"\",\"N\")"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =0
            BreakLevel =1
            Name ="Gruppenfuß0"
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =453
            Name ="Gruppenfuß1"
        End
        Begin PageFooter
            Height =283
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =1
                    Width =4421
                    Height =270
                    FontSize =8
                    Name ="Text17"
                    ControlSource ="=Now()"
                    Format ="Long Date"

                End
                Begin TextBox
                    TextAlign =3
                    Left =4535
                    Width =4421
                    Height =270
                    FontSize =8
                    TabIndex =1
                    Name ="Text18"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"

                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =0
            Name ="Berichtsfuß"
        End
    End
End
CodeBehindForm
' See "Vergabevorlagen.cls"
