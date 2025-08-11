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
    PictureTiling = NotDefault
    DividingLines = NotDefault
    DataEntry = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =1
    PictureAlignment =5
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =8220
    DatasheetFontHeight =10
    ItemSuffix =82
    Left =13395
    Top =6855
    Right =23385
    Bottom =14460
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Datenausgabe Mietberechnung"
    OnCurrent ="[Event Procedure]"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            SpecialEffect =1
            FontWeight =700
            BackColor =12632256
            ForeColor =128
            FontName ="Arial"
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            SpecialEffect =3
            Width =1701
        End
        Begin Image
            SpecialEffect =3
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
            ForeColor =128
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin OptionButton
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =2
            BorderWidth =3
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            BackStyle =1
            BorderLineStyle =0
            Width =1701
            Height =1701
            BackColor =12632256
        End
        Begin BoundObjectFrame
            SpecialEffect =3
            BorderLineStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
            BorderColor =12632256
            BackColor =12632256
        End
        Begin TextBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ListBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ComboBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin Subform
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderColor =12632256
        End
        Begin UnboundObjectFrame
            SpecialEffect =3
            BackStyle =0
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            ForeColor =128
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            FontWeight =700
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Section
            Height =5555
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =6157
                    Left =2832
                    Top =1995
                    Width =4536
                    Height =284
                    Name ="KF_Objekt"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_100_10_Liegenschaften.ID_Gebäude, [NAme] & \" \" & [tbl_100_10_Liegen"
                        "schaften].[HAus_Nr] & \": \" & [Bezeichnung] AS Objekt FROM (tbl_100_10_Liegensc"
                        "haften LEFT JOIN (M_Bereiche RIGHT JOIN tbl_100_20_Gebäudeteile ON M_Bereiche.Ke"
                        "nnummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]) ON tbl_100_10_Liegen"
                        "schaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude) LEFT JOIN M_Strassenve"
                        "rzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis."
                        "Kennummer WHERE (((M_Bereiche.Kennummer)=CDbl(Nz([Formulare]![Filter_für_Mietber"
                        "echnung]![KF_Mieter])))) GROUP BY tbl_100_10_Liegenschaften.ID_Gebäude, [NAme] &"
                        " \" \" & [tbl_100_10_Liegenschaften].[HAus_Nr] & \": \" & [Bezeichnung] ORDER BY"
                        " [NAme] & \" \" & [tbl_100_10_Liegenschaften].[HAus_Nr] & \": \" & [Bezeichnung]"
                        ";"
                    ColumnWidths ="0"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =345
                            Top =1995
                            Width =2160
                            Height =270
                            Name ="Gebäude_Label"
                            Caption ="Objekt"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =1587
                    Top =170
                    Width =4815
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Datenausgabe Mietberechnung"
                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =3810
                    Left =2832
                    Top =1590
                    Width =4536
                    Height =284
                    TabIndex =1
                    Name ="KF_Mieter"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW M_Bereiche.Kennummer, [BereichNr] & \" ( Ber. \" & [BereichNa"
                        "me] & \")\" AS Bereich, M_Bereiche.BereichNr FROM M_Bereiche ORDER BY M_Bereiche"
                        ".BereichNr;"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =345
                            Top =1590
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld59"
                            Caption ="Mieter"
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =3810
                    Left =2832
                    Top =2400
                    Width =4536
                    Height =270
                    TabIndex =2
                    Name ="KF_SB"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Sachbearbeiter.ID, Sachbearbeiter.Name FROM Sachbearbeiter WH"
                        "ERE (((Sachbearbeiter.Mietobjektverantwortlicher)=True)) ORDER BY Sachbearbeiter"
                        ".Name;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2832
                    LayoutCachedTop =2400
                    LayoutCachedWidth =7368
                    LayoutCachedHeight =2670
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =345
                            Top =2400
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld61"
                            Caption ="Sachbearbeiter"
                            LayoutCachedLeft =345
                            LayoutCachedTop =2400
                            LayoutCachedWidth =2505
                            LayoutCachedHeight =2670
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    ListRows =50
                    ListWidth =1134
                    Left =2827
                    Top =793
                    Width =2091
                    Height =284
                    TabIndex =3
                    Name ="KF_Kalkulationsjahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Kalenderjahre.Jahr FROM Kalenderjahre GROUP BY Kalenderjahre."
                        "Jahr ORDER BY Kalenderjahre.Jahr;"
                    ColumnWidths ="1134"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="=Year(Now())+1"

                    LayoutCachedLeft =2827
                    LayoutCachedTop =793
                    LayoutCachedWidth =4918
                    LayoutCachedHeight =1077
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =340
                            Top =793
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld64"
                            Caption ="Kalkulationsjahr"
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    ListRows =50
                    ListWidth =1134
                    Left =2832
                    Top =1204
                    Width =2091
                    Height =284
                    TabIndex =4
                    Name ="KF_NK_Jahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Kalenderjahre.Jahr FROM Kalenderjahre GROUP BY Kalenderjahre."
                        "Jahr ORDER BY Kalenderjahre.Jahr;"
                    ColumnWidths ="1134"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="=Year(Now())"

                    LayoutCachedLeft =2832
                    LayoutCachedTop =1204
                    LayoutCachedWidth =4923
                    LayoutCachedHeight =1488
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =345
                            Top =1204
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld66"
                            Caption ="Datengrundlage für NK"
                            LayoutCachedLeft =345
                            LayoutCachedTop =1204
                            LayoutCachedWidth =2505
                            LayoutCachedHeight =1474
                        End
                    End
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =630
                    Top =3465
                    Width =2890
                    TabIndex =5
                    Name ="BS_Gefiltert_Drucken"
                    Caption ="Auswertung starten"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =630
                    LayoutCachedTop =3465
                    LayoutCachedWidth =3520
                    LayoutCachedHeight =3748
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =623
                    Top =5102
                    Width =5896
                    Height =284
                    TabIndex =8
                    Name ="BS_Archivierung"
                    Caption ="Mietdaten archivieren"
                    OnClick ="[Event Procedure]"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =630
                    Top =4310
                    Width =5888
                    Height =680
                    TabIndex =6
                    Name ="TF_Texthinweis"

                    LayoutCachedLeft =630
                    LayoutCachedTop =4310
                    LayoutCachedWidth =6518
                    LayoutCachedHeight =4990
                End
                Begin Label
                    OverlapFlags =85
                    Left =630
                    Top =4005
                    Width =5880
                    Height =240
                    Name ="Bezeichnungsfeld62"
                    Caption ="Text für die Archivdatei:"
                    LayoutCachedLeft =630
                    LayoutCachedTop =4005
                    LayoutCachedWidth =6510
                    LayoutCachedHeight =4245
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5055
                    Top =795
                    Width =351
                    FontSize =11
                    FontWeight =400
                    TabIndex =7
                    ForeColor =4210752
                    Name ="BS_Kalkj_loeschen"
                    Caption ="Befehl9"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dddddddddddddddddddddddddddddddddd7ddddddddddddd ,
                        0xd177dddddd7dddddd1177dddd17dd000dd117ddd71ddd000dd1177d117dddddd ,
                        0xddd117711dddd000ddd11111ddddd000ddd71117ddddd000777111177dddd000 ,
                        0x111ddd1177ddd000ddddddd1177dd000dddddddd11dddddddddddddddddddddd ,
                        0xdddddddddddddddd
                    End
                    FontName ="Calibri"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Farbe ganz löschen"
                    GridlineColor =10921638

                    LayoutCachedLeft =5055
                    LayoutCachedTop =795
                    LayoutCachedWidth =5406
                    LayoutCachedHeight =1078
                    ForeTint =75.0
                    GridlineShade =65.0
                    BackColor =14136213
                    BackTint =60.0
                    BorderColor =4138256
                    BorderShade =50.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5060
                    Top =1155
                    Width =351
                    FontSize =11
                    FontWeight =400
                    TabIndex =9
                    ForeColor =4210752
                    Name ="BS_NK_J_loeschen"
                    Caption ="Befehl9"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dddddddddddddddddddddddddddddddddd7ddddddddddddd ,
                        0xd177dddddd7dddddd1177dddd17dd000dd117ddd71ddd000dd1177d117dddddd ,
                        0xddd117711dddd000ddd11111ddddd000ddd71117ddddd000777111177dddd000 ,
                        0x111ddd1177ddd000ddddddd1177dd000dddddddd11dddddddddddddddddddddd ,
                        0xdddddddddddddddd
                    End
                    FontName ="Calibri"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Farbe ganz löschen"
                    GridlineColor =10921638

                    LayoutCachedLeft =5060
                    LayoutCachedTop =1155
                    LayoutCachedWidth =5411
                    LayoutCachedHeight =1438
                    ForeTint =75.0
                    GridlineShade =65.0
                    BackColor =14136213
                    BackTint =60.0
                    BorderColor =4138256
                    BorderShade =50.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7500
                    Top =1590
                    Width =351
                    FontSize =11
                    FontWeight =400
                    TabIndex =10
                    ForeColor =4210752
                    Name ="BS_Mieter_loeschen"
                    Caption ="Befehl9"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dddddddddddddddddddddddddddddddddd7ddddddddddddd ,
                        0xd177dddddd7dddddd1177dddd17dd000dd117ddd71ddd000dd1177d117dddddd ,
                        0xddd117711dddd000ddd11111ddddd000ddd71117ddddd000777111177dddd000 ,
                        0x111ddd1177ddd000ddddddd1177dd000dddddddd11dddddddddddddddddddddd ,
                        0xdddddddddddddddd
                    End
                    FontName ="Calibri"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Farbe ganz löschen"
                    GridlineColor =10921638

                    LayoutCachedLeft =7500
                    LayoutCachedTop =1590
                    LayoutCachedWidth =7851
                    LayoutCachedHeight =1873
                    ForeTint =75.0
                    GridlineShade =65.0
                    BackColor =14136213
                    BackTint =60.0
                    BorderColor =4138256
                    BorderShade =50.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7500
                    Top =1995
                    Width =351
                    FontSize =11
                    FontWeight =400
                    TabIndex =11
                    ForeColor =4210752
                    Name ="BS_Objekt_loeschen"
                    Caption ="Befehl9"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dddddddddddddddddddddddddddddddddd7ddddddddddddd ,
                        0xd177dddddd7dddddd1177dddd17dd000dd117ddd71ddd000dd1177d117dddddd ,
                        0xddd117711dddd000ddd11111ddddd000ddd71117ddddd000777111177dddd000 ,
                        0x111ddd1177ddd000ddddddd1177dd000dddddddd11dddddddddddddddddddddd ,
                        0xdddddddddddddddd
                    End
                    FontName ="Calibri"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Farbe ganz löschen"
                    GridlineColor =10921638

                    LayoutCachedLeft =7500
                    LayoutCachedTop =1995
                    LayoutCachedWidth =7851
                    LayoutCachedHeight =2278
                    ForeTint =75.0
                    GridlineShade =65.0
                    BackColor =14136213
                    BackTint =60.0
                    BorderColor =4138256
                    BorderShade =50.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7500
                    Top =2400
                    Width =351
                    FontSize =11
                    FontWeight =400
                    TabIndex =12
                    ForeColor =4210752
                    Name ="BS_SB_loeschen"
                    Caption ="Befehl9"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dddddddddddddddddddddddddddddddddd7ddddddddddddd ,
                        0xd177dddddd7dddddd1177dddd17dd000dd117ddd71ddd000dd1177d117dddddd ,
                        0xddd117711dddd000ddd11111ddddd000ddd71117ddddd000777111177dddd000 ,
                        0x111ddd1177ddd000ddddddd1177dd000dddddddd11dddddddddddddddddddddd ,
                        0xdddddddddddddddd
                    End
                    FontName ="Calibri"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Farbe ganz löschen"
                    GridlineColor =10921638

                    LayoutCachedLeft =7500
                    LayoutCachedTop =2400
                    LayoutCachedWidth =7851
                    LayoutCachedHeight =2683
                    ForeTint =75.0
                    GridlineShade =65.0
                    BackColor =14136213
                    BackTint =60.0
                    BorderColor =4138256
                    BorderShade =50.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6876
                    Top =5041
                    Width =975
                    Height =345
                    TabIndex =13
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6876
                    LayoutCachedTop =5041
                    LayoutCachedWidth =7851
                    LayoutCachedHeight =5386
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =2832
                    Top =2865
                    Width =230
                    Height =210
                    TabIndex =14
                    Name ="KK_mit_Details"
                    DefaultValue ="True"

                    LayoutCachedLeft =2832
                    LayoutCachedTop =2865
                    LayoutCachedWidth =3062
                    LayoutCachedHeight =3075
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =345
                            Top =2865
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld78"
                            Caption ="mit Details"
                            LayoutCachedLeft =345
                            LayoutCachedTop =2865
                            LayoutCachedWidth =2505
                            LayoutCachedHeight =3135
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter_für_Mietberechnung.cls"
