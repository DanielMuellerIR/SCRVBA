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
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6916
    DatasheetFontHeight =10
    ItemSuffix =35
    Left =13395
    Top =21705
    Right =22095
    Bottom =26220
    RecSrcDt = Begin
        0x8e2a3a9352e5e240
    End
    RecordSource ="NHK-Werte"
    Caption ="NHK-Typen"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
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
            Height =0
            BackColor =-2147483633
            Name ="Formularkopf"
        End
        Begin Section
            Height =1940
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Left =2437
                    Width =951
                    Height =255
                    Name ="von 25"
                    ControlSource ="von 25"
                    EventProcPrefix ="von_25"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Width =915
                            Height =240
                            Name ="Bezeichnungsfeld19"
                            Caption ="von 25:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5555
                    Width =951
                    Height =255
                    TabIndex =1
                    Name ="bis 25"
                    ControlSource ="bis 25"
                    EventProcPrefix ="bis_25"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4478
                            Width =855
                            Height =240
                            Name ="Bezeichnungsfeld20"
                            Caption ="bis 25:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2437
                    Top =567
                    Width =951
                    TabIndex =4
                    Name ="von 46 - 59"
                    ControlSource ="von 46 - 59"
                    EventProcPrefix ="von_46___59"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =567
                            Width =930
                            Height =240
                            Name ="Bezeichnungsfeld21"
                            Caption ="von 46 - 59:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5555
                    Top =567
                    Width =951
                    TabIndex =5
                    Name ="bis 46 - 59"
                    ControlSource ="bis 46 - 59"
                    EventProcPrefix ="bis_46___59"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4478
                            Top =567
                            Width =855
                            Height =240
                            Name ="Bezeichnungsfeld22"
                            Caption ="bis 46 - 59:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2437
                    Top =850
                    Width =951
                    TabIndex =6
                    Name ="von 60 - 69"
                    ControlSource ="von 60 - 69"
                    EventProcPrefix ="von_60___69"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =850
                            Width =930
                            Height =240
                            Name ="Bezeichnungsfeld23"
                            Caption ="von 60 - 69:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5555
                    Top =850
                    Width =951
                    TabIndex =7
                    Name ="bis 60 - 69"
                    ControlSource ="bis 60 - 69"
                    EventProcPrefix ="bis_60___69"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4478
                            Top =850
                            Width =855
                            Height =240
                            Name ="Bezeichnungsfeld24"
                            Caption ="bis 60 - 69:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2437
                    Top =1133
                    Width =951
                    TabIndex =8
                    Name ="von 70 - 84"
                    ControlSource ="von 70 - 84"
                    EventProcPrefix ="von_70___84"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =1133
                            Width =930
                            Height =240
                            Name ="Bezeichnungsfeld25"
                            Caption ="von 70 - 84:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5555
                    Top =1133
                    Width =951
                    TabIndex =9
                    Name ="bis 70 - 84"
                    ControlSource ="bis 70 - 84"
                    EventProcPrefix ="bis_70___84"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4478
                            Top =1133
                            Width =855
                            Height =240
                            Name ="Bezeichnungsfeld26"
                            Caption ="bis 70 - 84:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2437
                    Top =1417
                    Width =951
                    TabIndex =10
                    Name ="von 85 - 99"
                    ControlSource ="von 85 - 99"
                    EventProcPrefix ="von_85___99"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =1417
                            Width =930
                            Height =240
                            Name ="Bezeichnungsfeld27"
                            Caption ="von 85 - 99:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5555
                    Top =1417
                    Width =951
                    TabIndex =11
                    Name ="bis 85 - 99"
                    ControlSource ="bis 85 - 99"
                    EventProcPrefix ="bis_85___99"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4478
                            Top =1417
                            Width =855
                            Height =240
                            Name ="Bezeichnungsfeld28"
                            Caption ="bis 85 - 99:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2437
                    Top =1700
                    Width =951
                    TabIndex =12
                    Name ="von 2000"
                    ControlSource ="von 2000"
                    EventProcPrefix ="von_2000"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =1700
                            Width =915
                            Height =240
                            Name ="Bezeichnungsfeld29"
                            Caption ="von 2000:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5555
                    Top =1700
                    Width =951
                    TabIndex =13
                    Name ="bis 2000"
                    ControlSource ="bis 2000"
                    EventProcPrefix ="bis_2000"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4478
                            Top =1700
                            Width =855
                            Height =240
                            Name ="Bezeichnungsfeld30"
                            Caption ="bis 2000:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2437
                    Top =283
                    Width =951
                    TabIndex =2
                    Name ="von 25 - 45"
                    ControlSource ="von 25 - 45"
                    EventProcPrefix ="von_25___45"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =283
                            Width =930
                            Height =240
                            Name ="Bezeichnungsfeld32"
                            Caption ="von 25 - 45:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5555
                    Top =283
                    Width =951
                    TabIndex =3
                    Name ="bis 25 - 45"
                    ControlSource ="bis 25 - 45"
                    EventProcPrefix ="bis_25___45"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4478
                            Top =283
                            Width =855
                            Height =240
                            Name ="Bezeichnungsfeld34"
                            Caption ="bis 25 - 45:"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =93
                    Left =1077
                    Top =283
                    Width =1252
                    Height =283
                    TabIndex =14
                    Name ="ID aus NHK-Ausstattun"
                    ControlSource ="ID aus NHK-Ausstattun"
                    EventProcPrefix ="ID_aus_NHK_Ausstattun"

                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =87
                    Left =1077
                    Top =566
                    Width =1252
                    Height =283
                    TabIndex =15
                    Name ="Kennummer"
                    ControlSource ="Kennummer"

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
CodeBehindForm
' See "B_Unterformular_NHK_Typen_Werte.cls"
