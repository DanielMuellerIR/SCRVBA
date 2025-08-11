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
    Width =19899
    DatasheetFontHeight =11
    ItemSuffix =55
    Left =3369
    Top =448
    Right =23271
    Bottom =12063
    RecSrcDt = Begin
        0x9551c80fd6b9e440
    End
    Caption ="Begehungsjahre und -termine"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Calibri"
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
            Height =11622
            BackColor =-2147483633
            Name ="Detailbereich"
            AlternateBackColor =15921906
            AlternateBackShade =95.0
            Begin
                Begin ListBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    Left =135
                    Top =849
                    Width =1347
                    Height =4875
                    BackColor =15728383
                    Name ="LF_Geb_Begehungsjahre"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_500_10_Begehungen.Begehungsjahr FROM tbl_500_10_Begehungen GROUP BY t"
                        "bl_500_10_Begehungen.Begehungsjahr ORDER BY tbl_500_10_Begehungen.Begehungsjahr "
                        "DESC;"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =135
                    LayoutCachedTop =849
                    LayoutCachedWidth =1482
                    LayoutCachedHeight =5724
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =120
                            Top =627
                            Width =1380
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =1643706
                            Name ="Bezeichnungsfeld1"
                            Caption ="Begehungsjahr:"
                            GridlineColor =10921638
                            LayoutCachedLeft =120
                            LayoutCachedTop =627
                            LayoutCachedWidth =1500
                            LayoutCachedHeight =882
                            ForeShade =100.0
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =128
                    Top =120
                    Width =5625
                    Height =315
                    FontSize =11
                    BorderColor =8355711
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld2"
                    Caption ="Begehungsjahre und -termine "
                    GridlineColor =10921638
                    LayoutCachedLeft =128
                    LayoutCachedTop =120
                    LayoutCachedWidth =5753
                    LayoutCachedHeight =435
                End
                Begin ComboBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    ColumnCount =3
                    Left =2145
                    Top =885
                    Width =2544
                    Height =255
                    FontSize =8
                    TabIndex =1
                    BackColor =15728383
                    BorderColor =10040879
                    ForeColor =4138256
                    Name ="KF_Verantw_SB"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, \"(\" & IIf([Objektverantwortlicher]=True,\"Hochbau\","
                        "IIf([Fachplaner_Elektro],\"Elektro\",\"H/L/S\")) & \") \" & [Name] AS SB, IIf([O"
                        "bjektverantwortlicher]=True,1,IIf([Fachplaner_Elektro],2,3)) AS sort, Sachbearbe"
                        "iter.Gebaeudebegehungen FROM Sachbearbeiter WHERE ([Name] & '( ' & IIf([Objektve"
                        "rantwortlicher]=True,'Hochbau',IIf([Fachplaner_Elektro],'Elektro','H/L/S')) & ')"
                        "')<>'Alle' AND (Sachbearbeiter.Gebaeudebegehungen)=True  AND (((Sachbearbeiter.a"
                        "usgeschieden)= False) or ((Sachbearbeiter.ausgesch_Jahr) Is Null)) ORDER BY IIf("
                        "[Objektverantwortlicher]=True,1,IIf([Fachplaner_Elektro],2,3)), [Name] & \"( \" "
                        "& IIf([Objektverantwortlicher]=True,\"Hochbau\",IIf([Fachplaner_Elektro],\"Elekt"
                        "ro\",\"H/L/S\")) & \")\";"
                    ColumnWidths ="0;;0"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    GridlineColor =10921638

                    LayoutCachedLeft =2145
                    LayoutCachedTop =885
                    LayoutCachedWidth =4689
                    LayoutCachedHeight =1140
                    ThemeFontIndex =-1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    ForeThemeColorIndex =-1
                    GridlineThemeColorIndex =-1
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =2145
                            Top =630
                            Width =4905
                            Height =255
                            FontSize =8
                            BorderColor =8355711
                            ForeColor =1643706
                            Name ="Bezeichnungsfeld49"
                            Caption ="Zuständiger Verantwortlicher (Objekt, Elektro oder HLS):"
                            GridlineColor =10921638
                            LayoutCachedLeft =2145
                            LayoutCachedTop =630
                            LayoutCachedWidth =7050
                            LayoutCachedHeight =885
                            ForeShade =100.0
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =215
                    Left =2160
                    Top =1593
                    Width =17400
                    Height =9180
                    TabIndex =2
                    BorderColor =10040879
                    Name ="UF_Beg_Termine"
                    SourceObject ="Form.frm_500_20_Geb_Begehungen_UF"

                    LayoutCachedLeft =2160
                    LayoutCachedTop =1593
                    LayoutCachedWidth =19560
                    LayoutCachedHeight =10773
                    BorderShade =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =2160
                            Top =1353
                            Width =3075
                            Height =270
                            Name ="Bezeichnungsfeld50"
                            Caption ="Begehungstermine:"
                            LayoutCachedLeft =2160
                            LayoutCachedTop =1353
                            LayoutCachedWidth =5235
                            LayoutCachedHeight =1623
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =18435
                    Top =10998
                    Width =1125
                    Height =375
                    FontSize =10
                    TabIndex =3
                    ForeColor =-2147483630
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"
                    Tag ="*Admin*Speziell_A*"

                    LayoutCachedLeft =18435
                    LayoutCachedTop =10998
                    LayoutCachedWidth =19560
                    LayoutCachedHeight =11373
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =13379
                    Top =623
                    Width =4605
                    Height =375
                    FontSize =10
                    TabIndex =4
                    ForeColor =-2147483630
                    Name ="BS_Liste_drucken"
                    Caption ="Liste ausdrucken"
                    OnClick ="[Event Procedure]"
                    Tag ="*Admin*Speziell_A*"

                    LayoutCachedLeft =13379
                    LayoutCachedTop =623
                    LayoutCachedWidth =17984
                    LayoutCachedHeight =998
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =120
                    Top =5895
                    Width =1665
                    Height =855
                    FontSize =10
                    TabIndex =5
                    ForeColor =-2147483630
                    Name ="BS_Neues_Beg_Jahr"
                    Caption ="Neues \015\012Begehungsjahr \015\012anlegen.."
                    OnClick ="[Event Procedure]"
                    Tag ="*Admin*Speziell_A*"

                    LayoutCachedLeft =120
                    LayoutCachedTop =5895
                    LayoutCachedWidth =1785
                    LayoutCachedHeight =6750
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =120
                    Top =6870
                    Width =1665
                    Height =855
                    FontSize =10
                    TabIndex =6
                    ForeColor =-2147483630
                    Name ="BS_Beg_Jahr_Aktual"
                    Caption ="Begehungsjahr \015\012aktualisieren"
                    OnClick ="[Event Procedure]"
                    Tag ="*Admin*Speziell_A*"

                    LayoutCachedLeft =120
                    LayoutCachedTop =6870
                    LayoutCachedWidth =1785
                    LayoutCachedHeight =7725
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                End
                Begin Label
                    Visible = NotDefault
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =8900
                    Top =170
                    Width =4425
                    Height =945
                    FontWeight =400
                    BackColor =62207
                    BorderColor =12349952
                    ForeColor =2366701
                    Name ="BF_Hinweis"
                    Caption ="Eingabe von Begehungsterminen ist nur bei den Objektverantwortlichen (Hochbau) m"
                        "öglich.\015\012Diese Termine werden für die Fachplaner übernommen.\015\012(ab Ve"
                        "rsion 27.09.2019 stillgesetzt)"
                    LayoutCachedLeft =8900
                    LayoutCachedTop =170
                    LayoutCachedWidth =13325
                    LayoutCachedHeight =1115
                    BorderTint =100.0
                    ForeShade =100.0
                End
                Begin OptionGroup
                    OverlapFlags =215
                    Left =4823
                    Top =856
                    Width =3920
                    Height =369
                    TabIndex =7
                    Name ="OR_VerantwortlicherSB"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="1"
                    GridlineColor =10921638

                    LayoutCachedLeft =4823
                    LayoutCachedTop =856
                    LayoutCachedWidth =8743
                    LayoutCachedHeight =1225
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    BorderShade =100.0
                    Begin
                        Begin OptionButton
                            OverlapFlags =87
                            Left =4986
                            Top =938
                            OptionValue =1
                            BorderColor =10921638
                            Name ="Op_Beg_SB_aktiv"
                            GridlineColor =10921638

                            LayoutCachedLeft =4986
                            LayoutCachedTop =938
                            LayoutCachedWidth =5246
                            LayoutCachedHeight =1178
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OverlapFlags =247
                                    Left =5219
                                    Top =912
                                    Width =1476
                                    Height =255
                                    FontSize =8
                                    BackColor =-2147483633
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld89"
                                    Caption =" aktive Mitarbeiter"
                                    LayoutCachedLeft =5219
                                    LayoutCachedTop =912
                                    LayoutCachedWidth =6695
                                    LayoutCachedHeight =1167
                                    BorderTint =100.0
                                    GridlineShade =100.0
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =7028
                            Top =938
                            OptionValue =2
                            BorderColor =10921638
                            Name ="Op_Beg_SB_inaktiv"
                            GridlineColor =10921638

                            LayoutCachedLeft =7028
                            LayoutCachedTop =938
                            LayoutCachedWidth =7288
                            LayoutCachedHeight =1178
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OverlapFlags =247
                                    Left =7262
                                    Top =912
                                    Width =1306
                                    Height =255
                                    FontSize =8
                                    BackColor =-2147483633
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld91"
                                    Caption =" Alle Mitarbeiter"
                                    LayoutCachedLeft =7262
                                    LayoutCachedTop =912
                                    LayoutCachedWidth =8568
                                    LayoutCachedHeight =1167
                                    BorderTint =100.0
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
' See "frm_500_010_Gebaeudebegehungen.cls"
