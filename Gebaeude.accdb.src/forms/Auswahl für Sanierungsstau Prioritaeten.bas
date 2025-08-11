Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    PictureTiling = NotDefault
    DividingLines = NotDefault
    DataEntry = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =1
    PictureAlignment =5
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =10828
    DatasheetFontHeight =10
    ItemSuffix =94
    Left =13508
    Top =4020
    Right =24698
    Bottom =11625
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Auswahl Bericht Sanierungsstau nach Prioritäten"
    DatasheetFontName ="Arial"
    OnLoad ="[Event Procedure]"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            SpecialEffect =1
            FontWeight =700
            BackColor =12632256
            ForeColor =128
            FontName ="Arial"
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
            SpecialEffect =3
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
            ForeColor =128
            FontName ="Arial"
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
            BorderWidth =3
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            BackStyle =1
            BorderLineStyle =0
            Width =1701
            Height =1701
            BackColor =12632256
        End
        Begin BoundObjectFrame
            SpecialEffect =3
            BorderLineStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
            BorderColor =12632256
            BackColor =12632256
        End
        Begin TextBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ListBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ComboBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin Subform
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderColor =12632256
        End
        Begin UnboundObjectFrame
            SpecialEffect =3
            BackStyle =0
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            ForeColor =128
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            FontWeight =700
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            Height =7086
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =340
                    Top =170
                    Width =5715
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Auswahl Bericht Sanierungsstau nach Prioritäten"
                    LayoutCachedLeft =340
                    LayoutCachedTop =170
                    LayoutCachedWidth =6055
                    LayoutCachedHeight =530
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =7831
                    Top =6060
                    Width =2155
                    Height =343
                    Name ="BS_Ausdruck"
                    Caption =" Daten drucken"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =7831
                    LayoutCachedTop =6060
                    LayoutCachedWidth =9986
                    LayoutCachedHeight =6403
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =399
                    Top =793
                    Width =9596
                    Height =2272
                    TabIndex =1
                    Name ="OR_Prioritaeten"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =399
                    LayoutCachedTop =793
                    LayoutCachedWidth =9995
                    LayoutCachedHeight =3065
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =519
                            Top =673
                            Width =3555
                            Height =270
                            Name ="Bezeichnungsfeld79"
                            Caption ="nach zeitlichen Prioritäten"
                            LayoutCachedLeft =519
                            LayoutCachedTop =673
                            LayoutCachedWidth =4074
                            LayoutCachedHeight =943
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =1077
                            Top =1133
                            OptionValue =1
                            Name ="Op_sachl"

                            LayoutCachedLeft =1077
                            LayoutCachedTop =1133
                            LayoutCachedWidth =1337
                            LayoutCachedHeight =1373
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =1307
                                    Top =1103
                                    Width =3555
                                    Height =270
                                    Name ="Bezeichnungsfeld63"
                                    Caption ="nach sachlichen Prioritäten"
                                    LayoutCachedLeft =1307
                                    LayoutCachedTop =1103
                                    LayoutCachedWidth =4862
                                    LayoutCachedHeight =1373
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =1080
                            Top =1515
                            TabIndex =1
                            OptionValue =2
                            Name ="Option64"

                            LayoutCachedLeft =1080
                            LayoutCachedTop =1515
                            LayoutCachedWidth =1340
                            LayoutCachedHeight =1755
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =1310
                                    Top =1485
                                    Width =3555
                                    Height =270
                                    Name ="Bezeichnungsfeld65"
                                    Caption ="nach zeitlichen Prioritäten"
                                    LayoutCachedLeft =1310
                                    LayoutCachedTop =1485
                                    LayoutCachedWidth =4865
                                    LayoutCachedHeight =1755
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =1080
                            Top =1890
                            OptionValue =5
                            Name ="Option86"

                            LayoutCachedLeft =1080
                            LayoutCachedTop =1890
                            LayoutCachedWidth =1340
                            LayoutCachedHeight =2130
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =1310
                                    Top =1860
                                    Width =3555
                                    Height =270
                                    Name ="Bezeichnungsfeld87"
                                    Caption ="nach Herkunft der Mittel"
                                    LayoutCachedLeft =1310
                                    LayoutCachedTop =1860
                                    LayoutCachedWidth =4865
                                    LayoutCachedHeight =2130
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =1080
                            Top =2295
                            TabIndex =2
                            OptionValue =3
                            Name ="Option80"

                            LayoutCachedLeft =1080
                            LayoutCachedTop =2295
                            LayoutCachedWidth =1340
                            LayoutCachedHeight =2535
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =1310
                                    Top =2265
                                    Width =3555
                                    Height =270
                                    Name ="Bezeichnungsfeld81"
                                    Caption ="nach Art der Mittel"
                                    LayoutCachedLeft =1310
                                    LayoutCachedTop =2265
                                    LayoutCachedWidth =4865
                                    LayoutCachedHeight =2535
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =1080
                            Top =2655
                            TabIndex =3
                            OptionValue =4
                            Name ="Option82"

                            LayoutCachedLeft =1080
                            LayoutCachedTop =2655
                            LayoutCachedWidth =1340
                            LayoutCachedHeight =2895
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =1310
                                    Top =2625
                                    Width =3555
                                    Height =270
                                    Name ="Bezeichnungsfeld83"
                                    Caption ="nach Sachbearbeiter und Art der Mittel"
                                    LayoutCachedLeft =1310
                                    LayoutCachedTop =2625
                                    LayoutCachedWidth =4865
                                    LayoutCachedHeight =2895
                                End
                            End
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7831
                    Top =6513
                    Width =2155
                    Height =343
                    TabIndex =2
                    Name ="BS_Schliessen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =7831
                    LayoutCachedTop =6513
                    LayoutCachedWidth =9986
                    LayoutCachedHeight =6856
                End
                Begin OptionGroup
                    OverlapFlags =93
                    Left =390
                    Top =3405
                    Width =9596
                    Height =2390
                    TabIndex =3
                    Name ="OR_Gebaeude"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="1"

                    LayoutCachedLeft =390
                    LayoutCachedTop =3405
                    LayoutCachedWidth =9986
                    LayoutCachedHeight =5795
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =510
                            Top =3285
                            Width =3555
                            Height =270
                            Name ="Bezeichnungsfeld84"
                            Caption ="Liegenschafts- / Gebäudeauswahl"
                            LayoutCachedLeft =510
                            LayoutCachedTop =3285
                            LayoutCachedWidth =4065
                            LayoutCachedHeight =3555
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =1068
                            Top =3745
                            OptionValue =1
                            Name ="OP_Alle_Geb"

                            LayoutCachedLeft =1068
                            LayoutCachedTop =3745
                            LayoutCachedWidth =1328
                            LayoutCachedHeight =3985
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =1298
                                    Top =3715
                                    Width =3555
                                    Height =270
                                    Name ="Bezeichnungsfeld69"
                                    Caption ="Alle Liegenschaften mit allen Gebäuden"
                                    LayoutCachedLeft =1298
                                    LayoutCachedTop =3715
                                    LayoutCachedWidth =4853
                                    LayoutCachedHeight =3985
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =1080
                            Top =4125
                            TabIndex =1
                            OptionValue =2
                            Name ="OP_Eine_LS"

                            LayoutCachedLeft =1080
                            LayoutCachedTop =4125
                            LayoutCachedWidth =1340
                            LayoutCachedHeight =4365
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =1310
                                    Top =4095
                                    Width =3555
                                    Height =270
                                    Name ="Bezeichnungsfeld91"
                                    Caption ="Eine Liegenschaft mit ihren Gebäuden"
                                    LayoutCachedLeft =1310
                                    LayoutCachedTop =4095
                                    LayoutCachedWidth =4865
                                    LayoutCachedHeight =4365
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =1080
                            Top =4515
                            TabIndex =2
                            OptionValue =3
                            Name ="OP_Ein_Geb"

                            LayoutCachedLeft =1080
                            LayoutCachedTop =4515
                            LayoutCachedWidth =1340
                            LayoutCachedHeight =4755
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =1310
                                    Top =4485
                                    Width =3555
                                    Height =270
                                    Name ="Bezeichnungsfeld71"
                                    Caption ="Ein Gebäude"
                                    LayoutCachedLeft =1310
                                    LayoutCachedTop =4485
                                    LayoutCachedWidth =4865
                                    LayoutCachedHeight =4755
                                End
                            End
                        End
                    End
                End
                Begin ComboBox
                    Visible = NotDefault
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2384
                    Top =5310
                    Width =7266
                    Height =270
                    TabIndex =4
                    Name ="KF_Gebaeude_Ausw"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_100_20_Gebäudeteile.ID_Gebäudeteil, [Name] & \" \" & [tbl_100_20_Gebä"
                        "udeteile].[Haus_Nr] & \": \" & [Bezeichnung] & \" - \" & [Gebäudeteil] AS Objekt"
                        " FROM tbl_100_10_Liegenschaften INNER JOIN (tbl_100_20_Gebäudeteile LEFT JOIN M_"
                        "Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverz"
                        "eichnis.Kennummer) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudet"
                        "eile.ID_Gebäude ORDER BY [Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & "
                        "\": \" & [Bezeichnung] & \" - \" & [Gebäudeteil];"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =2384
                    LayoutCachedTop =5310
                    LayoutCachedWidth =9650
                    LayoutCachedHeight =5580
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =795
                            Top =5310
                            Width =1440
                            Height =270
                            Name ="Bezeichnungsfeld73"
                            Caption ="Gebäude:"
                            LayoutCachedLeft =795
                            LayoutCachedTop =5310
                            LayoutCachedWidth =2235
                            LayoutCachedHeight =5580
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    Visible = NotDefault
                    OverlapFlags =215
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2384
                    Top =4980
                    Width =7266
                    Height =270
                    TabIndex =5
                    Name ="KF_LS_Auswahl"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_100_10_Liegenschaften.ID_Gebäude, [Name] & \" \" & [Haus_Nr] & \": \""
                        " & [Bezeichnung] AS Objekt FROM tbl_100_10_Liegenschaften LEFT JOIN M_Strassenve"
                        "rzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis."
                        "Kennummer ORDER BY [Name] & \" \" & [Haus_Nr] & \": \" & [Bezeichnung];"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =2384
                    LayoutCachedTop =4980
                    LayoutCachedWidth =9650
                    LayoutCachedHeight =5250
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =3
                            Left =795
                            Top =4980
                            Width =1440
                            Height =270
                            Name ="Bezeichnungsfeld93"
                            Caption ="Liegenschaft:"
                            LayoutCachedLeft =795
                            LayoutCachedTop =4980
                            LayoutCachedWidth =2235
                            LayoutCachedHeight =5250
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "Auswahl für Sanierungsstau Prioritaeten.cls"
