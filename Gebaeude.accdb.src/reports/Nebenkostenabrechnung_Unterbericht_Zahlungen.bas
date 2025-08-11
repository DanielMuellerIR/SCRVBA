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
    Width =10152
    DatasheetFontHeight =10
    ItemSuffix =82
    Left =7425
    Top =1380
    RecSrcDt = Begin
        0x3319a242ebcbe440
    End
    RecordSource ="M_Nebenkostenabrechnung_2"
    Caption ="Bericht_Nebenkosten"
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
            FontSize =10
            FontWeight =700
            FontName ="Arial"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =2
            BorderLineStyle =0
            Width =850
            Height =850
            BorderColor =12632256
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
            TextFontFamily =18
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
        End
        Begin ListBox
            TextFontFamily =18
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
        End
        Begin ComboBox
            OldBorderStyle =0
            TextFontFamily =18
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
        End
        Begin Subform
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin BreakLevel
            ControlSource ="Betrieb"
        End
        Begin BreakLevel
            ControlSource ="BereichNr"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="ID"
        End
        Begin BreakLevel
            ControlSource ="Nebenkosten_Art"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =453
            BreakLevel =2
            Name ="Gruppenkopf1"
            Begin
                Begin Label
                    Left =4478
                    Width =1440
                    Height =285
                    Name ="Bezeichnungsfeld68"
                    Caption ="-  Zahlungen - "
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =255
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =56
                    Width =4302
                    Height =255
                    ColumnWidth =1920
                    FontSize =9
                    Name ="Nebenkosten_Art"
                    ControlSource ="Nebenkosten_Art"
                    Format ="Short Date"
                    FontName ="Arial"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4530
                    Width =1317
                    Height =255
                    FontSize =9
                    TabIndex =1
                    Name ="Zahlungen"
                    ControlSource ="Zahlungen"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =0
                    Left =7653
                    Width =1418
                    Height =227
                    FontSize =10
                    FontWeight =700
                    TabIndex =2
                    ForeColor =255
                    Name ="ID"
                    ControlSource ="ID"
                    FontName ="1"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =396
            BreakLevel =2
            Name ="Gruppenfuß2"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =5850
                    Top =60
                    Width =1422
                    Height =255
                    FontSize =9
                    Name ="SummeZahlungenObjekt"
                    ControlSource ="=Sum([Zahlungen])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Line
                    Left =4620
                    Top =15
                    Width =2719
                    Name ="Linie70"
                End
                Begin Label
                    Left =56
                    Top =56
                    Width =2760
                    Height =255
                    FontSize =9
                    FontWeight =400
                    Name ="Bezeichnungsfeld78"
                    Caption ="Summe Objekt"
                End
            End
        End
    End
End
