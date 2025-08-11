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
    Width =4138
    DatasheetFontHeight =10
    ItemSuffix =50
    Left =11715
    Top =2355
    RecSrcDt = Begin
        0xb9c946832b17e340
    End
    RecordSource ="Maßnahmen"
    OnOpen ="= Maxim_Bericht()"
    MenuBar ="CAISY"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextFontFamily =2
            FontName ="Arial"
        End
        Begin Rectangle
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
        End
        Begin TextBox
            OldBorderStyle =0
            TextFontFamily =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Arial"
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            ControlSource ="ID"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =0
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Top =-60
                    Width =339
                    Height =60
                    ColumnWidth =465
                    Name ="ID aus Maßnahmen"
                    ControlSource ="ID"
                    EventProcPrefix ="ID_aus_Maßnahmen"

                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =693
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextFontFamily =34
                    Left =2154
                    Width =1926
                    FontWeight =700
                    Name ="Ausschreibung fertig"
                    ControlSource ="Ausschreibung fertig"
                    Format ="Short Date"
                    InputMask ="99/99/00;0;_"
                    EventProcPrefix ="Ausschreibung_fertig"

                    Begin
                        Begin Label
                            TextFontFamily =34
                            Width =1980
                            Height =225
                            FontWeight =700
                            Name ="Bezeichnungsfeld46"
                            Caption ="Ausschreibung fertig:"
                        End
                    End
                End
                Begin TextBox
                    TextFontFamily =34
                    Left =2154
                    Top =226
                    Width =1926
                    FontWeight =700
                    TabIndex =1
                    Name ="Auftragserteilung"
                    ControlSource ="Auftragserteilung"
                    Format ="Short Date"
                    InputMask ="99/99/00;0;_"

                    Begin
                        Begin Label
                            TextFontFamily =34
                            Top =226
                            Width =1725
                            Height =225
                            FontWeight =700
                            Name ="Bezeichnungsfeld47"
                            Caption ="Auftragserteilung:"
                        End
                    End
                End
                Begin TextBox
                    TextFontFamily =34
                    Left =2154
                    Top =453
                    Width =1926
                    FontWeight =700
                    TabIndex =2
                    Name ="Arbeiten ferting"
                    ControlSource ="Arbeiten ferting"
                    Format ="Short Date"
                    InputMask ="99/99/00;0;_"
                    EventProcPrefix ="Arbeiten_ferting"

                    Begin
                        Begin Label
                            TextFontFamily =34
                            Top =453
                            Width =1605
                            Height =225
                            FontWeight =700
                            Name ="Bezeichnungsfeld48"
                            Caption ="Arbeiten fertig:"
                        End
                    End
                End
            End
        End
    End
End
