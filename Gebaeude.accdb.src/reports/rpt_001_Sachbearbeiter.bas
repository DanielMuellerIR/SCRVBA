Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    RecordLocks =2
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =10740
    DatasheetFontHeight =11
    ItemSuffix =116
    Left =7425
    Top =2505
    RecSrcDt = Begin
        0xb21ebd6c72bae440
    End
    RecordSource ="Sachbearbeiter"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    FilterOnLoad =0
    FitToPage =1
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    DatasheetBackThemeColorIndex =1
    BorderThemeColorIndex =3
    ThemeFontIndex =1
    ForeThemeColorIndex =0
    AlternateBackThemeColorIndex =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            FontSize =11
            FontName ="Calibri"
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =0
            BorderTint =50.0
            ForeThemeColorIndex =0
            ForeTint =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
            BorderThemeColorIndex =0
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
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
            AsianLineBreak =1
            ShowDatePicker =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin BreakLevel
            ControlSource ="Name"
        End
        Begin PageHeader
            Height =1644
            Name ="Seitenkopfbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    BackStyle =1
                    Left =30
                    Top =170
                    Width =9240
                    Height =390
                    FontSize =14
                    FontWeight =700
                    BackColor =15921906
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld17"
                    Caption ="Liste der Sachbearbeiter"
                    FontName ="Arial Narrow"
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =170
                    LayoutCachedWidth =9270
                    LayoutCachedHeight =560
                    ThemeFontIndex =-1
                    BackShade =95.0
                    ForeTint =100.0
                End
                Begin Label
                    Left =30
                    Top =960
                    Width =1695
                    Height =495
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld71"
                    Caption ="Name"
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =960
                    LayoutCachedWidth =1725
                    LayoutCachedHeight =1455
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    TextAlign =1
                    Left =1785
                    Top =960
                    Width =690
                    Height =495
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld78"
                    Caption ="Telefon"
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638
                    LayoutCachedLeft =1785
                    LayoutCachedTop =960
                    LayoutCachedWidth =2475
                    LayoutCachedHeight =1455
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    TextAlign =2
                    Left =8025
                    Top =960
                    Width =855
                    Height =495
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld79"
                    Caption ="Kenn-\015\012farbe"
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638
                    LayoutCachedLeft =8025
                    LayoutCachedTop =960
                    LayoutCachedWidth =8880
                    LayoutCachedHeight =1455
                    ColumnStart =8
                    ColumnEnd =8
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    TextAlign =1
                    Left =9855
                    Top =960
                    Width =855
                    Height =495
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld81"
                    Caption ="ausgesch\015\012im Jahr"
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638
                    LayoutCachedLeft =9855
                    LayoutCachedTop =960
                    LayoutCachedWidth =10710
                    LayoutCachedHeight =1455
                    ColumnStart =10
                    ColumnEnd =10
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    TextAlign =1
                    Left =2535
                    Top =960
                    Width =851
                    Height =495
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld72"
                    Caption ="Objekt-\015\012verantwortw."
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638
                    LayoutCachedLeft =2535
                    LayoutCachedTop =960
                    LayoutCachedWidth =3386
                    LayoutCachedHeight =1455
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    TextAlign =1
                    Left =3450
                    Top =960
                    Width =855
                    Height =495
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld73"
                    Caption ="Grundst.-\015\012verantw."
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638
                    LayoutCachedLeft =3450
                    LayoutCachedTop =960
                    LayoutCachedWidth =4305
                    LayoutCachedHeight =1455
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    TextAlign =1
                    Left =4365
                    Top =960
                    Width =855
                    Height =495
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld74"
                    Caption ="Fachplaner\015\012Elektro"
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638
                    LayoutCachedLeft =4365
                    LayoutCachedTop =960
                    LayoutCachedWidth =5220
                    LayoutCachedHeight =1455
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    TextAlign =1
                    Left =5280
                    Top =960
                    Width =855
                    Height =495
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld75"
                    Caption ="Fachplaner\015\012H/L/S"
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638
                    LayoutCachedLeft =5280
                    LayoutCachedTop =960
                    LayoutCachedWidth =6135
                    LayoutCachedHeight =1455
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    TextAlign =1
                    Left =6195
                    Top =960
                    Width =855
                    Height =495
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld76"
                    Caption ="Mietobjekt-\015\012verantw."
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638
                    LayoutCachedLeft =6195
                    LayoutCachedTop =960
                    LayoutCachedWidth =7050
                    LayoutCachedHeight =1455
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    TextAlign =1
                    Left =7110
                    Top =960
                    Width =855
                    Height =495
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld77"
                    Caption ="Buchungs\015\012verantw."
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638
                    LayoutCachedLeft =7110
                    LayoutCachedTop =960
                    LayoutCachedWidth =7965
                    LayoutCachedHeight =1455
                    ColumnStart =7
                    ColumnEnd =7
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    TextAlign =1
                    Left =8940
                    Top =960
                    Width =855
                    Height =495
                    FontSize =9
                    FontWeight =700
                    BorderColor =8355711
                    Name ="Bezeichnungsfeld80"
                    Caption ="aus-\015\012geschieden"
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638
                    LayoutCachedLeft =8940
                    LayoutCachedTop =960
                    LayoutCachedWidth =9795
                    LayoutCachedHeight =1455
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Line
                    BorderWidth =2
                    Left =90
                    Top =1530
                    Width =10577
                    BorderColor =12566463
                    Name ="Linie112"
                    GridlineColor =10921638
                    LayoutCachedLeft =90
                    LayoutCachedTop =1530
                    LayoutCachedWidth =10667
                    LayoutCachedHeight =1530
                    BorderThemeColorIndex =-1
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =340
            OnFormat ="[Event Procedure]"
            Name ="Detailbereich"
            AlternateBackThemeColorIndex =1
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =30
                    Top =30
                    Width =1695
                    Height =255
                    ColumnWidth =1920
                    FontSize =9
                    FontWeight =700
                    BorderColor =10921638
                    Name ="Name"
                    ControlSource ="Name"
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =30
                    LayoutCachedTop =30
                    LayoutCachedWidth =1725
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin CheckBox
                    OldBorderStyle =0
                    Left =2535
                    Top =30
                    Width =851
                    Height =255
                    ColumnWidth =2610
                    TabIndex =2
                    BorderColor =10921638
                    Name ="Objektverantwortlicher"
                    ControlSource ="Objektverantwortlicher"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =2535
                    LayoutCachedTop =30
                    LayoutCachedWidth =3386
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin CheckBox
                    OldBorderStyle =0
                    Left =3450
                    Top =30
                    Width =855
                    Height =255
                    ColumnWidth =3120
                    TabIndex =3
                    BorderColor =10921638
                    Name ="Grundstücksverantwortlicher"
                    ControlSource ="Grundstücksverantwortlicher"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =3450
                    LayoutCachedTop =30
                    LayoutCachedWidth =4305
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin CheckBox
                    OldBorderStyle =0
                    Left =4365
                    Top =30
                    Width =855
                    Height =255
                    ColumnWidth =2205
                    TabIndex =4
                    BorderColor =10921638
                    Name ="Fachplaner_Elektro"
                    ControlSource ="Fachplaner_Elektro"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =4365
                    LayoutCachedTop =30
                    LayoutCachedWidth =5220
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin CheckBox
                    OldBorderStyle =0
                    Left =5280
                    Top =30
                    Width =855
                    Height =255
                    ColumnWidth =1875
                    TabIndex =5
                    BorderColor =10921638
                    Name ="Fachplaner_HLS"
                    ControlSource ="Fachplaner_HLS"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =5280
                    LayoutCachedTop =30
                    LayoutCachedWidth =6135
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin CheckBox
                    OldBorderStyle =0
                    Left =6195
                    Top =30
                    Width =855
                    Height =255
                    ColumnWidth =3015
                    TabIndex =6
                    BorderColor =10921638
                    Name ="Mietobjektverantwortlicher"
                    ControlSource ="Mietobjektverantwortlicher"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =6195
                    LayoutCachedTop =30
                    LayoutCachedWidth =7050
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin CheckBox
                    OldBorderStyle =0
                    Left =7110
                    Top =30
                    Width =855
                    Height =255
                    ColumnWidth =2865
                    TabIndex =7
                    BorderColor =10921638
                    Name ="Buchungsverantwortlicher"
                    ControlSource ="Buchungsverantwortlicher"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =7110
                    LayoutCachedTop =30
                    LayoutCachedWidth =7965
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =7
                    ColumnEnd =7
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1785
                    Top =30
                    Width =690
                    Height =255
                    ColumnWidth =1140
                    FontSize =9
                    TabIndex =1
                    BorderColor =10921638
                    Name ="Telefon"
                    ControlSource ="Telefon"
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =1785
                    LayoutCachedTop =30
                    LayoutCachedWidth =2475
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =8025
                    Top =30
                    Width =855
                    Height =255
                    ColumnWidth =1395
                    FontSize =9
                    TabIndex =8
                    BorderColor =10921638
                    Name ="TF_Kennfarbe"
                    ControlSource ="Kennfarbe"
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =8025
                    LayoutCachedTop =30
                    LayoutCachedWidth =8880
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =8
                    ColumnEnd =8
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin CheckBox
                    OldBorderStyle =0
                    Left =8940
                    Top =30
                    Width =855
                    Height =255
                    ColumnWidth =1800
                    TabIndex =9
                    BorderColor =10921638
                    Name ="ausgeschieden"
                    ControlSource ="ausgeschieden"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =8940
                    LayoutCachedTop =30
                    LayoutCachedWidth =9795
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =9855
                    Top =30
                    Width =855
                    Height =255
                    ColumnWidth =1740
                    FontSize =9
                    TabIndex =10
                    BorderColor =10921638
                    Name ="ausgesch_Jahr"
                    ControlSource ="ausgesch_Jahr"
                    FontName ="Arial Narrow"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =9855
                    LayoutCachedTop =30
                    LayoutCachedWidth =10710
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =10
                    ColumnEnd =10
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Line
                    BorderWidth =1
                    Left =90
                    Top =300
                    Width =10577
                    BorderColor =12566463
                    Name ="Linie113"
                    GridlineColor =10921638
                    LayoutCachedLeft =90
                    LayoutCachedTop =300
                    LayoutCachedWidth =10667
                    LayoutCachedHeight =300
                    BorderThemeColorIndex =-1
                End
            End
        End
        Begin PageFooter
            Height =113
            Name ="Seitenfußbereich"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End
CodeBehindForm
' See "rpt_001_Sachbearbeiter.cls"
