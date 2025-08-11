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
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =14960
    DatasheetFontHeight =10
    ItemSuffix =210
    Left =13395
    Top =19470
    Right =28350
    Bottom =23325
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x9e22e917ed02e540
    End
    RecordSource ="SELECT Aufträge.*, Aufträge.ID_Hauptauftr FROM Aufträge WHERE (((Aufträge.ID_Hau"
        "ptauftr)=F_Variable(\"lng_ID_Verg_Vorl\"))) ORDER BY Aufträge.Auftr_Datum, Auftr"
        "äge.ID_Auftrag;"
    Caption ="Vergabe-Vorlage"
    OnCurrent ="[Event Procedure]"
    AfterUpdate ="[Event Procedure]"
    DatasheetFontName ="Arial"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    PictureSizeMode =1
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =3
            FontSize =9
            FontWeight =700
            ForeColor =10040879
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
            LabelAlign =3
            TextAlign =1
            BorderLineStyle =0
            BackStyle =0
            Width =3228
            Height =270
            LabelX =-191
            FontSize =9
            BorderColor =12632256
            ForeColor =10040879
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
            AutoLabel = NotDefault
            TextAlign =1
            BorderLineStyle =0
            BackStyle =0
            Width =3228
            Height =270
            LabelX =-1701
            FontSize =9
            BorderColor =12632256
            ForeColor =10040879
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
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin FormHeader
            Height =453
            BackColor =16514043
            Name ="Formularkopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =11895
                    Top =75
                    Width =3000
                    Height =255
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld167"
                    Caption ="Begründung zum Nachtrag:"
                    LayoutCachedLeft =11895
                    LayoutCachedTop =75
                    LayoutCachedWidth =14895
                    LayoutCachedHeight =330
                    ColumnStart =4
                    ColumnEnd =4
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =7140
                    Top =75
                    Width =1260
                    Height =255
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld166"
                    Caption ="Auftragswert:"
                    LayoutCachedLeft =7140
                    LayoutCachedTop =75
                    LayoutCachedWidth =8400
                    LayoutCachedHeight =330
                    ColumnStart =1
                    ColumnEnd =1
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =8505
                    Top =75
                    Width =1395
                    Height =255
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld169"
                    Caption ="Auftragsart:"
                    LayoutCachedLeft =8505
                    LayoutCachedTop =75
                    LayoutCachedWidth =9900
                    LayoutCachedHeight =330
                    ColumnStart =2
                    ColumnEnd =2
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =10020
                    Top =75
                    Width =1785
                    Height =255
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld170"
                    Caption ="Vergabeart:"
                    LayoutCachedLeft =10020
                    LayoutCachedTop =75
                    LayoutCachedWidth =11805
                    LayoutCachedHeight =330
                    ColumnStart =3
                    ColumnEnd =3
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =165
                    Top =75
                    Width =918
                    Height =255
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld162"
                    Caption ="Auftr.-Datum:"
                    LayoutCachedLeft =165
                    LayoutCachedTop =75
                    LayoutCachedWidth =1083
                    LayoutCachedHeight =330
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin Line
                    BorderWidth =2
                    OverlapFlags =85
                    Left =120
                    Top =390
                    Width =14728
                    Name ="Linie189"
                    LayoutCachedLeft =120
                    LayoutCachedTop =390
                    LayoutCachedWidth =14848
                    LayoutCachedHeight =390
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =1125
                    Top =75
                    Width =1290
                    Height =255
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld163"
                    Caption ="Auftragsinhalt:"
                    LayoutCachedLeft =1125
                    LayoutCachedTop =75
                    LayoutCachedWidth =2415
                    LayoutCachedHeight =330
                End
                Begin Label
                    OverlapFlags =85
                    Left =2940
                    Top =75
                    Width =585
                    Height =255
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld164"
                    Caption ="Firma:"
                    LayoutCachedLeft =2940
                    LayoutCachedTop =75
                    LayoutCachedWidth =3525
                    LayoutCachedHeight =330
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =0
                    Left =5385
                    Top =75
                    Width =1215
                    Height =255
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld165"
                    Caption ="Firmensitz:"
                    LayoutCachedLeft =5385
                    LayoutCachedTop =75
                    LayoutCachedWidth =6600
                    LayoutCachedHeight =330
                End
                Begin Label
                    OverlapFlags =85
                    Left =4705
                    Top =75
                    Width =585
                    Height =255
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld209"
                    Caption ="PLZ:"
                    LayoutCachedLeft =4705
                    LayoutCachedTop =75
                    LayoutCachedWidth =5290
                    LayoutCachedHeight =330
                End
            End
        End
        Begin Section
            Height =283
            BackColor =16514043
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =3
                    BackStyle =1
                    IMESentenceMode =3
                    Left =7125
                    Width =1260
                    Height =255
                    ColumnWidth =3180
                    FontSize =8
                    TabIndex =5
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Wert Auftrag"
                    ControlSource ="Wert Auftrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="Wert_Auftrag"

                    LayoutCachedLeft =7125
                    LayoutCachedWidth =8385
                    LayoutCachedHeight =255
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                    CurrencySymbol ="€"
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    BackStyle =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =8490
                    Width =1395
                    Height =255
                    ColumnWidth =1965
                    FontSize =8
                    TabIndex =6
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="KF_Auftragsart"
                    ControlSource ="Auftragsart"
                    RowSourceType ="Value List"
                    RowSource ="1;\"Hauptauftrag\";2;\"Nachtrag\""
                    ColumnWidths ="0"
                    AllowValueListEdits =1

                    LayoutCachedLeft =8490
                    LayoutCachedWidth =9885
                    LayoutCachedHeight =255
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    BackStyle =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =10005
                    Width =1785
                    Height =255
                    ColumnWidth =3705
                    FontSize =8
                    TabIndex =7
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Vergabeart"
                    ControlSource ="Vergabeart"
                    RowSourceType ="Value List"
                    RowSource ="1;\"freihändige Vergabe\";2;\"beschränkte Ausschreibung\";3;\"öffentliche Aussch"
                        "reibung\";4;\"Nachtragsvergabe\""
                    ColumnWidths ="0"

                    LayoutCachedLeft =10005
                    LayoutCachedWidth =11790
                    LayoutCachedHeight =255
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    OverlapFlags =85
                    BackStyle =1
                    IMESentenceMode =3
                    Left =11880
                    Width =3000
                    Height =255
                    FontSize =8
                    TabIndex =8
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="TF_Begründung_Nachtrag"
                    ControlSource ="Begründung_Nachtrag"

                    LayoutCachedLeft =11880
                    LayoutCachedWidth =14880
                    LayoutCachedHeight =255
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    BackStyle =1
                    IMESentenceMode =3
                    Left =1190
                    Width =1698
                    Height =255
                    FontSize =8
                    TabIndex =1
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="TF_Auftragsinhalt"
                    ControlSource ="Auftragsinhalt"
                    OnExit ="=Aenderung_Fa_Daten()"

                    LayoutCachedLeft =1190
                    LayoutCachedWidth =2888
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    OverlapFlags =85
                    BackStyle =1
                    IMESentenceMode =3
                    Left =150
                    Width =918
                    Height =255
                    ColumnWidth =3330
                    FontSize =8
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="TF_Auftr_Datum"
                    ControlSource ="Auftr_Datum"

                    LayoutCachedLeft =150
                    LayoutCachedWidth =1068
                    LayoutCachedHeight =255
                    RowStart =1
                    RowEnd =1
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    BackStyle =1
                    IMESentenceMode =3
                    Left =2940
                    Width =1668
                    Height =255
                    ColumnWidth =3240
                    ColumnOrder =1
                    FontSize =8
                    TabIndex =2
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="TF_Firma"
                    ControlSource ="Firma"
                    OnExit ="=Aenderung_Fa_Daten()"

                    LayoutCachedLeft =2940
                    LayoutCachedWidth =4608
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =5385
                    Width =1623
                    Height =255
                    ColumnOrder =2
                    FontSize =8
                    TabIndex =4
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="TF_Firmensitz"
                    ControlSource ="Firmensitz"
                    OnExit ="=Aenderung_Fa_Daten()"

                    LayoutCachedLeft =5385
                    LayoutCachedWidth =7008
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =4705
                    Width =619
                    Height =255
                    FontSize =8
                    TabIndex =3
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Text207"
                    ControlSource ="PLZ"
                    Format ="00000"
                    ValidationRule ="<100000"
                    ValidationText ="Ungültige PLZ"
                    OnExit ="=Aenderung_Fa_Daten()"

                    LayoutCachedLeft =4705
                    LayoutCachedWidth =5324
                    LayoutCachedHeight =255
                End
            End
        End
        Begin FormFooter
            Height =850
            BackColor =16514043
            Name ="Formularfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Line
                    BorderWidth =2
                    OverlapFlags =85
                    Left =120
                    Top =60
                    Width =14728
                    Name ="Linie190"
                    LayoutCachedLeft =120
                    LayoutCachedTop =60
                    LayoutCachedWidth =14848
                    LayoutCachedHeight =60
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    BorderWidth =2
                    OverlapFlags =85
                    TextAlign =3
                    IMESentenceMode =3
                    Left =6450
                    Top =450
                    Width =1935
                    Height =300
                    FontSize =8
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Text194"
                    ControlSource ="=Sum([Wert Auftrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =6450
                    LayoutCachedTop =450
                    LayoutCachedWidth =8385
                    LayoutCachedHeight =750
                    BackThemeColorIndex =3
                    BackShade =90.0
                    BorderThemeColorIndex =1
                    BorderShade =75.0
                    GridlineThemeColorIndex =1
                    GridlineShade =65.0
                    CurrencySymbol ="€"
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =8560
                    Top =453
                    Width =3150
                    Height =345
                    FontWeight =700
                    TabIndex =1
                    ForeColor =4138256
                    Name ="BS_Nachtrag_Neu"
                    Caption ="Neuer Nachtragsauftrag"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =8560
                    LayoutCachedTop =453
                    LayoutCachedWidth =11710
                    LayoutCachedHeight =798
                    ForeShade =50.0
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =87
                    Left =11708
                    Top =450
                    Width =3150
                    Height =345
                    FontWeight =700
                    TabIndex =2
                    ForeColor =4138256
                    Name ="BS_Nachtrag_Loeschen"
                    Caption ="Nachtragsauftrag löschen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =11708
                    LayoutCachedTop =450
                    LayoutCachedWidth =14858
                    LayoutCachedHeight =795
                    ForeShade =50.0
                    Overlaps =1
                End
                Begin Label
                    OverlapFlags =85
                    Left =3233
                    Top =450
                    Width =3007
                    Height =300
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld196"
                    Caption ="Summe Hauptauftrag + Nachträge: "
                    LayoutCachedLeft =3233
                    LayoutCachedTop =450
                    LayoutCachedWidth =6240
                    LayoutCachedHeight =750
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_050_20_UF_VergabeVorlage.cls"
