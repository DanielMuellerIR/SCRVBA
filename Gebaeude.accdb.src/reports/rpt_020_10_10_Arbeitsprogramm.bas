Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    RecordLocks =2
    BorderStyle =3
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =15697
    DatasheetFontHeight =11
    ItemSuffix =389
    Left =8175
    Top =2445
    OnNoData ="[Event Procedure]"
    RecSrcDt = Begin
        0x37002ff3f091e540
    End
    RecordSource ="qry_020_10_10_Rep_Arbeitsprogramm"
    Caption ="Arbeitsprogramm"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    FilterOnLoad =0
    FitToPage =1
    DisplayOnSharePointSite =1
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
            BorderLineStyle =0
            Width =850
            Height =850
            BorderShade =65.0
            GridlineShade =65.0
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
            GridlineShade =65.0
        End
        Begin TextBox
            AutoLabel = NotDefault
            AddColon = NotDefault
            FELineBreak = NotDefault
            OldBorderStyle =0
            TextAlign =1
            BorderLineStyle =0
            Width =1701
            Height =270
            LabelX =-1701
            FontSize =9
            BorderColor =10921638
            FontName ="Calibri"
            AsianLineBreak =1
            ShowDatePicker =0
            BorderShade =65.0
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
            BorderShade =65.0
            ForeTint =75.0
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
            BorderShade =65.0
            ForeShade =50.0
            GridlineShade =65.0
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin PageBreak
            Width =283
        End
        Begin EmptyCell
            Height =240
            GridlineColor =12632256
            GridlineShade =65.0
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Sort"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Obj_Massn"
        End
        Begin BreakLevel
            ControlSource ="Teilmaßname"
        End
        Begin BreakLevel
            ControlSource ="Sachbearbeiter"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =737
            Name ="Berichtskopf"
            AlternateBackShade =95.0
            Begin
                Begin TextBox
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =0
                    IMESentenceMode =3
                    Left =60
                    Top =120
                    Width =6345
                    Height =420
                    ColumnOrder =0
                    FontSize =14
                    FontWeight =700
                    BackColor =15921906
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld212"
                    ControlSource ="=\"Arbeitsprogramm \" & F_Variable(\"lng_Kalk_Jahr\")"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =60
                    LayoutCachedTop =120
                    LayoutCachedWidth =6405
                    LayoutCachedHeight =540
                    BackShade =95.0
                    BorderShade =100.0
                End
                Begin Line
                    Visible = NotDefault
                    BorderWidth =1
                    Left =13545
                    Top =90
                    Width =0
                    Height =540
                    BorderColor =204
                    Name ="LI_Heute"
                    Tag ="Heute"
                    LayoutCachedLeft =13545
                    LayoutCachedTop =90
                    LayoutCachedWidth =13545
                    LayoutCachedHeight =630
                End
                Begin Label
                    Visible = NotDefault
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =3
                    Left =12690
                    Top =165
                    Width =855
                    Height =285
                    FontSize =9
                    Name ="BF_Heute"
                    Caption =" "
                    FontName ="Arial Narrow"
                    Tag ="Heute"
                    LayoutCachedLeft =12690
                    LayoutCachedTop =165
                    LayoutCachedWidth =13545
                    LayoutCachedHeight =450
                End
            End
        End
        Begin PageHeader
            Height =56
            Name ="Seitenkopfbereich"
            AlternateBackShade =95.0
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            RepeatSection = NotDefault
            ForceNewPage =1
            Height =1190
            Name ="Gruppenkopf2"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    BorderWidth =1
                    IMESentenceMode =3
                    Top =113
                    Width =66
                    Height =330
                    ColumnWidth =4155
                    FontSize =10
                    TabIndex =1
                    BorderColor =0
                    Name ="Sort"
                    ControlSource ="Sort"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedTop =113
                    LayoutCachedWidth =66
                    LayoutCachedHeight =443
                    BorderShade =100.0
                End
                Begin Label
                    TextAlign =3
                    Left =9917
                    Top =795
                    Width =930
                    Height =270
                    FontSize =8
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld272"
                    Caption ="Kosten Teilm."
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =9917
                    LayoutCachedTop =795
                    LayoutCachedWidth =10847
                    LayoutCachedHeight =1065
                    ColumnStart =1
                    ColumnEnd =1
                    ForeTint =100.0
                End
                Begin Label
                    Vertical = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    Left =12226
                    Top =723
                    Width =284
                    Height =345
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld3"
                    Caption ="Jan"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =12226
                    LayoutCachedTop =723
                    LayoutCachedWidth =12510
                    LayoutCachedHeight =1068
                    ColumnStart =2
                    ColumnEnd =2
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
                Begin Label
                    Vertical = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    Left =12510
                    Top =723
                    Width =284
                    Height =345
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld4"
                    Caption ="Feb"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =12510
                    LayoutCachedTop =723
                    LayoutCachedWidth =12794
                    LayoutCachedHeight =1068
                    ColumnStart =3
                    ColumnEnd =3
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
                Begin Label
                    Vertical = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    Left =12794
                    Top =723
                    Width =284
                    Height =345
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld5"
                    Caption ="Mrz"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =12794
                    LayoutCachedTop =723
                    LayoutCachedWidth =13078
                    LayoutCachedHeight =1068
                    ColumnStart =4
                    ColumnEnd =4
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
                Begin Label
                    Vertical = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    Left =13078
                    Top =723
                    Width =284
                    Height =345
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld26"
                    Caption ="Apr"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =13078
                    LayoutCachedTop =723
                    LayoutCachedWidth =13362
                    LayoutCachedHeight =1068
                    ColumnStart =5
                    ColumnEnd =5
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
                Begin Label
                    Vertical = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    Left =13362
                    Top =723
                    Width =284
                    Height =345
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld64"
                    Caption ="Mai"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =13362
                    LayoutCachedTop =723
                    LayoutCachedWidth =13646
                    LayoutCachedHeight =1068
                    ColumnStart =6
                    ColumnEnd =6
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
                Begin Label
                    Vertical = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    Left =13646
                    Top =723
                    Width =284
                    Height =345
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld65"
                    Caption ="Jun"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =13646
                    LayoutCachedTop =723
                    LayoutCachedWidth =13930
                    LayoutCachedHeight =1068
                    ColumnStart =7
                    ColumnEnd =7
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
                Begin Label
                    Vertical = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    Left =13930
                    Top =723
                    Width =284
                    Height =345
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld66"
                    Caption ="Jul"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =13930
                    LayoutCachedTop =723
                    LayoutCachedWidth =14214
                    LayoutCachedHeight =1068
                    ColumnStart =8
                    ColumnEnd =8
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
                Begin Label
                    Vertical = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    Left =14214
                    Top =723
                    Width =284
                    Height =345
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld67"
                    Caption ="Aug"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =14214
                    LayoutCachedTop =723
                    LayoutCachedWidth =14498
                    LayoutCachedHeight =1068
                    ColumnStart =9
                    ColumnEnd =9
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
                Begin Label
                    Vertical = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    Left =14782
                    Top =723
                    Width =284
                    Height =345
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld69"
                    Caption ="Okt"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =14782
                    LayoutCachedTop =723
                    LayoutCachedWidth =15066
                    LayoutCachedHeight =1068
                    ColumnStart =11
                    ColumnEnd =11
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
                Begin Label
                    Vertical = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    Left =15066
                    Top =723
                    Width =284
                    Height =345
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld70"
                    Caption ="Nov"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =15066
                    LayoutCachedTop =723
                    LayoutCachedWidth =15350
                    LayoutCachedHeight =1068
                    ColumnStart =12
                    ColumnEnd =12
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
                Begin Label
                    Vertical = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    Left =15350
                    Top =723
                    Width =284
                    Height =345
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld71"
                    Caption ="Dez"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =15350
                    LayoutCachedTop =723
                    LayoutCachedWidth =15634
                    LayoutCachedHeight =1068
                    ColumnStart =13
                    ColumnEnd =13
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
                Begin Label
                    Vertical = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    Left =14498
                    Top =723
                    Width =284
                    Height =345
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld68"
                    Caption ="Sep"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =14498
                    LayoutCachedTop =723
                    LayoutCachedWidth =14782
                    LayoutCachedHeight =1068
                    ColumnStart =10
                    ColumnEnd =10
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =1
                    Left =165
                    Top =480
                    Width =2850
                    Height =270
                    FontSize =8
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld325"
                    Caption ="Liegenschaft: Gebäudeteil  -> Maßnahme"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =165
                    LayoutCachedTop =480
                    LayoutCachedWidth =3015
                    LayoutCachedHeight =750
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    Left =8100
                    Top =120
                    Width =1275
                    Height =240
                    FontSize =8
                    FontWeight =700
                    BackColor =62207
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld205"
                    Caption ="Grundl.ermittl."
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =8100
                    LayoutCachedTop =120
                    LayoutCachedWidth =9375
                    LayoutCachedHeight =360
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    Left =9375
                    Top =123
                    Width =1245
                    Height =240
                    FontSize =8
                    FontWeight =700
                    BackColor =5026082
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld206"
                    Caption ="Planung"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =9375
                    LayoutCachedTop =123
                    LayoutCachedWidth =10620
                    LayoutCachedHeight =363
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    Left =10620
                    Top =123
                    Width =1245
                    Height =240
                    FontSize =8
                    FontWeight =700
                    BackColor =2366701
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld207"
                    Caption ="Ausschreibung"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =10620
                    LayoutCachedTop =123
                    LayoutCachedWidth =11865
                    LayoutCachedHeight =363
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    Left =11865
                    Top =123
                    Width =1245
                    Height =240
                    FontSize =8
                    FontWeight =700
                    BackColor =12349952
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld208"
                    Caption ="Ausführung"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =11865
                    LayoutCachedTop =123
                    LayoutCachedWidth =13110
                    LayoutCachedHeight =363
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    Left =13110
                    Top =123
                    Width =1245
                    Height =240
                    FontSize =8
                    FontWeight =700
                    BackColor =0
                    BorderColor =8355711
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld209"
                    Caption ="Abrechnung"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =13110
                    LayoutCachedTop =123
                    LayoutCachedWidth =14355
                    LayoutCachedHeight =363
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =1
                    BorderWidth =2
                    IMESentenceMode =3
                    Left =60
                    Width =6291
                    Height =345
                    FontSize =12
                    FontWeight =700
                    BorderColor =0
                    Name ="Text330"
                    ControlSource ="=Mid([Sort],4)"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =60
                    LayoutCachedWidth =6351
                    LayoutCachedHeight =345
                    BorderShade =100.0
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    Left =14355
                    Top =123
                    Width =1245
                    Height =240
                    FontSize =8
                    FontWeight =700
                    BackColor =11525325
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld211"
                    Caption ="Abschluss mit DB"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =14355
                    LayoutCachedTop =123
                    LayoutCachedWidth =15600
                    LayoutCachedHeight =363
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =1
                    Left =255
                    Top =735
                    Width =1635
                    Height =270
                    FontSize =8
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld344"
                    Caption ="Teilmaßnahme / Gewerk"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =255
                    LayoutCachedTop =735
                    LayoutCachedWidth =1890
                    LayoutCachedHeight =1005
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =3
                    Left =10920
                    Top =795
                    Width =1185
                    Height =270
                    FontSize =8
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld360"
                    Caption ="Kost. Maßn. ges"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =10920
                    LayoutCachedTop =795
                    LayoutCachedWidth =12105
                    LayoutCachedHeight =1065
                    ColumnStart =1
                    ColumnEnd =1
                    ForeTint =100.0
                End
                Begin Label
                    TextAlign =1
                    Left =10005
                    Top =480
                    Width =1923
                    Height =270
                    FontSize =8
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld363"
                    Caption ="Maßnahmen-Nr. Infoma"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =10005
                    LayoutCachedTop =480
                    LayoutCachedWidth =11928
                    LayoutCachedHeight =750
                    ForeTint =100.0
                End
                Begin Line
                    BorderWidth =1
                    Left =60
                    Top =720
                    Width =15577
                    BorderColor =8355711
                    Name ="Linie368"
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =720
                    LayoutCachedWidth =15637
                    LayoutCachedHeight =720
                    BorderTint =50.0
                End
                Begin Label
                    TextAlign =2
                    Left =8910
                    Top =795
                    Width =960
                    Height =270
                    FontSize =8
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld369"
                    Caption ="Sachbearb."
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =8910
                    LayoutCachedTop =795
                    LayoutCachedWidth =9870
                    LayoutCachedHeight =1065
                    ColumnStart =1
                    ColumnEnd =1
                    ForeTint =100.0
                End
                Begin Rectangle
                    BackStyle =0
                    BorderWidth =1
                    Left =60
                    Top =435
                    Width =15591
                    Height =644
                    BorderColor =8355711
                    Name ="Rechteck371"
                    LayoutCachedLeft =60
                    LayoutCachedTop =435
                    LayoutCachedWidth =15651
                    LayoutCachedHeight =1079
                    BorderShade =100.0
                End
                Begin Label
                    TextAlign =3
                    Left =14916
                    Top =480
                    Width =690
                    Height =270
                    FontSize =8
                    FontWeight =700
                    Name ="Bezeichnungsfeld373"
                    Caption ="ID Maßn."
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =14916
                    LayoutCachedTop =480
                    LayoutCachedWidth =15606
                    LayoutCachedHeight =750
                    BackThemeColorIndex =1
                    BackShade =95.0
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =50.0
                    ForeThemeColorIndex =1
                    ForeTint =100.0
                    ForeShade =65.0
                End
                Begin Line
                    BorderWidth =1
                    Left =9923
                    Top =450
                    Width =0
                    Height =630
                    BorderColor =8355711
                    Name ="Linie374"
                    LayoutCachedLeft =9923
                    LayoutCachedTop =450
                    LayoutCachedWidth =9923
                    LayoutCachedHeight =1080
                End
                Begin Label
                    TextAlign =1
                    Left =3174
                    Top =466
                    Width =2205
                    Height =270
                    FontSize =8
                    BackColor =15728383
                    BorderColor =12632256
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld187"
                    Caption ="(        : Maßn.mit aktiv.Eigenleis. )"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =3174
                    LayoutCachedTop =466
                    LayoutCachedWidth =5379
                    LayoutCachedHeight =736
                    BorderTint =100.0
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin Rectangle
                    OldBorderStyle =0
                    BorderWidth =1
                    Left =3261
                    Top =505
                    Width =222
                    Height =179
                    BackColor =967423
                    BorderColor =2366701
                    Name ="Rechteck186"
                    LayoutCachedLeft =3261
                    LayoutCachedTop =505
                    LayoutCachedWidth =3483
                    LayoutCachedHeight =684
                    BorderShade =100.0
                    GridlineShade =100.0
                End
                Begin Label
                    TextAlign =1
                    Left =6124
                    Top =497
                    Width =851
                    Height =180
                    FontSize =7
                    FontWeight =700
                    Name ="Text45"
                    Caption ="Mittel-Ansatz"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =6124
                    LayoutCachedTop =497
                    LayoutCachedWidth =6975
                    LayoutCachedHeight =677
                    BackThemeColorIndex =1
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeThemeColorIndex =0
                    ForeTint =75.0
                    GridlineThemeColorIndex =1
                End
                Begin Label
                    TextAlign =1
                    Left =7303
                    Top =497
                    Width =851
                    Height =180
                    FontSize =7
                    FontWeight =700
                    Name ="Text47"
                    Caption ="Mitterl-Art"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =7303
                    LayoutCachedTop =497
                    LayoutCachedWidth =8154
                    LayoutCachedHeight =677
                    BackThemeColorIndex =1
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeThemeColorIndex =0
                    ForeTint =75.0
                    GridlineThemeColorIndex =1
                End
                Begin Label
                    TextAlign =1
                    Left =8278
                    Top =497
                    Width =958
                    Height =180
                    FontSize =7
                    FontWeight =700
                    Name ="Text48"
                    Caption ="Mittel-Herkunft"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =8278
                    LayoutCachedTop =497
                    LayoutCachedWidth =9236
                    LayoutCachedHeight =677
                    BackThemeColorIndex =1
                    BorderThemeColorIndex =1
                    BorderTint =100.0
                    BorderShade =65.0
                    ForeThemeColorIndex =0
                    ForeTint =75.0
                    GridlineThemeColorIndex =1
                End
                Begin Label
                    TextAlign =1
                    Left =12075
                    Top =450
                    Width =1473
                    Height =270
                    FontSize =8
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld387"
                    Caption ="Summe pro Maßnahme"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =12075
                    LayoutCachedTop =450
                    LayoutCachedWidth =13548
                    LayoutCachedHeight =720
                    ForeTint =100.0
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =315
            BreakLevel =1
            OnPrint ="[Event Procedure]"
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    BackStyle =0
                    IMESentenceMode =3
                    Left =517
                    Top =45
                    Width =5324
                    Height =225
                    FontSize =8
                    FontWeight =700
                    Name ="Maßnahme"
                    ControlSource ="Obj_Massn"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =517
                    LayoutCachedTop =45
                    LayoutCachedWidth =5841
                    LayoutCachedHeight =270
                    BackThemeColorIndex =1
                    BackShade =95.0
                    BorderThemeColorIndex =1
                    BorderShade =50.0
                End
                Begin TextBox
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =14865
                    Top =45
                    Width =741
                    Height =225
                    ColumnWidth =1785
                    FontSize =8
                    FontWeight =700
                    TabIndex =1
                    Name ="ID"
                    ControlSource ="ID_Massn"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =14865
                    LayoutCachedTop =45
                    LayoutCachedWidth =15606
                    LayoutCachedHeight =270
                    BackThemeColorIndex =1
                    BackShade =95.0
                    BorderThemeColorIndex =1
                    BorderShade =50.0
                    ForeThemeColorIndex =1
                    ForeShade =65.0
                End
                Begin Line
                    Left =60
                    Top =45
                    Width =0
                    Height =225
                    Name ="Linie364"
                    Tag ="DB_Linie"
                    LayoutCachedLeft =60
                    LayoutCachedTop =45
                    LayoutCachedWidth =60
                    LayoutCachedHeight =270
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin Line
                    Visible = NotDefault
                    Left =15634
                    Top =45
                    Width =0
                    Height =225
                    BorderColor =8355711
                    Name ="Linie365"
                    Tag ="DB_Linie"
                    GridlineColor =10921638
                    LayoutCachedLeft =15634
                    LayoutCachedTop =45
                    LayoutCachedWidth =15634
                    LayoutCachedHeight =270
                    BorderShade =50.0
                End
                Begin Line
                    BorderWidth =1
                    Left =60
                    Width =15577
                    BorderColor =8355711
                    Name ="Linie_OK_Gruppe"
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedWidth =15637
                End
                Begin Line
                    BorderWidth =1
                    Left =60
                    Top =300
                    Width =15591
                    BorderColor =8355711
                    Name ="Linie367"
                    LayoutCachedLeft =60
                    LayoutCachedTop =300
                    LayoutCachedWidth =15651
                    LayoutCachedHeight =300
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    FELineBreak = NotDefault
                    OldBorderStyle =1
                    TextAlign =2
                    IMESentenceMode =3
                    Left =199
                    Top =45
                    Width =222
                    Height =255
                    TabIndex =2
                    BackColor =16514043
                    BorderColor =16514043
                    ForeColor =16514043
                    Name ="TF_Akt_Eigenl"
                    ControlSource ="akt_Eigenl"
                    FontName ="Arial"
                    ConditionalFormat = Begin
                        0x010000006a000000010000000000000002000000000000000400000001000000 ,
                        0xffc20e00ffc20e00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x22005800220000000000
                    End
                    AsianLineBreak =0
                    GridlineColor =10921638
                    ShowDatePicker =1

                    LayoutCachedLeft =199
                    LayoutCachedTop =45
                    LayoutCachedWidth =421
                    LayoutCachedHeight =300
                    RowStart =1
                    RowEnd =1
                    BorderShade =100.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001000000ffc20e00ffc20e00030000002200 ,
                        0x58002200000000000000000000000000000000000000000000
                    End
                End
                Begin Subform
                    CanShrink = NotDefault
                    OldBorderStyle =0
                    Left =5285
                    Top =54
                    Width =9072
                    Height =128
                    TabIndex =3
                    Name ="rpt_020_10_15_Arbeitspr_UB_Kontierungen"
                    SourceObject ="Report.rpt_020_10_15_Arbeitspr_UB_Kontierungen"
                    LinkChildFields ="ID"
                    LinkMasterFields ="ID"
                    GridlineColor =10921638

                    LayoutCachedLeft =5285
                    LayoutCachedTop =54
                    LayoutCachedWidth =14357
                    LayoutCachedHeight =182
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =255
            OnFormat ="[Event Procedure]"
            Name ="Detailbereich"
            AlternateBackColor =16777215
            Begin
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7584
                    Width =1221
                    Height =225
                    FontSize =8
                    TabIndex =17
                    BackColor =11525325
                    BorderColor =8355711
                    Name ="TF_Dat_Abschluss_DB"
                    ControlSource ="Dat_Abschluss_DB"
                    Format ="\"Abschl.\"dd/mm/yy"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000070000000010000000000000002000000000000000700000001010000 ,
                        0xed1c2400ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x22004e002e004e002e00220000000000
                    End
                    GridlineColor =10921638
                    ShowDatePicker =1

                    LayoutCachedLeft =7584
                    LayoutCachedWidth =8805
                    LayoutCachedHeight =225
                    BorderTint =50.0
                    BorderShade =100.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001010000ed1c2400ffffff00060000002200 ,
                        0x4e002e004e002e002200000000000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    TextAlign =2
                    IMESentenceMode =3
                    Left =8895
                    Top =4
                    Width =1035
                    Height =225
                    ColumnWidth =1920
                    FontSize =8
                    TabIndex =1
                    BackColor =8421631
                    Name ="TF_Name"
                    ControlSource ="Sachbearbeiter"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000070000000010000000000000002000000000000000700000001010000 ,
                        0xed1c2400ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x22004e002e004e002e00220000000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =8895
                    LayoutCachedTop =4
                    LayoutCachedWidth =9930
                    LayoutCachedHeight =229
                    ConditionalFormat14 = Begin
                        0x010001000000000000000200000001010000ed1c2400ffffff00060000002200 ,
                        0x4e002e004e002e002200000000000000000000000000000000000000000000
                    End
                End
                Begin Line
                    BorderWidth =1
                    Left =60
                    Top =240
                    Width =15577
                    BorderColor =8355711
                    Name ="Linie258"
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =240
                    LayoutCachedWidth =15637
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    Visible = NotDefault
                    IMESentenceMode =3
                    Left =8850
                    Width =51
                    Height =225
                    FontSize =8
                    Name ="TF_Kennfarbe"
                    ControlSource ="Kennfarbe"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =8850
                    LayoutCachedWidth =8901
                    LayoutCachedHeight =225
                End
                Begin TextBox
                    OldBorderStyle =1
                    IMESentenceMode =3
                    Left =12226
                    Width =284
                    Height =225
                    FontSize =8
                    TabIndex =2
                    BackColor =5026082
                    ForeColor =5026082
                    Name ="TF_Jan"
                    ControlSource ="Jan"
                    FontName ="Arial Narrow"
                    Tag ="Monatsbalken"
                    GridlineColor =10921638

                    LayoutCachedLeft =12226
                    LayoutCachedWidth =12510
                    LayoutCachedHeight =225
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    BorderThemeColorIndex =1
                    ForeTint =75.0
                End
                Begin TextBox
                    OldBorderStyle =1
                    IMESentenceMode =3
                    Left =12510
                    Width =284
                    Height =225
                    FontSize =8
                    TabIndex =3
                    BackColor =12349952
                    ForeColor =12349952
                    Name ="TF_Feb"
                    ControlSource ="Feb"
                    FontName ="Arial Narrow"
                    Tag ="Monatsbalken"
                    GridlineColor =10921638

                    LayoutCachedLeft =12510
                    LayoutCachedWidth =12794
                    LayoutCachedHeight =225
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    BorderThemeColorIndex =1
                    ForeTint =75.0
                End
                Begin TextBox
                    OldBorderStyle =1
                    IMESentenceMode =3
                    Left =12794
                    Width =284
                    Height =225
                    FontSize =8
                    TabIndex =4
                    BackColor =0
                    Name ="TF_Mrz"
                    ControlSource ="Mrz"
                    FontName ="Arial Narrow"
                    Tag ="Monatsbalken"
                    GridlineColor =10921638

                    LayoutCachedLeft =12794
                    LayoutCachedWidth =13078
                    LayoutCachedHeight =225
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    BorderThemeColorIndex =1
                    ForeTint =75.0
                End
                Begin TextBox
                    OldBorderStyle =1
                    IMESentenceMode =3
                    Left =13078
                    Width =284
                    Height =225
                    FontSize =8
                    TabIndex =5
                    BackColor =11525325
                    ForeColor =11525325
                    Name ="TF_Apr"
                    ControlSource ="Apr"
                    FontName ="Arial Narrow"
                    Tag ="Monatsbalken"
                    GridlineColor =10921638

                    LayoutCachedLeft =13078
                    LayoutCachedWidth =13362
                    LayoutCachedHeight =225
                    RowStart =1
                    RowEnd =1
                    ColumnStart =5
                    ColumnEnd =5
                    BorderThemeColorIndex =1
                    ForeTint =75.0
                End
                Begin TextBox
                    OldBorderStyle =1
                    IMESentenceMode =3
                    Left =13362
                    Width =284
                    Height =225
                    FontSize =8
                    TabIndex =6
                    BackColor =11525325
                    ForeColor =11525325
                    Name ="TF_Mai"
                    ControlSource ="Mai"
                    FontName ="Arial Narrow"
                    Tag ="Monatsbalken"
                    GridlineColor =10921638

                    LayoutCachedLeft =13362
                    LayoutCachedWidth =13646
                    LayoutCachedHeight =225
                    RowStart =1
                    RowEnd =1
                    ColumnStart =6
                    ColumnEnd =6
                    BorderThemeColorIndex =1
                    ForeTint =75.0
                End
                Begin TextBox
                    OldBorderStyle =1
                    IMESentenceMode =3
                    Left =13646
                    Width =284
                    Height =225
                    FontSize =8
                    TabIndex =7
                    BackColor =11525325
                    ForeColor =11525325
                    Name ="TF_Jun"
                    ControlSource ="Jun"
                    FontName ="Arial Narrow"
                    Tag ="Monatsbalken"
                    GridlineColor =10921638

                    LayoutCachedLeft =13646
                    LayoutCachedWidth =13930
                    LayoutCachedHeight =225
                    RowStart =1
                    RowEnd =1
                    ColumnStart =7
                    ColumnEnd =7
                    BorderThemeColorIndex =1
                    ForeTint =75.0
                End
                Begin TextBox
                    OldBorderStyle =1
                    IMESentenceMode =3
                    Left =13930
                    Width =284
                    Height =225
                    FontSize =8
                    TabIndex =8
                    BackColor =11525325
                    ForeColor =11525325
                    Name ="TF_Jul"
                    ControlSource ="Jul"
                    FontName ="Arial Narrow"
                    Tag ="Monatsbalken"
                    GridlineColor =10921638

                    LayoutCachedLeft =13930
                    LayoutCachedWidth =14214
                    LayoutCachedHeight =225
                    RowStart =1
                    RowEnd =1
                    ColumnStart =8
                    ColumnEnd =8
                    BorderThemeColorIndex =1
                    ForeTint =75.0
                End
                Begin TextBox
                    OldBorderStyle =1
                    IMESentenceMode =3
                    Left =14214
                    Width =284
                    Height =225
                    FontSize =8
                    TabIndex =9
                    BackColor =11525325
                    ForeColor =11525325
                    Name ="TF_Aug"
                    ControlSource ="Aug"
                    FontName ="Arial Narrow"
                    Tag ="Monatsbalken"
                    GridlineColor =10921638

                    LayoutCachedLeft =14214
                    LayoutCachedWidth =14498
                    LayoutCachedHeight =225
                    RowStart =1
                    RowEnd =1
                    ColumnStart =9
                    ColumnEnd =9
                    BorderThemeColorIndex =1
                    ForeTint =75.0
                End
                Begin TextBox
                    OldBorderStyle =1
                    IMESentenceMode =3
                    Left =14498
                    Width =284
                    Height =225
                    FontSize =8
                    TabIndex =10
                    BackColor =11525325
                    ForeColor =11525325
                    Name ="TF_Sep"
                    ControlSource ="Sep"
                    FontName ="Arial Narrow"
                    Tag ="Monatsbalken"
                    GridlineColor =10921638

                    LayoutCachedLeft =14498
                    LayoutCachedWidth =14782
                    LayoutCachedHeight =225
                    RowStart =1
                    RowEnd =1
                    ColumnStart =10
                    ColumnEnd =10
                    BorderThemeColorIndex =1
                    ForeTint =75.0
                End
                Begin TextBox
                    OldBorderStyle =1
                    IMESentenceMode =3
                    Left =14782
                    Width =284
                    Height =225
                    FontSize =8
                    TabIndex =11
                    BackColor =11525325
                    ForeColor =11525325
                    Name ="TF_Okt"
                    ControlSource ="Okt"
                    FontName ="Arial Narrow"
                    Tag ="Monatsbalken"
                    GridlineColor =10921638

                    LayoutCachedLeft =14782
                    LayoutCachedWidth =15066
                    LayoutCachedHeight =225
                    RowStart =1
                    RowEnd =1
                    ColumnStart =11
                    ColumnEnd =11
                    BorderThemeColorIndex =1
                    ForeTint =75.0
                End
                Begin TextBox
                    OldBorderStyle =1
                    IMESentenceMode =3
                    Left =15066
                    Width =284
                    Height =225
                    FontSize =8
                    TabIndex =12
                    BackColor =11525325
                    ForeColor =11525325
                    Name ="TF_Nov"
                    ControlSource ="Nov"
                    FontName ="Arial Narrow"
                    Tag ="Monatsbalken"
                    GridlineColor =10921638

                    LayoutCachedLeft =15066
                    LayoutCachedWidth =15350
                    LayoutCachedHeight =225
                    RowStart =1
                    RowEnd =1
                    ColumnStart =12
                    ColumnEnd =12
                    BorderThemeColorIndex =1
                    ForeTint =75.0
                End
                Begin TextBox
                    OldBorderStyle =1
                    IMESentenceMode =3
                    Left =15350
                    Width =284
                    Height =225
                    FontSize =8
                    TabIndex =13
                    BackColor =11525325
                    ForeColor =11525325
                    Name ="TF_Dez"
                    ControlSource ="Dez"
                    FontName ="Arial Narrow"
                    Tag ="Monatsbalken"
                    GridlineColor =10921638

                    LayoutCachedLeft =15350
                    LayoutCachedWidth =15634
                    LayoutCachedHeight =225
                    RowStart =1
                    RowEnd =1
                    ColumnStart =13
                    ColumnEnd =13
                    BorderThemeColorIndex =1
                    ForeTint =75.0
                End
                Begin TextBox
                    HideDuplicates = NotDefault
                    IMESentenceMode =3
                    Left =517
                    Width =6964
                    Height =225
                    FontSize =8
                    TabIndex =14
                    Name ="Teilmaßname"
                    ControlSource ="Teilmaßname"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =517
                    LayoutCachedWidth =7481
                    LayoutCachedHeight =225
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                End
                Begin Line
                    Visible = NotDefault
                    Left =15634
                    Width =0
                    Height =225
                    BorderColor =8355711
                    Name ="Linie321"
                    GridlineColor =10921638
                    LayoutCachedLeft =15634
                    LayoutCachedWidth =15634
                    LayoutCachedHeight =225
                    BorderShade =50.0
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =0
                    IMESentenceMode =3
                    Left =9992
                    Width =936
                    Height =225
                    FontSize =8
                    TabIndex =15
                    Name ="Text322"
                    ControlSource ="voraussichtliche Kosten"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =9992
                    LayoutCachedWidth =10928
                    LayoutCachedHeight =225
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    IMESentenceMode =3
                    Left =165
                    Width =66
                    Height =225
                    TabIndex =16
                    Name ="TF_Sort"
                    ControlSource ="Sort"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =165
                    LayoutCachedWidth =231
                    LayoutCachedHeight =225
                End
                Begin Line
                    Visible = NotDefault
                    Left =60
                    Width =0
                    Height =225
                    Name ="Linie339"
                    LayoutCachedLeft =60
                    LayoutCachedWidth =60
                    LayoutCachedHeight =225
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =113
            BreakLevel =1
            Name ="Gruppenfuß0"
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =630
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =0
                    IMESentenceMode =3
                    Left =10832
                    Top =105
                    Width =1356
                    Height =345
                    FontSize =12
                    FontWeight =700
                    TabIndex =1
                    Name ="TF_TatsK_Zw_Sum"
                    ControlSource ="=dsum(\"[Summ_tats]\",\"qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP_pro_Jahr\",\"[Sort"
                        "] = '\" & [sort] & \"'\")"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =10832
                    LayoutCachedTop =105
                    LayoutCachedWidth =12188
                    LayoutCachedHeight =450
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    BorderWidth =2
                    IMESentenceMode =3
                    Left =225
                    Top =120
                    Width =3186
                    Height =345
                    FontSize =12
                    FontWeight =700
                    BorderColor =0
                    Name ="Text350"
                    ControlSource ="=Mid([Sort],4)"
                    FontName ="Arial Narrow"

                    LayoutCachedLeft =225
                    LayoutCachedTop =120
                    LayoutCachedWidth =3411
                    LayoutCachedHeight =465
                    BorderShade =100.0
                End
                Begin Label
                    BackStyle =1
                    BorderWidth =2
                    TextAlign =1
                    Left =8415
                    Top =120
                    Width =975
                    Height =345
                    FontSize =12
                    FontWeight =700
                    Name ="Bezeichnungsfeld351"
                    Caption ="Summe:"
                    FontName ="Arial Narrow"
                    LayoutCachedLeft =8415
                    LayoutCachedTop =120
                    LayoutCachedWidth =9390
                    LayoutCachedHeight =465
                    BorderTint =100.0
                    ForeTint =100.0
                End
                Begin Rectangle
                    BackStyle =0
                    BorderWidth =2
                    Left =118
                    Top =56
                    Width =12302
                    Height =454
                    Name ="Rechteck352"
                    LayoutCachedLeft =118
                    LayoutCachedTop =56
                    LayoutCachedWidth =12420
                    LayoutCachedHeight =510
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =0
                    TextAlign =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =9572
                    Top =105
                    Width =1356
                    Height =345
                    FontSize =12
                    FontWeight =700
                    TabIndex =2
                    Name ="TF_VorausK_Zw_Sum"
                    ControlSource ="=Sum([voraussichtliche Kosten])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =9572
                    LayoutCachedTop =105
                    LayoutCachedWidth =10928
                    LayoutCachedHeight =450
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    CurrencySymbol ="€"
                End
            End
        End
        Begin PageFooter
            Height =435
            Name ="Seitenfußbereich"
            AlternateBackShade =95.0
            Begin
                Begin Line
                    BorderWidth =2
                    Top =120
                    Width =15697
                    BorderColor =10855845
                    Name ="Linie214"
                    GridlineColor =10921638
                    LayoutCachedTop =120
                    LayoutCachedWidth =15697
                    LayoutCachedHeight =120
                End
                Begin TextBox
                    TextAlign =3
                    IMESentenceMode =3
                    Left =13950
                    Top =165
                    FontSize =8
                    Name ="Text327"
                    ControlSource ="=\"S. \" & [Page] & \" / \" & [Pages]"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =13950
                    LayoutCachedTop =165
                    LayoutCachedWidth =15651
                    LayoutCachedHeight =435
                End
                Begin TextBox
                    IMESentenceMode =3
                    Top =165
                    FontSize =8
                    TabIndex =1
                    Name ="Text355"
                    ControlSource ="=Now()"
                    Format ="dd/mm/yyyy hh:nn"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedTop =165
                    LayoutCachedWidth =1701
                    LayoutCachedHeight =435
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =907
            Name ="Berichtsfuß"
            AlternateBackShade =95.0
            Begin
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    TextAlign =1
                    Left =7155
                    Top =120
                    Width =5265
                    Height =570
                    FontSize =14
                    FontWeight =700
                    BackColor =15921906
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld353"
                    Caption ="Summe gesamt:"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =7155
                    LayoutCachedTop =120
                    LayoutCachedWidth =12420
                    LayoutCachedHeight =690
                    BackShade =95.0
                    BorderTint =100.0
                    ForeTint =100.0
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =9993
                    Top =135
                    Width =2195
                    Height =390
                    FontSize =14
                    FontWeight =700
                    Name ="TF_TatsK_Sum"
                    ControlSource ="=dsum(\"[Summ_tats]\",\"qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP_pro_Jahr\")"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =9993
                    LayoutCachedTop =135
                    LayoutCachedWidth =12188
                    LayoutCachedHeight =525
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    Visible = NotDefault
                    DecimalPlaces =0
                    TextAlign =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =9468
                    Top =135
                    Width =1460
                    Height =390
                    FontSize =14
                    FontWeight =700
                    TabIndex =1
                    Name ="TF_VorausK_Sum"
                    ControlSource ="=Sum([voraussichtliche Kosten])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638

                    LayoutCachedLeft =9468
                    LayoutCachedTop =135
                    LayoutCachedWidth =10928
                    LayoutCachedHeight =525
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                    CurrencySymbol ="€"
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_020_10_10_Arbeitsprogramm.cls"
