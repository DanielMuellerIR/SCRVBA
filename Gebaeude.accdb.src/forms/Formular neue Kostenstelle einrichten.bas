Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    PictureTiling = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    PictureAlignment =5
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =12472
    DatasheetFontHeight =10
    ItemSuffix =96
    Left =13395
    Top =5400
    Right =25350
    Bottom =11310
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x1e4c27b8f664e540
    End
    RecordSource ="SELECT M_Kostenstellen.* FROM M_Kostenstellen WHERE (((M_Kostenstellen.Kennummer"
        ")=F_Variable(\"lng_Kennummer\")));"
    Caption ="Neue Kostenstelle einrichten"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =3
            FontSize =9
            FontWeight =700
            BackColor =12632256
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
            Visible = NotDefault
            SpecialEffect =2
            LabelAlign =3
            TextAlign =1
            BorderLineStyle =0
            Width =1371
            Height =285
            LabelX =-263
            FontSize =9
            BackColor =15073279
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
            Height =3855
            BackColor =15921906
            Name ="Detailbereich"
            BackShade =95.0
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =4418
                    Top =2609
                    ColumnWidth =2068
                    TabIndex =4
                    Name ="TF_Gebäude_verkauft"
                    ControlSource ="Gebäude_verkauft"

                    LayoutCachedLeft =4418
                    LayoutCachedTop =2609
                    LayoutCachedWidth =5789
                    LayoutCachedHeight =2894
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2445
                            Top =2609
                            Width =1710
                            Height =270
                            Name ="Bezeichnungsfeld54"
                            Caption ="Gebäude verkauft:"
                            LayoutCachedLeft =2445
                            LayoutCachedTop =2609
                            LayoutCachedWidth =4155
                            LayoutCachedHeight =2879
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =4429
                    Top =2325
                    Width =350
                    Height =180
                    ColumnWidth =1650
                    TabIndex =3
                    Name ="KK_Vorsteuerabzug"
                    ControlSource ="M_Kostenstellen.Vorsteuerabzug"

                    LayoutCachedLeft =4429
                    LayoutCachedTop =2325
                    LayoutCachedWidth =4779
                    LayoutCachedHeight =2505
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2445
                            Top =2268
                            Width =1710
                            Height =270
                            Name ="Bezeichnungsfeld53"
                            Caption ="Vorsteuerabzug"
                            LayoutCachedLeft =2445
                            LayoutCachedTop =2268
                            LayoutCachedWidth =4155
                            LayoutCachedHeight =2538
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    TextAlign =0
                    IMESentenceMode =3
                    Left =4418
                    Top =1929
                    Width =7566
                    ColumnWidth =6330
                    TabIndex =2
                    Name ="TF_Bezeichnung"
                    ControlSource ="M_Kostenstellen.Bezeichnung"

                    LayoutCachedLeft =4418
                    LayoutCachedTop =1929
                    LayoutCachedWidth =11984
                    LayoutCachedHeight =2214
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2445
                            Top =1929
                            Width =1710
                            Height =270
                            Name ="Bezeichnungsfeld52"
                            Caption ="Bezeichnung:"
                            LayoutCachedLeft =2445
                            LayoutCachedTop =1929
                            LayoutCachedWidth =4155
                            LayoutCachedHeight =2199
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =4418
                    Top =1251
                    TabIndex =1
                    Name ="TF_Kostenstelle"
                    ControlSource ="Kostenstelle"

                    LayoutCachedLeft =4418
                    LayoutCachedTop =1251
                    LayoutCachedWidth =5789
                    LayoutCachedHeight =1536
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2445
                            Top =1251
                            Width =1710
                            Height =270
                            Name ="Bezeichnungsfeld51"
                            Caption ="Kostenstelle:"
                            LayoutCachedLeft =2445
                            LayoutCachedTop =1251
                            LayoutCachedWidth =4155
                            LayoutCachedHeight =1521
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    IMESentenceMode =3
                    Left =4418
                    Top =910
                    Name ="TF_Kennummer"
                    ControlSource ="Kennummer"

                    LayoutCachedLeft =4418
                    LayoutCachedTop =910
                    LayoutCachedWidth =5789
                    LayoutCachedHeight =1195
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2445
                            Top =910
                            Width =1710
                            Height =270
                            Name ="Bezeichnungsfeld50"
                            Caption ="Kennummer:"
                            LayoutCachedLeft =2445
                            LayoutCachedTop =910
                            LayoutCachedWidth =4155
                            LayoutCachedHeight =1180
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =10544
                    Top =3060
                    Width =1410
                    Height =450
                    FontSize =9
                    TabIndex =5
                    ForeColor =0
                    Name ="BS_Uebernehmen"
                    Caption ="Übernehmen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =10544
                    LayoutCachedTop =3060
                    LayoutCachedWidth =11954
                    LayoutCachedHeight =3510
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9075
                    Top =3060
                    Width =1410
                    Height =450
                    FontSize =9
                    TabIndex =6
                    ForeColor =0
                    Name ="BS_Abbrechen"
                    Caption ="Abbrechen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =9075
                    LayoutCachedTop =3060
                    LayoutCachedWidth =10485
                    LayoutCachedHeight =3510
                    Overlaps =1
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =1
                    Left =450
                    Top =450
                    Width =11520
                    Height =345
                    FontSize =12
                    Name ="Bezeichnungsfeld91"
                    Caption ="Neue Kostenstelle:"
                    LayoutCachedLeft =450
                    LayoutCachedTop =450
                    LayoutCachedWidth =11970
                    LayoutCachedHeight =795
                End
                Begin Line
                    BorderWidth =2
                    OverlapFlags =87
                    SpecialEffect =0
                    Left =450
                    Top =810
                    Width =11509
                    BorderColor =12566463
                    Name ="Linie92"
                    LayoutCachedLeft =450
                    LayoutCachedTop =810
                    LayoutCachedWidth =11959
                    LayoutCachedHeight =810
                    BorderShade =75.0
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =4418
                    Top =1576
                    TabIndex =7
                    Name ="Text94"
                    ControlSource ="Kostenstelle_Infoma"

                    LayoutCachedLeft =4418
                    LayoutCachedTop =1576
                    LayoutCachedWidth =5789
                    LayoutCachedHeight =1861
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2147
                            Top =1576
                            Width =2008
                            Height =270
                            Name ="Bezeichnungsfeld95"
                            Caption ="Kostenstelle Infoma:"
                            LayoutCachedLeft =2147
                            LayoutCachedTop =1576
                            LayoutCachedWidth =4155
                            LayoutCachedHeight =1846
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "Formular neue Kostenstelle einrichten.cls"
