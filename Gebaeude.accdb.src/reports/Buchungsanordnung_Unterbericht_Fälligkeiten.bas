Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DefaultView =0
    PageHeader =3
    PageFooter =3
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9000
    DatasheetFontHeight =10
    ItemSuffix =21
    Left =2685
    Top =18615
    RecSrcDt = Begin
        0xb38827de3257e440
    End
    RecordSource ="Abfrage für Buchungsanordnung_U3"
    OnOpen ="= Maxim_Bericht()"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextFontFamily =2
            FontName ="Arial"
        End
        Begin Rectangle
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
        End
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin TextBox
            OldBorderStyle =0
            TextFontFamily =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Arial"
        End
        Begin ComboBox
            OldBorderStyle =0
            TextFontFamily =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Arial"
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            ControlSource ="ID"
        End
        Begin BreakLevel
            ControlSource ="Fälligkeitsdatum"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =660
            Name ="Gruppenkopf0"
            Begin
                Begin Label
                    BackStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Width =8985
                    Height =660
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld15"
                    Caption ="Fälligkeit\015\012\015\012"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =3285
                    Width =1477
                    Height =293
                    FontSize =12
                    FontWeight =600
                    Name ="Text60"
                    ControlSource ="=IIf([sofort]=-1,\"sofort\",\"\")"
                    Format ="Short Date"

                End
                Begin TextBox
                    OldBorderStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =7162
                    Width =1822
                    Height =293
                    FontSize =12
                    FontWeight =600
                    TabIndex =1
                    Name ="andere Fälligkeit"
                    ControlSource ="andere Fälligkeit"
                    Format ="Short Date"
                    EventProcPrefix ="andere_Fälligkeit"

                End
                Begin CheckBox
                    SpecialEffect =2
                    Left =2985
                    Top =75
                    Width =177
                    Height =186
                    TabIndex =2
                    Name ="sofort"
                    ControlSource ="sofort"

                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =5272
                    Width =1575
                    Height =270
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld64"
                    Caption ="Andere Fälligkeit:"
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    FontItalic = NotDefault
                    OldBorderStyle =1
                    TextFontFamily =34
                    Left =1440
                    Width =607
                    Height =293
                    FontSize =12
                    FontWeight =700
                    TabIndex =3
                    Name ="ID"
                    ControlSource ="ID"

                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =7488
                    Top =360
                    Width =1230
                    Height =285
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld43"
                    Caption ="Betrag in €"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =3401
                    Top =360
                    Width =1020
                    Height =255
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld59"
                    Caption ="Datum"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =360
                    Width =2430
                    Height =255
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld19"
                    Caption ="bei Fälligkeitsaufteilung"
                End
                Begin Line
                    BorderWidth =1
                    Top =330
                    Width =8957
                    Name ="Linie20"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =300
            Name ="Detailbereich"
            Begin
                Begin Label
                    BackStyle =1
                    BorderWidth =1
                    TextAlign =1
                    TextFontFamily =34
                    Width =9000
                    Height =300
                    FontSize =10
                    BackColor =14671839
                    Name ="Bezeichnungsfeld65"
                    Caption ="\015\012\015\012"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OldBorderStyle =1
                    TextFontFamily =34
                    Left =7174
                    Width =1822
                    Height =293
                    FontSize =12
                    FontWeight =600
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    OldBorderStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =2895
                    Width =1852
                    Height =293
                    FontSize =12
                    FontWeight =600
                    TabIndex =1
                    Name ="Fälligkeitsdatum"
                    ControlSource ="Fälligkeitsdatum"
                    Format ="Short Date"

                End
            End
        End
    End
End
CodeBehindForm
' See "Buchungsanordnung_Unterbericht_Fälligkeiten.cls"
