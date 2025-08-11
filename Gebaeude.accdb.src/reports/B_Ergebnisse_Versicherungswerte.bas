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
    Width =15309
    DatasheetFontHeight =10
    ItemSuffix =50
    Left =8580
    Top =2160
    RecSrcDt = Begin
        0x1b3eadd3f6aae440
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
            AutoLabel = NotDefault
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            Height =255
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
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
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1014
            BackColor =12632256
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
                    Caption ="Bewertung Versicherungswerte"
                End
            End
        End
        Begin PageHeader
            Height =907
            Name ="Seitenkopf"
            Begin
                Begin Label
                    Top =510
                    Width =630
                    Height =270
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnung Bezeichnungsfeld"
                    Caption ="Objekt"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Bezeichnung_Bezeichnungsfeld"
                    LayoutCachedTop =510
                    LayoutCachedWidth =630
                    LayoutCachedHeight =780
                End
                Begin Label
                    Left =2327
                    Top =450
                    Width =645
                    Height =270
                    FontSize =8
                    FontWeight =900
                    Name ="Straße Bezeichnungsfeld"
                    Caption ="Straße"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Straße_Bezeichnungsfeld"
                    LayoutCachedLeft =2327
                    LayoutCachedTop =450
                    LayoutCachedWidth =2972
                    LayoutCachedHeight =720
                End
                Begin Label
                    Left =4384
                    Top =510
                    Width =1110
                    Height =270
                    FontSize =8
                    FontWeight =900
                    Name ="Gebäudeteil Bezeichnungsfeld"
                    Caption ="Gebäudeteil"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Gebäudeteil_Bezeichnungsfeld"
                    LayoutCachedLeft =4384
                    LayoutCachedTop =510
                    LayoutCachedWidth =5494
                    LayoutCachedHeight =780
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =3
                    Top =840
                    Width =15309
                    BorderColor =12632256
                    Name ="Linie21"
                    LayoutCachedTop =840
                    LayoutCachedWidth =15309
                    LayoutCachedHeight =840
                End
                Begin Label
                    TextAlign =3
                    Left =6822
                    Top =510
                    Width =1170
                    Height =270
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld40"
                    Caption ="Versich.wert"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =6822
                    LayoutCachedTop =510
                    LayoutCachedWidth =7992
                    LayoutCachedHeight =780
                End
                Begin Label
                    TextAlign =3
                    Left =8291
                    Top =510
                    Width =1110
                    Height =270
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld41"
                    Caption ="BGF"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =8291
                    LayoutCachedTop =510
                    LayoutCachedWidth =9401
                    LayoutCachedHeight =780
                End
                Begin Label
                    TextAlign =3
                    Left =9700
                    Top =510
                    Width =1110
                    Height =270
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld42"
                    Caption ="BRI"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =9700
                    LayoutCachedTop =510
                    LayoutCachedWidth =10810
                    LayoutCachedHeight =780
                End
                Begin Label
                    TextAlign =3
                    Left =10981
                    Top =510
                    Width =465
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld43"
                    Caption ="Bauj."
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =10981
                    LayoutCachedTop =510
                    LayoutCachedWidth =11446
                    LayoutCachedHeight =765
                End
                Begin Label
                    Left =11565
                    Top =510
                    Width =3570
                    Height =270
                    FontSize =8
                    FontWeight =900
                    Name ="Bezeichnungsfeld44"
                    Caption ="NHK-Typ"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =11565
                    LayoutCachedTop =510
                    LayoutCachedWidth =15135
                    LayoutCachedHeight =780
                End
                Begin Label
                    Top =56
                    Width =3060
                    Height =285
                    Name ="Bezeichnungsfeld49"
                    Caption ="Bewertung Versicherungswerte"
                    LayoutCachedTop =56
                    LayoutCachedWidth =3060
                    LayoutCachedHeight =341
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =285
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    Width =2208
                    Height =225
                    ColumnWidth =3210
                    FontSize =8
                    BorderColor =12566463
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"
                    FontName ="Arial Narrow"

                    LayoutCachedWidth =2208
                    LayoutCachedHeight =225
                    BorderShade =75.0
                End
                Begin TextBox
                    Left =2327
                    Width =1938
                    Height =225
                    ColumnWidth =2460
                    FontSize =8
                    TabIndex =1
                    BorderColor =12566463
                    Name ="Straße"
                    ControlSource ="Straße"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =2327
                    LayoutCachedWidth =4265
                    LayoutCachedHeight =225
                    BorderShade =75.0
                End
                Begin TextBox
                    IMESentenceMode =3
                    Left =6516
                    Width =1476
                    Height =225
                    FontSize =8
                    TabIndex =2
                    BorderColor =12566463
                    Name ="Versicherungswert"
                    ControlSource ="Versicherungswert"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6516
                    LayoutCachedWidth =7992
                    LayoutCachedHeight =225
                    BorderShade =75.0
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    Left =4384
                    Width =2013
                    Height =225
                    ColumnWidth =1860
                    FontSize =8
                    TabIndex =3
                    BorderColor =12566463
                    Name ="Gebäudeteil"
                    ControlSource ="Gebäudeteil"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4384
                    LayoutCachedWidth =6397
                    LayoutCachedHeight =225
                    BorderShade =75.0
                End
                Begin TextBox
                    IMESentenceMode =3
                    Left =8111
                    Width =1290
                    Height =225
                    ColumnWidth =945
                    FontSize =8
                    TabIndex =4
                    BorderColor =12566463
                    Name ="BGF"
                    ControlSource ="BGF"
                    Format ="#,##0.00\" m²\""
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8111
                    LayoutCachedWidth =9401
                    LayoutCachedHeight =225
                    BorderShade =75.0
                End
                Begin TextBox
                    IMESentenceMode =3
                    Left =9520
                    Width =1290
                    Height =225
                    FontSize =8
                    TabIndex =5
                    BorderColor =12566463
                    Name ="BRI"
                    ControlSource ="BRI"
                    Format ="#,##0.00\" m³\""
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =9520
                    LayoutCachedWidth =10810
                    LayoutCachedHeight =225
                    BorderShade =75.0
                End
                Begin TextBox
                    IMESentenceMode =3
                    Left =10929
                    Width =517
                    Height =225
                    FontSize =8
                    TabIndex =6
                    BorderColor =12566463
                    Name ="Baujahr_real"
                    ControlSource ="Baujahr_real"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =10929
                    LayoutCachedWidth =11446
                    LayoutCachedHeight =225
                    BorderShade =75.0
                End
                Begin TextBox
                    IMESentenceMode =3
                    Left =11565
                    Width =3570
                    Height =225
                    ColumnWidth =11460
                    FontSize =8
                    TabIndex =7
                    BorderColor =12566463
                    Name ="Typ"
                    ControlSource ="Typ"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =11565
                    LayoutCachedWidth =15135
                    LayoutCachedHeight =225
                    BorderShade =75.0
                End
                Begin Line
                    BorderWidth =1
                    Top =270
                    Width =15309
                    BorderColor =14277081
                    Name ="Linie46"
                    LayoutCachedTop =270
                    LayoutCachedWidth =15309
                    LayoutCachedHeight =270
                    BorderShade =85.0
                End
            End
        End
        Begin PageFooter
            Height =281
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =1
                    Top =56
                    Width =5040
                    Height =225
                    FontSize =8
                    BorderColor =12566463
                    Name ="Text47"
                    ControlSource ="=Now()"
                    Format ="Long Date"

                    LayoutCachedTop =56
                    LayoutCachedWidth =5040
                    LayoutCachedHeight =281
                    BorderShade =75.0
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextAlign =3
                    Left =7540
                    Top =56
                    Width =7593
                    Height =225
                    FontSize =8
                    TabIndex =1
                    BorderColor =12566463
                    Name ="Text48"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"

                    LayoutCachedLeft =7540
                    LayoutCachedTop =56
                    LayoutCachedWidth =15133
                    LayoutCachedHeight =281
                    BorderShade =75.0
                End
                Begin Line
                    BorderWidth =1
                    Width =15309
                    BorderColor =12632256
                    Name ="Linie22"
                    LayoutCachedWidth =15309
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =0
            Name ="Berichtsfuß"
        End
    End
End
CodeBehindForm
' See "B_Ergebnisse_Versicherungswerte.cls"
