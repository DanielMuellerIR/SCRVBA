Version =20
VersionRequired =20
Begin Form
    AllowFilters = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowEdits = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    RecordLocks =2
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =11048
    DatasheetFontHeight =11
    ItemSuffix =139
    Left =7186
    Top =3777
    Right =18489
    Bottom =7866
    RecSrcDt = Begin
        0x9f19755b2d27e540
    End
    RecordSource ="qry_200_10_05_Werterhöhungen_nach_Bewertungsjahr"
    Caption ="Werterhöhungen mit späterem Aktivierungsjahr als Bewertungsjahr ..."
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
        Begin CheckBox
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
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin FormHeader
            Height =907
            BackColor =-2147483633
            Name ="Formularkopf"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =109
                    Top =122
                    Width =530
                    Height =666
                    FontSize =8
                    Name ="Bezeichnungsfeld89"
                    Caption ="Bew.-\015\012jahr"
                    FontName ="Arial Narrow"
                    GroupTable =1
                    LayoutCachedLeft =109
                    LayoutCachedTop =122
                    LayoutCachedWidth =639
                    LayoutCachedHeight =788
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    Left =706
                    Top =122
                    Width =2771
                    Height =666
                    FontSize =8
                    Name ="Bezeichnungsfeld90"
                    Caption ="Objekt"
                    FontName ="Arial Narrow"
                    GroupTable =1
                    LayoutCachedLeft =706
                    LayoutCachedTop =122
                    LayoutCachedWidth =3477
                    LayoutCachedHeight =788
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    Left =7866
                    Top =122
                    Width =1128
                    Height =666
                    FontSize =8
                    Name ="Bezeichnungsfeld92"
                    Caption ="Werterhöhung"
                    FontName ="Arial Narrow"
                    GroupTable =1
                    LayoutCachedLeft =7866
                    LayoutCachedTop =122
                    LayoutCachedWidth =8994
                    LayoutCachedHeight =788
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    Left =3546
                    Top =122
                    Width =3342
                    Height =666
                    FontSize =8
                    Name ="Bezeichnungsfeld103"
                    Caption ="Bauteil"
                    FontName ="Arial Narrow"
                    GroupTable =1
                    LayoutCachedLeft =3546
                    LayoutCachedTop =122
                    LayoutCachedWidth =6888
                    LayoutCachedHeight =788
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =6955
                    Top =122
                    Width =842
                    Height =666
                    FontSize =8
                    Name ="Bezeichnungsfeld110"
                    Caption ="Aktiv.-\015\012Datum"
                    FontName ="Arial Narrow"
                    GroupTable =1
                    LayoutCachedLeft =6955
                    LayoutCachedTop =122
                    LayoutCachedWidth =7797
                    LayoutCachedHeight =788
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =9958
                    Top =122
                    Width =1060
                    Height =666
                    FontSize =8
                    Name ="Bezeichnungsfeld119"
                    Caption ="Beruecks. \015\012Wiederbesch.-\015\012wert"
                    FontName ="Arial Narrow"
                    GroupTable =1
                    LayoutCachedLeft =9958
                    LayoutCachedTop =122
                    LayoutCachedWidth =11018
                    LayoutCachedHeight =788
                    ColumnStart =6
                    ColumnEnd =7
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =9061
                    Top =122
                    Width =842
                    Height =666
                    FontSize =8
                    Name ="Bezeichnungsfeld128"
                    Caption ="Verl. der \015\012Nutz.-dauer \015\012in Jahren"
                    FontName ="Arial Narrow"
                    GroupTable =1
                    LayoutCachedLeft =9061
                    LayoutCachedTop =122
                    LayoutCachedWidth =9903
                    LayoutCachedHeight =788
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin Line
                    BorderWidth =1
                    OverlapFlags =85
                    Left =124
                    Top =850
                    Width =10824
                    Name ="Linie136"
                    LayoutCachedLeft =124
                    LayoutCachedTop =850
                    LayoutCachedWidth =10948
                    LayoutCachedHeight =850
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =566
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =109
                    Top =54
                    Width =530
                    Height =448
                    ColumnWidth =1890
                    FontSize =8
                    FontWeight =700
                    Name ="Bewertungsjahr"
                    ControlSource ="Bewertungsjahr"
                    FontName ="Arial Narrow"
                    GroupTable =1

                    LayoutCachedLeft =109
                    LayoutCachedTop =54
                    LayoutCachedWidth =639
                    LayoutCachedHeight =502
                    RowStart =1
                    RowEnd =1
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin TextBox
                    CanGrow = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =706
                    Top =54
                    Width =2771
                    Height =448
                    ColumnWidth =5985
                    FontSize =8
                    FontWeight =700
                    TabIndex =1
                    Name ="Objekt"
                    ControlSource ="Objekt"
                    FontName ="Arial Narrow"
                    GroupTable =1

                    LayoutCachedLeft =706
                    LayoutCachedTop =54
                    LayoutCachedWidth =3477
                    LayoutCachedHeight =502
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin TextBox
                    CanGrow = NotDefault
                    DecimalPlaces =2
                    OverlapFlags =85
                    TextAlign =3
                    IMESentenceMode =3
                    Left =7866
                    Top =54
                    Width =1128
                    Height =448
                    ColumnWidth =2655
                    FontSize =8
                    FontWeight =700
                    TabIndex =4
                    Name ="Werterhöhung"
                    ControlSource ="Werterhöhung"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    StatusBarText ="händische Einagbe: Werterhöhung in Euro"
                    FontName ="Arial Narrow"
                    GroupTable =1

                    LayoutCachedLeft =7866
                    LayoutCachedTop =54
                    LayoutCachedWidth =8994
                    LayoutCachedHeight =502
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                    CurrencySymbol ="€"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3546
                    Top =54
                    Width =3342
                    Height =448
                    ColumnWidth =945
                    FontSize =8
                    FontWeight =700
                    TabIndex =2
                    Name ="Bauteil"
                    ControlSource ="Bauteil"
                    StatusBarText ="händische Einagbe: Bauteilbeschreibung zur Werterhöhung"
                    FontName ="Arial Narrow"
                    GroupTable =1

                    LayoutCachedLeft =3546
                    LayoutCachedTop =54
                    LayoutCachedWidth =6888
                    LayoutCachedHeight =502
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin TextBox
                    CanGrow = NotDefault
                    OverlapFlags =85
                    TextAlign =2
                    IMESentenceMode =3
                    Left =6955
                    Top =54
                    Width =842
                    Height =448
                    ColumnWidth =2010
                    FontSize =8
                    FontWeight =700
                    TabIndex =3
                    Name ="Aktivierungs_Datum"
                    ControlSource ="Aktivierungs_Datum"
                    StatusBarText ="händische Einagbe: AKtivierungsdatum Datum der Werterhöhung"
                    FontName ="Arial Narrow"
                    GroupTable =1

                    LayoutCachedLeft =6955
                    LayoutCachedTop =54
                    LayoutCachedWidth =7797
                    LayoutCachedHeight =502
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =10447
                    Top =54
                    Width =571
                    Height =448
                    ColumnWidth =885
                    TabIndex =6
                    BorderColor =10921638
                    Name ="Beruecks_Wiederbesch_Wert"
                    ControlSource ="Beruecks_Wiederbesch_Wert"
                    StatusBarText ="Soll die Werterhöhung beim Wiederbeschaffungswert des nächsten DS berücksichtigt"
                        " werden"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =10447
                    LayoutCachedTop =54
                    LayoutCachedWidth =11018
                    LayoutCachedHeight =502
                    RowStart =1
                    RowEnd =1
                    ColumnStart =7
                    ColumnEnd =7
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =9958
                    Top =54
                    Width =435
                    Height =448
                    Name ="EmptyCell127"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =9958
                    LayoutCachedTop =54
                    LayoutCachedWidth =10393
                    LayoutCachedHeight =502
                    RowStart =1
                    RowEnd =1
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin TextBox
                    CanGrow = NotDefault
                    OverlapFlags =85
                    TextAlign =2
                    IMESentenceMode =3
                    Left =9061
                    Top =54
                    Width =842
                    Height =448
                    FontSize =8
                    FontWeight =700
                    TabIndex =5
                    Name ="Nutz_dauer_Jahre_Verl"
                    ControlSource ="Nutz_dauer_Jahre_Verl"
                    StatusBarText ="händische Eingabe: Verlängerung der Nutzungsdauer in Jahren"
                    FontName ="Arial Narrow"
                    GroupTable =1

                    LayoutCachedLeft =9061
                    LayoutCachedTop =54
                    LayoutCachedWidth =9903
                    LayoutCachedHeight =502
                    RowStart =1
                    RowEnd =1
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GridlineThemeColorIndex =1
                    GroupTable =1
                End
            End
        End
        Begin FormFooter
            Height =907
            BackColor =-2147483633
            Name ="Formularfuß"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =7766
                    Top =111
                    Width =3000
                    Height =240
                    FontSize =8
                    FontWeight =400
                    Name ="Bezeichnungsfeld102"
                    Caption ="Ausdruck mit Tastenbefehl [Strg]- [P]"
                    LayoutCachedLeft =7766
                    LayoutCachedTop =111
                    LayoutCachedWidth =10766
                    LayoutCachedHeight =351
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9642
                    Top =510
                    Width =1130
                    Height =274
                    FontSize =8
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =9642
                    LayoutCachedTop =510
                    LayoutCachedWidth =10772
                    LayoutCachedHeight =784
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                End
                Begin Line
                    BorderWidth =1
                    OverlapFlags =85
                    Left =124
                    Top =60
                    Width =10824
                    Name ="Linie137"
                    LayoutCachedLeft =124
                    LayoutCachedTop =60
                    LayoutCachedWidth =10948
                    LayoutCachedHeight =60
                    BorderThemeColorIndex =1
                    BorderShade =65.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7431
                    Top =514
                    Width =1987
                    Height =274
                    FontSize =8
                    TabIndex =1
                    Name ="BS_Exp_Excel"
                    Caption ="Export nach Excel"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =7431
                    LayoutCachedTop =514
                    LayoutCachedWidth =9418
                    LayoutCachedHeight =788
                    ForeTint =100.0
                    GridlineShade =100.0
                    BackTint =100.0
                    BorderColor =0
                    BorderTint =100.0
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_040_020_Werterhöhungen_nach_Bewertungsjahr.cls"
