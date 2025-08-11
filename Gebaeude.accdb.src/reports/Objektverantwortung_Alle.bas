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
    Width =10488
    DatasheetFontHeight =10
    ItemSuffix =62
    Left =8966
    Top =3980
    RecSrcDt = Begin
        0x8ea2e1673453e640
    End
    RecordSource ="Objekt_Verantwortung_Alle"
    Caption ="Gebäudeliste"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =1
            FontSize =9
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
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
            ShowDatePicker =0
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
            ControlSource ="Liegenschaft"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1365
            Name ="Berichtskopf"
            Begin
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
                    Name ="BF_Caisy"
                    Caption ="Caisy B 60"
                End
                Begin Label
                    FontItalic = NotDefault
                    TextAlign =2
                    Left =15
                    Top =30
                    Width =3530
                    Height =1129
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    ForeColor =65535
                    Name ="Text4"
                    Caption ="Caisy B 60"
                    LayoutCachedLeft =15
                    LayoutCachedTop =30
                    LayoutCachedWidth =3545
                    LayoutCachedHeight =1159
                End
                Begin Label
                    Left =3741
                    Top =170
                    Width =4065
                    Height =795
                    FontSize =16
                    FontWeight =700
                    Name ="Bezeichnungsfeld59"
                    Caption ="Alle Verantwortlichkeiten\015\012zu Liegenschaften"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =3741
                    LayoutCachedTop =170
                    LayoutCachedWidth =7806
                    LayoutCachedHeight =965
                End
            End
        End
        Begin PageHeader
            Height =907
            Name ="Seitenkopf"
            Begin
                Begin Label
                    TextAlign =2
                    Left =4255
                    Top =390
                    Width =1134
                    Height =270
                    FontWeight =700
                    Name ="Bezeichnungsfeld52"
                    Caption ="Objekt"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =4255
                    LayoutCachedTop =390
                    LayoutCachedWidth =5389
                    LayoutCachedHeight =660
                End
                Begin Label
                    TextAlign =2
                    Left =5501
                    Top =390
                    Width =1134
                    Height =270
                    FontWeight =700
                    Name ="Bezeichnungsfeld53"
                    Caption ="Grundst."
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =5501
                    LayoutCachedTop =390
                    LayoutCachedWidth =6635
                    LayoutCachedHeight =660
                End
                Begin Label
                    TextAlign =2
                    Left =6747
                    Top =390
                    Width =1134
                    Height =270
                    FontWeight =700
                    Name ="Bezeichnungsfeld54"
                    Caption ="Fachpl. Elektro"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6747
                    LayoutCachedTop =390
                    LayoutCachedWidth =7881
                    LayoutCachedHeight =660
                End
                Begin Label
                    TextAlign =2
                    Left =7993
                    Top =390
                    Width =1134
                    Height =270
                    FontWeight =700
                    Name ="Bezeichnungsfeld55"
                    Caption ="Fachpl. H/L/S"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7993
                    LayoutCachedTop =390
                    LayoutCachedWidth =9127
                    LayoutCachedHeight =660
                End
                Begin Label
                    TextAlign =2
                    Left =9239
                    Top =390
                    Width =1134
                    Height =270
                    FontWeight =700
                    Name ="Bezeichnungsfeld56"
                    Caption ="Vermietung"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =9239
                    LayoutCachedTop =390
                    LayoutCachedWidth =10373
                    LayoutCachedHeight =660
                End
                Begin Label
                    Top =396
                    Width =1650
                    Height =270
                    FontWeight =700
                    Name ="Bezeichnungsfeld57"
                    Caption ="Liegenschaft"
                    FontName ="Arial Narrow"
                    LayoutCachedTop =396
                    LayoutCachedWidth =1650
                    LayoutCachedHeight =666
                End
                Begin Line
                    BorderWidth =2
                    Top =733
                    Width =10371
                    Name ="Linie58"
                    LayoutCachedTop =733
                    LayoutCachedWidth =10371
                    LayoutCachedHeight =733
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin Label
                    SpecialEffect =5
                    TextAlign =2
                    Left =4262
                    Top =60
                    Width =6105
                    Height =300
                    FontWeight =700
                    Name ="Bezeichnungsfeld61"
                    Caption ="Verantwortung zu .."
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =4262
                    LayoutCachedTop =60
                    LayoutCachedWidth =10367
                    LayoutCachedHeight =360
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =396
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextAlign =1
                    Width =4215
                    Height =255
                    Name ="Text40"
                    ControlSource ="Liegenschaft"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedWidth =4215
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =4260
                    Width =1134
                    Height =255
                    ColumnWidth =3735
                    TabIndex =1
                    Name ="obj_V"
                    ControlSource ="obj_V"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4260
                    LayoutCachedWidth =5394
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =5506
                    Width =1134
                    Height =255
                    ColumnWidth =3735
                    TabIndex =2
                    Name ="GS_V"
                    ControlSource ="GS_V"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5506
                    LayoutCachedWidth =6640
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =6752
                    Width =1134
                    Height =255
                    ColumnWidth =3735
                    TabIndex =3
                    Name ="FP_El"
                    ControlSource ="FP_El"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =6752
                    LayoutCachedWidth =7886
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7998
                    Width =1134
                    Height =255
                    ColumnWidth =3735
                    TabIndex =4
                    Name ="FP_HLS"
                    ControlSource ="FP_HLS"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7998
                    LayoutCachedWidth =9132
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =9244
                    Width =1134
                    Height =255
                    ColumnWidth =3735
                    TabIndex =5
                    Name ="Verm_V"
                    ControlSource ="Verm_V"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =9244
                    LayoutCachedWidth =10378
                    LayoutCachedHeight =255
                End
                Begin Line
                    Top =315
                    Width =10371
                    Name ="Linie60"
                    LayoutCachedTop =315
                    LayoutCachedWidth =10371
                    LayoutCachedHeight =315
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
            End
        End
        Begin PageFooter
            Height =498
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =1
                    Top =56
                    Width =4421
                    Height =270
                    FontSize =8
                    Name ="Text17"
                    ControlSource ="=Now()"
                    Format ="Long Date"
                    FontName ="Arial Narrow"

                    LayoutCachedTop =56
                    LayoutCachedWidth =4421
                    LayoutCachedHeight =326
                End
                Begin TextBox
                    TextAlign =3
                    Left =4535
                    Top =56
                    Width =4421
                    Height =270
                    FontSize =8
                    TabIndex =1
                    Name ="Text18"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =4535
                    LayoutCachedTop =56
                    LayoutCachedWidth =8956
                    LayoutCachedHeight =326
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =0
            Name ="Berichtsfuß"
        End
    End
End
CodeBehindForm
' See "Objektverantwortung_Alle.cls"
