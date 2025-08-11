Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    AutoCenter = NotDefault
    FilterOn = NotDefault
    OrderByOn = NotDefault
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =12328
    DatasheetFontHeight =10
    ItemSuffix =21
    Left =13395
    Top =5400
    Right =25350
    Bottom =8565
    Filter ="((B_bebaute_Grundstücke.Bodenrichtwert=9))"
    OrderBy ="B_bebaute_Grundstücke.[Lage des Gebäudes]"
    RecSrcDt = Begin
        0x342d62e6eee4e240
    End
    RecordSource ="B_bebaute_Grundstücke"
    Caption ="B_bebaute_Grundstücke"
    DatasheetFontName ="Arial"
    FilterOnLoad =255
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            BackColor =-2147483633
            ForeColor =-2147483630
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
            SpecialEffect =3
            Width =1701
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
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin OptionButton
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin BoundObjectFrame
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ListBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ComboBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
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
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin FormHeader
            Height =340
            BackColor =-2147483633
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =56
                    Top =57
                    Width =2373
                    Height =240
                    Name ="Lage des Gebäudes Bezeichnungsfeld"
                    Caption ="Lage des Gebäudes"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Lage_des_Gebäudes_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =2607
                    Top =57
                    Width =1368
                    Height =240
                    Name ="Nutzung des Objektes Bezeichnungsfeld"
                    Caption ="Nutzung des Objektes"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Nutzung_des_Objektes_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =4032
                    Top =57
                    Width =1368
                    Height =240
                    Name ="Gemarkung Bezeichnungsfeld"
                    Caption ="Gemarkung"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Gemarkung_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =5830
                    Top =57
                    Width =684
                    Height =240
                    Name ="Flur Bezeichnungsfeld"
                    Caption ="Flur"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Flur_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =6624
                    Top =57
                    Width =1368
                    Height =240
                    Name ="Flurstücke Bezeichnungsfeld"
                    Caption ="Flurstücke"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Flurstücke_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =8102
                    Top =57
                    Width =849
                    Height =240
                    Name ="Fläche Bezeichnungsfeld"
                    Caption ="Fläche"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Fläche_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =9175
                    Top =57
                    Width =1089
                    Height =240
                    Name ="Bodenrichtwert Bezeichnungsfeld"
                    Caption ="Bodenrichtwert"
                    Tag ="DetachedLabel"
                    EventProcPrefix ="Bodenrichtwert_Bezeichnungsfeld"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =10488
                    Top =56
                    Width =570
                    Height =240
                    Name ="Bezeichnungsfeld16"
                    Caption ="bebaut"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =11160
                    Top =60
                    Width =1005
                    Height =240
                    Name ="Bezeichnungsfeld19"
                    Caption ="voll ansetzen"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =283
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =7823
                    Width =513
                    Height =255
                    ColumnWidth =1320
                    Name ="Kennummer"
                    ControlSource ="Kennummer"

                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    Left =56
                    Top =1
                    Width =2373
                    Height =255
                    ColumnWidth =2805
                    TabIndex =1
                    Name ="Lage des Gebäudes"
                    ControlSource ="Lage des Gebäudes"
                    EventProcPrefix ="Lage_des_Gebäudes"

                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    Left =2607
                    Top =1
                    Width =1368
                    Height =255
                    ColumnWidth =2640
                    TabIndex =2
                    Name ="Nutzung des Objektes"
                    ControlSource ="Nutzung des Objektes"
                    EventProcPrefix ="Nutzung_des_Objektes"

                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    Left =4032
                    Top =1
                    Width =1368
                    Height =255
                    ColumnWidth =1260
                    TabIndex =3
                    Name ="Gemarkung"
                    ControlSource ="Gemarkung"

                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5500
                    Top =1
                    Width =1014
                    Height =255
                    ColumnWidth =525
                    TabIndex =4
                    Name ="Flur"
                    ControlSource ="Flur"

                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =247
                    Left =6624
                    Top =1
                    Width =1368
                    Height =255
                    ColumnWidth =1335
                    TabIndex =5
                    Name ="Flurstücke"
                    ControlSource ="Flurstücke"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =247
                    Left =8102
                    Top =1
                    Width =849
                    Height =255
                    ColumnWidth =1110
                    TabIndex =6
                    Name ="Fläche"
                    ControlSource ="Fläche"
                    Format ="Standard"

                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =9175
                    Top =1
                    Width =1089
                    Height =255
                    ColumnWidth =1605
                    TabIndex =7
                    Name ="Bodenrichtwert"
                    ControlSource ="Bodenrichtwert"
                    Format ="#,##0.00 €;-#,##0.00 €"

                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =10658
                    Top =56
                    Width =170
                    Height =170
                    TabIndex =8
                    Name ="bebaut"
                    ControlSource ="bebaut"

                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =11395
                    Top =56
                    Width =170
                    Height =170
                    TabIndex =9
                    Name ="voll berechnen"
                    ControlSource ="voll berechnen"
                    EventProcPrefix ="voll_berechnen"

                End
            End
        End
        Begin FormFooter
            Height =0
            BackColor =-2147483633
            Name ="Formularfuß"
        End
    End
End
