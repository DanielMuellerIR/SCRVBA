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
    BorderStyle =3
    PictureAlignment =5
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6689
    DatasheetFontHeight =10
    ItemSuffix =95
    Left =8178
    Top =2880
    Right =16669
    Bottom =7635
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x691ad9634dd1e240
    End
    Caption ="Filter für unplausible Gebäudedaten"
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
            Height =2721
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =165
                    Top =120
                    Width =6300
                    Height =360
                    FontSize =12
                    Name ="Bezeichnungsfeld50"
                    Caption ="Filter für unplausible Gebäudedaten"
                    LayoutCachedLeft =165
                    LayoutCachedTop =120
                    LayoutCachedWidth =6465
                    LayoutCachedHeight =480
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3000
                    Top =2265
                    Name ="BS_Anzeigen"
                    Caption ="Anzeigen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =3000
                    LayoutCachedTop =2265
                    LayoutCachedWidth =4701
                    LayoutCachedHeight =2548
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4812
                    Top =2271
                    TabIndex =1
                    Name ="BS_Schließen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =4812
                    LayoutCachedTop =2271
                    LayoutCachedWidth =6513
                    LayoutCachedHeight =2554
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =510
                    Top =680
                    Width =5959
                    Height =1399
                    TabIndex =2
                    Name ="OR_Alle_Bil_Rel"
                    DefaultValue ="2"

                    LayoutCachedLeft =510
                    LayoutCachedTop =680
                    LayoutCachedWidth =6469
                    LayoutCachedHeight =2079
                    Begin
                        Begin OptionButton
                            OverlapFlags =87
                            Left =907
                            Top =1070
                            OptionValue =1
                            Name ="Option91"

                            LayoutCachedLeft =907
                            LayoutCachedTop =1070
                            LayoutCachedWidth =1167
                            LayoutCachedHeight =1310
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =1137
                                    Top =1040
                                    Width =4920
                                    Height =270
                                    Name ="Bezeichnungsfeld92"
                                    Caption ="Alle"
                                    LayoutCachedLeft =1137
                                    LayoutCachedTop =1040
                                    LayoutCachedWidth =6057
                                    LayoutCachedHeight =1310
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =907
                            Top =1524
                            OptionValue =2
                            Name ="Option93"

                            LayoutCachedLeft =907
                            LayoutCachedTop =1524
                            LayoutCachedWidth =1167
                            LayoutCachedHeight =1764
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =1140
                                    Top =1500
                                    Width =4935
                                    Height =270
                                    Name ="Bezeichnungsfeld94"
                                    Caption ="nur Bilanzrelevante oder zu anderen Gebäuden gehörende"
                                    LayoutCachedLeft =1140
                                    LayoutCachedTop =1500
                                    LayoutCachedWidth =6075
                                    LayoutCachedHeight =1770
                                End
                            End
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "Filter_Unplausible_Gebaeudedaten.cls"
