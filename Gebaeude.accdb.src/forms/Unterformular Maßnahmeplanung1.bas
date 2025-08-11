Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    DefaultView =0
    ScrollBars =0
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =15504
    DatasheetFontHeight =10
    ItemSuffix =112
    Left =13395
    Top =5400
    Right =25350
    Bottom =12990
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x9dcc3e4a4f6ee440
    End
    RecordSource ="SELECT Maßnahmen.* FROM Maßnahmen WHERE (((Maßnahmen.[ID aus Gebäudeliste]) Like"
        " \"*\" & [Formulare]![Formular Maßnahmen ändern]![Gebäudeauswahl]));"
    Caption ="Maßnahmen"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    PictureSizeMode =1
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            FontName ="Arial"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderWidth =1
            BorderLineStyle =0
            Width =1701
        End
        Begin Image
            SpecialEffect =1
            BackStyle =0
            OldBorderStyle =0
            BorderLineStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin OptionButton
            SpecialEffect =1
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =1
            BorderWidth =3
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderColor =12632256
        End
        Begin BoundObjectFrame
            SpecialEffect =1
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ListBox
            SpecialEffect =1
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontName ="Arial"
        End
        Begin ComboBox
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin Subform
            SpecialEffect =1
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =1
            BackStyle =0
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin Section
            CanGrow = NotDefault
            Height =8617
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =8878
                    Top =600
                    Height =255
                    ColumnWidth =1701
                    Name ="TF_ID"
                    ControlSource ="ID"

                    LayoutCachedLeft =8878
                    LayoutCachedTop =600
                    LayoutCachedWidth =10579
                    LayoutCachedHeight =855
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =13130
                    Top =585
                    Width =1170
                    Height =270
                    ColumnWidth =1170
                    TabIndex =7
                    Name ="ID aus Gebäudeliste"
                    ControlSource ="ID aus Gebäudeliste"
                    EventProcPrefix ="ID_aus_Gebäudeliste"

                    LayoutCachedLeft =13130
                    LayoutCachedTop =585
                    LayoutCachedWidth =14300
                    LayoutCachedHeight =855
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =85
                            Left =11510
                            Top =585
                            Width =1560
                            Height =270
                            Name ="ID aus Gebäudeliste Bezeichnungsfeld"
                            Caption ="ID aus Gebäudeliste"
                            EventProcPrefix ="ID_aus_Gebäudeliste_Bezeichnungsfeld"
                            LayoutCachedLeft =11510
                            LayoutCachedTop =585
                            LayoutCachedWidth =13070
                            LayoutCachedHeight =855
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =3063
                    Top =883
                    Width =9615
                    Height =270
                    ColumnWidth =2310
                    FontWeight =700
                    TabIndex =1
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"

                    LayoutCachedLeft =3063
                    LayoutCachedTop =883
                    LayoutCachedWidth =12678
                    LayoutCachedHeight =1153
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =228
                            Top =883
                            Width =1560
                            Height =270
                            Name ="Maßnahme Bezeichnungsfeld"
                            Caption ="Maßnahme"
                            EventProcPrefix ="Maßnahme_Bezeichnungsfeld"
                            LayoutCachedLeft =228
                            LayoutCachedTop =883
                            LayoutCachedWidth =1788
                            LayoutCachedHeight =1153
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =3063
                    Top =1240
                    Width =2310
                    Height =270
                    ColumnWidth =2310
                    TabIndex =2
                    Name ="voraussichtliche Kosten gesamt"
                    ControlSource ="voraussichtliche Kosten gesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="voraussichtliche_Kosten_gesamt"

                    LayoutCachedLeft =3063
                    LayoutCachedTop =1240
                    LayoutCachedWidth =5373
                    LayoutCachedHeight =1510
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =228
                            Top =1223
                            Width =2385
                            Height =255
                            Name ="voraussichtliche Kosten gesamt Bezeichnungsfeld"
                            Caption ="voraussichtliche Kosten gesamt"
                            EventProcPrefix ="voraussichtliche_Kosten_gesamt_Bezeichnungsfeld"
                            LayoutCachedLeft =228
                            LayoutCachedTop =1223
                            LayoutCachedWidth =2613
                            LayoutCachedHeight =1478
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =3061
                    Top =7939
                    Width =870
                    Height =270
                    ColumnWidth =870
                    TabIndex =5
                    Name ="erledigt im Jahr"
                    ControlSource ="erledigt im Jahr"
                    Format ="General Number"
                    EventProcPrefix ="erledigt_im_Jahr"

                    LayoutCachedLeft =3061
                    LayoutCachedTop =7939
                    LayoutCachedWidth =3931
                    LayoutCachedHeight =8209
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =226
                            Top =7939
                            Width =1560
                            Height =270
                            Name ="erledigt im Jahr Bezeichnungsfeld"
                            Caption ="erledigt im Jahr"
                            EventProcPrefix ="erledigt_im_Jahr_Bezeichnungsfeld"
                            LayoutCachedLeft =226
                            LayoutCachedTop =7939
                            LayoutCachedWidth =1786
                            LayoutCachedHeight =8209
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =3058
                    Top =8279
                    Width =3975
                    Height =270
                    ColumnWidth =2310
                    TabIndex =6
                    Name ="nicht mehr erforderlich weil"
                    ControlSource ="nicht mehr erforderlich weil"
                    EventProcPrefix ="nicht_mehr_erforderlich_weil"

                    LayoutCachedLeft =3058
                    LayoutCachedTop =8279
                    LayoutCachedWidth =7033
                    LayoutCachedHeight =8549
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =223
                            Top =8294
                            Width =2055
                            Height =255
                            Name ="nicht mehr erforderlich weil Bezeichnungsfeld"
                            Caption ="nicht mehr erforderlich weil"
                            EventProcPrefix ="nicht_mehr_erforderlich_weil_Bezeichnungsfeld"
                            LayoutCachedLeft =223
                            LayoutCachedTop =8294
                            LayoutCachedWidth =2278
                            LayoutCachedHeight =8549
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =85
                    SpecialEffect =0
                    Left =223
                    Top =5503
                    Width =6795
                    Height =2310
                    TabIndex =3
                    Name ="Unterformular geplante Finanzierung"
                    SourceObject ="Form.Unterformular geplante Finanzierung"
                    LinkChildFields ="ID aus Maßnahmen"
                    LinkMasterFields ="ID"
                    EventProcPrefix ="Unterformular_geplante_Finanzierung"

                    LayoutCachedLeft =223
                    LayoutCachedTop =5503
                    LayoutCachedWidth =7018
                    LayoutCachedHeight =7813
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =223
                            Top =5218
                            Width =2700
                            Height =255
                            FontWeight =600
                            Name ="Unterformular geplante Finanzierung Beschriftung"
                            Caption ="Finanzierung"
                            EventProcPrefix ="Unterformular_geplante_Finanzierung_Beschriftung"
                            LayoutCachedLeft =223
                            LayoutCachedTop =5218
                            LayoutCachedWidth =2923
                            LayoutCachedHeight =5473
                        End
                    End
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =2
                    Left =280
                    Top =3011
                    Width =2025
                    Height =270
                    Name ="Kalenderjahr Bezeichnungsfeld"
                    Caption ="Ausschreibung ferting"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Kalenderjahr_Bezeichnungsfeld"
                    LayoutCachedLeft =280
                    LayoutCachedTop =3011
                    LayoutCachedWidth =2305
                    LayoutCachedHeight =3281
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =2
                    Left =2431
                    Top =3007
                    Width =2055
                    Height =270
                    Name ="Betrag Bezeichnungsfeld"
                    Caption ="Auftragserteilung"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Betrag_Bezeichnungsfeld"
                    LayoutCachedLeft =2431
                    LayoutCachedTop =3007
                    LayoutCachedWidth =4486
                    LayoutCachedHeight =3277
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =2
                    Left =4585
                    Top =3007
                    Width =1983
                    Height =270
                    Name ="Bezeichnungsfeld12"
                    Caption ="Fertigstellung"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =4585
                    LayoutCachedTop =3007
                    LayoutCachedWidth =6568
                    LayoutCachedHeight =3277
                End
                Begin Rectangle
                    OverlapFlags =223
                    Left =223
                    Top =2837
                    Width =6805
                    Height =2290
                    Name ="Rechteck36"
                    LayoutCachedLeft =223
                    LayoutCachedTop =2837
                    LayoutCachedWidth =7028
                    LayoutCachedHeight =5127
                End
                Begin Label
                    OverlapFlags =85
                    Left =226
                    Top =2553
                    Width =2700
                    Height =255
                    FontWeight =600
                    Name ="Bezeichnungsfeld37"
                    Caption ="Zeitplanung"
                    LayoutCachedLeft =226
                    LayoutCachedTop =2553
                    LayoutCachedWidth =2926
                    LayoutCachedHeight =2808
                End
                Begin Subform
                    OverlapFlags =85
                    SpecialEffect =0
                    Left =7253
                    Top =2840
                    Width =7260
                    Height =2310
                    TabIndex =4
                    Name ="Eingebettet38"
                    SourceObject ="Form.Unterformular Teilmaßnahmen"
                    LinkChildFields ="ID aus Maßnahmen"
                    LinkMasterFields ="ID"

                    LayoutCachedLeft =7253
                    LayoutCachedTop =2840
                    LayoutCachedWidth =14513
                    LayoutCachedHeight =5150
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =7258
                            Top =2553
                            Width =4500
                            Height =255
                            FontWeight =600
                            Name ="Bezeichnungsfeld39"
                            Caption ="ggfls. in Gesamtkosten enthaltende Teilmaßnahmen"
                            LayoutCachedLeft =7258
                            LayoutCachedTop =2553
                            LayoutCachedWidth =11758
                            LayoutCachedHeight =2808
                        End
                    End
                End
                Begin Subform
                    Enabled = NotDefault
                    CanShrink = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    SpecialEffect =0
                    Left =225
                    Top =150
                    Width =12474
                    Height =330
                    TabIndex =8
                    Name ="Unterformular_ Objektdaten"
                    SourceObject ="Form.Unterformular_ Objektdaten"
                    LinkChildFields ="ID"
                    LinkMasterFields ="ID aus Gebäudeliste"
                    EventProcPrefix ="Unterformular__Objektdaten"

                    LayoutCachedLeft =225
                    LayoutCachedTop =150
                    LayoutCachedWidth =12699
                    LayoutCachedHeight =480
                End
                Begin Label
                    OverlapFlags =85
                    Left =228
                    Top =1602
                    Width =2385
                    Height =255
                    Name ="Bezeichnungsfeld58"
                    Caption ="Priorität"
                    LayoutCachedLeft =228
                    LayoutCachedTop =1602
                    LayoutCachedWidth =2613
                    LayoutCachedHeight =1857
                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListWidth =2280
                    Left =3063
                    Top =1624
                    Width =3965
                    Height =255
                    TabIndex =9
                    Name ="Kombinationsfeld59"
                    ControlSource ="Priorität"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [Maßnahmen Prioritäten].ID, [Rang] & \" : \" & [Priorität] AS"
                        " Rng_Prio FROM [Maßnahmen Prioritäten] ORDER BY [Rang] & \" : \" & [Priorität];"
                    ColumnWidths ="0;2280"

                    LayoutCachedLeft =3063
                    LayoutCachedTop =1624
                    LayoutCachedWidth =7028
                    LayoutCachedHeight =1879
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =5217
                    Top =600
                    Width =1418
                    Height =226
                    TabIndex =10
                    Name ="Anzahl_Maßnahmen_Gebäude"
                    ControlSource ="=DCount(\"[Maßnahme]\",\"Maßnahmen\",\"[ID aus Gebäudeliste]=[ID aus Gebäudelist"
                        "e].[Wert]\")"

                    LayoutCachedLeft =5217
                    LayoutCachedTop =600
                    LayoutCachedWidth =6635
                    LayoutCachedHeight =826
                End
                Begin Subform
                    OverlapFlags =85
                    SpecialEffect =0
                    Left =7253
                    Top =5557
                    Width =7260
                    Height =2310
                    TabIndex =11
                    Name ="Eingebettet85"
                    SourceObject ="Form.Unterformular tatsächliche Finanzierung"
                    LinkChildFields ="ID aus Maßnahmen"
                    LinkMasterFields ="ID"

                    LayoutCachedLeft =7253
                    LayoutCachedTop =5557
                    LayoutCachedWidth =14513
                    LayoutCachedHeight =7867
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =7258
                            Top =5270
                            Width =4500
                            Height =255
                            FontWeight =600
                            Name ="Bezeichnungsfeld86"
                            Caption ="Finanzierung / Abrechnung"
                            LayoutCachedLeft =7258
                            LayoutCachedTop =5270
                            LayoutCachedWidth =11758
                            LayoutCachedHeight =5525
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =10150
                    Top =1223
                    Width =1635
                    Height =270
                    TabIndex =12
                    Name ="Text89"
                    ControlSource ="offene Auträge"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =10150
                    LayoutCachedTop =1223
                    LayoutCachedWidth =11785
                    LayoutCachedHeight =1493
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =7315
                            Top =1223
                            Width =1230
                            Height =255
                            Name ="Bezeichnungsfeld90"
                            Caption ="offene Auträge:"
                            LayoutCachedLeft =7315
                            LayoutCachedTop =1223
                            LayoutCachedWidth =8545
                            LayoutCachedHeight =1478
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =10150
                    Top =1560
                    Width =1635
                    Height =270
                    TabIndex =13
                    Name ="Text91"
                    ControlSource ="bezahlte Rechnungen"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =10150
                    LayoutCachedTop =1560
                    LayoutCachedWidth =11785
                    LayoutCachedHeight =1830
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =7322
                            Top =1565
                            Width =1695
                            Height =255
                            Name ="Bezeichnungsfeld92"
                            Caption ="bezahlte Rechnungen:"
                            LayoutCachedLeft =7322
                            LayoutCachedTop =1565
                            LayoutCachedWidth =9017
                            LayoutCachedHeight =1820
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    ListRows =20
                    ListWidth =510
                    Left =12077
                    Top =1567
                    Width =1757
                    Height =283
                    TabIndex =14
                    Name ="Bearbeiter"
                    ControlSource ="Bearbeiter"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.Name FROM Sachbearbeiter;"
                    ColumnWidths ="510"

                    LayoutCachedLeft =12077
                    LayoutCachedTop =1567
                    LayoutCachedWidth =13834
                    LayoutCachedHeight =1850
                End
                Begin TextBox
                    OverlapFlags =215
                    TextAlign =2
                    Left =280
                    Top =3404
                    Width =2049
                    Height =287
                    TabIndex =15
                    Name ="Text95"
                    ControlSource ="Ausschreibung fertig"
                    Format ="Short Date"

                    LayoutCachedLeft =280
                    LayoutCachedTop =3404
                    LayoutCachedWidth =2329
                    LayoutCachedHeight =3691
                End
                Begin TextBox
                    OverlapFlags =215
                    TextAlign =2
                    Left =2434
                    Top =3404
                    Width =2049
                    Height =287
                    TabIndex =16
                    Name ="Text97"
                    ControlSource ="Auftragserteilung"
                    Format ="Short Date"

                    LayoutCachedLeft =2434
                    LayoutCachedTop =3404
                    LayoutCachedWidth =4483
                    LayoutCachedHeight =3691
                End
                Begin TextBox
                    OverlapFlags =215
                    TextAlign =2
                    Left =4617
                    Top =3406
                    Width =1944
                    Height =287
                    TabIndex =17
                    Name ="Text98"
                    ControlSource ="Arbeiten ferting"
                    Format ="Short Date"

                    LayoutCachedLeft =4617
                    LayoutCachedTop =3406
                    LayoutCachedWidth =6561
                    LayoutCachedHeight =3693
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4135
                    Top =7939
                    Width =2858
                    Height =255
                    FontWeight =600
                    TabIndex =18
                    ForeColor =255
                    Name ="Text99"
                    ControlSource ="=IIf([erledigt im Jahr] Is Null,IIf(Val(Nz([Unterformular geplante Finanzierung]"
                        ".[Form]![summeverteilt]))<>Val(Nz([voraussichtliche Kosten gesamt])),\"Aufteilun"
                        "g nach Jahren prüfen!\",\"\"),\"\")"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =4135
                    LayoutCachedTop =7939
                    LayoutCachedWidth =6993
                    LayoutCachedHeight =8194
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3060
                    Top =1905
                    Width =637
                    Height =256
                    TabIndex =19
                    Name ="Text105"
                    ControlSource ="Rangfolge"

                    LayoutCachedLeft =3060
                    LayoutCachedTop =1905
                    LayoutCachedWidth =3697
                    LayoutCachedHeight =2161
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =225
                            Top =1905
                            Width =2383
                            Height =256
                            Name ="Bezeichnungsfeld106"
                            Caption ="Rang bei Priorität 3:"
                            LayoutCachedLeft =225
                            LayoutCachedTop =1905
                            LayoutCachedWidth =2608
                            LayoutCachedHeight =2161
                        End
                    End
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =13605
                    Top =180
                    Width =1605
                    Height =300
                    FontWeight =700
                    TabIndex =20
                    Name ="BS_Massn_loeschen"
                    Caption ="Maßn. löschen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =13605
                    LayoutCachedTop =180
                    LayoutCachedWidth =15210
                    LayoutCachedHeight =480
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListWidth =2280
                    Left =3060
                    Top =2220
                    Width =3965
                    Height =255
                    TabIndex =21
                    Name ="Kombinationsfeld110"
                    ControlSource ="Priorität_zeitl"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [Maßnahmen Prioritäten zeitlich].ID, [Rang] & \" : \" & [Prio"
                        "rität_zeitl] AS Rng_Prio FROM [Maßnahmen Prioritäten zeitlich] ORDER BY [Rang] &"
                        " \" : \" & [Priorität_zeitl];"
                    ColumnWidths ="0;2280"

                    LayoutCachedLeft =3060
                    LayoutCachedTop =2220
                    LayoutCachedWidth =7025
                    LayoutCachedHeight =2475
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =226
                            Top =2211
                            Width =2385
                            Height =255
                            Name ="Bezeichnungsfeld111"
                            Caption ="Zeitliche Priorität:"
                            LayoutCachedLeft =226
                            LayoutCachedTop =2211
                            LayoutCachedWidth =2611
                            LayoutCachedHeight =2466
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "Unterformular Maßnahmeplanung1.cls"
