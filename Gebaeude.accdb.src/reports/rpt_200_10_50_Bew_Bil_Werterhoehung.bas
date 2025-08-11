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
    ItemSuffix =150
    Left =8880
    Top =2760
    RecSrcDt = Begin
        0x1e98183230e3e440
    End
    RecordSource ="tbl_200_30_20_Bew_Bilanz_Werterhoehungen"
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
            Height =865
            Name ="Gruppenkopf0"
            Begin
                Begin Label
                    TextAlign =0
                    Left =340
                    Top =396
                    Width =4665
                    Height =270
                    FontSize =9
                    FontWeight =600
                    Name ="Bezeichnungsfeld95"
                    Caption ="Werterhöhende Bauteile:"
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
                Begin Line
                    BorderWidth =1
                    Left =340
                    Top =850
                    Width =7938
                    Name ="Linie148"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =280
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Left =6236
                    Width =1686
                    Height =255
                    Name ="Mehrwert"
                    ControlSource ="Mehrwert"

                End
                Begin Line
                    BorderWidth =1
                    Left =340
                    Width =0
                    Height =280
                    Name ="Linie141"
                End
                Begin Line
                    BorderWidth =1
                    Left =8277
                    Width =0
                    Height =280
                    Name ="Linie142"
                End
                Begin TextBox
                    Left =453
                    Width =5556
                    Height =255
                    TabIndex =1
                    Name ="Bauteil"
                    ControlSource ="Bauteil"

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
                    Name ="Werterhöhung"
                    ControlSource ="=IIf(IsNull(Sum([Mehrwert])),0,Sum([Mehrwert]))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    TextAlign =0
                    Left =450
                    Top =45
                    Width =3915
                    Height =270
                    FontSize =9
                    FontWeight =600
                    Name ="Bezeichnungsfeld140"
                    Caption ="Summe werterhöhende Bauteile:"
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
' See "rpt_200_10_50_Bew_Bil_Werterhoehung.cls"
