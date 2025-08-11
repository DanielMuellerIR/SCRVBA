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
    Width =13833
    DatasheetFontHeight =10
    ItemSuffix =20
    Left =10785
    Top =2685
    RecSrcDt = Begin
        0x306201504e16e340
    End
    RecordSource ="Plausibilitätsprüfung_Buchungen"
    Caption ="Plausibilitätsprüfung_Buchungen"
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
            ControlSource ="angelegt"
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
                    Width =7755
                    Height =615
                    FontSize =24
                    FontWeight =900
                    BackColor =12632256
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld14"
                    Caption ="Plausibilitätsprüfung Buchungen"
                End
            End
        End
        Begin PageHeader
            Height =369
            Name ="Seitenkopf"
            Begin
                Begin Label
                    Left =60
                    Top =57
                    Width =1164
                    Height =255
                    FontSize =9
                    FontWeight =900
                    Name ="angelegt Bezeichnungsfeld"
                    Caption ="angelegt"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="angelegt_Bezeichnungsfeld"
                End
                Begin Label
                    Left =1290
                    Top =57
                    Width =2271
                    Height =255
                    FontSize =9
                    FontWeight =900
                    Name ="Emfpänger Bezeichnungsfeld"
                    Caption ="Emfpänger"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Emfpänger_Bezeichnungsfeld"
                End
                Begin Label
                    Left =3615
                    Top =57
                    Width =2661
                    Height =255
                    FontSize =9
                    FontWeight =900
                    Name ="Verwendungszweck Bezeichnungsfeld"
                    Caption ="Verwendungszweck"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Verwendungszweck_Bezeichnungsfeld"
                End
                Begin Label
                    TextAlign =3
                    Left =6360
                    Top =57
                    Width =1716
                    Height =255
                    FontSize =9
                    FontWeight =900
                    Name ="Anordnungsbetrag Bezeichnungsfeld"
                    Caption ="Anordnungsbetrag"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Anordnungsbetrag_Bezeichnungsfeld"
                End
                Begin Label
                    TextAlign =3
                    Left =8220
                    Top =57
                    Width =1536
                    Height =255
                    FontSize =9
                    FontWeight =900
                    Name ="Einzelbetrag Bezeichnungsfeld"
                    Caption ="Einzelbetrag"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Einzelbetrag_Bezeichnungsfeld"
                End
                Begin Label
                    TextAlign =2
                    Left =9810
                    Top =60
                    Width =1155
                    Height =255
                    FontSize =9
                    FontWeight =900
                    Name ="Kennummer aus Kostenstellenverzeichnis Bezeichnungsfeld"
                    Caption ="Kostenst."
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Kennummer_aus_Kostenstellenverzeichnis_Bezeichnungsfeld"
                    LayoutCachedLeft =9810
                    LayoutCachedTop =60
                    LayoutCachedWidth =10965
                    LayoutCachedHeight =315
                End
                Begin Label
                    Left =11010
                    Top =57
                    Width =2808
                    Height =255
                    FontSize =9
                    FontWeight =900
                    Name ="Text Bezeichnungsfeld"
                    Caption ="Text"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Text_Bezeichnungsfeld"
                End
                Begin Line
                    BorderWidth =3
                    Left =75
                    Top =315
                    Width =13758
                    BorderColor =12632256
                    Name ="Linie17"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =444
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextAlign =1
                    Left =60
                    Top =57
                    Width =1164
                    Height =330
                    ColumnWidth =2940
                    Name ="angelegt"
                    ControlSource ="angelegt"
                    Format ="Short Date"

                End
                Begin TextBox
                    CanGrow = NotDefault
                    Left =1290
                    Top =57
                    Width =2271
                    Height =330
                    ColumnWidth =2940
                    TabIndex =1
                    Name ="Emfpänger"
                    ControlSource ="Emfpänger"

                End
                Begin TextBox
                    Left =3615
                    Top =57
                    Width =2661
                    Height =330
                    ColumnWidth =2055
                    TabIndex =2
                    Name ="Verwendungszweck"
                    ControlSource ="Verwendungszweck"

                End
                Begin TextBox
                    Left =6360
                    Top =57
                    Width =1716
                    Height =330
                    ColumnWidth =1905
                    TabIndex =3
                    Name ="Anordnungsbetrag"
                    ControlSource ="Anordnungsbetrag"

                End
                Begin TextBox
                    Left =8220
                    Top =57
                    Width =1536
                    Height =330
                    ColumnWidth =1350
                    TabIndex =4
                    Name ="Einzelbetrag"
                    ControlSource ="Einzelbetrag"

                End
                Begin TextBox
                    Left =9870
                    Top =57
                    Width =1080
                    Height =330
                    TabIndex =5
                    Name ="Kennummer aus Kostenstellenverzeichnis"
                    ControlSource ="Kennummer"
                    EventProcPrefix ="Kennummer_aus_Kostenstellenverzeichnis"

                End
                Begin TextBox
                    CanGrow = NotDefault
                    Left =11010
                    Top =57
                    Width =2808
                    Height =330
                    ColumnWidth =2850
                    TabIndex =6
                    Name ="Text"
                    ControlSource ="Text"

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
                    Name ="Text15"
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
                    Name ="Text16"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial"

                End
                Begin Line
                    BorderWidth =1
                    Left =57
                    Top =228
                    Width =8958
                    BorderColor =12632256
                    Name ="Linie18"
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =2169
            Name ="Berichtsfuß"
            Begin
                Begin Line
                    Left =8617
                    Top =2154
                    Name ="Linie19"
                    LayoutCachedLeft =8617
                    LayoutCachedTop =2154
                    LayoutCachedWidth =10318
                    LayoutCachedHeight =2154
                End
            End
        End
    End
End
CodeBehindForm
' See "Plausibilitätsprüfung_Buchungen_alt.cls"
