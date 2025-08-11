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
    Width =10112
    DatasheetFontHeight =10
    ItemSuffix =85
    Left =10785
    Top =2685
    RecSrcDt = Begin
        0x09f15bdfcfd5e440
    End
    RecordSource ="Zusammenstellung NK nach Arten"
    Caption ="Bericht_Nebenkosten"
    OnOpen ="= Maxim_Bericht()"
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
        Begin PageBreak
            Width =283
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Haushaltsjahr"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Nebenkosten_Art"
        End
        Begin BreakLevel
            ControlSource ="Kostenstelle_Infoma"
        End
        Begin PageHeader
            Height =0
            Name ="Seitenkopf"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =1303
            BackColor =12632256
            Name ="Gruppenkopf0"
            Begin
                Begin Label
                    BackStyle =1
                    Width =5010
                    Height =615
                    FontSize =24
                    FontWeight =900
                    BackColor =12632256
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld73"
                    Caption ="Bericht Nebenkosten"
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    TextFontFamily =34
                    Left =2097
                    Top =736
                    Width =4110
                    Height =405
                    FontSize =14
                    FontWeight =700
                    BackColor =12632256
                    Name ="Text74"
                    ControlSource ="Haushaltsjahr"
                    FontName ="Arial"
                    InputMask ="0000"

                    Begin
                        Begin Label
                            Left =57
                            Top =737
                            Width =1935
                            Height =375
                            FontSize =14
                            Name ="Bezeichnungsfeld75"
                            Caption ="Haushaltsjahr"
                        End
                    End
                End
                Begin Rectangle
                    BorderWidth =0
                    Top =680
                    Width =6579
                    Height =519
                    Name ="Rechteck76"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =453
            BreakLevel =1
            Name ="Gruppenkopf2"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    TextFontFamily =34
                    Width =6405
                    Height =375
                    FontSize =12
                    FontWeight =700
                    BackColor =12632256
                    Name ="Text77"
                    ControlSource ="Nebenkosten_Art"
                    FontName ="Arial"
                    InputMask ="0000"

                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =255
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =1082
                    Width =5322
                    Height =255
                    ColumnWidth =1305
                    FontSize =9
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"
                    FontName ="Arial"

                    LayoutCachedLeft =1082
                    LayoutCachedWidth =6404
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =6469
                    Width =1317
                    Height =255
                    FontSize =9
                    TabIndex =1
                    Name ="Summe von Betrag"
                    ControlSource ="Summe von Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"
                    EventProcPrefix ="Summe_von_Betrag"

                    LayoutCachedLeft =6469
                    LayoutCachedWidth =7786
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Width =852
                    Height =255
                    FontSize =9
                    TabIndex =2
                    Name ="Kostenstelle"
                    ControlSource ="Kostenstelle_Infoma"
                    Format ="00000"
                    FontName ="Arial"

                    LayoutCachedWidth =852
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =7886
                    Width =1317
                    Height =255
                    FontSize =9
                    TabIndex =3
                    Name ="SummeArtlfd"
                    ControlSource ="Summe von Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                    LayoutCachedLeft =7886
                    LayoutCachedWidth =9203
                    LayoutCachedHeight =255
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =453
            BreakLevel =1
            Name ="Gruppenfuß3"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =6469
                    Top =56
                    Width =1317
                    Height =225
                    FontSize =9
                    Name ="SummeArte"
                    ControlSource ="=[SummeArtlfd]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Line
                    Left =6330
                    Width =1531
                    Name ="Linie82"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =2
                    RunningSum =1
                    TextFontFamily =34
                    Left =7943
                    Top =56
                    Width =1317
                    Height =225
                    FontSize =9
                    TabIndex =1
                    Name ="Summeüberalles"
                    ControlSource ="=[SummeArtlfd]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =963
            Name ="Gruppenfuß0"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =4710
                    Top =390
                    Width =3057
                    Height =225
                    FontSize =9
                    FontWeight =700
                    Name ="Text84"
                    ControlSource ="=[Summeüberalles]"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
            End
        End
        Begin PageFooter
            Height =453
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =1
                    Left =56
                    Top =113
                    Width =5040
                    Height =255
                    FontSize =9
                    FontWeight =600
                    Name ="Text19"
                    ControlSource ="=Now()"
                    Format ="Long Date"
                    FontName ="Arial"

                End
                Begin Line
                    BorderWidth =1
                    Width =10095
                    BorderColor =12632256
                    Name ="Linie24"
                End
            End
        End
    End
End
