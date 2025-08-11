Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DefaultView =0
    PageHeader =1
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =15654
    DatasheetFontHeight =10
    ItemSuffix =133
    Left =5250
    Top =2235
    RecSrcDt = Begin
        0xbd6301223519e540
    End
    RecordSource ="qry_400_10_10_DH_rpt_Vergabevorlagen"
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
            FontWeight =700
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
            Height =255
            LabelX =-1133
            FontSize =9
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
            ControlSource ="Bez"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Maßnahme"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="Auftragsinhalt"
        End
        Begin BreakLevel
            ControlSource ="Auftr_Datum"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1530
            Name ="Berichtskopf"
            Begin
                Begin Rectangle
                    BackStyle =1
                    OldBorderStyle =0
                    Top =120
                    Width =8223
                    Height =1298
                    Name ="Rechteck89"
                    LayoutCachedTop =120
                    LayoutCachedWidth =8223
                    LayoutCachedHeight =1418
                    BackThemeColorIndex =1
                    BackShade =95.0
                End
                Begin TextBox
                    TextAlign =1
                    IMESentenceMode =3
                    Left =165
                    Top =190
                    Width =7941
                    Height =375
                    ColumnOrder =0
                    FontSize =14
                    FontWeight =700
                    Name ="Text81"
                    ControlSource ="=\"Vergabevorlagen ab \" & Format(F_Variable(\"cur_Auftr_Minwert\"),\"#,##0 €\")"

                    LayoutCachedLeft =165
                    LayoutCachedTop =190
                    LayoutCachedWidth =8106
                    LayoutCachedHeight =565
                End
                Begin TextBox
                    TextAlign =1
                    IMESentenceMode =3
                    Left =165
                    Top =565
                    Width =7941
                    Height =375
                    ColumnOrder =1
                    FontSize =14
                    FontWeight =700
                    TabIndex =1
                    Name ="Text83"
                    ControlSource ="=\"zwischen \" & F_Variable(\"dt_Start_Datum\") & \" und \" & F_Variable(\"dt_En"
                        "de_DAtum\")"

                    LayoutCachedLeft =165
                    LayoutCachedTop =565
                    LayoutCachedWidth =8106
                    LayoutCachedHeight =940
                End
                Begin TextBox
                    TextAlign =1
                    IMESentenceMode =3
                    Left =165
                    Top =940
                    Width =7941
                    Height =375
                    ColumnOrder =2
                    FontSize =14
                    FontWeight =700
                    TabIndex =2
                    Name ="Text123"
                    ControlSource ="=IIf(F_Variable(\"bln_Nur_CAS_Firmen\")=True,\"Firmen aus Castrop-Rauxel\",\"All"
                        "e Firmen\")"

                    LayoutCachedLeft =165
                    LayoutCachedTop =940
                    LayoutCachedWidth =8106
                    LayoutCachedHeight =1315
                End
            End
        End
        Begin PageHeader
            Height =396
            Name ="Seitenkopf"
            Begin
                Begin TextBox
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2211
                    Top =56
                    Width =2046
                    FontWeight =700
                    Name ="Text85"
                    ControlSource ="=\"Aufträge ab \" & Format(F_Variable(\"cur_Auftr_Minwert\"),\"#,##0 €\")"

                    LayoutCachedLeft =2211
                    LayoutCachedTop =56
                    LayoutCachedWidth =4257
                    LayoutCachedHeight =311
                End
                Begin Label
                    Left =56
                    Top =56
                    Width =1990
                    Height =270
                    Name ="Bezeichnungsfeld88"
                    Caption ="Vergabevorlagen für"
                    LayoutCachedLeft =56
                    LayoutCachedTop =56
                    LayoutCachedWidth =2046
                    LayoutCachedHeight =326
                End
                Begin TextBox
                    TextAlign =2
                    IMESentenceMode =3
                    Left =8163
                    Top =56
                    Width =4243
                    Height =240
                    FontWeight =700
                    TabIndex =1
                    Name ="Text124"
                    ControlSource ="=IIf(F_Variable(\"bln_Nur_CAS_Firmen\")=True,\"Firmen aus Castrop-Rauxel\",\"All"
                        "e Firmen\")"

                    LayoutCachedLeft =8163
                    LayoutCachedTop =56
                    LayoutCachedWidth =12406
                    LayoutCachedHeight =296
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =4365
                    Top =56
                    Width =3681
                    Height =240
                    FontWeight =700
                    TabIndex =2
                    Name ="Text132"
                    ControlSource ="=\"zwischen \" & F_Variable(\"dt_Start_Datum\") & \" und \" & F_Variable(\"dt_En"
                        "de_DAtum\")"

                    LayoutCachedLeft =4365
                    LayoutCachedTop =56
                    LayoutCachedWidth =8046
                    LayoutCachedHeight =296
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            RepeatSection = NotDefault
            Height =566
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    Top =120
                    Width =14295
                    Height =330
                    ColumnWidth =3735
                    FontSize =12
                    FontWeight =700
                    Name ="Bezeichung"
                    ControlSource ="Bez"

                    LayoutCachedTop =120
                    LayoutCachedWidth =14295
                    LayoutCachedHeight =450
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            RepeatSection = NotDefault
            Height =850
            BreakLevel =1
            Name ="Gruppenkopf1"
            Begin
                Begin TextBox
                    Left =1485
                    Top =120
                    Width =12852
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"

                    LayoutCachedLeft =1485
                    LayoutCachedTop =120
                    LayoutCachedWidth =14337
                    LayoutCachedHeight =405
                    Begin
                        Begin Label
                            Left =113
                            Top =120
                            Width =1200
                            Height =285
                            FontSize =10
                            Name ="Bezeichnungsfeld91"
                            Caption ="Maßnahme:"
                            LayoutCachedLeft =113
                            LayoutCachedTop =120
                            LayoutCachedWidth =1313
                            LayoutCachedHeight =405
                        End
                    End
                End
                Begin Line
                    BorderWidth =1
                    Left =120
                    Top =750
                    Width =15534
                    BorderColor =10855845
                    Name ="Linie107"
                    LayoutCachedLeft =120
                    LayoutCachedTop =750
                    LayoutCachedWidth =15654
                    LayoutCachedHeight =750
                End
                Begin Label
                    Left =113
                    Top =453
                    Width =735
                    Height =240
                    Name ="Bezeichnungsfeld113"
                    Caption ="Gewerk"
                    LayoutCachedLeft =113
                    LayoutCachedTop =453
                    LayoutCachedWidth =848
                    LayoutCachedHeight =693
                End
                Begin Label
                    Left =3525
                    Top =453
                    Width =735
                    Height =240
                    Name ="Bezeichnungsfeld115"
                    Caption ="Firma"
                    LayoutCachedLeft =3525
                    LayoutCachedTop =453
                    LayoutCachedWidth =4260
                    LayoutCachedHeight =693
                End
                Begin Label
                    Left =5393
                    Top =453
                    Width =960
                    Height =240
                    Name ="Bezeichnungsfeld116"
                    Caption ="Firmensitz"
                    LayoutCachedLeft =5393
                    LayoutCachedTop =453
                    LayoutCachedWidth =6353
                    LayoutCachedHeight =693
                End
                Begin Label
                    Left =8221
                    Top =458
                    Width =1308
                    Height =240
                    Name ="Bezeichnungsfeld117"
                    Caption ="Auftragswert"
                    LayoutCachedLeft =8221
                    LayoutCachedTop =458
                    LayoutCachedWidth =9529
                    LayoutCachedHeight =698
                End
                Begin Label
                    TextAlign =0
                    Left =10774
                    Top =453
                    Width =1687
                    Height =240
                    Name ="Bezeichnungsfeld119"
                    Caption ="Vergabeart"
                    LayoutCachedLeft =10774
                    LayoutCachedTop =453
                    LayoutCachedWidth =12461
                    LayoutCachedHeight =693
                End
                Begin Label
                    TextAlign =0
                    Left =13037
                    Top =450
                    Width =2615
                    Height =240
                    Name ="Bezeichnungsfeld120"
                    Caption ="Begründung für Nachtrag"
                    LayoutCachedLeft =13037
                    LayoutCachedTop =450
                    LayoutCachedWidth =15652
                    LayoutCachedHeight =690
                End
                Begin Label
                    TextAlign =0
                    Left =9600
                    Top =453
                    Width =1052
                    Height =248
                    Name ="Bezeichnungsfeld118"
                    Caption ="Auftragsart"
                    LayoutCachedLeft =9600
                    LayoutCachedTop =453
                    LayoutCachedWidth =10652
                    LayoutCachedHeight =701
                End
                Begin Label
                    TextAlign =2
                    Left =7226
                    Top =450
                    Width =780
                    Height =240
                    Name ="Bezeichnungsfeld129"
                    Caption ="Datum"
                    LayoutCachedLeft =7226
                    LayoutCachedTop =450
                    LayoutCachedWidth =8006
                    LayoutCachedHeight =690
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =61
            BreakLevel =2
            Name ="Gruppenkopf2"
            Begin
                Begin TextBox
                    TextAlign =3
                    BackStyle =1
                    IMESentenceMode =3
                    Left =8160
                    Top =53
                    Width =1361
                    Height =2
                    FontSize =10
                    FontWeight =700
                    BackColor =967423
                    Name ="TF_Sum_Gew_vorher"
                    ControlSource ="=[TF_Sum_Auftr]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =8160
                    LayoutCachedTop =53
                    LayoutCachedWidth =9521
                    LayoutCachedHeight =55
                    CurrencySymbol ="€"
                End
                Begin Line
                    LineSlant = NotDefault
                    Left =120
                    Top =53
                    Width =15534
                    BorderColor =10855845
                    Name ="Linie130"
                    LayoutCachedLeft =120
                    LayoutCachedTop =53
                    LayoutCachedWidth =15654
                    LayoutCachedHeight =53
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
                    HideDuplicates = NotDefault
                    IMESentenceMode =3
                    Left =113
                    Width =3343
                    Height =285
                    ColumnWidth =3495
                    FontSize =10
                    FontWeight =700
                    Name ="Auftragsinhalt"
                    ControlSource ="Auftragsinhalt"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =113
                    LayoutCachedWidth =3456
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    HideDuplicates = NotDefault
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3525
                    Width =1806
                    Height =285
                    ColumnWidth =3240
                    FontSize =10
                    TabIndex =1
                    Name ="Firma"
                    ControlSource ="Firma"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =3525
                    LayoutCachedWidth =5331
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    HideDuplicates = NotDefault
                    TextAlign =1
                    IMESentenceMode =3
                    Left =5393
                    Width =1766
                    Height =285
                    FontSize =10
                    TabIndex =2
                    Name ="Firmensitz"
                    ControlSource ="FS"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5393
                    LayoutCachedWidth =7159
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =8154
                    Width =1361
                    Height =285
                    ColumnWidth =2220
                    FontSize =10
                    TabIndex =3
                    Name ="TF_Wert Auftrag"
                    ControlSource ="Wert Auftrag"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    EventProcPrefix ="TF_Wert_Auftrag"
                    ConditionalFormat = Begin
                        0x010000008a000000010000000000000005000000000000001400000001000100 ,
                        0x00000000ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x5b00540046005f00530075006d005f004700650077005f0076006f0072006800 ,
                        0x650072005d0000000000
                    End

                    LayoutCachedLeft =8154
                    LayoutCachedWidth =9515
                    LayoutCachedHeight =285
                    ConditionalFormat14 = Begin
                        0x01000100000000000000050000000100010000000000ffffff00130000005b00 ,
                        0x540046005f00530075006d005f004700650077005f0076006f00720068006500 ,
                        0x72005d00000000000000000000000000000000000000000000
                    End
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    IMESentenceMode =3
                    Left =13037
                    Width =2615
                    Height =285
                    FontSize =10
                    TabIndex =4
                    Name ="Begründung_Nachtrag"
                    ControlSource ="Begründung_Nachtrag"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =13037
                    LayoutCachedWidth =15652
                    LayoutCachedHeight =285
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    RowSourceTypeInt =1
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =10774
                    Width =2158
                    Height =285
                    ColumnWidth =3705
                    FontSize =10
                    TabIndex =6
                    Name ="Kombinationsfeld109"
                    ControlSource ="Vergabeart"
                    RowSourceType ="Value List"
                    RowSource ="1;\"freihändige Vergabe\";2;\"beschränkte Ausschreibung\";3;\"öffentliche Aussch"
                        "reibung\";4;\"Nachtragsvergabe\""
                    ColumnWidths ="0"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =10774
                    LayoutCachedWidth =12932
                    LayoutCachedHeight =285
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    RowSourceTypeInt =1
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =9600
                    Width =1065
                    Height =285
                    ColumnWidth =1965
                    FontSize =10
                    TabIndex =5
                    Name ="Kombinationsfeld111"
                    ControlSource ="Auftragsart"
                    RowSourceType ="Value List"
                    RowSource ="1;\"Hauptauftrag\";2;\"Nachtrag\""
                    ColumnWidths ="0"
                    FontName ="Arial Narrow"
                    AllowValueListEdits =1

                    LayoutCachedLeft =9600
                    LayoutCachedWidth =10665
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    HideDuplicates = NotDefault
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7222
                    Width =889
                    Height =285
                    FontSize =10
                    TabIndex =7
                    Name ="Text128"
                    ControlSource ="Auftr_Datum"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7222
                    LayoutCachedWidth =8111
                    LayoutCachedHeight =285
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =453
            BreakLevel =2
            OnFormat ="[Event Procedure]"
            Name ="Gruppenfuß2"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =3
                    IMESentenceMode =3
                    Left =8081
                    Top =30
                    Width =1438
                    FontSize =10
                    FontWeight =700
                    Name ="TF_Sum_Auftr"
                    ControlSource ="=Sum([Wert Auftrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =8081
                    LayoutCachedTop =30
                    LayoutCachedWidth =9519
                    LayoutCachedHeight =285
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextAlign =3
                    IMESentenceMode =3
                    Left =969
                    Top =30
                    Width =6937
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    Name ="BF_Sum_Auftr"
                    ControlSource ="=\"Summe zu \" & [Auftragsinhalt] & \":\""
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =969
                    LayoutCachedTop =30
                    LayoutCachedWidth =7906
                    LayoutCachedHeight =285
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =510
            BreakLevel =1
            Name ="Gruppenfuß0"
            Begin
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7647
                    Top =120
                    Width =1881
                    Height =270
                    FontSize =10
                    FontWeight =700
                    Name ="TF_Sum_Massn"
                    ControlSource ="=Sum([Wert Auftrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =7647
                    LayoutCachedTop =120
                    LayoutCachedWidth =9528
                    LayoutCachedHeight =390
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            TextAlign =3
                            Left =4872
                            Top =120
                            Width =2663
                            Height =285
                            FontSize =10
                            Name ="Bezeichnungsfeld101"
                            Caption ="Summe Maßnahme:"
                            LayoutCachedLeft =4872
                            LayoutCachedTop =120
                            LayoutCachedWidth =7535
                            LayoutCachedHeight =405
                        End
                    End
                End
                Begin Line
                    BorderWidth =1
                    Left =113
                    Top =60
                    Width =15534
                    BorderColor =10855845
                    Name ="Linie108"
                    LayoutCachedLeft =113
                    LayoutCachedTop =60
                    LayoutCachedWidth =15647
                    LayoutCachedHeight =60
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =793
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7278
                    Top =113
                    Width =2301
                    Height =345
                    FontSize =12
                    FontWeight =700
                    Name ="Text102"
                    ControlSource ="=Sum([Wert Auftrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =7278
                    LayoutCachedTop =113
                    LayoutCachedWidth =9579
                    LayoutCachedHeight =458
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            TextAlign =3
                            Left =4818
                            Top =113
                            Width =2460
                            Height =345
                            FontSize =12
                            Name ="Bezeichnungsfeld103"
                            Caption ="Summe Gebäudeteil:"
                            LayoutCachedLeft =4818
                            LayoutCachedTop =113
                            LayoutCachedWidth =7278
                            LayoutCachedHeight =458
                        End
                    End
                End
            End
        End
        Begin PageFooter
            Height =330
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =1
                    Top =60
                    Width =4421
                    Height =270
                    FontSize =8
                    Name ="Text17"
                    ControlSource ="=Now()"
                    Format ="Long Date"

                    LayoutCachedTop =60
                    LayoutCachedWidth =4421
                    LayoutCachedHeight =330
                End
                Begin TextBox
                    TextAlign =3
                    Left =11233
                    Top =60
                    Width =4421
                    Height =270
                    FontSize =8
                    TabIndex =1
                    Name ="Text18"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"

                    LayoutCachedLeft =11233
                    LayoutCachedTop =60
                    LayoutCachedWidth =15654
                    LayoutCachedHeight =330
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =908
            Name ="Berichtsfuß"
            Begin
                Begin Rectangle
                    BackStyle =1
                    OldBorderStyle =0
                    Left =1702
                    Top =170
                    Width =8223
                    Height =735
                    Name ="Rechteck127"
                    LayoutCachedLeft =1702
                    LayoutCachedTop =170
                    LayoutCachedWidth =9925
                    LayoutCachedHeight =905
                    BackThemeColorIndex =1
                    BackShade =95.0
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =6457
                    Top =397
                    Width =3118
                    Height =345
                    FontSize =14
                    FontWeight =700
                    Name ="Text125"
                    ControlSource ="=Sum([Wert Auftrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =6457
                    LayoutCachedTop =397
                    LayoutCachedWidth =9575
                    LayoutCachedHeight =742
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            TextAlign =3
                            Left =3060
                            Top =397
                            Width =3059
                            Height =345
                            FontSize =14
                            Name ="Bezeichnungsfeld126"
                            Caption ="Summe gesamt:"
                            LayoutCachedLeft =3060
                            LayoutCachedTop =397
                            LayoutCachedWidth =6119
                            LayoutCachedHeight =742
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_400_10_10_Vergabevorlagen.cls"
