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
    Width =15533
    DatasheetFontHeight =10
    ItemSuffix =21
    Left =10783
    Top =2683
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
            Height =623
            Name ="Berichtskopf"
            BackThemeColorIndex =1
            BackShade =85.0
            Begin
                Begin Label
                    Left =57
                    Top =57
                    Width =5734
                    Height =454
                    FontSize =18
                    FontWeight =900
                    BackColor =12632256
                    Name ="Bezeichnungsfeld14"
                    Caption ="Plausibilitätsprüfung Buchungen"
                    LayoutCachedLeft =57
                    LayoutCachedTop =57
                    LayoutCachedWidth =5791
                    LayoutCachedHeight =511
                    ForeThemeColorIndex =0
                End
            End
        End
        Begin PageHeader
            Height =510
            Name ="Seitenkopf"
            Begin
                Begin Label
                    Left =60
                    Top =57
                    Width =1164
                    Height =255
                    FontSize =8
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
                    FontSize =8
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
                    FontSize =8
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
                    FontSize =8
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
                    FontSize =8
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
                    FontSize =8
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
                    Width =4359
                    Height =255
                    FontSize =8
                    FontWeight =900
                    Name ="Text Bezeichnungsfeld"
                    Caption ="Hinweis"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Text_Bezeichnungsfeld"
                    LayoutCachedLeft =11010
                    LayoutCachedTop =57
                    LayoutCachedWidth =15369
                    LayoutCachedHeight =312
                End
                Begin Line
                    BorderWidth =3
                    Left =77
                    Top =403
                    Width =15269
                    Name ="Linie17"
                    LayoutCachedLeft =77
                    LayoutCachedTop =403
                    LayoutCachedWidth =15346
                    LayoutCachedHeight =403
                    BorderThemeColorIndex =1
                    BorderShade =85.0
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =274
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextAlign =1
                    TextFontFamily =34
                    Left =60
                    Top =9
                    Width =1164
                    Height =231
                    ColumnWidth =2940
                    FontSize =8
                    Name ="angelegt"
                    ControlSource ="angelegt"
                    Format ="Short Date"
                    FontName ="Arial"

                    LayoutCachedLeft =60
                    LayoutCachedTop =9
                    LayoutCachedWidth =1224
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextFontFamily =34
                    Left =1290
                    Top =9
                    Width =2271
                    Height =231
                    ColumnWidth =2940
                    FontSize =8
                    TabIndex =1
                    Name ="Emfpänger"
                    ControlSource ="Emfpänger"
                    FontName ="Arial"

                    LayoutCachedLeft =1290
                    LayoutCachedTop =9
                    LayoutCachedWidth =3561
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextFontFamily =34
                    Left =3615
                    Top =9
                    Width =2661
                    Height =231
                    ColumnWidth =2055
                    FontSize =8
                    TabIndex =2
                    Name ="Verwendungszweck"
                    ControlSource ="Verwendungszweck"
                    FontName ="Arial"

                    LayoutCachedLeft =3615
                    LayoutCachedTop =9
                    LayoutCachedWidth =6276
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextFontFamily =34
                    Left =6360
                    Top =9
                    Width =1716
                    Height =231
                    ColumnWidth =1905
                    FontSize =8
                    TabIndex =3
                    Name ="Anordnungsbetrag"
                    ControlSource ="Anordnungsbetrag"
                    FontName ="Arial"

                    LayoutCachedLeft =6360
                    LayoutCachedTop =9
                    LayoutCachedWidth =8076
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextFontFamily =34
                    Left =8220
                    Top =9
                    Width =1536
                    Height =231
                    ColumnWidth =1350
                    FontSize =8
                    TabIndex =4
                    Name ="Einzelbetrag"
                    ControlSource ="Einzelbetrag"
                    FontName ="Arial"

                    LayoutCachedLeft =8220
                    LayoutCachedTop =9
                    LayoutCachedWidth =9756
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    TextFontFamily =34
                    Left =9870
                    Top =9
                    Width =1080
                    Height =231
                    FontSize =8
                    TabIndex =5
                    Name ="Kennummer aus Kostenstellenverzeichnis"
                    ControlSource ="Kennummer"
                    FontName ="Arial"
                    EventProcPrefix ="Kennummer_aus_Kostenstellenverzeichnis"

                    LayoutCachedLeft =9870
                    LayoutCachedTop =9
                    LayoutCachedWidth =10950
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextFontFamily =34
                    Left =11010
                    Top =9
                    Width =4359
                    Height =231
                    ColumnWidth =2850
                    FontSize =8
                    TabIndex =6
                    Name ="Text"
                    ControlSource ="Text"
                    FontName ="Arial"

                    LayoutCachedLeft =11010
                    LayoutCachedTop =9
                    LayoutCachedWidth =15369
                    LayoutCachedHeight =240
                End
                Begin Line
                    BorderWidth =1
                    Left =111
                    Top =274
                    Width =15214
                    Name ="Linie20"
                    LayoutCachedLeft =111
                    LayoutCachedTop =274
                    LayoutCachedWidth =15325
                    LayoutCachedHeight =274
                    BorderThemeColorIndex =1
                    BorderShade =85.0
                End
            End
        End
        Begin PageFooter
            Height =396
            Name ="Seitenfuß"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =4
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =1
                    Left =60
                    Top =51
                    Width =4422
                    Height =285
                    FontSize =9
                    FontWeight =700
                    Name ="Text15"
                    ControlSource ="=Now()"
                    Format ="\"Stand:  \"dd/mm/yyyy\", \"hh:nn\" Uhr\""
                    FontName ="Arial"

                    LayoutCachedLeft =60
                    LayoutCachedTop =51
                    LayoutCachedWidth =4482
                    LayoutCachedHeight =336
                    BackThemeColorIndex =1
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =1
                    Left =11790
                    Top =51
                    Width =3582
                    FontSize =9
                    FontWeight =700
                    TabIndex =1
                    Name ="Text16"
                    ControlSource ="=\"S. \" & [Page] & \" / \" & [Pages]"
                    FontName ="Arial"

                    LayoutCachedLeft =11790
                    LayoutCachedTop =51
                    LayoutCachedWidth =15372
                    LayoutCachedHeight =291
                    BackThemeColorIndex =1
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =340
            Name ="Berichtsfuß"
            Begin
                Begin Line
                    BorderWidth =3
                    Left =57
                    Top =170
                    Width =15269
                    Name ="Linie19"
                    LayoutCachedLeft =57
                    LayoutCachedTop =170
                    LayoutCachedWidth =15326
                    LayoutCachedHeight =170
                    BorderThemeColorIndex =1
                    BorderShade =85.0
                End
            End
        End
    End
End
CodeBehindForm
' See "Plausibilitätsprüfung_Buchungen.cls"
