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
    CloseButton = NotDefault
    DividingLines = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9977
    DatasheetFontHeight =10
    ItemSuffix =65
    Left =7958
    Top =16590
    Right =21143
    Bottom =18720
    RecSrcDt = Begin
        0x33e9dca24e5fe640
    End
    RecordSource ="SELECT M_Personalkosten.* FROM M_Personalkosten;"
    DatasheetFontName ="Arial"
    OnLostFocus ="Personalkosten_übernehmen"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
        End
        Begin TextBox
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin FormHeader
            Height =240
            BackColor =-2147483633
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =2437
                    Width =570
                    Height =240
                    Name ="Bezeichnungsfeld59"
                    Caption ="Kosten"
                End
                Begin Label
                    OverlapFlags =85
                    Left =4081
                    Width =570
                    Height =240
                    Name ="Bezeichnungsfeld60"
                    Caption ="Name"
                End
            End
        End
        Begin Section
            Height =255
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    OverlapFlags =93
                    Left =2437
                    Width =1495
                    Height =255
                    Name ="Betrag_400000"
                    ControlSource ="Betrag_400000"

                End
                Begin Label
                    OverlapFlags =255
                    Width =2505
                    Height =240
                    Name ="Bezeichnungsfeld3"
                    Caption ="11.13/11.14.50.. - Personalkosten"
                    FontName ="Arial"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4081
                    Width =1495
                    Height =255
                    TabIndex =1
                    Name ="Name"
                    ControlSource ="Name"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5782
                    Width =460
                    Height =255
                    TabIndex =2
                    Name ="Anteil_Name_Verwaltung"
                    ControlSource ="Anteil_Name_Verwaltung"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =7993
                    Width =445
                    Height =255
                    TabIndex =4
                    Name ="Anteil_Name_Unterhaltung"
                    ControlSource ="Anteil_Name_Unterhaltung"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =6292
                    Width =1360
                    Height =255
                    TabIndex =3
                    Name ="Summe400000PerV"
                    ControlSource ="=[Betrag_400000]*[Anteil_Name_Verwaltung]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =8617
                    Width =1360
                    Height =255
                    TabIndex =5
                    Name ="Summe400000PerU"
                    ControlSource ="=[Betrag_400000]*[Anteil_Name_Unterhaltung]/100"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =247
                    Left =1984
                    Width =670
                    Height =255
                    TabIndex =6
                    Name ="Haushaltsjahr"
                    ControlSource ="Haushaltsjahr"

                End
            End
        End
        Begin FormFooter
            Height =623
            BackColor =-2147483633
            Name ="Formularfuß"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =6286
                    Top =226
                    Width =1360
                    Height =255
                    Name ="p1"
                    ControlSource ="=Sum([Betrag_400000]*[Anteil_Name_Verwaltung]/100)"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =8610
                    Top =226
                    Width =1360
                    Height =255
                    TabIndex =1
                    Name ="p2"
                    ControlSource ="=Sum([Betrag_400000]*[Anteil_Name_Unterhaltung]/100)"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    OverlapFlags =85
                    Top =226
                    Width =1845
                    Height =240
                    Name ="Bezeichnungsfeld58"
                    Caption =" Personalkosten gesamt"
                    FontName ="Arial"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =2431
                    Top =226
                    Width =1495
                    Height =255
                    TabIndex =2
                    Name ="Personalkosten_gesamt"
                    ControlSource ="=Sum([Betrag_400000])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =5599
                    Top =226
                    Width =580
                    Height =255
                    TabIndex =3
                    Name ="Anteil_v"
                    ControlSource ="=Sum([Betrag_400000]*[Anteil_Name_Verwaltung])/Sum([Betrag_400000])"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =7927
                    Top =226
                    Width =520
                    Height =255
                    TabIndex =4
                    Name ="Anteil_u"
                    ControlSource ="=Sum([Betrag_400000]*[Anteil_Name_Unterhaltung])/Sum([Betrag_400000])"

                End
                Begin Label
                    OverlapFlags =85
                    Left =4312
                    Top =226
                    Width =1230
                    Height =240
                    Name ="Bezeichnungsfeld64"
                    Caption ="Anteile verteilen:"
                End
            End
        End
    End
End
CodeBehindForm
' See "M_Unterformular_Eingabe_Personalkosten.cls"
