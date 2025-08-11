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
    ItemSuffix =137
    Left =7883
    Top =2340
    RecSrcDt = Begin
        0x0072fda55417e540
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
            ControlSource ="Fin_HK"
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
            Height =2154
            Name ="Berichtskopf"
            Begin
                Begin Rectangle
                    BackStyle =1
                    OldBorderStyle =0
                    Top =120
                    Width =8223
                    Height =1696
                    Name ="Rechteck89"
                    LayoutCachedTop =120
                    LayoutCachedWidth =8223
                    LayoutCachedHeight =1816
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
                    Top =1300
                    Width =7941
                    Height =375
                    FontSize =14
                    FontWeight =700
                    TabIndex =2
                    Name ="Text123"
                    ControlSource ="=IIf(F_Variable(\"bln_Nur_CAS_Firmen\")=True,\"Firmen aus Castrop-Rauxel\",\"All"
                        "e Firmen\")"

                    LayoutCachedLeft =165
                    LayoutCachedTop =1300
                    LayoutCachedWidth =8106
                    LayoutCachedHeight =1675
                End
                Begin Label
                    Left =165
                    Top =940
                    Width =7941
                    Height =360
                    FontSize =14
                    Name ="Bezeichnungsfeld130"
                    Caption ="Gruppiert nach Finanzherkunft"
                    LayoutCachedLeft =165
                    LayoutCachedTop =940
                    LayoutCachedWidth =8106
                    LayoutCachedHeight =1300
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
                    Left =2104
                    Top =45
                    Width =2151
                    FontWeight =700
                    Name ="Text85"
                    ControlSource ="=\"Aufträge ab \" & Format(F_Variable(\"cur_Auftr_Minwert\"),\"#,##0 €\")"

                    LayoutCachedLeft =2104
                    LayoutCachedTop =45
                    LayoutCachedWidth =4255
                    LayoutCachedHeight =300
                End
                Begin Label
                    Top =45
                    Width =1991
                    Height =270
                    Name ="Bezeichnungsfeld88"
                    Caption ="Vergabevorlagen für"
                    LayoutCachedTop =45
                    LayoutCachedWidth =1991
                    LayoutCachedHeight =315
                End
                Begin TextBox
                    TextAlign =2
                    IMESentenceMode =3
                    Left =8391
                    Top =45
                    Width =3117
                    Height =240
                    FontWeight =700
                    TabIndex =1
                    Name ="Text124"
                    ControlSource ="=IIf(F_Variable(\"bln_Nur_CAS_Firmen\")=True,\"Firmen aus Castrop-Rauxel\",\"All"
                        "e Firmen\")"

                    LayoutCachedLeft =8391
                    LayoutCachedTop =45
                    LayoutCachedWidth =11508
                    LayoutCachedHeight =285
                End
                Begin Label
                    TextAlign =3
                    Left =12018
                    Top =45
                    Width =2685
                    Height =248
                    Name ="Bezeichnungsfeld131"
                    Caption ="Gruppiert nach Finanzherkunft"
                    LayoutCachedLeft =12018
                    LayoutCachedTop =45
                    LayoutCachedWidth =14703
                    LayoutCachedHeight =293
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =4422
                    Top =45
                    Width =3681
                    Height =240
                    FontWeight =700
                    TabIndex =2
                    Name ="Text132"
                    ControlSource ="=\"zwischen \" & F_Variable(\"dt_Start_Datum\") & \" und \" & F_Variable(\"dt_En"
                        "de_DAtum\")"

                    LayoutCachedLeft =4422
                    LayoutCachedTop =45
                    LayoutCachedWidth =8103
                    LayoutCachedHeight =285
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =737
            Name ="Gruppenkopf2"
            Begin
                Begin TextBox
                    TextAlign =1
                    BackStyle =1
                    IMESentenceMode =3
                    Left =1894
                    Top =173
                    Width =4561
                    Height =308
                    ColumnWidth =2393
                    FontSize =12
                    FontWeight =700
                    Name ="Fin_HK"
                    ControlSource ="Fin_HK"

                    LayoutCachedLeft =1894
                    LayoutCachedTop =173
                    LayoutCachedWidth =6455
                    LayoutCachedHeight =481
                    BackThemeColorIndex =1
                    BackShade =95.0
                    Begin
                        Begin Label
                            BackStyle =1
                            TextAlign =0
                            Left =56
                            Top =173
                            Width =1838
                            Height =308
                            FontSize =12
                            Name ="Bezeichnungsfeld125"
                            Caption ="Finanzherkunft:"
                            LayoutCachedLeft =56
                            LayoutCachedTop =173
                            LayoutCachedWidth =1894
                            LayoutCachedHeight =481
                            BackThemeColorIndex =1
                            BackShade =95.0
                        End
                    End
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            RepeatSection = NotDefault
            Height =566
            BreakLevel =1
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    Left =113
                    Top =113
                    Width =14070
                    Height =330
                    ColumnWidth =3735
                    FontSize =12
                    FontWeight =700
                    Name ="Bezeichung"
                    ControlSource ="Bez"

                    LayoutCachedLeft =113
                    LayoutCachedTop =113
                    LayoutCachedWidth =14183
                    LayoutCachedHeight =443
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            RepeatSection = NotDefault
            Height =850
            BreakLevel =2
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
                    Left =8273
                    Top =458
                    Width =1295
                    Height =240
                    Name ="Bezeichnungsfeld117"
                    Caption ="Auftragswert"
                    LayoutCachedLeft =8273
                    LayoutCachedTop =458
                    LayoutCachedWidth =9568
                    LayoutCachedHeight =698
                End
                Begin Label
                    TextAlign =0
                    Left =10774
                    Top =453
                    Width =1621
                    Height =240
                    Name ="Bezeichnungsfeld119"
                    Caption ="Vergabeart"
                    LayoutCachedLeft =10774
                    LayoutCachedTop =453
                    LayoutCachedWidth =12395
                    LayoutCachedHeight =693
                End
                Begin Label
                    TextAlign =0
                    Left =12934
                    Top =458
                    Width =2615
                    Height =240
                    Name ="Bezeichnungsfeld120"
                    Caption ="Begründung für Nachtrag"
                    LayoutCachedLeft =12934
                    LayoutCachedTop =458
                    LayoutCachedWidth =15549
                    LayoutCachedHeight =698
                End
                Begin Label
                    TextAlign =0
                    Left =9672
                    Top =453
                    Width =1014
                    Height =240
                    Name ="Bezeichnungsfeld118"
                    Caption ="Auftragsart"
                    LayoutCachedLeft =9672
                    LayoutCachedTop =453
                    LayoutCachedWidth =10686
                    LayoutCachedHeight =693
                End
                Begin Label
                    TextAlign =2
                    Left =7278
                    Top =445
                    Width =838
                    Height =249
                    Name ="Bezeichnungsfeld134"
                    Caption ="Datum"
                    LayoutCachedLeft =7278
                    LayoutCachedTop =445
                    LayoutCachedWidth =8116
                    LayoutCachedHeight =694
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =61
            BreakLevel =3
            Name ="Gruppenkopf3"
            Begin
                Begin TextBox
                    TextAlign =3
                    BackStyle =1
                    IMESentenceMode =3
                    Left =9325
                    Top =53
                    Width =1361
                    Height =2
                    FontSize =10
                    FontWeight =700
                    BackColor =967423
                    Name ="TF_Sum_Gew_vorher"
                    ControlSource ="=[TF_Sum_Auftr]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =9325
                    LayoutCachedTop =53
                    LayoutCachedWidth =10686
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
                    Left =5400
                    Width =1753
                    Height =285
                    FontSize =10
                    TabIndex =2
                    Name ="Firmensitz"
                    ControlSource ="FS"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =5400
                    LayoutCachedWidth =7153
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =8156
                    Width =1439
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

                    LayoutCachedLeft =8156
                    LayoutCachedWidth =9595
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
                    Left =12933
                    Width =2667
                    Height =285
                    FontSize =10
                    TabIndex =4
                    Name ="Begründung_Nachtrag"
                    ControlSource ="Begründung_Nachtrag"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =12933
                    LayoutCachedWidth =15600
                    LayoutCachedHeight =285
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    RowSourceTypeInt =1
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =10774
                    Width =2092
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
                    LayoutCachedWidth =12866
                    LayoutCachedHeight =285
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    RowSourceTypeInt =1
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =9672
                    Width =1014
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

                    LayoutCachedLeft =9672
                    LayoutCachedWidth =10686
                    LayoutCachedHeight =285
                End
                Begin TextBox
                    HideDuplicates = NotDefault
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7223
                    Width =890
                    Height =285
                    FontSize =10
                    TabIndex =7
                    Name ="Text133"
                    ControlSource ="Auftr_Datum"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7223
                    LayoutCachedWidth =8113
                    LayoutCachedHeight =285
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =396
            BreakLevel =3
            OnFormat ="[Event Procedure]"
            Name ="Gruppenfuß2"
            Begin
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7894
                    Top =30
                    Height =270
                    FontSize =10
                    FontWeight =700
                    Name ="TF_Sum_Auftr"
                    ControlSource ="=Sum([Wert Auftrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =7894
                    LayoutCachedTop =30
                    LayoutCachedWidth =9595
                    LayoutCachedHeight =300
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =285
                    Top =45
                    Width =7538
                    Height =240
                    FontWeight =700
                    TabIndex =1
                    Name ="BF_Sum_Auftr"
                    ControlSource ="=\"Summe zu \" & [Auftragsinhalt] & \":\""

                    LayoutCachedLeft =285
                    LayoutCachedTop =45
                    LayoutCachedWidth =7823
                    LayoutCachedHeight =285
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =510
            BreakLevel =2
            Name ="Gruppenfuß0"
            Begin
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7662
                    Top =120
                    Width =1933
                    Height =270
                    FontSize =10
                    FontWeight =700
                    Name ="Text100"
                    ControlSource ="=Sum([Wert Auftrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =7662
                    LayoutCachedTop =120
                    LayoutCachedWidth =9595
                    LayoutCachedHeight =390
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            TextAlign =3
                            Left =4939
                            Top =120
                            Width =2663
                            Height =285
                            FontSize =10
                            Name ="Bezeichnungsfeld101"
                            Caption ="Summe Maßnahme:"
                            LayoutCachedLeft =4939
                            LayoutCachedTop =120
                            LayoutCachedWidth =7602
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
            Height =737
            BreakLevel =1
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7294
                    Top =225
                    Width =2301
                    Height =345
                    FontSize =12
                    FontWeight =700
                    Name ="Text102"
                    ControlSource ="=Sum([Wert Auftrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =7294
                    LayoutCachedTop =225
                    LayoutCachedWidth =9595
                    LayoutCachedHeight =570
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            TextAlign =3
                            Left =4137
                            Top =225
                            Width =3007
                            Height =345
                            FontSize =12
                            Name ="Bezeichnungsfeld103"
                            Caption ="Summe Gebäudeteil:"
                            LayoutCachedLeft =4137
                            LayoutCachedTop =225
                            LayoutCachedWidth =7144
                            LayoutCachedHeight =570
                        End
                    End
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =623
            Name ="Gruppenfuß3"
            Begin
                Begin TextBox
                    TextAlign =1
                    BackStyle =1
                    IMESentenceMode =3
                    Left =2773
                    Top =113
                    Width =4377
                    Height =345
                    FontSize =12
                    FontWeight =700
                    Name ="Text128"
                    ControlSource ="Fin_HK"

                    LayoutCachedLeft =2773
                    LayoutCachedTop =113
                    LayoutCachedWidth =7150
                    LayoutCachedHeight =458
                    BackThemeColorIndex =1
                    BackShade =95.0
                End
                Begin TextBox
                    BackStyle =1
                    IMESentenceMode =3
                    Left =7150
                    Top =118
                    Width =2438
                    Height =345
                    FontSize =12
                    FontWeight =700
                    TabIndex =1
                    Name ="Text126"
                    ControlSource ="=Sum([Wert Auftrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =7150
                    LayoutCachedTop =118
                    LayoutCachedWidth =9588
                    LayoutCachedHeight =463
                    BackThemeColorIndex =1
                    BackShade =95.0
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            BackStyle =1
                            TextAlign =0
                            Top =118
                            Width =2721
                            Height =345
                            FontSize =12
                            Name ="Bezeichnungsfeld127"
                            Caption ="Summe zu Fin.herk.:"
                            LayoutCachedTop =118
                            LayoutCachedWidth =2721
                            LayoutCachedHeight =463
                            BackThemeColorIndex =1
                            BackShade =95.0
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
            Height =960
            Name ="Berichtsfuß"
            Begin
                Begin Rectangle
                    BackStyle =1
                    OldBorderStyle =0
                    Left =1073
                    Top =223
                    Width =8673
                    Height =735
                    Name ="Rechteck127"
                    LayoutCachedLeft =1073
                    LayoutCachedTop =223
                    LayoutCachedWidth =9746
                    LayoutCachedHeight =958
                    BackThemeColorIndex =1
                    BackShade =95.0
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =6128
                    Top =451
                    Width =3463
                    Height =345
                    FontSize =14
                    FontWeight =700
                    Name ="Text125"
                    ControlSource ="=Sum([Wert Auftrag])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =6128
                    LayoutCachedTop =451
                    LayoutCachedWidth =9591
                    LayoutCachedHeight =796
                    CurrencySymbol ="€"
                    Begin
                        Begin Label
                            TextAlign =3
                            Left =3226
                            Top =451
                            Width =2609
                            Height =345
                            FontSize =14
                            Name ="Bezeichnungsfeld126"
                            Caption ="Summe gesamt:"
                            LayoutCachedLeft =3226
                            LayoutCachedTop =451
                            LayoutCachedWidth =5835
                            LayoutCachedHeight =796
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_400_10_20_Vergabevorl_Mittelherkunft.cls"
