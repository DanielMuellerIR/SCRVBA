Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    OrderByOn = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9014
    DatasheetFontHeight =10
    ItemSuffix =38
    Left =10785
    Top =2685
    OrderBy ="[Kalenderjahr]"
    RecSrcDt = Begin
        0xc9a764df31dbe240
    End
    RecordSource ="geplante Finanzierung"
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
            ControlSource ="ID aus Maßnahmen"
        End
        Begin BreakLevel
            ControlSource ="Kalenderjahr"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =236
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =1
                    Left =5102
                    Width =2898
                    Height =120
                    Name ="ID aus Maßnahmen"
                    ControlSource ="ID aus Maßnahmen"
                    Format ="0000"
                    EventProcPrefix ="ID_aus_Maßnahmen"

                End
                Begin Label
                    FontUnderline = NotDefault
                    Top =56
                    Width =2415
                    Height =180
                    FontSize =6
                    Name ="Bezeichnungsfeld37"
                    Caption ="geplante Finanzierung im Jahr"
                    FontName ="Arial"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =180
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextAlign =1
                    Width =963
                    Height =180
                    ColumnWidth =1395
                    FontSize =6
                    Name ="Kalenderjahr"
                    ControlSource ="Kalenderjahr"
                    Format ="0000"

                End
                Begin TextBox
                    Left =4648
                    Width =2607
                    Height =180
                    ColumnWidth =2445
                    FontSize =6
                    TabIndex =1
                    Name ="Finanzierung"
                    ControlSource ="Finanzierung"

                End
                Begin TextBox
                    Left =2834
                    Width =1630
                    Height =180
                    ColumnWidth =1485
                    FontSize =6
                    TabIndex =2
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
            End
        End
    End
End
