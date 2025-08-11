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
    AllowUpdating =1
    ScrollBars =2
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =18822
    DatasheetFontHeight =10
    ItemSuffix =189
    Left =10763
    Top =12360
    Right =29588
    Bottom =19995
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0xaf606a35ee91e540
    End
    RecordSource ="qry_020_05_05_Arb_Programm"
    Caption ="Maßnahmen - Teilmaßnahmen - Terminplanung"
    OnCurrent ="[Event Procedure]"
    BeforeUpdate ="[Event Procedure]"
    OnOpen ="[Event Procedure]"
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
        Begin FormHeader
            Height =3979
            BackColor =16514043
            Name ="Formularkopf"
            AlternateBackShade =95.0
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =9509
                    Top =3345
                    Width =1260
                    Height =435
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld45"
                    Caption ="voraussichtl.\015\012Kosten"
                    GridlineColor =10921638
                    LayoutCachedLeft =9509
                    LayoutCachedTop =3345
                    LayoutCachedWidth =10769
                    LayoutCachedHeight =3780
                    ColumnStart =3
                    ColumnEnd =3
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =10979
                    Top =3345
                    Width =900
                    Height =435
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld33"
                    Caption ="Start\015\012Ende"
                    GridlineColor =10921638
                    LayoutCachedLeft =10979
                    LayoutCachedTop =3345
                    LayoutCachedWidth =11879
                    LayoutCachedHeight =3780
                    ColumnStart =4
                    ColumnEnd =4
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =13430
                    Top =3349
                    Width =900
                    Height =435
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld37"
                    Caption ="Start\015\012Ende"
                    GridlineColor =10921638
                    LayoutCachedLeft =13430
                    LayoutCachedTop =3349
                    LayoutCachedWidth =14330
                    LayoutCachedHeight =3784
                    ColumnStart =8
                    ColumnEnd =8
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =12209
                    Top =3349
                    Width =900
                    Height =435
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld35"
                    Caption ="Start\015\012Ende"
                    GridlineColor =10921638
                    LayoutCachedLeft =12209
                    LayoutCachedTop =3349
                    LayoutCachedWidth =13109
                    LayoutCachedHeight =3784
                    ColumnStart =6
                    ColumnEnd =6
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =7545
                    Top =3525
                    Width =778
                    Height =270
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld31"
                    Caption ="Sachb."
                    GridlineColor =10921638
                    LayoutCachedLeft =7545
                    LayoutCachedTop =3525
                    LayoutCachedWidth =8323
                    LayoutCachedHeight =3795
                    ColumnStart =2
                    ColumnEnd =2
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =14639
                    Top =3349
                    Width =900
                    Height =435
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld39"
                    Caption ="Start\015\012Ende"
                    GridlineColor =10921638
                    LayoutCachedLeft =14639
                    LayoutCachedTop =3349
                    LayoutCachedWidth =15539
                    LayoutCachedHeight =3784
                    ColumnStart =10
                    ColumnEnd =10
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =15842
                    Top =3349
                    Width =900
                    Height =435
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld41"
                    Caption ="Start\015\012Ende"
                    GridlineColor =10921638
                    LayoutCachedLeft =15842
                    LayoutCachedTop =3349
                    LayoutCachedWidth =16742
                    LayoutCachedHeight =3784
                    ColumnStart =12
                    ColumnEnd =12
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =170
                    Top =3288
                    Width =1303
                    Height =255
                    BackColor =15728383
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld32"
                    Caption ="Objekt"
                    GridlineColor =10921638
                    LayoutCachedLeft =170
                    LayoutCachedTop =3288
                    LayoutCachedWidth =1473
                    LayoutCachedHeight =3543
                    ColumnStart =1
                    ColumnEnd =1
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =10787
                    Top =2490
                    Width =1395
                    Height =240
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld139"
                    Caption ="Terminplanung:"
                    LayoutCachedLeft =10787
                    LayoutCachedTop =2490
                    LayoutCachedWidth =12182
                    LayoutCachedHeight =2730
                    ForeShade =50.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =10787
                    Top =2820
                    Width =1215
                    Height =495
                    BackColor =62207
                    BorderColor =8355711
                    ForeColor =0
                    Name ="Bezeichnungsfeld140"
                    Caption ="Grundlagen-\015\012Ermittlung"
                    GridlineColor =10921638
                    LayoutCachedLeft =10787
                    LayoutCachedTop =2820
                    LayoutCachedWidth =12002
                    LayoutCachedHeight =3315
                    BorderTint =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =12092
                    Top =2820
                    Width =1140
                    Height =495
                    BackColor =5026082
                    BorderColor =8355711
                    ForeColor =0
                    Name ="Bezeichnungsfeld141"
                    Caption ="\015\012Planung"
                    GridlineColor =10921638
                    LayoutCachedLeft =12092
                    LayoutCachedTop =2820
                    LayoutCachedWidth =13232
                    LayoutCachedHeight =3315
                    BorderTint =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =13307
                    Top =2820
                    Width =1140
                    Height =495
                    BackColor =2366701
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld142"
                    Caption ="Aus-\015\012schreibung"
                    GridlineColor =10921638
                    LayoutCachedLeft =13307
                    LayoutCachedTop =2820
                    LayoutCachedWidth =14447
                    LayoutCachedHeight =3315
                    BorderTint =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =14525
                    Top =2820
                    Width =1140
                    Height =495
                    BackColor =12349952
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld143"
                    Caption ="Aus-\015\012führung"
                    GridlineColor =10921638
                    LayoutCachedLeft =14525
                    LayoutCachedTop =2820
                    LayoutCachedWidth =15665
                    LayoutCachedHeight =3315
                    BorderTint =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =15722
                    Top =2820
                    Width =1140
                    Height =495
                    BackColor =0
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld144"
                    Caption ="Ab-\015\012rechnung"
                    GridlineColor =10921638
                    LayoutCachedLeft =15722
                    LayoutCachedTop =2820
                    LayoutCachedWidth =16862
                    LayoutCachedHeight =3315
                    BorderTint =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =16910
                    Top =2820
                    Width =1140
                    Height =495
                    BackColor =11525325
                    BorderColor =8355711
                    ForeColor =0
                    Name ="Bezeichnungsfeld146"
                    Caption ="Abschluss\015\012mit DB"
                    GridlineColor =10921638
                    LayoutCachedLeft =16910
                    LayoutCachedTop =2820
                    LayoutCachedWidth =18050
                    LayoutCachedHeight =3315
                    BorderTint =50.0
                    GridlineShade =65.0
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =2
                    OverlapFlags =93
                    Left =165
                    Top =3857
                    Width =17929
                    Height =13
                    BorderColor =12566463
                    Name ="Linie147"
                    LayoutCachedLeft =165
                    LayoutCachedTop =3857
                    LayoutCachedWidth =18094
                    LayoutCachedHeight =3870
                    BorderShade =75.0
                End
                Begin Line
                    OldBorderStyle =0
                    BorderWidth =0
                    OverlapFlags =85
                    Left =10979
                    Top =2775
                    Width =7163
                    BorderColor =8355711
                    Name ="Linie149"
                    GridlineColor =10921638
                    LayoutCachedLeft =10979
                    LayoutCachedTop =2775
                    LayoutCachedWidth =18142
                    LayoutCachedHeight =2775
                    BorderTint =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =8627
                    Top =3330
                    Width =810
                    Height =465
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld155"
                    Caption ="Umsetz.-\015\012jahr:"
                    GridlineColor =10921638
                    LayoutCachedLeft =8627
                    LayoutCachedTop =3330
                    LayoutCachedWidth =9437
                    LayoutCachedHeight =3795
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin ListBox
                    SpecialEffect =3
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =165
                    Top =933
                    Width =2010
                    Height =2242
                    ColumnOrder =3
                    FontSize =9
                    TabIndex =1
                    BackColor =15466495
                    BorderColor =12632256
                    Name ="LF_Ums_Jahr"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Kalenderjahre.Jahr, Kalenderjahre.TerminPlanung_geblockt, fc_Recht()=\"*S"
                        "peziell_A*\" Or fc_Recht()=\"*Admin*\" AS Adm_Auswahl FROM Kalenderjahre WHERE ("
                        "((Kalenderjahre.Jahr)<=Year(Date())+5) AND ((fc_Recht()=\"*Speziell_A*\" Or fc_R"
                        "echt()=\"*Admin*\")=True)) OR (((Kalenderjahre.Jahr)<=IIf(Month(Date())=12,Year("
                        "Date())+1,Year(Date()))) AND ((fc_Recht()=\"*Speziell_A*\" Or fc_Recht()=\"*Admi"
                        "n*\")=False)) ORDER BY Kalenderjahre.Jahr;"
                    ColumnWidths =";0"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="=Year(Date())"

                    LayoutCachedLeft =165
                    LayoutCachedTop =933
                    LayoutCachedWidth =2175
                    LayoutCachedHeight =3175
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =0
                            Left =165
                            Top =586
                            Width =1635
                            Height =255
                            ForeColor =0
                            Name ="Bezeichnungsfeld83"
                            Caption ="Umsetzungsjahr:"
                            LayoutCachedLeft =165
                            LayoutCachedTop =586
                            LayoutCachedWidth =1800
                            LayoutCachedHeight =841
                        End
                    End
                End
                Begin Label
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =0
                    Left =165
                    Top =120
                    Width =17700
                    Height =345
                    FontSize =12
                    ForeColor =0
                    Name ="Bezeichnungsfeld168"
                    Caption ="Maßnahmen - Teilmaßnahmen - Terminplanung"
                    LayoutCachedLeft =165
                    LayoutCachedTop =120
                    LayoutCachedWidth =17865
                    LayoutCachedHeight =465
                End
                Begin Label
                    OverlapFlags =215
                    TextAlign =1
                    Left =345
                    Top =3600
                    Width =5715
                    Height =255
                    FontWeight =400
                    BackColor =15728383
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld169"
                    Caption ="Maßnahem -> Teilmaßnahme"
                    GridlineColor =10921638
                    LayoutCachedLeft =345
                    LayoutCachedTop =3600
                    LayoutCachedWidth =6060
                    LayoutCachedHeight =3855
                    ColumnStart =1
                    ColumnEnd =1
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =2310
                    Top =1308
                    Width =1680
                    Height =1395
                    FontWeight =700
                    TabIndex =2
                    Name ="BS_KJ_blocken"
                    Caption ="Zum \015\012ausgewählten\015\012Kalenderjahr \015\012Terminplanungen \015\012blo"
                        "ckieren / \015\012freigeben"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                    Tag ="*Admin*"

                    LayoutCachedLeft =2310
                    LayoutCachedTop =1308
                    LayoutCachedWidth =3990
                    LayoutCachedHeight =2703
                    Overlaps =1
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =2
                    Left =2310
                    Top =960
                    Width =1638
                    Height =285
                    BorderColor =255
                    ForeColor =1643706
                    Name ="Bezeichnungsfeld171"
                    Caption ="nur Admin "
                    Tag ="*Admin*"
                    LayoutCachedLeft =2310
                    LayoutCachedTop =960
                    LayoutCachedWidth =3948
                    LayoutCachedHeight =1245
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OldBorderStyle =0
                    OverlapFlags =85
                    BackStyle =1
                    IMESentenceMode =3
                    Left =10787
                    Top =2145
                    Width =4261
                    ColumnOrder =2
                    FontWeight =700
                    TabIndex =3
                    BackColor =16514043
                    ForeColor =8355711
                    Name ="TF_Hinw_Geblockt"
                    ControlSource ="=\"Terminplanung zu \" & [LF_Ums_Jahr] & IIf([LF_Ums_Jahr].[column](1)=True,\" g"
                        "eblockt\",\" frei zur Eingabe\")"

                    LayoutCachedLeft =10787
                    LayoutCachedTop =2145
                    LayoutCachedWidth =15048
                    LayoutCachedHeight =2415
                End
                Begin Rectangle
                    OverlapFlags =215
                    Left =2265
                    Top =915
                    Width =1771
                    Height =1824
                    BorderColor =1643706
                    Name ="Rechteck175"
                    Tag ="*Admin*"
                    LayoutCachedLeft =2265
                    LayoutCachedTop =915
                    LayoutCachedWidth =4036
                    LayoutCachedHeight =2739
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4311
                    Top =1980
                    Width =5257
                    Height =345
                    FontWeight =700
                    TabIndex =4
                    Name ="BS_ArbProg_Bericht"
                    Caption ="Arbeitsprogramm Bericht"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =4311
                    LayoutCachedTop =1980
                    LayoutCachedWidth =9568
                    LayoutCachedHeight =2325
                    Overlaps =1
                End
                Begin OptionGroup
                    SpecialEffect =3
                    OverlapFlags =85
                    Left =4365
                    Top =915
                    Width =2842
                    Height =969
                    ColumnOrder =1
                    TabIndex =5
                    Name ="OR_SB_Variante"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="1"

                    LayoutCachedLeft =4365
                    LayoutCachedTop =915
                    LayoutCachedWidth =7207
                    LayoutCachedHeight =1884
                    Begin
                        Begin OptionButton
                            OverlapFlags =87
                            Left =4535
                            Top =1142
                            OptionValue =1
                            Name ="Option180"

                            LayoutCachedLeft =4535
                            LayoutCachedTop =1142
                            LayoutCachedWidth =4795
                            LayoutCachedHeight =1382
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    TextAlign =1
                                    Left =4762
                                    Top =1105
                                    Width =1995
                                    Height =270
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld181"
                                    Caption ="Alle Sachbearbeiter"
                                    GridlineColor =10921638
                                    LayoutCachedLeft =4762
                                    LayoutCachedTop =1105
                                    LayoutCachedWidth =6757
                                    LayoutCachedHeight =1375
                                    ForeShade =50.0
                                    GridlineShade =65.0
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =4535
                            Top =1470
                            TabIndex =1
                            OptionValue =2
                            Name ="Option182"

                            LayoutCachedLeft =4535
                            LayoutCachedTop =1470
                            LayoutCachedWidth =4795
                            LayoutCachedHeight =1710
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    TextAlign =1
                                    Left =4765
                                    Top =1445
                                    Width =1995
                                    Height =270
                                    ForeColor =4138256
                                    Name ="Bezeichnungsfeld183"
                                    Caption ="Ein Sachbearbeiter"
                                    GridlineColor =10921638
                                    LayoutCachedLeft =4765
                                    LayoutCachedTop =1445
                                    LayoutCachedWidth =6760
                                    LayoutCachedHeight =1715
                                    ForeShade =50.0
                                    GridlineShade =65.0
                                End
                            End
                        End
                    End
                End
                Begin ComboBox
                    Visible = NotDefault
                    SpecialEffect =3
                    OverlapFlags =85
                    BackStyle =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =7515
                    Top =1307
                    Width =2010
                    Height =285
                    ColumnOrder =0
                    BackColor =15466495
                    ForeColor =0
                    Name ="LF_Sachb"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, Sachbearbeiter.Name FROM Sachbearbeiter WHERE ((([Obje"
                        "ktverantwortlicher]=True Or [Fachplaner_Elektro]=True Or [Fachplaner_HLS]=True)="
                        "True) AND ((Sachbearbeiter.ausgesch_Jahr) Is Null)) ORDER BY Sachbearbeiter.Name"
                        ";"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =7515
                    LayoutCachedTop =1307
                    LayoutCachedWidth =9525
                    LayoutCachedHeight =1592
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =0
                            Left =7515
                            Top =960
                            Width =1635
                            Height =255
                            ForeColor =0
                            Name ="Bezeichnungsfeld164"
                            Caption ="Sachbearbeiter:"
                            LayoutCachedLeft =7515
                            LayoutCachedTop =960
                            LayoutCachedWidth =9150
                            LayoutCachedHeight =1215
                        End
                    End
                End
                Begin Rectangle
                    BackStyle =1
                    OldBorderStyle =0
                    OverlapFlags =93
                    Left =1872
                    Top =3299
                    Width =222
                    Height =229
                    BackColor =967423
                    BorderColor =2366701
                    Name ="Rechteck186"
                    LayoutCachedLeft =1872
                    LayoutCachedTop =3299
                    LayoutCachedWidth =2094
                    LayoutCachedHeight =3528
                End
                Begin Label
                    OverlapFlags =215
                    TextAlign =1
                    Left =1757
                    Top =3291
                    Width =4307
                    Height =249
                    FontWeight =400
                    BackColor =15728383
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld187"
                    Caption ="(      : Maßnahme mit aktivierbarer Eigenleistung)"
                    GridlineColor =10921638
                    LayoutCachedLeft =1757
                    LayoutCachedTop =3291
                    LayoutCachedWidth =6064
                    LayoutCachedHeight =3540
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4311
                    Top =2445
                    Width =5257
                    Height =345
                    FontWeight =700
                    TabIndex =6
                    Name ="BS_Akt_Eigenl"
                    Caption ="Aktivierbare Eigenleistungen bearbeiten"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =4311
                    LayoutCachedTop =2445
                    LayoutCachedWidth =9568
                    LayoutCachedHeight =2790
                End
            End
        End
        Begin Section
            Height =737
            BackColor =16514043
            Name ="Detailbereich"
            AlternateBackColor =16514043
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =517
                    Top =60
                    Width =6729
                    Height =255
                    ColumnWidth =3855
                    FontWeight =700
                    TabIndex =1
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Teilmaßname"
                    ControlSource ="Obj"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =517
                    LayoutCachedTop =60
                    LayoutCachedWidth =7246
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =10941
                    Top =56
                    Width =900
                    Height =255
                    TabIndex =5
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Grundl_Erm_Start"
                    ControlSource ="Dat_Grundl_Erm_Start"
                    Format ="mmm yyyy"
                    Tag ="*Datumsfeld*"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =10941
                    LayoutCachedTop =56
                    LayoutCachedWidth =11841
                    LayoutCachedHeight =311
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =10941
                    Top =315
                    Width =900
                    Height =255
                    TabIndex =6
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Grundl_Erm_Ende"
                    ControlSource ="Dat_Grundl_Erm_Ende"
                    Format ="mmm yyyy"
                    AfterUpdate ="[Event Procedure]"
                    Tag ="*Datumsfeld*"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =10941
                    LayoutCachedTop =315
                    LayoutCachedWidth =11841
                    LayoutCachedHeight =570
                    RowStart =1
                    RowEnd =1
                    ColumnStart =5
                    ColumnEnd =5
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =12209
                    Top =30
                    Width =900
                    Height =255
                    TabIndex =7
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Planung_Start"
                    ControlSource ="Dat_Planung_Start"
                    Format ="mmm yyyy"
                    Tag ="*Datumsfeld*"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =12209
                    LayoutCachedTop =30
                    LayoutCachedWidth =13109
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =6
                    ColumnEnd =6
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =12209
                    Top =315
                    Width =900
                    Height =255
                    TabIndex =8
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Planung_Ende"
                    ControlSource ="Dat_Planung_Ende"
                    Format ="mmm yyyy"
                    AfterUpdate ="[Event Procedure]"
                    Tag ="*Datumsfeld*"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =12209
                    LayoutCachedTop =315
                    LayoutCachedWidth =13109
                    LayoutCachedHeight =570
                    RowStart =1
                    RowEnd =1
                    ColumnStart =7
                    ColumnEnd =7
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =13430
                    Top =30
                    Width =900
                    Height =255
                    TabIndex =9
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Ausschr_Start"
                    ControlSource ="Dat_Ausschr_Start"
                    Format ="mmm yyyy"
                    Tag ="*Datumsfeld*"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =13430
                    LayoutCachedTop =30
                    LayoutCachedWidth =14330
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =8
                    ColumnEnd =8
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =13436
                    Top =340
                    Width =900
                    Height =255
                    TabIndex =10
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Ausschr_Ende"
                    ControlSource ="Dat_Ausschr_Ende"
                    Format ="mmm yyyy"
                    AfterUpdate ="[Event Procedure]"
                    Tag ="*Datumsfeld*"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =13436
                    LayoutCachedTop =340
                    LayoutCachedWidth =14336
                    LayoutCachedHeight =595
                    RowStart =1
                    RowEnd =1
                    ColumnStart =9
                    ColumnEnd =9
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =14639
                    Top =30
                    Width =900
                    Height =255
                    TabIndex =11
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Ausf_Start"
                    ControlSource ="Dat_Ausf_Start"
                    Format ="mmm yyyy"
                    Tag ="*Datumsfeld*"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =14639
                    LayoutCachedTop =30
                    LayoutCachedWidth =15539
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =10
                    ColumnEnd =10
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =14639
                    Top =315
                    Width =900
                    Height =255
                    TabIndex =12
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Ausf_Ende"
                    ControlSource ="Dat_Ausf_Ende"
                    Format ="mmm yyyy"
                    AfterUpdate ="[Event Procedure]"
                    Tag ="*Datumsfeld*"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =14639
                    LayoutCachedTop =315
                    LayoutCachedWidth =15539
                    LayoutCachedHeight =570
                    RowStart =1
                    RowEnd =1
                    ColumnStart =11
                    ColumnEnd =11
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =15842
                    Top =30
                    Width =900
                    Height =255
                    TabIndex =13
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Abr_Start"
                    ControlSource ="Dat_Abr_Start"
                    Format ="mmm yyyy"
                    Tag ="*Datumsfeld*"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =15842
                    LayoutCachedTop =30
                    LayoutCachedWidth =16742
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =12
                    ColumnEnd =12
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =15842
                    Top =315
                    Width =900
                    Height =255
                    TabIndex =14
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Abr_Ende"
                    ControlSource ="Dat_Abr_Ende"
                    Format ="mmm yyyy"
                    Tag ="*Datumsfeld*"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =15842
                    LayoutCachedTop =315
                    LayoutCachedWidth =16742
                    LayoutCachedHeight =570
                    RowStart =1
                    RowEnd =1
                    ColumnStart =13
                    ColumnEnd =13
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =93
                    TextAlign =0
                    IMESentenceMode =3
                    Left =17071
                    Top =52
                    Width =900
                    Height =255
                    FontWeight =700
                    TabIndex =16
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Abschluss_DB"
                    ControlSource ="Dat_Abschluss_DB"
                    Format ="mmm yyyy"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =17071
                    LayoutCachedTop =52
                    LayoutCachedWidth =17971
                    LayoutCachedHeight =307
                    RowStart =1
                    RowEnd =1
                    ColumnStart =15
                    ColumnEnd =15
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    DecimalPlaces =0
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =0
                    IMESentenceMode =3
                    Left =9504
                    Top =150
                    Width =1260
                    Height =255
                    ColumnWidth =2385
                    FontWeight =700
                    TabIndex =4
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="voraussichtliche Kosten"
                    ControlSource ="voraussichtliche Kosten"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="voraussichtliche_Kosten"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =9504
                    LayoutCachedTop =150
                    LayoutCachedWidth =10764
                    LayoutCachedHeight =405
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =60
                    Top =60
                    Width =114
                    Height =255
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="TF_ID"
                    ControlSource ="ID"
                    Tag ="imm_uns_bar"
                    GridlineColor =10921638

                    LayoutCachedLeft =60
                    LayoutCachedTop =60
                    LayoutCachedWidth =174
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =2
                    OverlapFlags =85
                    Left =165
                    Top =619
                    Width =17876
                    BorderColor =1643706
                    Name ="Linie150"
                    LayoutCachedLeft =165
                    LayoutCachedTop =619
                    LayoutCachedWidth =18041
                    LayoutCachedHeight =619
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    TextAlign =0
                    IMESentenceMode =3
                    Left =8889
                    Top =150
                    Width =543
                    Height =255
                    FontWeight =700
                    TabIndex =3
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Umsetzungsjahr"
                    ControlSource ="Umsetzungsjahr"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =8889
                    LayoutCachedTop =150
                    LayoutCachedWidth =9432
                    LayoutCachedHeight =405
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =5
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7545
                    Top =165
                    Width =1190
                    Height =255
                    FontWeight =700
                    TabIndex =2
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Sachbearbeiter"
                    ControlSource ="Name"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =7545
                    LayoutCachedTop =165
                    LayoutCachedWidth =8735
                    LayoutCachedHeight =420
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =255
                    IMESentenceMode =3
                    Left =517
                    Top =285
                    Width =6848
                    Height =255
                    TabIndex =17
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Text156"
                    ControlSource ="Massn_Teilm"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =517
                    LayoutCachedTop =285
                    LayoutCachedWidth =7365
                    LayoutCachedHeight =540
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin Rectangle
                    OverlapFlags =255
                    Left =170
                    Top =15
                    Width =7309
                    Height =565
                    BorderColor =10855845
                    Name ="Rechteck157"
                    LayoutCachedLeft =170
                    LayoutCachedTop =15
                    LayoutCachedWidth =7479
                    LayoutCachedHeight =580
                End
                Begin TextBox
                    OverlapFlags =247
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =17056
                    Top =52
                    Width =900
                    Height =255
                    TabIndex =15
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="TF_Dat_Abschluss_DB"
                    ControlSource ="Dat_Abschluss_DB"
                    Format ="mmm yyyy"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =17056
                    LayoutCachedTop =52
                    LayoutCachedWidth =17956
                    LayoutCachedHeight =307
                    RowStart =1
                    RowEnd =1
                    ColumnStart =12
                    ColumnEnd =12
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =247
                    TextAlign =2
                    BackStyle =1
                    IMESentenceMode =3
                    Left =222
                    Top =60
                    Width =235
                    Height =255
                    TabIndex =18
                    BackColor =16514043
                    BorderColor =16514043
                    ForeColor =16514043
                    Name ="TF_Akt_Eigenl"
                    ControlSource ="akt_Eigenl"
                    ConditionalFormat = Begin
                        0x010000006a000000010000000000000002000000000000000400000001000000 ,
                        0xffc20e00ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x22005800220000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =222
                    LayoutCachedTop =60
                    LayoutCachedWidth =457
                    LayoutCachedHeight =315
                    RowStart =1
                    RowEnd =1
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001000000ffc20e00ffc20e00030000002200 ,
                        0x58002200000000000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
            End
        End
        Begin FormFooter
            CanGrow = NotDefault
            Height =737
            BackColor =16514043
            Name ="Formularfuß"
            AlternateBackShade =95.0
            Begin
                Begin Line
                    BorderWidth =2
                    OverlapFlags =85
                    Left =165
                    Top =75
                    Width =17693
                    BorderColor =12566463
                    Name ="Linie148"
                    LayoutCachedLeft =165
                    LayoutCachedTop =75
                    LayoutCachedWidth =17858
                    LayoutCachedHeight =75
                    BorderShade =75.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =15927
                    Top =226
                    Width =2010
                    Height =345
                    FontWeight =700
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =15927
                    LayoutCachedTop =226
                    LayoutCachedWidth =17937
                    LayoutCachedHeight =571
                    Overlaps =1
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_030_10_Maßn_SB_Term_planung.cls"
