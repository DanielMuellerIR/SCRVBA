Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    RecordLocks =2
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =14853
    DatasheetFontHeight =11
    ItemSuffix =61
    Left =9255
    Top =3210
    RecSrcDt = Begin
        0x279844300e09e540
    End
    RecordSource ="qry_rpt_300_10_10_DH_Verwbericht_Massn_Kosten"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    FilterOnLoad =0
    FitToPage =1
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    DatasheetBackThemeColorIndex =1
    BorderThemeColorIndex =3
    ThemeFontIndex =1
    ForeThemeColorIndex =0
    AlternateBackThemeColorIndex =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            FontSize =10
            FontWeight =700
            FontName ="Arial Narrow"
            BackThemeColorIndex =1
            BorderThemeColorIndex =0
            BorderTint =50.0
            ForeThemeColorIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Rectangle
            BorderLineStyle =0
            Width =850
            Height =850
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
            BorderThemeColorIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            BorderLineStyle =0
            Width =1701
            Height =285
            LabelX =-1701
            FontSize =10
            FontName ="Arial Narrow"
            AsianLineBreak =1
            ShowDatePicker =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin FormHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =1360
            Name ="Berichtskopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    Top =226
                    Width =8340
                    Height =420
                    FontSize =16
                    BackColor =15921906
                    Name ="Bezeichnungsfeld39"
                    Caption ="Verwaltungsbericht: Maßnahmekosten"
                    GridlineColor =10921638
                    LayoutCachedTop =226
                    LayoutCachedWidth =8340
                    LayoutCachedHeight =646
                    BackShade =95.0
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =50.0
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =11571
                    Top =226
                    Width =2946
                    Height =420
                    FontSize =16
                    FontWeight =700
                    BackColor =15921906
                    BorderColor =8355711
                    Name ="Text48"
                    ControlSource ="=\"Haushaltsjahr \" & F_Variable(\"lng_Kalk_Jahr\")"
                    GridlineColor =10921638

                    LayoutCachedLeft =11571
                    LayoutCachedTop =226
                    LayoutCachedWidth =14517
                    LayoutCachedHeight =646
                    BackShade =95.0
                    BorderShade =50.0
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    BorderWidth =1
                    IMESentenceMode =3
                    Top =1020
                    Width =8340
                    Height =225
                    TabIndex =1
                    Name ="TF_Hinweis"
                    ControlSource ="=Forms(\"Filter für Verwalt_Kosten_Massnahmen\")![TF_Hinweistext]"
                    GridlineColor =10921638
                    TextFormat =1

                    LayoutCachedTop =1020
                    LayoutCachedWidth =8340
                    LayoutCachedHeight =1245
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    Begin
                        Begin Label
                            Top =737
                            Width =2490
                            Height =255
                            BorderColor =8355711
                            Name ="BF_Hinweis"
                            Caption ="Hinweis zu dieser Auswertung:"
                            GridlineColor =10921638
                            LayoutCachedTop =737
                            LayoutCachedWidth =2490
                            LayoutCachedHeight =992
                        End
                    End
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =11571
                    Top =766
                    Width =2946
                    Height =420
                    FontSize =16
                    FontWeight =700
                    TabIndex =2
                    BackColor =15921906
                    BorderColor =8355711
                    Name ="Text58"
                    ControlSource ="=IIf(F_Variable(\"lng_Fin_quelle\")=1,\"alle Finanzquellen\",\"nur investiv\")"
                    GridlineColor =10921638

                    LayoutCachedLeft =11571
                    LayoutCachedTop =766
                    LayoutCachedWidth =14517
                    LayoutCachedHeight =1186
                    BackShade =95.0
                    BorderShade =50.0
                End
            End
        End
        Begin PageHeader
            Height =453
            Name ="Seitenkopfbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    Top =30
                    Width =1965
                    Height =270
                    FontSize =8
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld2"
                    Caption ="Liegenschaft -> Gebäudeteil"
                    GridlineColor =10921638
                    LayoutCachedTop =30
                    LayoutCachedWidth =1965
                    LayoutCachedHeight =300
                End
                Begin Label
                    Left =4875
                    Top =30
                    Width =825
                    Height =270
                    FontSize =8
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld4"
                    Caption ="Maßnahme"
                    GridlineColor =10921638
                    LayoutCachedLeft =4875
                    LayoutCachedTop =30
                    LayoutCachedWidth =5700
                    LayoutCachedHeight =300
                    ColumnStart =2
                    ColumnEnd =2
                End
                Begin Label
                    TextAlign =3
                    Left =13466
                    Top =30
                    Width =1275
                    Height =270
                    FontSize =8
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld7"
                    Caption ="bez. Rechnungen"
                    GridlineColor =10921638
                    LayoutCachedLeft =13466
                    LayoutCachedTop =30
                    LayoutCachedWidth =14741
                    LayoutCachedHeight =300
                    ColumnStart =5
                    ColumnEnd =5
                End
                Begin Line
                    BorderWidth =2
                    Top =375
                    Width =14742
                    Name ="Linie23"
                    GridlineColor =10921638
                    LayoutCachedTop =375
                    LayoutCachedWidth =14742
                    LayoutCachedHeight =375
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin Label
                    Left =8850
                    Top =30
                    Width =1140
                    Height =270
                    FontSize =8
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld54"
                    Caption ="Buchungsstelle"
                    GridlineColor =10921638
                    LayoutCachedLeft =8850
                    LayoutCachedTop =30
                    LayoutCachedWidth =9990
                    LayoutCachedHeight =300
                    ColumnStart =2
                    ColumnEnd =2
                End
                Begin Label
                    TextAlign =3
                    Left =10590
                    Top =30
                    Width =915
                    Height =270
                    FontSize =8
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld57"
                    Caption ="Finanzart"
                    GridlineColor =10921638
                    LayoutCachedLeft =10590
                    LayoutCachedTop =30
                    LayoutCachedWidth =11505
                    LayoutCachedHeight =300
                    ColumnStart =2
                    ColumnEnd =2
                End
                Begin Label
                    TextAlign =3
                    Left =12075
                    Top =60
                    Width =1065
                    Height =270
                    FontSize =8
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld60"
                    Caption ="HHR + Ansatz:"
                    GridlineColor =10921638
                    LayoutCachedLeft =12075
                    LayoutCachedTop =60
                    LayoutCachedWidth =13140
                    LayoutCachedHeight =330
                    ColumnStart =2
                    ColumnEnd =2
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =390
            Name ="Detailbereich"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Top =30
                    Width =4695
                    ColumnWidth =5835
                    FontSize =8
                    Name ="Gebäude"
                    ControlSource ="Objekt"
                    GridlineColor =10921638

                    LayoutCachedTop =30
                    LayoutCachedWidth =4695
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                End
                Begin TextBox
                    CanGrow = NotDefault
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =4875
                    Top =30
                    Width =3750
                    ColumnWidth =7620
                    FontSize =8
                    TabIndex =1
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"
                    GridlineColor =10921638

                    LayoutCachedLeft =4875
                    LayoutCachedTop =30
                    LayoutCachedWidth =8625
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =13391
                    Top =30
                    Width =1350
                    FontSize =8
                    TabIndex =2
                    Name ="Kosten (Offene Auftr plus bez Rechn)"
                    ControlSource ="bez_Rechnung"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="Kosten__Offene_Auftr_plus_bez_Rechn_"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000002000000000000000200000001000000 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =13391
                    LayoutCachedTop =30
                    LayoutCachedWidth =14741
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ColumnStart =5
                    ColumnEnd =5
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001000000ffffff00ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                    CurrencySymbol ="€"
                End
                Begin Line
                    BorderWidth =1
                    Top =375
                    Width =14742
                    Name ="Linie24"
                    GridlineColor =10921638
                    LayoutCachedTop =375
                    LayoutCachedWidth =14742
                    LayoutCachedHeight =375
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =8850
                    Top =30
                    Width =1311
                    ColumnWidth =7410
                    FontSize =8
                    TabIndex =3
                    Name ="Buchst"
                    ControlSource ="Buchungsstelle"
                    GridlineColor =10921638

                    LayoutCachedLeft =8850
                    LayoutCachedTop =30
                    LayoutCachedWidth =10161
                    LayoutCachedHeight =315
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =10485
                    Top =30
                    Width =1020
                    ColumnWidth =2610
                    FontSize =8
                    TabIndex =4
                    Name ="Finanzquelle"
                    ControlSource ="Finanzquelle"
                    GridlineColor =10921638

                    LayoutCachedLeft =10485
                    LayoutCachedTop =30
                    LayoutCachedWidth =11505
                    LayoutCachedHeight =315
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =11790
                    Top =30
                    Width =1350
                    FontSize =8
                    TabIndex =5
                    Name ="Text59"
                    ControlSource ="HHR_pl_Ansatz"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000002000000000000000200000001000000 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =11790
                    LayoutCachedTop =30
                    LayoutCachedWidth =13140
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001000000ffffff00ffffff00010000003000 ,
                        0x000000000000000000000000000000000000000000
                    End
                    CurrencySymbol ="€"
                End
            End
        End
        Begin PageFooter
            Height =450
            Name ="Seitenfußbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =13040
                    Top =165
                    Height =225
                    FontSize =8
                    FontWeight =700
                    BorderColor =10921638
                    Name ="Text45"
                    ControlSource ="=\"S. \" & [Page] & \" / \" & [Pages]"
                    GridlineColor =10921638

                    LayoutCachedLeft =13040
                    LayoutCachedTop =165
                    LayoutCachedWidth =14741
                    LayoutCachedHeight =390
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =1
                    IMESentenceMode =3
                    Top =165
                    Height =225
                    FontSize =8
                    FontWeight =700
                    TabIndex =1
                    BorderColor =10921638
                    Name ="Text47"
                    ControlSource ="=\"Stand: \" & Format(Now(),\"dd/mm/yyyy hh:nn\")"
                    GridlineColor =10921638

                    LayoutCachedTop =165
                    LayoutCachedWidth =1701
                    LayoutCachedHeight =390
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =963
            Name ="Berichtsfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Rectangle
                    Left =7995
                    Top =345
                    Width =6746
                    Height =567
                    BackColor =15921906
                    BorderColor =8355711
                    Name ="Rechteck44"
                    GridlineColor =10921638
                    LayoutCachedLeft =7995
                    LayoutCachedTop =345
                    LayoutCachedWidth =14741
                    LayoutCachedHeight =912
                    BackShade =95.0
                    BorderShade =50.0
                End
                Begin Label
                    TextAlign =3
                    Left =8625
                    Top =510
                    Width =825
                    Height =285
                    FontSize =8
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld41"
                    Caption ="Summen:"
                    GridlineColor =10921638
                    LayoutCachedLeft =8625
                    LayoutCachedTop =510
                    LayoutCachedWidth =9450
                    LayoutCachedHeight =795
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =9647
                    Top =510
                    Width =1545
                    FontSize =8
                    FontWeight =700
                    BorderColor =10921638
                    Name ="Text42"
                    ControlSource ="=Sum([HHR_pl_Ansatz])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    GridlineColor =10921638

                    LayoutCachedLeft =9647
                    LayoutCachedTop =510
                    LayoutCachedWidth =11192
                    LayoutCachedHeight =795
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    CurrencySymbol ="€"
                End
                Begin Line
                    BorderWidth =2
                    Top =30
                    Width =14742
                    Name ="Linie40"
                    GridlineColor =10921638
                    LayoutCachedTop =30
                    LayoutCachedWidth =14742
                    LayoutCachedHeight =30
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =12733
                    Top =517
                    Width =1875
                    FontSize =8
                    FontWeight =700
                    TabIndex =1
                    BorderColor =10921638
                    Name ="Text43"
                    ControlSource ="=Sum([bez_Rechnung])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    GridlineColor =10921638

                    LayoutCachedLeft =12733
                    LayoutCachedTop =517
                    LayoutCachedWidth =14608
                    LayoutCachedHeight =802
                    RowStart =1
                    RowEnd =1
                    ColumnStart =5
                    ColumnEnd =5
                    CurrencySymbol ="€"
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_300_10_10_Verwaltungsbericht_Massn_Kosten.cls"
