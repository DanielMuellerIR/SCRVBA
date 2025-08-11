Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    RecordLocks =2
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =18595
    DatasheetFontHeight =11
    ItemSuffix =92
    Left =3845
    Top =1589
    Right =22442
    Bottom =11493
    RecSrcDt = Begin
        0x9551c80fd6b9e440
    End
    Caption ="Bewertungsbilanzen"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    OnLoad ="[Event Procedure]"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    AllowLayoutView =0
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            FontSize =9
            FontWeight =700
            ForeColor =4072463
            FontName ="Arial"
            BorderTint =50.0
            ForeShade =50.0
            GridlineShade =65.0
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
            GridlineShade =65.0
        End
        Begin CommandButton
            Width =3180
            Height =405
            FontSize =11
            FontName ="Arial"
            ForeTint =75.0
            GridlineShade =65.0
            BackTint =60.0
            BorderLineStyle =0
            BorderColor =16777215
            BorderTint =60.0
        End
        Begin OptionButton
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
            AsianLineBreak =1
            BorderShade =65.0
            ForeTint =75.0
            GridlineShade =65.0
        End
        Begin ListBox
            BorderLineStyle =0
            Width =2727
            Height =1431
            LabelX =0
            LabelY =-466
            BackColor =16776187
            ForeColor =4138256
            BorderColor =10040879
            FontName ="Arial"
            AllowValueListEdits =1
            InheritValueList =1
            ForeShade =50.0
            GridlineShade =65.0
        End
        Begin ComboBox
            AddColon = NotDefault
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =2
            ForeShade =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
            GridlineShade =65.0
            BorderShade =65.0
            ShowPageHeaderAndPageFooter =1
        End
        Begin Section
            CanGrow = NotDefault
            Height =9921
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin ListBox
                    OverlapFlags =85
                    TextFontCharSet =161
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =9632
                    Top =1358
                    Width =8775
                    Height =5271
                    FontSize =9
                    BackColor =15728383
                    Name ="LF_Gebaeudeteile"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_100_20_Gebäudeteile.ID_Gebäudeteil, [M_Strassenverzeichnis].[Name] & "
                        "\" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Liegenschafte"
                        "n].[Bezeichnung] & \" -> \" & [tbl_100_20_Gebäudeteile].[Gebäudeteil] AS Obj FRO"
                        "M tbl_100_10_Liegenschaften INNER JOIN (tbl_200_05_10_Bewertungsläufe INNER JOIN"
                        " (tbl_200_10_10_Bewertungsbilanzen INNER JOIN (tbl_100_20_Gebäudeteile LEFT JOIN"
                        " M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenv"
                        "erzeichnis.Kennummer) ON tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil = tbl_1"
                        "00_20_Gebäudeteile.ID_Gebäudeteil) ON tbl_200_05_10_Bewertungsläufe.id_Bewert = "
                        "tbl_200_10_10_Bewertungsbilanzen.Id_Bewert) ON tbl_100_10_Liegenschaften.ID_Gebä"
                        "ude = tbl_100_20_Gebäudeteile.ID_Gebäude WHERE (((tbl_200_05_10_Bewertungsläufe."
                        "id_Bewert)=F_Variable(\"lng_id_Bewert\")) AND ((tbl_100_20_Gebäudeteile.Bilanz_r"
                        "elevant)=True) AND ((tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT) Is Null)) ORDER B"
                        "Y [M_Strassenverzeichnis].[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] &"
                        " \": \" & [tbl_100_10_Liegenschaften].[Bezeichnung] & \" -> \" & [tbl_100_20_Geb"
                        "äudeteile].[Gebäudeteil];"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =9632
                    LayoutCachedTop =1358
                    LayoutCachedWidth =18407
                    LayoutCachedHeight =6629
                    ForeShade =100.0
                End
                Begin ListBox
                    ColumnHeads = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =7
                    Left =113
                    Top =1353
                    Width =9134
                    Height =2676
                    TabIndex =2
                    BackColor =15728383
                    Name ="LF_Bew_Lauefe"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_200_05_10_Bewertungsläufe.id_Bewert, tbl_200_05_10_Bewertungsläufe.Er"
                        "st_Folgebilanz, tbl_200_05_10_Bewertungsläufe.Bewertungsjahr, IIf([Erst_Folgebil"
                        "anz]=1,\"Erstbewertung\",\"Folgebewertung\") AS Bewertungsart, tbl_200_05_10_Bew"
                        "ertungsläufe.Zeitpunkt, tbl_200_05_10_Bewertungsläufe.Erläuterung, tbl_200_05_10"
                        "_Bewertungsläufe.Urspr_2009 FROM tbl_200_05_10_Bewertungsläufe WHERE (((tbl_200_"
                        "05_10_Bewertungsläufe.Erst_Folgebilanz)<=2)) ORDER BY tbl_200_05_10_Bewertungslä"
                        "ufe.Zeitpunkt DESC;"
                    ColumnWidths ="0;0;1418;1418;1701;3402;0"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =113
                    LayoutCachedTop =1353
                    LayoutCachedWidth =9247
                    LayoutCachedHeight =4029
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =113
                            Top =850
                            Width =7875
                            Height =225
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="BF_Ueberschr_Bewertungen"
                            Caption =" Bewertungslauf:"
                            GridlineColor =10921638
                            LayoutCachedLeft =113
                            LayoutCachedTop =850
                            LayoutCachedWidth =7988
                            LayoutCachedHeight =1075
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =2145
                    Top =4530
                    Width =2220
                    Height =1153
                    FontSize =9
                    TabIndex =3
                    ForeColor =4138256
                    Name ="BS_Folgeb_anlegen"
                    Caption ="Neue Bewertungsbilanz \015\012zum markierten \015\012Bewertungsjahr \015\012anle"
                        "gen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2145
                    LayoutCachedTop =4530
                    LayoutCachedWidth =4365
                    LayoutCachedHeight =5683
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    Overlaps =1
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =4827
                    Top =4200
                    Width =3270
                    Height =504
                    FontSize =9
                    TabIndex =5
                    ForeColor =1643706
                    Name ="BS_Folgeb_loeschen"
                    Caption ="markierte Bewertungsbilanz löschen"
                    OnClick ="[Ereignisprozedur]"

                    LayoutCachedLeft =4827
                    LayoutCachedTop =4200
                    LayoutCachedWidth =8097
                    LayoutCachedHeight =4704
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    HoverForeColor =1643706
                    PressedForeColor =1643706
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =15938
                    Top =9128
                    Width =1260
                    Height =360
                    FontSize =9
                    TabIndex =4
                    ForeColor =4138256
                    Name ="BS_Schließen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =15938
                    LayoutCachedTop =9128
                    LayoutCachedWidth =17198
                    LayoutCachedHeight =9488
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    Overlaps =1
                End
                Begin Label
                    SpecialEffect =5
                    OldBorderStyle =1
                    BorderWidth =3
                    OverlapFlags =85
                    Left =120
                    Top =120
                    Width =16620
                    Height =345
                    FontSize =12
                    Name ="Bezeichnungsfeld58"
                    Caption ="Bewertungsbilanzen"
                    LayoutCachedLeft =120
                    LayoutCachedTop =120
                    LayoutCachedWidth =16740
                    LayoutCachedHeight =465
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    OverlapFlags =85
                    Left =9280
                    Top =1618
                    Width =96
                    BorderColor =4138256
                    Name ="Linie62"
                    GridlineColor =10921638
                    LayoutCachedLeft =9280
                    LayoutCachedTop =1618
                    LayoutCachedWidth =9376
                    LayoutCachedHeight =1618
                    BorderShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =9398
                    Top =1478
                    Width =165
                    Height =210
                    FontSize =11
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld72"
                    Caption =">"
                    LayoutCachedLeft =9398
                    LayoutCachedTop =1478
                    LayoutCachedWidth =9563
                    LayoutCachedHeight =1688
                    BorderTint =100.0
                    GridlineShade =100.0
                End
                Begin ListBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    Left =243
                    Top =4516
                    Width =1467
                    Height =1281
                    TabIndex =6
                    BackColor =15728383
                    Name ="LF_Bew_Jahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Kalenderjahre.Jahr FROM Kalenderjahre WHERE (((Kalenderjahre.Jahr)<=Year("
                        "Date()))) ORDER BY Kalenderjahre.Jahr;"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =243
                    LayoutCachedTop =4516
                    LayoutCachedWidth =1710
                    LayoutCachedHeight =5797
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =1
                            Left =243
                            Top =4238
                            Width =1455
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld60"
                            Caption ="Bewertungsjahr:"
                            GridlineColor =10921638
                            LayoutCachedLeft =243
                            LayoutCachedTop =4238
                            LayoutCachedWidth =1698
                            LayoutCachedHeight =4493
                        End
                    End
                End
                Begin OptionGroup
                    OverlapFlags =223
                    Left =113
                    Top =4138
                    Width =4415
                    Height =1756
                    TabIndex =7
                    BorderColor =10921638
                    Name ="Rahmen61"
                    GridlineColor =10921638

                    LayoutCachedLeft =113
                    LayoutCachedTop =4138
                    LayoutCachedWidth =4528
                    LayoutCachedHeight =5894
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =4823
                    Top =6458
                    Width =3270
                    Height =585
                    FontSize =9
                    TabIndex =8
                    ForeColor =4138256
                    Name ="BS_Bewt_drucken_Alle"
                    Caption ="markierte Bewertungsbilanz zu \015\012allen Gebäudeteilen ausdrucken"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =4823
                    LayoutCachedTop =6458
                    LayoutCachedWidth =8093
                    LayoutCachedHeight =7043
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    Overlaps =1
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    OverlapFlags =95
                    Left =1824
                    Top =4944
                    Width =96
                    BorderColor =4138256
                    Name ="Linie64"
                    GridlineColor =10921638
                    LayoutCachedLeft =1824
                    LayoutCachedTop =4944
                    LayoutCachedWidth =1920
                    LayoutCachedHeight =4944
                    BorderShade =50.0
                End
                Begin Label
                    OverlapFlags =215
                    Left =1920
                    Top =4815
                    Width =165
                    Height =210
                    FontSize =11
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld65"
                    Caption =">"
                    LayoutCachedLeft =1920
                    LayoutCachedTop =4815
                    LayoutCachedWidth =2085
                    LayoutCachedHeight =5025
                    BorderTint =100.0
                    GridlineShade =100.0
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =9632
                    Top =715
                    Width =8776
                    Height =531
                    TabIndex =9
                    BorderColor =10921638
                    Name ="OR_LF_Gebteile_DH"
                    DefaultValue ="1"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =9632
                    LayoutCachedTop =715
                    LayoutCachedWidth =18408
                    LayoutCachedHeight =1246
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =215
                            TextAlign =1
                            Left =9756
                            Top =571
                            Width =1360
                            Height =255
                            FontSize =8
                            BackColor =-2147483633
                            BorderColor =8355711
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld74"
                            Caption =" Gebäudeteile .."
                            GridlineColor =10921638
                            LayoutCachedLeft =9756
                            LayoutCachedTop =571
                            LayoutCachedWidth =11116
                            LayoutCachedHeight =826
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =9767
                            Top =886
                            OptionValue =1
                            BorderColor =10921638
                            Name ="Option70"
                            GridlineColor =10921638

                            LayoutCachedLeft =9767
                            LayoutCachedTop =886
                            LayoutCachedWidth =10027
                            LayoutCachedHeight =1126
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =9995
                                    Top =886
                                    Width =1635
                                    Height =255
                                    FontSize =8
                                    Name ="Bezeichnungsfeld71"
                                    Caption ="mit Erstbewertung"
                                    LayoutCachedLeft =9995
                                    LayoutCachedTop =886
                                    LayoutCachedWidth =11630
                                    LayoutCachedHeight =1141
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =12182
                            Top =886
                            TabIndex =1
                            OptionValue =2
                            BorderColor =10921638
                            Name ="Option72"
                            GridlineColor =10921638

                            LayoutCachedLeft =12182
                            LayoutCachedTop =886
                            LayoutCachedWidth =12442
                            LayoutCachedHeight =1126
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =12407
                                    Top =886
                                    Width =2325
                                    Height =255
                                    FontSize =8
                                    Name ="Bezeichnungsfeld73"
                                    Caption ="zeige nicht stimmige Daten"
                                    LayoutCachedLeft =12407
                                    LayoutCachedTop =886
                                    LayoutCachedWidth =14732
                                    LayoutCachedHeight =1141
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =14957
                            Top =886
                            TabIndex =2
                            OptionValue =3
                            BorderColor =10921638
                            Name ="Option87"
                            GridlineColor =10921638

                            LayoutCachedLeft =14957
                            LayoutCachedTop =886
                            LayoutCachedWidth =15217
                            LayoutCachedHeight =1126
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =15187
                                    Top =886
                                    Width =1950
                                    Height =270
                                    FontSize =8
                                    Name ="Bezeichnungsfeld88"
                                    Caption ="ohne Zuständigk. B60"
                                    LayoutCachedLeft =15187
                                    LayoutCachedTop =886
                                    LayoutCachedWidth =17137
                                    LayoutCachedHeight =1156
                                End
                            End
                        End
                    End
                End
                Begin Line
                    OverlapFlags =93
                    Left =11348
                    Top =7523
                    Width =0
                    Height =1077
                    BorderColor =4138256
                    Name ="Linie81"
                    LayoutCachedLeft =11348
                    LayoutCachedTop =7523
                    LayoutCachedWidth =11348
                    LayoutCachedHeight =8600
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =215
                    Left =9878
                    Top =8093
                    Width =4965
                    Height =1170
                    FontWeight =400
                    BackColor =-2147483633
                    BorderColor =4138256
                    Name ="Bezeichnungsfeld79"
                    Caption ="Zum Aktivieren dieses Buttons muss ..\015\012a) oben rechts die Option <zeige ni"
                        "cht stimmige Daten> \015\012    ausgewählt sein \015\012     und \015\012b) im r"
                        "echten Auswahlfeld ein Gebäudeteil ausgewählt sein"
                    LayoutCachedLeft =9878
                    LayoutCachedTop =8093
                    LayoutCachedWidth =14843
                    LayoutCachedHeight =9263
                    BorderTint =100.0
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =215
                    Left =9878
                    Top =6743
                    Width =3557
                    Height =1140
                    FontSize =9
                    TabIndex =10
                    ForeColor =1643706
                    Name ="BS_Erstbew_anlegen"
                    Caption ="Lege zu markiertem Gebäudeteil \015\012und mark. Bewertungsjahr eine Erstbewertu"
                        "ng an"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =9878
                    LayoutCachedTop =6743
                    LayoutCachedWidth =13435
                    LayoutCachedHeight =7883
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    HoverForeColor =1643706
                    PressedForeColor =1643706
                    Overlaps =1
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =4827
                    Top =4763
                    Width =3270
                    Height =360
                    FontSize =9
                    TabIndex =11
                    ForeColor =4138256
                    Name ="BS_HK_Kosten"
                    Caption ="Liste mit Herstellkosten"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =4827
                    LayoutCachedTop =4763
                    LayoutCachedWidth =8097
                    LayoutCachedHeight =5123
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    Overlaps =1
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =15218
                    Top =6743
                    Width =1980
                    Height =315
                    FontSize =9
                    TabIndex =13
                    BackColor =-2147483633
                    BorderColor =4138256
                    ForeColor =4072463
                    Name ="Text85"
                    ControlSource ="=[LF_Gebaeudeteile].[ListCount]"
                    Format ="#\" Gebäudeteile\""
                    FontName ="Arial"

                    LayoutCachedLeft =15218
                    LayoutCachedTop =6743
                    LayoutCachedWidth =17198
                    LayoutCachedHeight =7058
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin Line
                    OverlapFlags =93
                    Left =4025
                    Top =6122
                    Width =1756
                    BorderColor =4138256
                    Name ="Linie90"
                    LayoutCachedLeft =4025
                    LayoutCachedTop =6122
                    LayoutCachedWidth =5781
                    LayoutCachedHeight =6122
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =215
                    TextAlign =1
                    Left =598
                    Top =5955
                    Width =3930
                    Height =863
                    FontWeight =400
                    BackColor =-2147483633
                    BorderColor =4138256
                    Name ="Bezeichnungsfeld89"
                    Caption ="Zum Aktivieren dieses Buttons muss ..\015\012a) oben links eine Bew.bilanz marki"
                        "ert \015\012     UND ..\015\012b) oben rechts ein Gebäudeteil markiert werden."
                    LayoutCachedLeft =598
                    LayoutCachedTop =5955
                    LayoutCachedWidth =4528
                    LayoutCachedHeight =6818
                    BorderTint =100.0
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =215
                    Left =4827
                    Top =5627
                    Width =3270
                    Height =743
                    FontSize =9
                    TabIndex =1
                    ForeColor =4138256
                    Name ="BS_Bewert_drucken"
                    Caption ="markierte Bewertungsbilanz \015\012zum rechts markiertem \015\012Gebäudeteil aus"
                        "drucken"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =4827
                    LayoutCachedTop =5627
                    LayoutCachedWidth =8097
                    LayoutCachedHeight =6370
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    Overlaps =1
                End
                Begin Line
                    OverlapFlags =93
                    Left =4538
                    Top =5325
                    Width =466
                    BorderColor =4138256
                    Name ="Linie91"
                    LayoutCachedLeft =4538
                    LayoutCachedTop =5325
                    LayoutCachedWidth =5004
                    LayoutCachedHeight =5325
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =215
                    Left =4827
                    Top =5169
                    Width =3270
                    Height =360
                    FontSize =9
                    TabIndex =12
                    ForeColor =4138256
                    Name ="BS_Versich_werte"
                    Caption ="Liste mit Wiederbeschaffungswerten"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =4827
                    LayoutCachedTop =5169
                    LayoutCachedWidth =8097
                    LayoutCachedHeight =5529
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                    Overlaps =1
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_040_010_Bewertungsbilanzen_Verwaltung.cls"
