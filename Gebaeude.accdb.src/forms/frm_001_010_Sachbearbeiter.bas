Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    RecordLocks =2
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    Cycle =1
    GridY =10
    Width =13549
    DatasheetFontHeight =11
    ItemSuffix =32
    Left =5937
    Top =1318
    Right =19481
    Bottom =10936
    RecSrcDt = Begin
        0x3f8df1dd15cce440
    End
    RecordSource ="SELECT Sachbearbeiter.* FROM Sachbearbeiter WHERE (((Sachbearbeiter.ID)=[Formula"
        "re]![frm_001_010_Sachbearbeiter]![LF_SB_Liste]));"
    Caption ="Sachbearbeiter .."
    OnCurrent ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    OnLoad ="[Event Procedure]"
    AllowDatasheetView =0
    FilterOnLoad =0
    SplitFormSize =4635
    SplitFormSize =4635
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
            FontSize =11
            FontName ="Calibri"
            BorderTint =50.0
            ForeTint =50.0
            GridlineShade =65.0
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
            BorderShade =65.0
            GridlineShade =65.0
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =11
            FontWeight =400
            FontName ="Calibri"
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
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
            BorderShade =65.0
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
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =3
            BorderShade =90.0
            ForeThemeColorIndex =2
            ForeShade =50.0
            GridlineThemeColorIndex =1
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
        Begin Section
            Height =9637
            BackColor =16776187
            Name ="Detailbereich"
            AlternateBackColor =16777215
            Begin
                Begin TextBox
                    SpecialEffect =2
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =10579
                    Top =1755
                    Width =2346
                    Height =270
                    ColumnWidth =1920
                    FontSize =9
                    TabIndex =1
                    BackColor =14548991
                    BorderColor =10921638
                    Name ="Name"
                    ControlSource ="Name"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =10579
                    LayoutCachedTop =1755
                    LayoutCachedWidth =12925
                    LayoutCachedHeight =2025
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =6885
                            Top =1755
                            Width =3480
                            Height =270
                            FontSize =9
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld0"
                            Caption ="Name:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =6885
                            LayoutCachedTop =1755
                            LayoutCachedWidth =10365
                            LayoutCachedHeight =2025
                            ForeTint =100.0
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =93
                    Left =10579
                    Top =3118
                    ColumnWidth =2385
                    TabIndex =4
                    BorderColor =10921638
                    Name ="Objektverantwortliche/r"
                    ControlSource ="Objektverantwortlicher"
                    EventProcPrefix ="Objektverantwortliche_r"
                    GridlineColor =10921638

                    LayoutCachedLeft =10579
                    LayoutCachedTop =3118
                    LayoutCachedWidth =10839
                    LayoutCachedHeight =3358
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =6885
                            Top =3120
                            Width =3480
                            Height =270
                            FontSize =9
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld1"
                            Caption ="Objektverantwortlicher:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =6885
                            LayoutCachedTop =3120
                            LayoutCachedWidth =10365
                            LayoutCachedHeight =3390
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =10570
                    Top =5611
                    Width =1251
                    Height =510
                    FontSize =9
                    TabIndex =9
                    BorderColor =4138256
                    Name ="TF_Kennfarbe"
                    ControlSource ="Kennfarbe"
                    OnDblClick ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =10570
                    LayoutCachedTop =5611
                    LayoutCachedWidth =11821
                    LayoutCachedHeight =6121
                    BorderShade =50.0
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =9362
                            Top =5611
                            Width =1003
                            Height =240
                            FontSize =9
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld3"
                            Caption ="Kennfarbe:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =9362
                            LayoutCachedTop =5611
                            LayoutCachedWidth =10365
                            LayoutCachedHeight =5851
                            ForeTint =100.0
                        End
                    End
                End
                Begin Label
                    FontItalic = NotDefault
                    OverlapFlags =93
                    TextAlign =1
                    Left =10596
                    Top =6197
                    Width =1350
                    Height =945
                    FontSize =9
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld7"
                    Caption ="zum Einstellen \015\012der Farbe \015\012in die Fläche \015\012doppelklicken .."
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =10596
                    LayoutCachedTop =6197
                    LayoutCachedWidth =11946
                    LayoutCachedHeight =7142
                    ForeTint =100.0
                End
                Begin CheckBox
                    OverlapFlags =93
                    Left =10580
                    Top =4540
                    Height =210
                    ColumnWidth =3015
                    TabIndex =7
                    BorderColor =10921638
                    Name ="Mietobjektverantwortlicher"
                    ControlSource ="Mietobjektverantwortlicher"
                    GridlineColor =10921638

                    LayoutCachedLeft =10580
                    LayoutCachedTop =4540
                    LayoutCachedWidth =10840
                    LayoutCachedHeight =4750
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =6886
                            Top =4537
                            Width =3480
                            Height =270
                            FontSize =9
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld8"
                            Caption ="Mietobjektverantwortlicher:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =6886
                            LayoutCachedTop =4537
                            LayoutCachedWidth =10366
                            LayoutCachedHeight =4807
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =11886
                    Top =5610
                    Width =351
                    TabIndex =11
                    ForeColor =4210752
                    Name ="BS_Farbe_loeschen"
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
                        0xdddddddddddddddd000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Farbe ganz löschen"
                    GridlineColor =10921638

                    LayoutCachedLeft =11886
                    LayoutCachedTop =5610
                    LayoutCachedWidth =12237
                    LayoutCachedHeight =5893
                    BackColor =14136213
                    BorderColor =14136213
                    Overlaps =1
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    FontItalic = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =93
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =6885
                    Top =5881
                    Width =3480
                    Height =315
                    FontSize =9
                    TabIndex =14
                    BorderColor =8355711
                    ForeColor =1643706
                    Name ="TF_Festgelegt"
                    ControlSource ="=IIf(IsNull([TF_Kennfarbe]),\" (noch) nicht festgelegt\",\"\")"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =6885
                    LayoutCachedTop =5881
                    LayoutCachedWidth =10365
                    LayoutCachedHeight =6196
                    BorderTint =50.0
                    BorderShade =100.0
                    ForeTint =100.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5610
                    Top =9015
                    Width =2100
                    Height =375
                    FontSize =10
                    FontWeight =700
                    TabIndex =15
                    ForeColor =-2147483630
                    Name ="BS_BS_Liste_ausdrucken"
                    Caption ="SB-Liste ausdrucken"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =5610
                    LayoutCachedTop =9015
                    LayoutCachedWidth =7710
                    LayoutCachedHeight =9390
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =11060
                    Top =9015
                    Width =2100
                    Height =375
                    FontSize =10
                    FontWeight =700
                    TabIndex =16
                    ForeColor =-2147483630
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =11060
                    LayoutCachedTop =9015
                    LayoutCachedWidth =13160
                    LayoutCachedHeight =9390
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =737
                    Top =226
                    Width =2279
                    Height =390
                    FontSize =14
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld4"
                    Caption ="Sachbearbeiter"
                    FontName ="Arial"
                    GridlineColor =10921638
                    LayoutCachedLeft =737
                    LayoutCachedTop =226
                    LayoutCachedWidth =3016
                    LayoutCachedHeight =616
                    ForeTint =100.0
                End
                Begin ListBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =737
                    Top =969
                    Width =5336
                    Height =7932
                    BackColor =14548991
                    ForeColor =4138256
                    BorderColor =10040879
                    Name ="LF_SB_Liste"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, [Name] & IIf([Telefon] Is Null,\"\",\" (\" & [Telefon]"
                        " & \")\") AS SB FROM Sachbearbeiter WHERE (((Sachbearbeiter.ausgeschieden)=False"
                        ") AND ((Sachbearbeiter.ausgesch_Jahr) Is Null)) ORDER BY [Name] & IIf([Telefon] "
                        "Is Null,\"\",\" (\" & [Telefon] & \")\");"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =737
                    LayoutCachedTop =969
                    LayoutCachedWidth =6073
                    LayoutCachedHeight =8901
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                End
                Begin CheckBox
                    OverlapFlags =93
                    Left =10579
                    Top =2773
                    ColumnWidth =3120
                    TabIndex =3
                    Name ="Grundstücksverantwortlicher"
                    ControlSource ="Grundstücksverantwortlicher"

                    LayoutCachedLeft =10579
                    LayoutCachedTop =2773
                    LayoutCachedWidth =10839
                    LayoutCachedHeight =3013
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =6885
                            Top =2775
                            Width =3480
                            Height =270
                            FontSize =9
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld15"
                            Caption ="Grundstücksverantwortlicher:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =6885
                            LayoutCachedTop =2775
                            LayoutCachedWidth =10365
                            LayoutCachedHeight =3045
                            ForeTint =100.0
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =93
                    Left =10579
                    Top =3463
                    ColumnWidth =2205
                    TabIndex =5
                    Name ="Fachplaner_Elektro"
                    ControlSource ="Fachplaner_Elektro"

                    LayoutCachedLeft =10579
                    LayoutCachedTop =3463
                    LayoutCachedWidth =10839
                    LayoutCachedHeight =3703
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =6885
                            Top =3463
                            Width =3480
                            Height =270
                            FontSize =9
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld16"
                            Caption ="Fachplaner Elektro:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =6885
                            LayoutCachedTop =3463
                            LayoutCachedWidth =10365
                            LayoutCachedHeight =3733
                            ForeTint =100.0
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =93
                    Left =10579
                    Top =3828
                    ColumnWidth =1875
                    TabIndex =6
                    Name ="Fachplaner_HLS"
                    ControlSource ="Fachplaner_HLS"

                    LayoutCachedLeft =10579
                    LayoutCachedTop =3828
                    LayoutCachedWidth =10839
                    LayoutCachedHeight =4068
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =6885
                            Top =3825
                            Width =3480
                            Height =270
                            FontSize =9
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld17"
                            Caption ="Fachplaner H/L/S:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =6885
                            LayoutCachedTop =3825
                            LayoutCachedWidth =10365
                            LayoutCachedHeight =4095
                            ForeTint =100.0
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =93
                    Left =10580
                    Top =4880
                    Height =210
                    ColumnWidth =2865
                    TabIndex =8
                    Name ="Buchungsverantwortlicher"
                    ControlSource ="Buchungsverantwortlicher"

                    LayoutCachedLeft =10580
                    LayoutCachedTop =4880
                    LayoutCachedWidth =10840
                    LayoutCachedHeight =5090
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =6886
                            Top =4882
                            Width =3480
                            Height =270
                            FontSize =9
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld20"
                            Caption ="Buchungsverantwortlicher:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =6886
                            LayoutCachedTop =4882
                            LayoutCachedWidth =10366
                            LayoutCachedHeight =5152
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    SpecialEffect =2
                    OverlapFlags =93
                    TextAlign =1
                    IMESentenceMode =3
                    Left =10579
                    Top =2095
                    Width =1146
                    Height =315
                    ColumnWidth =1140
                    FontSize =9
                    TabIndex =2
                    BackColor =14548991
                    BorderColor =10921638
                    Name ="Telefon"
                    ControlSource ="Telefon"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =10579
                    LayoutCachedTop =2095
                    LayoutCachedWidth =11725
                    LayoutCachedHeight =2410
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =3
                            Left =6885
                            Top =2098
                            Width =3480
                            Height =270
                            FontSize =9
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld21"
                            Caption ="Telefon-Durchw.:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =6885
                            LayoutCachedTop =2098
                            LayoutCachedWidth =10365
                            LayoutCachedHeight =2368
                            ForeTint =100.0
                        End
                    End
                End
                Begin Rectangle
                    OverlapFlags =255
                    Left =6689
                    Top =969
                    Width =6471
                    Height =7932
                    Name ="Rechteck22"
                    LayoutCachedLeft =6689
                    LayoutCachedTop =969
                    LayoutCachedWidth =13160
                    LayoutCachedHeight =8901
                End
                Begin Line
                    BorderWidth =1
                    OverlapFlags =93
                    Left =6165
                    Top =1935
                    Width =414
                    BorderColor =10040879
                    Name ="Linie66"
                    GridlineColor =10921638
                    LayoutCachedLeft =6165
                    LayoutCachedTop =1935
                    LayoutCachedWidth =6579
                    LayoutCachedHeight =1935
                    GridlineThemeColorIndex =-1
                End
                Begin Label
                    OverlapFlags =215
                    Left =6465
                    Top =1799
                    Width =165
                    Height =210
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld74"
                    Caption =">"
                    FontName ="Arial"
                    LayoutCachedLeft =6465
                    LayoutCachedTop =1799
                    LayoutCachedWidth =6630
                    LayoutCachedHeight =2009
                    BorderTint =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                    GridlineShade =100.0
                End
                Begin CheckBox
                    OverlapFlags =247
                    Left =10551
                    Top =7937
                    ColumnWidth =1800
                    TabIndex =12
                    Name ="ausgeschieden"
                    ControlSource ="ausgeschieden"

                    LayoutCachedLeft =10551
                    LayoutCachedTop =7937
                    LayoutCachedWidth =10811
                    LayoutCachedHeight =8177
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =6866
                            Top =7937
                            Width =3480
                            Height =270
                            FontSize =9
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld23"
                            Caption ="ausgeschieden:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =6866
                            LayoutCachedTop =7937
                            LayoutCachedWidth =10346
                            LayoutCachedHeight =8207
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    SpecialEffect =2
                    OverlapFlags =247
                    TextAlign =1
                    IMESentenceMode =3
                    Left =10551
                    Top =8342
                    Width =621
                    Height =275
                    ColumnWidth =1740
                    FontSize =9
                    TabIndex =13
                    BackColor =14548991
                    BorderColor =10921638
                    Name ="ausgesch_Jahr"
                    ControlSource ="ausgesch_Jahr"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =10551
                    LayoutCachedTop =8342
                    LayoutCachedWidth =11172
                    LayoutCachedHeight =8617
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =6866
                            Top =8345
                            Width =3480
                            Height =270
                            FontSize =9
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld24"
                            Caption ="ausgeschieden im Jahr:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =6866
                            LayoutCachedTop =8345
                            LayoutCachedWidth =10346
                            LayoutCachedHeight =8615
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =737
                    Top =9021
                    Width =2100
                    Height =375
                    FontSize =10
                    FontWeight =700
                    TabIndex =17
                    ForeColor =-2147483630
                    Name ="BS_SB_Neu"
                    Caption ="Neuer Sachbearb."
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =737
                    LayoutCachedTop =9021
                    LayoutCachedWidth =2837
                    LayoutCachedHeight =9396
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2895
                    Top =9015
                    Width =2100
                    Height =375
                    FontSize =10
                    FontWeight =700
                    TabIndex =18
                    ForeColor =-2147483630
                    Name ="BS_SB_Loeschen"
                    Caption ="Sachbearb. löschen "
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =9015
                    LayoutCachedWidth =4995
                    LayoutCachedHeight =9390
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    SpecialEffect =2
                    OverlapFlags =247
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =10579
                    Top =7313
                    Width =1075
                    Height =249
                    ColumnWidth =1646
                    FontSize =9
                    TabIndex =10
                    BackColor =14548991
                    BorderColor =10921638
                    Name ="ID_EG_Gr"
                    ControlSource ="ID_EG_Gr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_010_20_10_Entgeltgruppen.ID_EG_Gr, tbl_010_20_10_Entgeltgruppen.Entge"
                        "ltgruppe, tbl_010_20_10_Entgeltgruppen.Sort FROM tbl_010_20_10_Entgeltgruppen OR"
                        "DER BY tbl_010_20_10_Entgeltgruppen.Sort;"
                    ColumnWidths ="0"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =10579
                    LayoutCachedTop =7313
                    LayoutCachedWidth =11654
                    LayoutCachedHeight =7562
                    ThemeFontIndex =-1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeShade =100.0
                    GridlineThemeColorIndex =-1
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =9036
                            Top =7311
                            Width =1329
                            Height =240
                            FontSize =9
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld27"
                            Caption ="Entgeltgruppe:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =9036
                            LayoutCachedTop =7311
                            LayoutCachedWidth =10365
                            LayoutCachedHeight =7551
                            ForeTint =100.0
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =247
                    Left =10579
                    Top =4170
                    TabIndex =19
                    Name ="Gebaeudebegehungen"
                    ControlSource ="Gebaeudebegehungen"

                    LayoutCachedLeft =10579
                    LayoutCachedTop =4170
                    LayoutCachedWidth =10839
                    LayoutCachedHeight =4410
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextAlign =3
                            Left =6885
                            Top =4168
                            Width =3480
                            Height =270
                            FontSize =9
                            FontWeight =700
                            BorderColor =8355711
                            Name ="Bezeichnungsfeld31"
                            Caption ="Gebäudebegehung:"
                            FontName ="Arial"
                            GridlineColor =10921638
                            LayoutCachedLeft =6885
                            LayoutCachedTop =4168
                            LayoutCachedWidth =10365
                            LayoutCachedHeight =4438
                            ForeTint =100.0
                        End
                    End
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =3174
                    Top =113
                    Width =2670
                    Height =741
                    TabIndex =20
                    Name ="OR_Erl_Unerl_MN"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="1"
                    GridlineColor =10921638

                    LayoutCachedLeft =3174
                    LayoutCachedTop =113
                    LayoutCachedWidth =5844
                    LayoutCachedHeight =854
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    Begin
                        Begin OptionButton
                            OverlapFlags =87
                            Left =3301
                            Top =229
                            OptionValue =1
                            BorderColor =10921638
                            Name ="Op_SB_aktiv"
                            GridlineColor =10921638

                            LayoutCachedLeft =3301
                            LayoutCachedTop =229
                            LayoutCachedWidth =3561
                            LayoutCachedHeight =469
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OverlapFlags =247
                                    Left =3534
                                    Top =197
                                    Width =2100
                                    Height =255
                                    FontSize =8
                                    FontWeight =700
                                    BackColor =-2147483633
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld89"
                                    Caption =" aktive Mitarbeiter"
                                    FontName ="Arial"
                                    LayoutCachedLeft =3534
                                    LayoutCachedTop =197
                                    LayoutCachedWidth =5634
                                    LayoutCachedHeight =452
                                    BorderTint =100.0
                                    ForeTint =100.0
                                    ForeShade =50.0
                                    GridlineShade =100.0
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =3301
                            Top =539
                            TabIndex =1
                            OptionValue =2
                            BorderColor =10921638
                            Name ="Op_SB_inaktiv"
                            GridlineColor =10921638

                            LayoutCachedLeft =3301
                            LayoutCachedTop =539
                            LayoutCachedWidth =3561
                            LayoutCachedHeight =779
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OverlapFlags =247
                                    Left =3536
                                    Top =513
                                    Width =1455
                                    Height =255
                                    FontSize =8
                                    FontWeight =700
                                    BackColor =-2147483633
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld91"
                                    Caption =" Alle Mitarbeiter"
                                    FontName ="Arial"
                                    LayoutCachedLeft =3536
                                    LayoutCachedTop =513
                                    LayoutCachedWidth =4991
                                    LayoutCachedHeight =768
                                    BorderTint =100.0
                                    ForeTint =100.0
                                    ForeShade =50.0
                                    GridlineShade =100.0
                                End
                            End
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_001_010_Sachbearbeiter.cls"
