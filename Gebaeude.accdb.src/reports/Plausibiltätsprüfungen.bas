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
    Width =13600
    DatasheetFontHeight =10
    ItemSuffix =21
    Left =530
    Top =2907
    RecSrcDt = Begin
        0xc9d09e108ce9e440
    End
    RecordSource ="M_Plausitbilitätsprüfungen"
    Caption ="M_Plausitbilitätsprüfungen"
    OnOpen ="= Maxim_Bericht()"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            FontItalic = NotDefault
            BackStyle =0
            TextAlign =1
            TextFontFamily =18
            FontSize =11
            FontWeight =700
            ForeColor =8388608
            FontName ="Times New Roman"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
            BorderColor =8388608
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
            BorderColor =8388608
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
            FontName ="Arial"
            ShowDatePicker =0
        End
        Begin ListBox
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontName ="Arial"
        End
        Begin ComboBox
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
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
        Begin FormHeader
            KeepTogether = NotDefault
            Height =909
            Name ="Berichtskopf"
            Begin
                Begin Label
                    BackStyle =1
                    Left =57
                    Top =57
                    Width =4665
                    Height =510
                    FontSize =20
                    Name ="Bezeichnungsfeld10"
                    Caption ="Plausitbilitätsprüfungen"
                End
            End
        End
        Begin PageHeader
            Height =1513
            Name ="Seitenkopf"
            Begin
                Begin Label
                    Left =114
                    Top =794
                    Width =2310
                    Height =300
                    Name ="Bezeichnung Bezeichnungsfeld"
                    Caption ="Bezeichnung"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Bezeichnung_Bezeichnungsfeld"
                End
                Begin Label
                    Visible = NotDefault
                    Left =5782
                    Top =793
                    Width =690
                    Height =300
                    Name ="Fehler Bereiche Bezeichnungsfeld"
                    Caption ="Mieter"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Fehler_Bereiche_Bezeichnungsfeld"
                End
                Begin Label
                    Left =6633
                    Top =793
                    Width =1170
                    Height =300
                    Name ="Fehler Kostenstelle Bezeichnungsfeld"
                    Caption ="Kostenstelle"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Fehler_Kostenstelle_Bezeichnungsfeld"
                End
                Begin Label
                    Left =7937
                    Top =793
                    Width =720
                    Height =300
                    Name ="Fehler Bruttogrundfläche Bezeichnungsfeld"
                    Caption ="Fläche"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Fehler_Bruttogrundfläche_Bezeichnungsfeld"
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =2
                    Left =113
                    Top =1190
                    Width =13428
                    Name ="Linie13"
                    LayoutCachedLeft =113
                    LayoutCachedTop =1190
                    LayoutCachedWidth =13541
                    LayoutCachedHeight =1190
                End
                Begin Label
                    Left =10148
                    Top =793
                    Width =1350
                    Height =300
                    Name ="Bezeichnungsfeld15"
                    Caption ="Abschreibung"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    Left =5782
                    Top =283
                    Width =5385
                    Height =300
                    Name ="Bezeichnungsfeld17"
                    Caption ="zu überprüfende Dateneingaben:"
                    Tag ="DetachedLabel"
                End
                Begin Line
                    Left =5782
                    Top =680
                    Width =7316
                    Name ="Linie18"
                    LayoutCachedLeft =5782
                    LayoutCachedTop =680
                    LayoutCachedWidth =13098
                    LayoutCachedHeight =680
                End
                Begin Label
                    Left =11678
                    Top =793
                    Width =1350
                    Height =300
                    Name ="Bezeichnungsfeld19"
                    Caption ="Nebenkosten"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =340
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Left =57
                    Width =5775
                    Height =270
                    ColumnWidth =5100
                    Name ="Bezeichnung"
                    ControlSource ="Objekt"

                End
                Begin TextBox
                    Visible = NotDefault
                    Left =5952
                    Width =495
                    Height =270
                    ColumnWidth =2145
                    TabIndex =1
                    Name ="Mieter"
                    ControlSource ="Mietpartei"

                End
                Begin TextBox
                    Left =6859
                    Width =495
                    Height =270
                    ColumnWidth =1980
                    TabIndex =2
                    Name ="Kostenstelle"
                    ControlSource ="Kostenstelle"

                End
                Begin TextBox
                    Left =7937
                    Width =630
                    Height =270
                    ColumnWidth =2580
                    TabIndex =3
                    Name ="Fläche"
                    ControlSource ="Fläche"

                End
                Begin TextBox
                    Left =12075
                    Width =495
                    Height =270
                    TabIndex =4
                    Name ="Nebenkosten"
                    ControlSource ="Nebenkosten"

                End
            End
        End
        Begin PageFooter
            Height =528
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    TextAlign =1
                    TextFontFamily =18
                    Left =57
                    Top =228
                    Width =5040
                    Height =300
                    FontSize =9
                    FontWeight =700
                    ForeColor =8388608
                    Name ="Text11"
                    ControlSource ="=Now()"
                    Format ="Long Date"
                    FontName ="Times New Roman"

                End
                Begin TextBox
                    FontItalic = NotDefault
                    TextAlign =3
                    TextFontFamily =18
                    Left =8390
                    Top =226
                    Width =5040
                    Height =300
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    ForeColor =8388608
                    Name ="Text12"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Times New Roman"

                End
                Begin Line
                    BorderWidth =3
                    Left =57
                    Top =228
                    Width =13543
                    BorderColor =12632256
                    Name ="Linie14"
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
