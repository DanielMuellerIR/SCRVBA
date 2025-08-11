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
    Width =10658
    DatasheetFontHeight =10
    ItemSuffix =102
    Left =9435
    Top =2295
    OnNoData ="[Event Procedure]"
    RecSrcDt = Begin
        0x089c9269accce440
    End
    RecordSource ="Bericht Sanierungsstau Prioritäten"
    Caption ="Gebäudeliste"
    OnOpen ="= Maxim_Bericht()"
    DatasheetFontName ="Arial"
    OnLoad ="[Event Procedure]"
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
            AutoLabel = NotDefault
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1620
            Height =255
            LabelX =-1701
            FontSize =9
            FontWeight =700
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
            KeepTogether =1
            ControlSource ="Priorität"
        End
        Begin BreakLevel
            KeepTogether =1
            ControlSource ="Rangfolge"
        End
        Begin BreakLevel
            ControlSource ="Bezeichnung"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1077
            Name ="Berichtskopf"
            Begin
                Begin Label
                    Left =3465
                    Top =120
                    Width =4980
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld16"
                    Caption ="noch nicht finanzierte Maßnahmen"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =3465
                    LayoutCachedTop =120
                    LayoutCachedWidth =8445
                    LayoutCachedHeight =495
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
                    Caption ="Caisy B 60"
                    FontName ="Arial Narrow"
                End
                Begin Label
                    FontItalic = NotDefault
                    TextAlign =2
                    Width =3530
                    Height =964
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    ForeColor =65535
                    Name ="Text4"
                    Caption ="Caisy B 60"
                    FontName ="Arial Narrow"
                End
                Begin Label
                    Left =3458
                    Top =510
                    Width =4590
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld57"
                    Caption ="nach Prioritäten"
                    FontName ="Arial Narrow"
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
            RepeatSection = NotDefault
            ForceNewPage =1
            Height =1065
            Name ="Gruppenkopf2"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    OldBorderStyle =1
                    Top =56
                    Width =8730
                    Height =330
                    FontSize =12
                    Name ="Bezeichung"
                    ControlSource ="Priotext"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =56
                    LayoutCachedWidth =8730
                    LayoutCachedHeight =386
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    Top =1050
                    Width =10548
                    BorderColor =8355711
                    Name ="Linie94"
                    LayoutCachedTop =1050
                    LayoutCachedWidth =10548
                    LayoutCachedHeight =1050
                    BorderShade =50.0
                End
                Begin Label
                    TextAlign =0
                    Top =510
                    Width =855
                    Height =270
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld95"
                    Caption ="Objekt"
                    FontName ="Arial Narrow"
                    LayoutCachedTop =510
                    LayoutCachedWidth =855
                    LayoutCachedHeight =780
                End
                Begin Label
                    TextAlign =0
                    Left =3000
                    Top =510
                    Width =1035
                    Height =270
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld96"
                    Caption ="Maßnahme"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =3000
                    LayoutCachedTop =510
                    LayoutCachedWidth =4035
                    LayoutCachedHeight =780
                End
                Begin Label
                    TextAlign =3
                    Left =9270
                    Top =510
                    Width =1305
                    Height =255
                    FontSize =9
                    FontWeight =700
                    Name ="voraussichtliche Kosten gesamt"
                    Caption ="Vorauss. Kosten "
                    FontName ="Arial Narrow"
                    EventProcPrefix ="voraussichtliche_Kosten_gesamt"
                    LayoutCachedLeft =9270
                    LayoutCachedTop =510
                    LayoutCachedWidth =10575
                    LayoutCachedHeight =765
                End
                Begin Label
                    TextAlign =0
                    Left =6135
                    Top =510
                    Width =975
                    Height =285
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld97"
                    Caption ="Kalenderjahr"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6135
                    LayoutCachedTop =510
                    LayoutCachedWidth =7110
                    LayoutCachedHeight =795
                End
                Begin Label
                    TextAlign =3
                    Left =7155
                    Top =510
                    Width =726
                    Height =270
                    FontSize =9
                    BorderColor =12566463
                    ForeColor =8355711
                    Name ="BF_ID_Massn"
                    Caption ="Maßn.ID"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7155
                    LayoutCachedTop =510
                    LayoutCachedWidth =7881
                    LayoutCachedHeight =780
                    BorderShade =75.0
                    ForeShade =50.0
                End
                Begin Label
                    TextAlign =3
                    Left =7823
                    Top =510
                    Width =1305
                    Height =255
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld100"
                    Caption ="Finanziert"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7823
                    LayoutCachedTop =510
                    LayoutCachedWidth =9128
                    LayoutCachedHeight =765
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =300
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    Left =6135
                    Width =975
                    FontWeight =400
                    Name ="Kalenderjahr"
                    ControlSource ="Maßn_Jahr"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6135
                    LayoutCachedWidth =7110
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =1
                    Left =3006
                    Width =3015
                    FontWeight =400
                    TabIndex =2
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =3006
                    LayoutCachedWidth =6021
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =1
                    Width =2895
                    FontWeight =400
                    TabIndex =3
                    Name ="Gebäude"
                    ControlSource ="Haus"
                    FontName ="Arial Narrow"

                    LayoutCachedWidth =2895
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    OldBorderStyle =1
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7245
                    Width =636
                    FontWeight =400
                    TabIndex =4
                    BorderColor =12566463
                    Name ="TF_ID_Massn"
                    ControlSource ="ID"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7245
                    LayoutCachedWidth =7881
                    LayoutCachedHeight =255
                    BorderShade =75.0
                End
                Begin TextBox
                    TextAlign =3
                    Left =7823
                    Width =1305
                    FontWeight =400
                    TabIndex =5
                    Name ="Text101"
                    ControlSource ="Finanz_Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7823
                    LayoutCachedWidth =9128
                    LayoutCachedHeight =255
                End
                Begin Line
                    BorderWidth =1
                    Top =285
                    Width =10518
                    BorderColor =8355711
                    Name ="Linie98"
                    LayoutCachedTop =285
                    LayoutCachedWidth =10518
                    LayoutCachedHeight =285
                    BorderShade =50.0
                End
                Begin TextBox
                    TextAlign =3
                    Left =9270
                    Width =1305
                    FontWeight =400
                    TabIndex =1
                    Name ="voraussKosten"
                    ControlSource ="Voraus_Kosten_Massn_ges"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =9270
                    LayoutCachedWidth =10575
                    LayoutCachedHeight =255
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =850
            Name ="Gruppenfuß3"
            Begin
                Begin TextBox
                    TextAlign =3
                    Left =8460
                    Top =165
                    Width =2055
                    Height =330
                    FontSize =12
                    Name ="Text88"
                    ControlSource ="=Sum([Voraus_Kosten_Massn_ges])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8460
                    LayoutCachedTop =165
                    LayoutCachedWidth =10515
                    LayoutCachedHeight =495
                End
                Begin Label
                    TextAlign =3
                    Left =4485
                    Top =165
                    Width =2160
                    Height =345
                    FontWeight =700
                    Name ="Bezeichnungsfeld90"
                    Caption ="Summe Priorität"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =4485
                    LayoutCachedTop =165
                    LayoutCachedWidth =6645
                    LayoutCachedHeight =510
                End
            End
        End
        Begin PageFooter
            Height =553
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =3
                    Left =7504
                    Top =60
                    Width =3011
                    Height =270
                    FontSize =8
                    FontWeight =400
                    Name ="Text18"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7504
                    LayoutCachedTop =60
                    LayoutCachedWidth =10515
                    LayoutCachedHeight =330
                End
                Begin TextBox
                    Left =60
                    Top =60
                    Width =4257
                    Height =240
                    FontWeight =400
                    TabIndex =1
                    Name ="Text67"
                    ControlSource ="=Format(Date(),\"Long Date\") & \" \" & Format(Time(),\"Long Time\")"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =60
                    LayoutCachedTop =60
                    LayoutCachedWidth =4317
                    LayoutCachedHeight =300
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =1587
            Name ="Berichtsfuß"
            Begin
                Begin Rectangle
                    BackStyle =1
                    Top =226
                    Width =10592
                    Height =634
                    BackColor =14277081
                    Name ="Rechteck99"
                    LayoutCachedTop =226
                    LayoutCachedWidth =10592
                    LayoutCachedHeight =860
                    BackShade =85.0
                End
                Begin Label
                    Left =1755
                    Top =345
                    Width =5250
                    Height =390
                    FontSize =14
                    FontWeight =700
                    Name ="Bezeichnungsfeld42"
                    Caption ="Summe alle ausgewerteten Gebäude:"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =1755
                    LayoutCachedTop =345
                    LayoutCachedWidth =7005
                    LayoutCachedHeight =735
                End
                Begin Label
                    Top =1080
                    Width =5159
                    Height =298
                    FontSize =9
                    Name ="Bezeichnungsfeld62"
                    Caption ="Hinweis: 0 € = Kosten sind noch zu ermitteln"
                    FontName ="Arial Narrow"
                    LayoutCachedTop =1080
                    LayoutCachedWidth =5159
                    LayoutCachedHeight =1378
                End
                Begin TextBox
                    Left =7200
                    Top =345
                    Width =3315
                    Height =375
                    FontSize =14
                    Name ="Text93"
                    ControlSource ="=Sum([Voraus_Kosten_Massn_ges])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7200
                    LayoutCachedTop =345
                    LayoutCachedWidth =10515
                    LayoutCachedHeight =720
                End
            End
        End
    End
End
CodeBehindForm
' See "Sanierungsstau Prioritäten_neu_verwerfen.cls"
