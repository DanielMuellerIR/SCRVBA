Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =8958
    DatasheetFontHeight =10
    ItemSuffix =176
    Left =7980
    Top =2235
    Filter ="([Bewertung_Archiv_5].[Erläuterung]=\"Test Budde 24.08.2016\"\"\")"
    RecSrcDt = Begin
        0x2e77c919cfcde440
    End
    RecordSource ="B_Archivierung_Gebäudebewertung_5_lesen"
    Caption ="Gebäudeliste"
    OnOpen ="= Maxim_Bericht()"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =1
            FontSize =12
            FontName ="Haettenschweiler"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
        End
        Begin Image
            OldBorderStyle =0
            BorderLineStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin BoundObjectFrame
            BorderLineStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin ListBox
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin ComboBox
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin Subform
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            Width =4536
            Height =2835
        End
        Begin PageBreak
            Width =283
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =2
            ControlSource ="ID_Gebäudeteil"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =865
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Left =6462
                    Top =113
                    Width =1588
                    Height =397
                    Name ="Kennummer"
                    ControlSource ="ID_Gebäudeteil"

                End
                Begin Line
                    BorderWidth =1
                    Left =340
                    Top =850
                    Width =7938
                    Name ="Linie148"
                End
                Begin Label
                    TextAlign =0
                    Left =396
                    Top =283
                    Width =4665
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld95"
                    Caption ="Wert des zugeordneten Grundstücks:"
                    FontName ="Arial"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =2607
            Name ="Detailbereich"
            Begin
                Begin Line
                    BorderWidth =1
                    Left =340
                    Width =0
                    Height =2605
                    Name ="Linie141"
                End
                Begin Line
                    BorderWidth =1
                    Left =8277
                    Width =0
                    Height =2605
                    Name ="Linie142"
                End
                Begin TextBox
                    TextAlign =3
                    Left =6009
                    Top =340
                    ColumnWidth =1260
                    Name ="Gemarkung"
                    ControlSource ="Gemarkung"

                End
                Begin TextBox
                    TextAlign =3
                    Left =6009
                    Top =700
                    TabIndex =1
                    Name ="Flur"
                    ControlSource ="Flur"

                End
                Begin TextBox
                    TextAlign =3
                    Left =4134
                    Top =1060
                    Width =3576
                    TabIndex =2
                    Name ="Flurstücke"
                    ControlSource ="Flurstücke"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    Left =6009
                    Top =1420
                    TabIndex =3
                    Name ="Bodenrichtwert"
                    ControlSource ="Bodenrichtwert"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    Left =6009
                    Top =1780
                    TabIndex =4
                    Name ="Fläche"
                    ControlSource ="Fläche"
                    Format ="Standard"

                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    Left =6009
                    Top =2170
                    TabIndex =5
                    Name ="Bodenwert"
                    ControlSource ="=IIf([voll berechnen]=Yes,[Bodenrichtwert]*[Fläche],[Bodenrichtwert]*[Fläche]*(["
                        "Forms]![startformular]![Anteil Bodenrichtwert]/100))"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin Label
                    Left =566
                    Top =340
                    Width =1350
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld165"
                    Caption ="Gemarkung:"
                    FontName ="Arial"
                End
                Begin Label
                    Left =566
                    Top =700
                    Width =1350
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld166"
                    Caption ="Flur:"
                    FontName ="Arial"
                End
                Begin Label
                    Left =566
                    Top =1060
                    Width =1350
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld167"
                    Caption ="Flurstücke:"
                    FontName ="Arial"
                End
                Begin Label
                    Left =570
                    Top =1420
                    Width =3045
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld168"
                    Caption ="Bodenrichtwert:"
                    FontName ="Arial"
                End
                Begin Label
                    Left =570
                    Top =1780
                    Width =3045
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld169"
                    Caption ="Fläche:"
                    FontName ="Arial"
                End
                Begin TextBox
                    Left =566
                    Top =2551
                    Width =2901
                    Height =0
                    ColumnWidth =3210
                    TabIndex =6
                    Name ="Bezeichnung"
                    ControlSource ="Bezeichnung"

                End
                Begin TextBox
                    Left =3514
                    Top =2551
                    Width =4191
                    Height =0
                    ColumnWidth =3450
                    TabIndex =7
                    Name ="B_Gebäudebestand.Gebäudeteil_"
                    ControlSource ="GebäudeteilB"
                    EventProcPrefix ="B_Gebäudebestand_Gebäudeteil_"

                End
                Begin TextBox
                    Left =566
                    Width =7596
                    FontSize =10
                    FontWeight =600
                    TabIndex =8
                    Name ="Text174"
                    ControlSource ="=IIf(IsNull([Bezeichnung]),\"\",\"Das Grundstück ist zugeordnet: \" & [Bezeichnu"
                        "ng] & \", \" & [GebäudeteilB])"

                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =1
                    Left =566
                    Top =2154
                    Width =5331
                    FontSize =10
                    FontWeight =600
                    TabIndex =9
                    Name ="Text175"
                    ControlSource ="=\"Grundstückswert (Fläche x Richtwert x \" & IIf([voll berechnen]=No,[Forms]![s"
                        "tartformular]![Anteil Bodenrichtwert],\"100\") & \" v.H.):\""

                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =566
            Name ="Gruppenfuß1"
            Begin
                Begin Label
                    TextAlign =0
                    Left =566
                    Top =56
                    Width =3915
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld140"
                    Caption ="Grundstückswert:"
                    FontName ="Arial"
                End
                Begin Line
                    BorderWidth =1
                    Left =340
                    Width =0
                    Height =396
                    Name ="Linie144"
                End
                Begin Line
                    BorderWidth =1
                    Left =8277
                    Width =0
                    Height =396
                    Name ="Linie145"
                End
                Begin Line
                    BorderWidth =1
                    Left =340
                    Top =396
                    Width =7938
                    Name ="Linie146"
                End
                Begin Line
                    Left =6519
                    Width =1177
                    Name ="Linie147"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextAlign =3
                    Left =6009
                    Top =56
                    Name ="Grundstückswert"
                    ControlSource ="=IIf(IsNull([Bodenwert]),0,[Bodenwert])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
            End
        End
    End
End
CodeBehindForm
' See "Gebäudebewertung_Archiv_Unterbericht_Bodenwert.cls"
