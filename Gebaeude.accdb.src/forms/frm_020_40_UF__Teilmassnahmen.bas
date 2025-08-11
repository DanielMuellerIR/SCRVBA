Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =18141
    DatasheetFontHeight =10
    ItemSuffix =156
    Left =9825
    Top =5460
    Right =21780
    Bottom =10770
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x0e61d46e4c09e540
    End
    RecordSource ="SELECT [Teile der Maßnahmen].* FROM [Teile der Maßnahmen] WHERE ((([Teile der Ma"
        "ßnahmen].[ID aus Maßnahmen])=F_Variable(\"lng_ID_Massn\"))) ORDER BY [Teile der "
        "Maßnahmen].Umsetzungsjahr DESC;"
    Caption ="geplante Finanzierung"
    OnCurrent ="[Event Procedure]"
    AfterUpdate ="[Event Procedure]"
    DatasheetFontName ="Arial"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    PictureSizeMode =1
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =3
            FontSize =9
            FontWeight =700
            ForeColor =10040879
            FontName ="Arial"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderWidth =1
            BorderLineStyle =0
            Width =1701
        End
        Begin Image
            SpecialEffect =1
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
            SpecialEffect =1
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =1
            BorderWidth =3
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderColor =12632256
        End
        Begin BoundObjectFrame
            SpecialEffect =1
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            LabelAlign =3
            TextAlign =1
            BorderLineStyle =0
            BackStyle =0
            Width =3228
            Height =270
            LabelX =-191
            FontSize =9
            BorderColor =12632256
            ForeColor =10040879
            FontName ="Arial"
        End
        Begin ListBox
            SpecialEffect =1
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontName ="Arial"
        End
        Begin ComboBox
            AutoLabel = NotDefault
            TextAlign =1
            BorderLineStyle =0
            BackStyle =0
            Width =3228
            Height =270
            LabelX =-1701
            FontSize =9
            BorderColor =12632256
            ForeColor =10040879
            FontName ="Arial"
        End
        Begin Subform
            SpecialEffect =1
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =1
            BackStyle =0
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin FormHeader
            Height =1425
            BackColor =16514043
            Name ="Formularkopf"
            AlternateBackShade =95.0
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =9350
                    Top =915
                    Width =1260
                    Height =435
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld45"
                    Caption ="voraussichtl.\015\012Kosten"
                    GridlineColor =10921638
                    LayoutCachedLeft =9350
                    LayoutCachedTop =915
                    LayoutCachedWidth =10610
                    LayoutCachedHeight =1350
                    ColumnStart =3
                    ColumnEnd =3
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =10782
                    Top =915
                    Width =900
                    Height =435
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld33"
                    Caption ="Start\015\012Ende"
                    GridlineColor =10921638
                    LayoutCachedLeft =10782
                    LayoutCachedTop =915
                    LayoutCachedWidth =11682
                    LayoutCachedHeight =1350
                    ColumnStart =4
                    ColumnEnd =4
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =13233
                    Top =919
                    Width =900
                    Height =435
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld37"
                    Caption ="Start\015\012Ende"
                    GridlineColor =10921638
                    LayoutCachedLeft =13233
                    LayoutCachedTop =919
                    LayoutCachedWidth =14133
                    LayoutCachedHeight =1354
                    ColumnStart =8
                    ColumnEnd =8
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =12012
                    Top =919
                    Width =900
                    Height =435
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld35"
                    Caption ="Start\015\012Ende"
                    GridlineColor =10921638
                    LayoutCachedLeft =12012
                    LayoutCachedTop =919
                    LayoutCachedWidth =12912
                    LayoutCachedHeight =1354
                    ColumnStart =6
                    ColumnEnd =6
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =7587
                    Top =919
                    Width =1605
                    Height =255
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld31"
                    Caption ="Sachb."
                    GridlineColor =10921638
                    LayoutCachedLeft =7587
                    LayoutCachedTop =919
                    LayoutCachedWidth =9192
                    LayoutCachedHeight =1174
                    ColumnStart =2
                    ColumnEnd =2
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =14442
                    Top =919
                    Width =900
                    Height =435
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld39"
                    Caption ="Start\015\012Ende"
                    GridlineColor =10921638
                    LayoutCachedLeft =14442
                    LayoutCachedTop =919
                    LayoutCachedWidth =15342
                    LayoutCachedHeight =1354
                    ColumnStart =10
                    ColumnEnd =10
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =15645
                    Top =919
                    Width =900
                    Height =435
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld41"
                    Caption ="Start\015\012Ende"
                    GridlineColor =10921638
                    LayoutCachedLeft =15645
                    LayoutCachedTop =919
                    LayoutCachedWidth =16545
                    LayoutCachedHeight =1354
                    ColumnStart =12
                    ColumnEnd =12
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =225
                    Top =919
                    Width =5895
                    Height =255
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld32"
                    Caption ="Teilmaßname:"
                    GridlineColor =10921638
                    LayoutCachedLeft =225
                    LayoutCachedTop =919
                    LayoutCachedWidth =6120
                    LayoutCachedHeight =1174
                    ColumnStart =1
                    ColumnEnd =1
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =9585
                    Top =60
                    Width =1395
                    Height =240
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld139"
                    Caption ="Terminplanung:"
                    LayoutCachedLeft =9585
                    LayoutCachedTop =60
                    LayoutCachedWidth =10980
                    LayoutCachedHeight =300
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =10782
                    Top =390
                    Width =1140
                    Height =495
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld140"
                    Caption ="Grundlagen-\015\012Ermittlung"
                    LayoutCachedLeft =10782
                    LayoutCachedTop =390
                    LayoutCachedWidth =11922
                    LayoutCachedHeight =885
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =12012
                    Top =390
                    Width =1140
                    Height =270
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld141"
                    Caption ="Planung"
                    LayoutCachedLeft =12012
                    LayoutCachedTop =390
                    LayoutCachedWidth =13152
                    LayoutCachedHeight =660
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =13227
                    Top =390
                    Width =1140
                    Height =495
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld142"
                    Caption ="Aus-\015\012schreibung"
                    LayoutCachedLeft =13227
                    LayoutCachedTop =390
                    LayoutCachedWidth =14367
                    LayoutCachedHeight =885
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =14445
                    Top =390
                    Width =1140
                    Height =495
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld143"
                    Caption ="Aus-\015\012führung"
                    LayoutCachedLeft =14445
                    LayoutCachedTop =390
                    LayoutCachedWidth =15585
                    LayoutCachedHeight =885
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =15642
                    Top =390
                    Width =1140
                    Height =495
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld144"
                    Caption ="Ab-\015\012rechnung"
                    LayoutCachedLeft =15642
                    LayoutCachedTop =390
                    LayoutCachedWidth =16782
                    LayoutCachedHeight =885
                    ForeShade =50.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =16830
                    Top =390
                    Width =1140
                    Height =495
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld146"
                    Caption ="Abschluss\015\012mit DB"
                    LayoutCachedLeft =16830
                    LayoutCachedTop =390
                    LayoutCachedWidth =17970
                    LayoutCachedHeight =885
                    ForeShade =50.0
                End
                Begin Line
                    BorderWidth =2
                    OverlapFlags =85
                    Left =300
                    Top =1410
                    Width =17618
                    BorderColor =12566463
                    Name ="Linie147"
                    LayoutCachedLeft =300
                    LayoutCachedTop =1410
                    LayoutCachedWidth =17918
                    LayoutCachedHeight =1410
                    BorderShade =75.0
                End
                Begin Line
                    BorderWidth =2
                    OverlapFlags =85
                    Left =9585
                    Top =345
                    Width =8348
                    BorderColor =12566463
                    Name ="Linie149"
                    LayoutCachedLeft =9585
                    LayoutCachedTop =345
                    LayoutCachedWidth =17933
                    LayoutCachedHeight =345
                    BorderShade =75.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =6798
                    Top =900
                    Width =743
                    Height =465
                    FontSize =8
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld155"
                    Caption ="Umsetz.-\015\012jahr:"
                    GridlineColor =10921638
                    LayoutCachedLeft =6798
                    LayoutCachedTop =900
                    LayoutCachedWidth =7541
                    LayoutCachedHeight =1365
                    ForeShade =50.0
                    GridlineShade =65.0
                End
            End
        End
        Begin Section
            Height =680
            BackColor =16514043
            Name ="Detailbereich"
            AlternateBackColor =16514043
            Begin
                Begin TextBox
                    OverlapFlags =85
                    BackStyle =1
                    IMESentenceMode =3
                    Left =225
                    Top =30
                    Width =6469
                    Height =255
                    ColumnWidth =3855
                    FontSize =8
                    TabIndex =1
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Teilmaßname"
                    ControlSource ="Teilmaßname"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =225
                    LayoutCachedTop =30
                    LayoutCachedWidth =6694
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =10782
                    Top =30
                    Width =900
                    Height =255
                    FontSize =8
                    TabIndex =5
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Grundl_Erm_Start"
                    ControlSource ="Dat_Grundl_Erm_Start"
                    Format ="mmm yyyy"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =10782
                    LayoutCachedTop =30
                    LayoutCachedWidth =11682
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =10782
                    Top =315
                    Width =900
                    Height =255
                    FontSize =8
                    TabIndex =6
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Grundl_Erm_Ende"
                    ControlSource ="Dat_Grundl_Erm_Ende"
                    Format ="mmm yyyy"
                    AfterUpdate ="[Event Procedure]"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =10782
                    LayoutCachedTop =315
                    LayoutCachedWidth =11682
                    LayoutCachedHeight =570
                    RowStart =1
                    RowEnd =1
                    ColumnStart =5
                    ColumnEnd =5
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =12012
                    Top =30
                    Width =900
                    Height =255
                    FontSize =8
                    TabIndex =7
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Planung_Start"
                    ControlSource ="Dat_Planung_Start"
                    Format ="mmm yyyy"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =12012
                    LayoutCachedTop =30
                    LayoutCachedWidth =12912
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =6
                    ColumnEnd =6
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =12012
                    Top =315
                    Width =900
                    Height =255
                    FontSize =8
                    TabIndex =8
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Planung_Ende"
                    ControlSource ="Dat_Planung_Ende"
                    Format ="mmm yyyy"
                    AfterUpdate ="[Event Procedure]"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =12012
                    LayoutCachedTop =315
                    LayoutCachedWidth =12912
                    LayoutCachedHeight =570
                    RowStart =1
                    RowEnd =1
                    ColumnStart =7
                    ColumnEnd =7
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =13233
                    Top =30
                    Width =900
                    Height =255
                    FontSize =8
                    TabIndex =9
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Ausschr_Start"
                    ControlSource ="Dat_Ausschr_Start"
                    Format ="mmm yyyy"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =13233
                    LayoutCachedTop =30
                    LayoutCachedWidth =14133
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =8
                    ColumnEnd =8
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =13233
                    Top =315
                    Width =900
                    Height =255
                    FontSize =8
                    TabIndex =10
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Ausschr_Ende"
                    ControlSource ="Dat_Ausschr_Ende"
                    Format ="mmm yyyy"
                    AfterUpdate ="[Event Procedure]"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =13233
                    LayoutCachedTop =315
                    LayoutCachedWidth =14133
                    LayoutCachedHeight =570
                    RowStart =1
                    RowEnd =1
                    ColumnStart =9
                    ColumnEnd =9
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =14442
                    Top =30
                    Width =900
                    Height =255
                    FontSize =8
                    TabIndex =11
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Ausf_Start"
                    ControlSource ="Dat_Ausf_Start"
                    Format ="mmm yyyy"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =14442
                    LayoutCachedTop =30
                    LayoutCachedWidth =15342
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =10
                    ColumnEnd =10
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =14442
                    Top =315
                    Width =900
                    Height =255
                    FontSize =8
                    TabIndex =12
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Ausf_Ende"
                    ControlSource ="Dat_Ausf_Ende"
                    Format ="mmm yyyy"
                    AfterUpdate ="[Event Procedure]"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =14442
                    LayoutCachedTop =315
                    LayoutCachedWidth =15342
                    LayoutCachedHeight =570
                    RowStart =1
                    RowEnd =1
                    ColumnStart =11
                    ColumnEnd =11
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =15645
                    Top =30
                    Width =900
                    Height =255
                    FontSize =8
                    TabIndex =13
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Abr_Start"
                    ControlSource ="Dat_Abr_Start"
                    Format ="mmm yyyy"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =15645
                    LayoutCachedTop =30
                    LayoutCachedWidth =16545
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =12
                    ColumnEnd =12
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =15645
                    Top =315
                    Width =900
                    Height =255
                    FontSize =8
                    TabIndex =14
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Abr_Ende"
                    ControlSource ="Dat_Abr_Ende"
                    Format ="mmm yyyy"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =15645
                    LayoutCachedTop =315
                    LayoutCachedWidth =16545
                    LayoutCachedHeight =570
                    RowStart =1
                    RowEnd =1
                    ColumnStart =13
                    ColumnEnd =13
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =16830
                    Top =30
                    Width =900
                    Height =255
                    FontSize =8
                    TabIndex =15
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Dat_Abschluss_DB"
                    ControlSource ="Dat_Abschluss_DB"
                    Format ="mmm yyyy"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =16830
                    LayoutCachedTop =30
                    LayoutCachedWidth =17730
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =15
                    ColumnEnd =15
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =9350
                    Top =30
                    Width =1260
                    Height =255
                    ColumnWidth =2385
                    FontSize =8
                    TabIndex =4
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="voraussichtliche Kosten"
                    ControlSource ="voraussichtliche Kosten"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    EventProcPrefix ="voraussichtliche_Kosten"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =9350
                    LayoutCachedTop =30
                    LayoutCachedWidth =10610
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                    CurrencySymbol ="€"
                End
                Begin ComboBox
                    OverlapFlags =85
                    BackStyle =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =7587
                    Top =30
                    Width =1605
                    Height =255
                    FontSize =8
                    TabIndex =3
                    BackColor =15728383
                    ForeColor =4138256
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    Name ="Sachbearbeiter"
                    ControlSource ="ID_SB"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, Sachbearbeiter.Name FROM Sachbearbeiter WHERE ((([Obje"
                        "ktverantwortlicher]=True Or [Fachplaner_Elektro]=True Or [Fachplaner_HLS]=True)="
                        "True)) ORDER BY Sachbearbeiter.Name;"
                    ColumnWidths ="0"
                    GridlineColor =10921638

                    LayoutCachedLeft =7587
                    LayoutCachedTop =30
                    LayoutCachedWidth =9192
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =60
                    Top =30
                    Width =108
                    Height =255
                    FontSize =8
                    FontWeight =700
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="TF_ID"
                    ControlSource ="ID"
                    GridlineColor =10921638

                    LayoutCachedLeft =60
                    LayoutCachedTop =30
                    LayoutCachedWidth =168
                    LayoutCachedHeight =285
                    RowStart =1
                    RowEnd =1
                    ForeShade =50.0
                    GridlineShade =65.0
                End
                Begin Line
                    BorderWidth =0
                    OverlapFlags =85
                    Left =375
                    Top =600
                    Width =15818
                    BorderColor =12566463
                    Name ="Linie150"
                    LayoutCachedLeft =375
                    LayoutCachedTop =600
                    LayoutCachedWidth =16193
                    LayoutCachedHeight =600
                    BorderShade =75.0
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =0
                    BackStyle =1
                    IMESentenceMode =3
                    Left =6861
                    Top =30
                    Width =570
                    Height =255
                    FontSize =8
                    TabIndex =2
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Umsetzungsjahr"
                    ControlSource ="Umsetzungsjahr"
                    ConditionalFormat = Begin
                        0x0100000064000000010000000200000000000000000000000100000001000000 ,
                        0x00000000f9cdaa00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000
                    End
                    GridlineColor =10921638

                    LayoutCachedLeft =6861
                    LayoutCachedTop =30
                    LayoutCachedWidth =7431
                    LayoutCachedHeight =285
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x01000100000002000000000000000100000000000000f9cdaa00000000000000 ,
                        0x00000000000000000000000000000000000000
                    End
                    GridlineShade =65.0
                End
            End
        End
        Begin FormFooter
            CanGrow = NotDefault
            Height =680
            BackColor =16514043
            Name ="Formularfuß"
            AlternateBackShade =95.0
            Begin
                Begin Line
                    BorderWidth =2
                    OverlapFlags =85
                    Left =288
                    Top =52
                    Width =17618
                    BorderColor =12566463
                    Name ="Linie148"
                    LayoutCachedLeft =288
                    LayoutCachedTop =52
                    LayoutCachedWidth =17906
                    LayoutCachedHeight =52
                    BorderShade =75.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =393
                    Top =170
                    Width =2145
                    Height =360
                    FontWeight =700
                    ForeColor =4138256
                    Name ="BS_Neue_Teilm"
                    Caption ="Neue Teilmaßnahme"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =393
                    LayoutCachedTop =170
                    LayoutCachedWidth =2538
                    LayoutCachedHeight =530
                    ForeShade =50.0
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2605
                    Top =170
                    Width =2145
                    Height =360
                    FontWeight =700
                    TabIndex =1
                    ForeColor =4138256
                    Name ="BS_Teilm_Loeschen"
                    Caption ="Teilmaßnahme löschen"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    LayoutCachedLeft =2605
                    LayoutCachedTop =170
                    LayoutCachedWidth =4750
                    LayoutCachedHeight =530
                    ForeShade =50.0
                    Overlaps =1
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    DecimalPlaces =0
                    OverlapFlags =85
                    TextAlign =0
                    Left =5668
                    Top =223
                    Width =1500
                    FontSize =8
                    FontWeight =700
                    TabIndex =2
                    ForeColor =4138256
                    Name ="TF_Summ_Alle_TM_VorKost"
                    ControlSource ="=Sum([voraussichtliche Kosten])"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    DefaultValue ="0"
                    ConditionalFormat = Begin
                        0x01000000fe000000010000000000000004000000000000004e00000000010000 ,
                        0xff000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x46006f0072006d00730021005b00660072006d005f003000320030005f003100 ,
                        0x30005f004d006100df006e00610068006d0065006e0076006500720077006100 ,
                        0x6c00740075006e0067005d0021005b00550046005f004d006100730073006e00 ,
                        0x610068006d0065005d002e0046006f0072006d0021005b00540046005f004d00 ,
                        0x6100730073006e005f0056006f0072004b006f00730074005d0000000000
                    End

                    LayoutCachedLeft =5668
                    LayoutCachedTop =223
                    LayoutCachedWidth =7168
                    LayoutCachedHeight =493
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x010001000000000000000400000000010000ff000000fff200004d0000004600 ,
                        0x6f0072006d00730021005b00660072006d005f003000320030005f0031003000 ,
                        0x5f004d006100df006e00610068006d0065006e00760065007200770061006c00 ,
                        0x740075006e0067005d0021005b00550046005f004d006100730073006e006100 ,
                        0x68006d0065005d002e0046006f0072006d0021005b00540046005f004d006100 ,
                        0x730073006e005f0056006f0072004b006f00730074005d000000000000000000 ,
                        0x00000000000000000000000000
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    CanGrow = NotDefault
                    BorderWidth =2
                    OverlapFlags =85
                    BackStyle =1
                    IMESentenceMode =3
                    Left =7260
                    Top =195
                    Width =10665
                    Height =300
                    FontWeight =700
                    TabIndex =3
                    BackColor =16514043
                    BorderColor =16514043
                    ForeColor =16514043
                    Name ="BF_Warnhinw_SummUeberschr"
                    ControlSource ="=\"Die Summe der voraussichtl. Kosten aller Teilmaßn. überschreitet die voraussi"
                        "chtl. Kosten der Gesamtmaßnahme\""
                    ConditionalFormat = Begin
                        0x0100000032010000010000000100000000000000000000006800000000010000 ,
                        0xff000000ffffff00000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x5b00540046005f00530075006d006d005f0041006c006c0065005f0054004d00 ,
                        0x5f0056006f0072004b006f00730074005d003e0046006f0072006d0073002100 ,
                        0x5b00660072006d005f003000320030005f00310030005f004d006100df006e00 ,
                        0x610068006d0065006e00760065007200770061006c00740075006e0067005d00 ,
                        0x21005b00550046005f004d006100730073006e00610068006d0065005d002e00 ,
                        0x46006f0072006d0021005b00540046005f004d006100730073006e005f005600 ,
                        0x6f0072004b006f00730074005d0000000000
                    End

                    LayoutCachedLeft =7260
                    LayoutCachedTop =195
                    LayoutCachedWidth =17925
                    LayoutCachedHeight =495
                    ConditionalFormat14 = Begin
                        0x010001000000010000000000000000010000ff000000ffffff00670000005b00 ,
                        0x540046005f00530075006d006d005f0041006c006c0065005f0054004d005f00 ,
                        0x56006f0072004b006f00730074005d003e0046006f0072006d00730021005b00 ,
                        0x660072006d005f003000320030005f00310030005f004d006100df006e006100 ,
                        0x68006d0065006e00760065007200770061006c00740075006e0067005d002100 ,
                        0x5b00550046005f004d006100730073006e00610068006d0065005d002e004600 ,
                        0x6f0072006d0021005b00540046005f004d006100730073006e005f0056006f00 ,
                        0x72004b006f00730074005d000000000000000000000000000000000000000000 ,
                        0x00
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_020_40_UF__Teilmassnahmen.cls"
