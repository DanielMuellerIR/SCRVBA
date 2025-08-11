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
    Width =9807
    DatasheetFontHeight =10
    ItemSuffix =55
    Left =7425
    Top =1380
    RecSrcDt = Begin
        0x12cd3db155c8e440
    End
    RecordSource ="Abfrage Mittelherkunft nach Haushaltsjahren"
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
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Jahr_Ist"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =340
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    FontUnderline = NotDefault
                    TextAlign =1
                    Top =60
                    Width =513
                    Height =225
                    ColumnWidth =1395
                    FontSize =8
                    Name ="Jahr"
                    ControlSource ="Jahr"
                    Format ="0000"

                End
                Begin Label
                    FontUnderline = NotDefault
                    Left =3855
                    Top =56
                    Width =1155
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld48"
                    Caption ="Haushaltsreste"
                    FontName ="Arial"
                End
                Begin Label
                    FontUnderline = NotDefault
                    Left =2324
                    Top =56
                    Width =660
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld49"
                    Caption ="Ansätze"
                    FontName ="Arial"
                End
                Begin Label
                    FontUnderline = NotDefault
                    Left =5669
                    Top =56
                    Width =1155
                    Height =225
                    FontSize =8
                    Name ="Bezeichnungsfeld53"
                    Caption ="VE"
                    FontName ="Arial"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =285
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Left =2155
                    Width =1195
                    Height =285
                    ColumnWidth =1485
                    FontSize =8
                    Name ="Summe von Ansatz"
                    ControlSource ="Summe von Ansatz"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="Summe_von_Ansatz"

                End
                Begin TextBox
                    TextAlign =1
                    Width =1630
                    Height =285
                    FontSize =8
                    TabIndex =1
                    Name ="Herkunft"
                    ControlSource ="Herkunft"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Left =3855
                    Width =1195
                    Height =285
                    FontSize =8
                    TabIndex =2
                    Name ="Summe von HHR"
                    ControlSource ="Summe von HHR"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="Summe_von_HHR"

                End
                Begin TextBox
                    Left =5612
                    Width =1195
                    Height =285
                    FontSize =8
                    TabIndex =3
                    Name ="Summe von VE"
                    ControlSource ="Summe von VE"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="Summe_von_VE"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =746
            Name ="Gruppenfuß0"
            Begin
                Begin TextBox
                    Left =1974
                    Top =56
                    Width =1375
                    Height =285
                    FontSize =8
                    Name ="Text41"
                    ControlSource ="=Sum([Summe von Ansatz])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Line
                    Left =2040
                    Width =4871
                    Name ="Linie42"
                End
                Begin TextBox
                    Left =3855
                    Top =56
                    Width =1195
                    Height =285
                    FontSize =8
                    TabIndex =1
                    Name ="Text50"
                    ControlSource ="=Sum([Summe von HHR])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Left =5612
                    Top =56
                    Width =1195
                    Height =285
                    FontSize =8
                    TabIndex =2
                    Name ="Text52"
                    ControlSource ="=Sum([Summe von VE])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Left =7040
                    Top =56
                    Width =2545
                    Height =285
                    FontSize =8
                    TabIndex =3
                    Name ="Text54"
                    ControlSource ="=Sum([Summe von VE])+Sum([Summe von Ansatz])+Sum([Summe von HHR])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
            End
        End
    End
End
