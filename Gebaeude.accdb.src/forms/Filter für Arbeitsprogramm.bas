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
    Width =7483
    DatasheetFontHeight =10
    ItemSuffix =80
    Left =7825
    Top =3464
    Right =17090
    Bottom =10963
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für Datenausgabe Arbeitsprogramm"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
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
        Begin Section
            Height =5442
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    Visible = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =50
                    ListWidth =975
                    Left =4377
                    Top =2168
                    Width =2931
                    Height =284
                    Name ="KF_SB"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, Sachbearbeiter.Name FROM Sachbearbeiter WHERE ((([Obje"
                        "ktverantwortlicher]=True Or [Fachplaner_Elektro]=True Or [Fachplaner_HLS]=True)="
                        "True) AND ((Sachbearbeiter.ausgesch_Jahr) Is Null)) ORDER BY Sachbearbeiter.Name"
                        ";"
                    ColumnWidths ="0"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =4377
                    LayoutCachedTop =2168
                    LayoutCachedWidth =7308
                    LayoutCachedHeight =2452
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4377
                            Top =1817
                            Width =1395
                            Height =270
                            Name ="Bezeichnungsfeld74"
                            Caption ="Sachbearbeiter:"
                            LayoutCachedLeft =4377
                            LayoutCachedTop =1817
                            LayoutCachedWidth =5772
                            LayoutCachedHeight =2087
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =1580
                    Top =113
                    Width =4815
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für Datenausgabe Arbeitsprogramm"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2605
                    Top =2610
                    Width =3345
                    Height =343
                    TabIndex =2
                    Name ="BS_Drucken"
                    Caption =" Arbeitsprogramm  anzeigen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2605
                    LayoutCachedTop =2610
                    LayoutCachedWidth =5950
                    LayoutCachedHeight =2953
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6313
                    Top =4788
                    Width =975
                    Height =345
                    TabIndex =3
                    Name ="BS_Schließen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =6313
                    LayoutCachedTop =4788
                    LayoutCachedWidth =7288
                    LayoutCachedHeight =5133
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    DecimalPlaces =0
                    ListRows =50
                    ListWidth =975
                    Left =2664
                    Top =630
                    Width =1531
                    Height =284
                    TabIndex =1
                    Name ="KF_Kalenderjahre"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Kalenderjahre.Jahr FROM Kalenderjahre WHERE (((Kalenderjahre.Jahr)<=Year("
                        "Date())+5) AND ((fc_Recht()=\"*Admin*\" Or fc_Recht()=\"*Speziell_A*\" Or [Jahr]"
                        "<=Year(Date()))=True)) OR (((Kalenderjahre.Jahr)<=IIf(Month(Date())=12,Year(Date"
                        "())+1,Year(Date())))) ORDER BY Kalenderjahre.Jahr;"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="=Year(Date())"

                    LayoutCachedLeft =2664
                    LayoutCachedTop =630
                    LayoutCachedWidth =4195
                    LayoutCachedHeight =914
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =285
                            Top =630
                            Width =2160
                            Height =270
                            Name ="Bezeichnungsfeld62"
                            Caption ="Kalenderjahr"
                            LayoutCachedLeft =285
                            LayoutCachedTop =630
                            LayoutCachedWidth =2445
                            LayoutCachedHeight =900
                        End
                    End
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =2664
                    Top =1080
                    Width =1531
                    Height =1372
                    TabIndex =4
                    Name ="OR_SB_Alle_EIner"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="1"

                    LayoutCachedLeft =2664
                    LayoutCachedTop =1080
                    LayoutCachedWidth =4195
                    LayoutCachedHeight =2452
                    Begin
                        Begin OptionButton
                            OverlapFlags =87
                            Left =2891
                            Top =1250
                            OptionValue =1
                            Name ="Option66"

                            LayoutCachedLeft =2891
                            LayoutCachedTop =1250
                            LayoutCachedWidth =3151
                            LayoutCachedHeight =1490
                            Begin
                                Begin Label
                                    SpecialEffect =0
                                    OverlapFlags =247
                                    Left =3121
                                    Top =1220
                                    Width =810
                                    Height =270
                                    Name ="Bezeichnungsfeld67"
                                    Caption ="Alle"
                                    LayoutCachedLeft =3121
                                    LayoutCachedTop =1220
                                    LayoutCachedWidth =3931
                                    LayoutCachedHeight =1490
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =2895
                            Top =1591
                            TabIndex =1
                            OptionValue =2
                            Name ="Option68"

                            LayoutCachedLeft =2895
                            LayoutCachedTop =1591
                            LayoutCachedWidth =3155
                            LayoutCachedHeight =1831
                            Begin
                                Begin Label
                                    SpecialEffect =0
                                    OverlapFlags =247
                                    Left =3125
                                    Top =1561
                                    Width =810
                                    Height =270
                                    Name ="Bezeichnungsfeld69"
                                    Caption ="Einer"
                                    LayoutCachedLeft =3125
                                    LayoutCachedTop =1561
                                    LayoutCachedWidth =3935
                                    LayoutCachedHeight =1831
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =2895
                            Top =1969
                            TabIndex =2
                            OptionValue =3
                            Name ="Option72"

                            LayoutCachedLeft =2895
                            LayoutCachedTop =1969
                            LayoutCachedWidth =3155
                            LayoutCachedHeight =2209
                            Begin
                                Begin Label
                                    SpecialEffect =0
                                    OverlapFlags =247
                                    Left =3125
                                    Top =1935
                                    Width =810
                                    Height =435
                                    Name ="Bezeichnungsfeld73"
                                    Caption ="nicht\015\012festgel."
                                    LayoutCachedLeft =3125
                                    LayoutCachedTop =1935
                                    LayoutCachedWidth =3935
                                    LayoutCachedHeight =2370
                                End
                            End
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =300
                    Top =1080
                    Width =2160
                    Height =270
                    Name ="Name_Label"
                    Caption ="Bearbeiter"
                    LayoutCachedLeft =300
                    LayoutCachedTop =1080
                    LayoutCachedWidth =2460
                    LayoutCachedHeight =1350
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =2605
                    Top =3521
                    Width =3345
                    Height =896
                    TabIndex =5
                    Name ="BS_Unstimm_Drucken"
                    Caption =" Unstimmigkeiten \015\012Teilmaßnahmesummen / \015\012geplante Finanzierung\015\012"
                        "anzeigen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2605
                    LayoutCachedTop =3521
                    LayoutCachedWidth =5950
                    LayoutCachedHeight =4417
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =2605
                    Top =4477
                    Width =3345
                    Height =765
                    TabIndex =6
                    Name ="BS_Unstimm_Tats_Gepl"
                    Caption =" Unstimmigkeiten \015\012tatsächliche / geplante\015\012Finanzierung"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2605
                    LayoutCachedTop =4477
                    LayoutCachedWidth =5950
                    LayoutCachedHeight =5242
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =2209
                    Top =2661
                    Width =230
                    Height =210
                    TabIndex =7
                    Name ="KK_Mit_Heute_L"
                    DefaultValue ="False"

                    LayoutCachedLeft =2209
                    LayoutCachedTop =2661
                    LayoutCachedWidth =2439
                    LayoutCachedHeight =2871
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =345
                            Top =2661
                            Width =1680
                            Height =270
                            Name ="Bezeichnungsfeld78"
                            Caption ="mit Heute-Linie:"
                            LayoutCachedLeft =345
                            LayoutCachedTop =2661
                            LayoutCachedWidth =2025
                            LayoutCachedHeight =2931
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2605
                    Top =3073
                    Width =3345
                    Height =343
                    TabIndex =8
                    Name ="BS_Auswertung"
                    Caption =" Auswertungen anzeigen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2605
                    LayoutCachedTop =3073
                    LayoutCachedWidth =5950
                    LayoutCachedHeight =3416
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter für Arbeitsprogramm.cls"
