Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    ShortcutMenu = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =11792
    DatasheetFontHeight =10
    ItemSuffix =76
    Left =530
    Top =5054
    Right =14033
    Bottom =8042
    RecSrcDt = Begin
        0x27a8f53676f4e440
    End
    RecordSource ="SELECT B_Sanierungsstau_Werterhöhung.* FROM B_Sanierungsstau_Werterhöhung WHERE "
        "(((B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil)=F_VAriable(\"lng_id_Geb_Teil\")"
        ") AND ((B_Sanierungsstau_Werterhöhung.DS_Typ)=2)) ORDER BY B_Sanierungsstau_Wert"
        "erhöhung.Aktivierungs_Datum;"
    OnCurrent ="[Event Procedure]"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
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
            Width =1701
            BorderThemeColorIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Image
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
            ForeColor =-2147483630
            FontName ="MS Sans Serif"
            BorderLineStyle =0
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
        End
        Begin TextBox
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin ComboBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin Subform
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =2
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin PageBreak
            Width =283
        End
        Begin Tab
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin Page
            Width =1701
            Height =1701
        End
        Begin FormHeader
            Height =510
            BackColor =-2147483633
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =93
                    Left =165
                    Top =210
                    Width =615
                    Height =225
                    FontWeight =700
                    Name ="Bezeichnungsfeld60"
                    Caption ="Bauteil:"
                    LayoutCachedLeft =165
                    LayoutCachedTop =210
                    LayoutCachedWidth =780
                    LayoutCachedHeight =435
                End
                Begin Label
                    OverlapFlags =93
                    Left =4645
                    Top =210
                    Width =1350
                    Height =225
                    FontWeight =700
                    Name ="Bezeichnungsfeld61"
                    Caption ="Werterhöhung:"
                    LayoutCachedLeft =4645
                    LayoutCachedTop =210
                    LayoutCachedWidth =5995
                    LayoutCachedHeight =435
                End
                Begin Label
                    OverlapFlags =93
                    Left =6235
                    Top =195
                    Width =968
                    Height =240
                    FontWeight =700
                    Name ="Bezeichnungsfeld63"
                    Caption ="Akt.-Datum:"
                    LayoutCachedLeft =6235
                    LayoutCachedTop =195
                    LayoutCachedWidth =7203
                    LayoutCachedHeight =435
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =2
                    OverlapFlags =95
                    Left =170
                    Top =450
                    Width =11452
                    Name ="Linie64"
                    GridlineColor =10921638
                    LayoutCachedLeft =170
                    LayoutCachedTop =450
                    LayoutCachedWidth =11622
                    LayoutCachedHeight =450
                    BorderThemeColorIndex =1
                    BorderShade =85.0
                End
                Begin Label
                    OverlapFlags =87
                    Left =7256
                    Width =1020
                    Height =435
                    FontWeight =700
                    Name ="Bezeichnungsfeld66"
                    Caption ="Verl.Nutz.-\015\012dauer Jahre"
                    LayoutCachedLeft =7256
                    LayoutCachedWidth =8276
                    LayoutCachedHeight =435
                End
                Begin Label
                    OverlapFlags =87
                    Left =8386
                    Width =1760
                    Height =435
                    FontWeight =700
                    Name ="Bezeichnungsfeld72"
                    Caption ="zu berücks. bei zuk. Wiederbesch.werten"
                    LayoutCachedLeft =8386
                    LayoutCachedWidth =10146
                    LayoutCachedHeight =435
                End
                Begin Label
                    OverlapFlags =87
                    TextFontFamily =0
                    Left =10205
                    Top =195
                    Width =1417
                    Height =240
                    FontWeight =700
                    Name ="Bezeichnungsfeld74"
                    Caption ="Wiederbe.-Wert"
                    LayoutCachedLeft =10205
                    LayoutCachedTop =195
                    LayoutCachedWidth =11622
                    LayoutCachedHeight =435
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =255
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Width =126
                    ColumnWidth =3390
                    BackColor =967423
                    Name ="TF_ID_Werterh"
                    ControlSource ="ID_Werterh"

                    LayoutCachedWidth =126
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =4645
                    Width =1521
                    ColumnWidth =735
                    TabIndex =2
                    BackColor =15466495
                    Name ="TF_Mehrwert"
                    ControlSource ="Mehrwert"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    ValidationRule ="IsNull([TF_Mehrwert])=False"
                    ValidationText ="Bitte geben Sie einen Betrag ein"
                    AfterUpdate ="=Berechne_Matrix_Neu()"

                    LayoutCachedLeft =4645
                    LayoutCachedWidth =6166
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =165
                    Width =4427
                    ColumnWidth =825
                    TabIndex =1
                    BackColor =15466495
                    Name ="TF_Bauteil"
                    ControlSource ="Bauteil"
                    ValidationRule ="IsNull([TF_Bauteil])=False"
                    ValidationText ="Bitte geben Sie ein Bauteil ein"

                    LayoutCachedLeft =165
                    LayoutCachedWidth =4592
                    LayoutCachedHeight =240
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6235
                    Width =968
                    Height =255
                    ColumnWidth =2310
                    TabIndex =3
                    BackColor =15466495
                    Name ="TF_Aktivierungs_Datum"
                    ControlSource ="Aktivierungs_Datum"
                    ValidationRule ="IsNull([TF_Aktivierungs_Datum])=False And Dat_Eing_01_letzter([TF_Aktivierungs_D"
                        "atum])=True"
                    ValidationText ="Bitte geben Sie einen Eintrag zum Aktivierungsdatum ein (nur 01. oder letzter ei"
                        "nes Monats!)"
                    AfterUpdate ="=Berechne_Matrix_Neu()"

                    LayoutCachedLeft =6235
                    LayoutCachedWidth =7203
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7256
                    Width =953
                    Height =255
                    TabIndex =4
                    BackColor =15466495
                    Name ="TF_Nutz_dauer_Verlaengerung"
                    ControlSource ="Nutz_dauer_Jahre_Verl"
                    ValidationRule ="IsNull([TF_Aktivierungs_Datum])=False"
                    ValidationText ="Bitte geben Sie einen Eintrag zum Aktivierungsdatum ein"
                    AfterUpdate ="=Berechne_Matrix_Neu()"

                    LayoutCachedLeft =7256
                    LayoutCachedWidth =8209
                    LayoutCachedHeight =255
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =9072
                    Width =230
                    Height =255
                    TabIndex =5
                    BorderColor =10921638
                    Name ="KK_Beruecks_Wiederbesch_Wert"
                    ControlSource ="Beruecks_Wiederbesch_Wert"
                    AfterUpdate ="=Berechne_Matrix_Neu()"
                    GridlineColor =10921638

                    LayoutCachedLeft =9072
                    LayoutCachedWidth =9302
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontFamily =0
                    BackStyle =0
                    IMESentenceMode =3
                    Left =10208
                    Width =1470
                    Height =255
                    TabIndex =6
                    BackColor =15466495
                    Name ="Text75"
                    ControlSource ="=WBW_BerechnenNurWerterh(F_Variable(\"lng_ID_Geb_Teil\"),F_Variable(\"lng_Kalk_J"
                        "ahr\"),[ID_Werterh])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    ValidationRule ="IsNull([TF_Aktivierungs_Datum])=False And Dat_Eing_01_letzter([TF_Aktivierungs_D"
                        "atum])=True"
                    ValidationText ="Bitte geben Sie einen Eintrag zum Aktivierungsdatum ein (nur 01. oder letzter ei"
                        "nes Monats!)"
                    AfterUpdate ="=Berechne_Matrix_Neu()"

                    LayoutCachedLeft =10208
                    LayoutCachedWidth =11678
                    LayoutCachedHeight =255
                    CurrencySymbol ="€"
                End
            End
        End
        Begin FormFooter
            Height =396
            BackColor =-2147483633
            Name ="Formularfuß"
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =9985
                    Top =67
                    Width =1560
                    Height =285
                    Name ="BS_DS_Loeschen"
                    Caption ="Datensatz löschen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =9985
                    LayoutCachedTop =67
                    LayoutCachedWidth =11545
                    LayoutCachedHeight =352
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =8278
                    Top =60
                    Width =1560
                    Height =285
                    TabIndex =1
                    Name ="BS_DS_Neu"
                    Caption ="Neuer Eintrag"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =8278
                    LayoutCachedTop =60
                    LayoutCachedWidth =9838
                    LayoutCachedHeight =345
                    Overlaps =1
                End
            End
        End
    End
End
CodeBehindForm
' See "B_Unterformular_Werterhöhung.cls"
