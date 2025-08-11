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
    Width =13950
    DatasheetFontHeight =10
    ItemSuffix =39
    Left =10785
    Top =2685
    RecSrcDt = Begin
        0x7fd393222ccde440
    End
    RecordSource ="B_Ergebnisse_Tabelle"
    Caption ="B_Ergebnisse_Tabelle"
    OnOpen ="= Maxim_Bericht()"
    OnClose ="[Event Procedure]"
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
            ControlSource ="Straße"
        End
        Begin BreakLevel
            ControlSource ="Bezeichnung"
        End
        Begin BreakLevel
            ControlSource ="Gebäudeteil"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1014
            Name ="Berichtskopf"
            Begin
                Begin Label
                    BackStyle =1
                    Left =60
                    Top =60
                    Width =12240
                    Height =615
                    FontSize =24
                    FontWeight =900
                    BackColor =12632256
                    Name ="Bezeichnungsfeld18"
                    Caption ="Bewertung Ergebnisse "
                End
            End
        End
        Begin PageHeader
            Height =396
            Name ="Seitenkopf"
            Begin
                Begin Label
                    Left =57
                    Top =56
                    Width =615
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnung Bezeichnungsfeld"
                    Caption ="Objekt"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Bezeichnung_Bezeichnungsfeld"
                    LayoutCachedLeft =57
                    LayoutCachedTop =56
                    LayoutCachedWidth =672
                    LayoutCachedHeight =311
                End
                Begin Label
                    Left =2381
                    Top =56
                    Width =615
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Straße Bezeichnungsfeld"
                    Caption ="Straße"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Straße_Bezeichnungsfeld"
                    LayoutCachedLeft =2381
                    LayoutCachedTop =56
                    LayoutCachedWidth =2996
                    LayoutCachedHeight =311
                End
                Begin Label
                    Left =4427
                    Top =56
                    Width =1065
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Gebäudeteil Bezeichnungsfeld"
                    Caption ="Gebäudeteil"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Gebäudeteil_Bezeichnungsfeld"
                    LayoutCachedLeft =4427
                    LayoutCachedTop =56
                    LayoutCachedWidth =5492
                    LayoutCachedHeight =311
                End
                Begin Label
                    TextAlign =3
                    Left =6272
                    Top =56
                    Width =1650
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Herstellungskosten Bezeichnungsfeld"
                    Caption ="Herstellungsk. NHK"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Herstellungskosten_Bezeichnungsfeld"
                    LayoutCachedLeft =6272
                    LayoutCachedTop =56
                    LayoutCachedWidth =7922
                    LayoutCachedHeight =311
                End
                Begin Label
                    TextAlign =3
                    Left =12440
                    Top =56
                    Width =1050
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Grundstück Bezeichnungsfeld"
                    Caption ="Grundstück"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Grundstück_Bezeichnungsfeld"
                    LayoutCachedLeft =12440
                    LayoutCachedTop =56
                    LayoutCachedWidth =13490
                    LayoutCachedHeight =311
                End
                Begin Label
                    TextAlign =3
                    Left =8273
                    Top =56
                    Width =915
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Sanierungsstau Bezeichnungsfeld"
                    Caption ="Sanierung"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Sanierungsstau_Bezeichnungsfeld"
                    LayoutCachedLeft =8273
                    LayoutCachedTop =56
                    LayoutCachedWidth =9188
                    LayoutCachedHeight =311
                End
                Begin Label
                    TextAlign =3
                    Left =9463
                    Top =56
                    Width =1245
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Abschreibung Bezeichnungsfeld"
                    Caption ="Abschreibung"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Abschreibung_Bezeichnungsfeld"
                    LayoutCachedLeft =9463
                    LayoutCachedTop =56
                    LayoutCachedWidth =10708
                    LayoutCachedHeight =311
                End
                Begin Label
                    TextAlign =3
                    Left =10882
                    Top =56
                    Width =1200
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="ermittelter Wert Bezeichnungsfeld"
                    Caption ="Gebäudewert"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="ermittelter_Wert_Bezeichnungsfeld"
                    LayoutCachedLeft =10882
                    LayoutCachedTop =56
                    LayoutCachedWidth =12082
                    LayoutCachedHeight =311
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    Left =120
                    Top =375
                    Width =13725
                    BorderColor =12632256
                    Name ="Linie21"
                    LayoutCachedLeft =120
                    LayoutCachedTop =375
                    LayoutCachedWidth =13845
                    LayoutCachedHeight =375
                End
                Begin Label
                    TextAlign =3
                    Left =13534
                    Top =56
                    Width =300
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld38"
                    Caption ="erl"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =13534
                    LayoutCachedTop =56
                    LayoutCachedWidth =13834
                    LayoutCachedHeight =311
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =241
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    TextFontFamily =34
                    Top =1
                    Width =2208
                    ColumnWidth =3210
                    FontSize =8
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"
                    FontName ="Arial Narrow"

                End
                Begin TextBox
                    TextFontFamily =34
                    Left =2324
                    Width =1938
                    ColumnWidth =2460
                    FontSize =8
                    TabIndex =1
                    Name ="Straße"
                    ControlSource ="Straße"
                    FontName ="Arial Narrow"

                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextFontFamily =34
                    Left =4427
                    Top =1
                    Width =2013
                    ColumnWidth =1860
                    FontSize =8
                    TabIndex =2
                    Name ="Gebäudeteil"
                    ControlSource ="Gebäudeteil"
                    FontName ="Arial Narrow"

                End
                Begin TextBox
                    TextFontFamily =34
                    Left =6572
                    Width =1350
                    ColumnWidth =3525
                    FontSize =8
                    TabIndex =3
                    Name ="Herstellungskosten"
                    ControlSource ="Herstellungskosten"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                End
                Begin TextBox
                    TextFontFamily =34
                    Left =12132
                    Width =1350
                    ColumnWidth =1485
                    FontSize =8
                    TabIndex =4
                    Name ="Grundstückswert"
                    ControlSource ="Grundstückswert"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                End
                Begin TextBox
                    TextFontFamily =34
                    Left =8153
                    Width =1035
                    ColumnWidth =1620
                    FontSize =8
                    TabIndex =5
                    Name ="Sanierungsstau"
                    ControlSource ="Sanierungsstau"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                End
                Begin TextBox
                    TextFontFamily =34
                    Left =9343
                    Top =1
                    Width =1365
                    ColumnWidth =1485
                    FontSize =8
                    TabIndex =6
                    Name ="kumulierte Abschreibung"
                    ControlSource ="kumulierte Abschreibung"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    EventProcPrefix ="kumulierte_Abschreibung"

                End
                Begin TextBox
                    TextFontFamily =34
                    Left =10805
                    Top =1
                    Width =1275
                    ColumnWidth =1650
                    FontSize =8
                    TabIndex =7
                    Name ="Wert ermittelt"
                    ControlSource ="Wert ermittelt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    EventProcPrefix ="Wert_ermittelt"

                End
                Begin CheckBox
                    Left =13606
                    Width =227
                    Height =227
                    TabIndex =8
                    Name ="Kontrollkästchen36"
                    ControlSource ="=IIf(IsNull([Bewertung abgeschlossen]),0,-1)"

                End
            End
        End
        Begin PageFooter
            Height =375
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =1
                    Left =60
                    Top =90
                    Width =5040
                    Height =285
                    FontSize =9
                    FontWeight =700
                    Name ="Text19"
                    ControlSource ="=Now()"
                    Format ="Long Date"
                    FontName ="Arial"

                    LayoutCachedLeft =60
                    LayoutCachedTop =90
                    LayoutCachedWidth =5100
                    LayoutCachedHeight =375
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =1
                    Left =8910
                    Top =90
                    Width =5040
                    Height =285
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    Name ="Text20"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial"

                    LayoutCachedLeft =8910
                    LayoutCachedTop =90
                    LayoutCachedWidth =13950
                    LayoutCachedHeight =375
                End
                Begin Line
                    BorderWidth =1
                    Left =60
                    Top =45
                    Width =13890
                    BorderColor =12632256
                    Name ="Linie22"
                    LayoutCachedLeft =60
                    LayoutCachedTop =45
                    LayoutCachedWidth =13950
                    LayoutCachedHeight =45
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =793
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Left =6180
                    Top =390
                    Width =1800
                    FontSize =8
                    FontWeight =600
                    Name ="Text23"
                    ControlSource ="=Sum([Herstellungskosten])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                    LayoutCachedLeft =6180
                    LayoutCachedTop =390
                    LayoutCachedWidth =7980
                    LayoutCachedHeight =630
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Left =12076
                    Top =390
                    Width =1650
                    FontSize =8
                    FontWeight =600
                    TabIndex =1
                    Name ="Text25"
                    ControlSource ="=Sum([Grundstückswert])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                    LayoutCachedLeft =12076
                    LayoutCachedTop =390
                    LayoutCachedWidth =13726
                    LayoutCachedHeight =630
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Left =8051
                    Top =390
                    Width =1350
                    FontSize =8
                    FontWeight =600
                    TabIndex =2
                    Name ="Text26"
                    ControlSource ="=Sum([Sanierungsstau])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                    LayoutCachedLeft =8051
                    LayoutCachedTop =390
                    LayoutCachedWidth =9401
                    LayoutCachedHeight =630
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Left =9404
                    Top =390
                    Width =1305
                    FontSize =8
                    FontWeight =600
                    TabIndex =3
                    Name ="Text27"
                    ControlSource ="=Sum([kumulierte Abschreibung])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                    LayoutCachedLeft =9404
                    LayoutCachedTop =390
                    LayoutCachedWidth =10709
                    LayoutCachedHeight =630
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Left =10776
                    Top =390
                    Width =1305
                    FontSize =8
                    FontWeight =600
                    TabIndex =4
                    Name ="Text32"
                    ControlSource ="=Sum([Wert ermittelt])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                    LayoutCachedLeft =10776
                    LayoutCachedTop =390
                    LayoutCachedWidth =12081
                    LayoutCachedHeight =630
                End
            End
        End
    End
End
CodeBehindForm
' See "B_Ergebnisse_Tabelle.cls"
