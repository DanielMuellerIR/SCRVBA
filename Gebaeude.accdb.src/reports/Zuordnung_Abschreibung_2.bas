Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DefaultView =0
    RecordLocks =2
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9072
    DatasheetFontHeight =10
    ItemSuffix =17
    Left =10785
    Top =2685
    RecSrcDt = Begin
        0x8ca5ab3dcccde440
    End
    RecordSource ="Zuordnung_Abschreibung_1"
    Caption ="Zuordnung_Abschreibung_2"
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
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Mietobjekt"
        End
        Begin BreakLevel
            ControlSource ="Gebäudeteil"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1014
            BackColor =12632256
            Name ="Berichtskopf"
            Begin
                Begin Label
                    BackStyle =1
                    Left =57
                    Top =57
                    Width =6630
                    Height =615
                    FontSize =24
                    FontWeight =900
                    BackColor =12632256
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld8"
                    Caption ="Zuordnung Abschreibung"
                End
                Begin Line
                    BorderWidth =2
                    Top =57
                    Width =9072
                    BorderColor =12632256
                    Name ="Linie11"
                End
            End
        End
        Begin PageHeader
            Height =384
            Name ="Seitenkopf"
            Begin
                Begin Label
                    Top =57
                    Width =1140
                    Height =270
                    FontWeight =400
                    Name ="Gebäudeteil Bezeichnungsfeld"
                    Caption ="Gebäudeteil"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Gebäudeteil_Bezeichnungsfeld"
                End
                Begin Label
                    TextAlign =3
                    Left =4731
                    Top =57
                    Width =570
                    Height =270
                    FontWeight =400
                    Name ="Anteil Bezeichnungsfeld"
                    Caption ="Anteil"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Anteil_Bezeichnungsfeld"
                End
                Begin Label
                    TextAlign =3
                    Left =5409
                    Top =57
                    Width =1725
                    Height =270
                    FontWeight =400
                    Name ="Abschreibung Jahr Bezeichnungsfeld"
                    Caption ="Abschreibung Jahr"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Abschreibung_Jahr_Bezeichnungsfeld"
                End
                Begin Line
                    BorderWidth =2
                    Width =9072
                    BorderColor =12632256
                    Name ="Linie12"
                End
                Begin Line
                    BorderWidth =2
                    Top =369
                    Width =9072
                    BorderColor =12632256
                    Name ="Linie13"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =396
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    TextFontFamily =34
                    Left =1303
                    Top =56
                    Width =6237
                    Height =270
                    ColumnWidth =4815
                    FontSize =10
                    FontWeight =700
                    Name ="Mietobjekt"
                    ControlSource ="Mietobjekt"
                    FontName ="Arial"

                End
                Begin Label
                    Top =60
                    Width =1260
                    Height =270
                    Name ="Mietobjekt Bezeichnungsfeld"
                    Caption ="Mietobjekt"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Mietobjekt_Bezeichnungsfeld"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =255
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextFontFamily =34
                    Width =3477
                    Height =255
                    ColumnWidth =2220
                    FontSize =9
                    Name ="Gebäudeteil"
                    ControlSource ="Gebäudeteil"
                    FontName ="Arial"

                End
                Begin TextBox
                    TextFontFamily =34
                    Left =3534
                    Width =1767
                    Height =255
                    ColumnWidth =915
                    FontSize =9
                    TabIndex =1
                    Name ="Anteil"
                    ControlSource ="Anteil"
                    Format ="Percent"
                    StatusBarText ="Anteil des Mieters"
                    FontName ="Arial"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =5358
                    Width =1776
                    Height =255
                    ColumnWidth =1935
                    FontSize =9
                    TabIndex =2
                    Name ="Betrag"
                    ControlSource ="Betrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =453
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    TextFontFamily =34
                    Left =5358
                    Top =113
                    Width =1776
                    Height =270
                    FontSize =10
                    Name ="Text15"
                    ControlSource ="=Sum([Betrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial"

                End
                Begin Line
                    Left =5329
                    Top =56
                    Width =1814
                    Name ="Linie16"
                End
            End
        End
        Begin PageFooter
            Height =513
            BackColor =12632256
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =1
                    Left =57
                    Top =228
                    Width =4422
                    Height =285
                    FontSize =9
                    FontWeight =700
                    BackColor =12632256
                    Name ="Text9"
                    ControlSource ="=Now()"
                    Format ="Long Date"
                    FontName ="Arial"

                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =1
                    Left =4593
                    Top =228
                    Width =4422
                    Height =285
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    BackColor =12632256
                    Name ="Text10"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial"

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
