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
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    DefaultView =0
    ScrollBars =0
    PictureAlignment =5
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =11674
    DatasheetFontHeight =10
    ItemSuffix =122
    Left =9061
    Top =3464
    Right =22755
    Bottom =5923
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x4cc3f0310d81e540
    End
    RecordSource ="SELECT Maßnahmen.*, Sachbearbeiter.Name FROM Sachbearbeiter RIGHT JOIN Maßnahmen"
        " ON Sachbearbeiter.ID = Maßnahmen.ID_SB WHERE (((Maßnahmen.ID)=F_Variable(\"lng_"
        "ID_Massn\")));"
    Caption ="Maßnahmen"
    OnCurrent ="[Event Procedure]"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    PictureSizeMode =1
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
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
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            BorderColor =12632256
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
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            BorderColor =12632256
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
        Begin Section
            CanGrow = NotDefault
            Height =2721
            BackColor =16514043
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =1
                    Left =2648
                    Top =471
                    Width =1980
                    Height =223
                    ColumnWidth =2310
                    TabIndex =1
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="TF_Massn_VorKost"
                    ControlSource ="voraussichtliche Kosten gesamt"
                    Format ="#,##0.00 €;-#,##0.00 €"
                    ConditionalFormat = Begin
                        0x0100000042010000010000000100000000000000000000007000000001010000 ,
                        0xff000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x5b0046006f0072006d0073005d0021005b00660072006d005f00300032003000 ,
                        0x5f00310030005f004d006100df006e00610068006d0065006e00760065007200 ,
                        0x770061006c00740075006e0067005d0021005b00550046005f00540065006900 ,
                        0x6c006d006100730073006e00610068006d0065005d002e005b0046006f007200 ,
                        0x6d005d0021005b00540046005f00530075006d006d005f0041006c006c006500 ,
                        0x5f0054004d005f0056006f0072004b006f00730074005d003e005b0054004600 ,
                        0x5f004d006100730073006e005f0056006f0072004b006f00730074005d000000 ,
                        0x0000
                    End

                    LayoutCachedLeft =2648
                    LayoutCachedTop =471
                    LayoutCachedWidth =4628
                    LayoutCachedHeight =694
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x010001000000010000000000000001010000ff000000fff200006f0000005b00 ,
                        0x46006f0072006d0073005d0021005b00660072006d005f003000320030005f00 ,
                        0x310030005f004d006100df006e00610068006d0065006e007600650072007700 ,
                        0x61006c00740075006e0067005d0021005b00550046005f005400650069006c00 ,
                        0x6d006100730073006e00610068006d0065005d002e005b0046006f0072006d00 ,
                        0x5d0021005b00540046005f00530075006d006d005f0041006c006c0065005f00 ,
                        0x54004d005f0056006f0072004b006f00730074005d003e005b00540046005f00 ,
                        0x4d006100730073006e005f0056006f0072004b006f00730074005d0000000000 ,
                        0x0000000000000000000000000000000000
                    End
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =238
                            Top =471
                            Width =2323
                            Height =223
                            FontWeight =700
                            ForeColor =4138256
                            Name ="voraussichtliche Kosten gesamt Bezeichnungsfeld"
                            Caption ="voraussichtl. Kosten gesamt:"
                            EventProcPrefix ="voraussichtliche_Kosten_gesamt_Bezeichnungsfeld"
                            LayoutCachedLeft =238
                            LayoutCachedTop =471
                            LayoutCachedWidth =2561
                            LayoutCachedHeight =694
                            ForeShade =50.0
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =1
                    Left =2633
                    Top =1969
                    Width =1230
                    Height =223
                    ColumnWidth =870
                    TabIndex =8
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="erledigt im Jahr"
                    ControlSource ="erledigt im Jahr"
                    Format ="General Number"
                    EventProcPrefix ="erledigt_im_Jahr"

                    LayoutCachedLeft =2633
                    LayoutCachedTop =1969
                    LayoutCachedWidth =3863
                    LayoutCachedHeight =2192
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1209
                            Top =1970
                            Width =1337
                            Height =223
                            FontWeight =700
                            ForeColor =4138256
                            Name ="erledigt im Jahr Bezeichnungsfeld"
                            Caption ="erledigt im Jahr:"
                            EventProcPrefix ="erledigt_im_Jahr_Bezeichnungsfeld"
                            LayoutCachedLeft =1209
                            LayoutCachedTop =1970
                            LayoutCachedWidth =2546
                            LayoutCachedHeight =2193
                            ForeShade =50.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =1
                    Left =2633
                    Top =2267
                    Width =8926
                    Height =223
                    ColumnWidth =2310
                    TabIndex =9
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="nicht mehr erforderlich weil"
                    ControlSource ="nicht mehr erforderlich weil"
                    EventProcPrefix ="nicht_mehr_erforderlich_weil"

                    LayoutCachedLeft =2633
                    LayoutCachedTop =2267
                    LayoutCachedWidth =11559
                    LayoutCachedHeight =2490
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =266
                            Top =2285
                            Width =2280
                            Height =223
                            FontWeight =700
                            ForeColor =4138256
                            Name ="nicht mehr erforderlich weil Bezeichnungsfeld"
                            Caption ="nicht mehr erforderlich weil:"
                            EventProcPrefix ="nicht_mehr_erforderlich_weil_Bezeichnungsfeld"
                            LayoutCachedLeft =266
                            LayoutCachedTop =2285
                            LayoutCachedWidth =2546
                            LayoutCachedHeight =2508
                            ForeShade =50.0
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =1003
                    Top =1083
                    Width =1560
                    Height =223
                    FontWeight =700
                    ForeColor =4138256
                    Name ="Bezeichnungsfeld58"
                    Caption ="Sachliche Priorität:"
                    LayoutCachedLeft =1003
                    LayoutCachedTop =1083
                    LayoutCachedWidth =2563
                    LayoutCachedHeight =1306
                    ForeShade =50.0
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =1
                    ColumnCount =2
                    ListWidth =2280
                    Left =2650
                    Top =1079
                    Width =8905
                    Height =223
                    TabIndex =4
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Kombinationsfeld59"
                    ControlSource ="Priorität"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [Maßnahmen Prioritäten].ID, [Rang] & \" : \" & [Priorität] AS"
                        " Rng_Prio FROM [Maßnahmen Prioritäten] ORDER BY [Rang] & \" : \" & [Priorität];"
                    ColumnWidths ="0;2280"

                    LayoutCachedLeft =2650
                    LayoutCachedTop =1079
                    LayoutCachedWidth =11555
                    LayoutCachedHeight =1302
                    ForeShade =50.0
                End
                Begin ComboBox
                    OverlapFlags =93
                    TextAlign =1
                    BackStyle =1
                    ColumnCount =2
                    ListRows =20
                    ListWidth =510
                    Left =2633
                    Top =1671
                    Width =1995
                    Height =223
                    TabIndex =7
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Bearbeiter"
                    ControlSource ="ID_SB"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT Sachbearbeiter.ID, Sachbearbeiter.Name FROM Sachbearbeiter WHERE ((([Obje"
                        "ktverantwortlicher]=True Or [Fachplaner_Elektro]=True Or [Fachplaner_HLS]=True)="
                        "True) AND ((Sachbearbeiter.ausgeschieden)=False)) ORDER BY Sachbearbeiter.Name;"
                    ColumnWidths ="0"

                    LayoutCachedLeft =2633
                    LayoutCachedTop =1671
                    LayoutCachedWidth =4628
                    LayoutCachedHeight =1894
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1226
                            Top =1671
                            Width =1320
                            Height =223
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld112"
                            Caption ="Sachbearbeiter:"
                            LayoutCachedLeft =1226
                            LayoutCachedTop =1671
                            LayoutCachedWidth =2546
                            LayoutCachedHeight =1894
                            ForeShade =50.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =1
                    IMESentenceMode =3
                    Left =2650
                    Top =1377
                    Width =997
                    Height =223
                    TabIndex =5
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Text105"
                    ControlSource ="Rangfolge"

                    LayoutCachedLeft =2650
                    LayoutCachedTop =1377
                    LayoutCachedWidth =3647
                    LayoutCachedHeight =1600
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =60
                            Top =1377
                            Width =2503
                            Height =223
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld106"
                            Caption ="Rang bei Sachlicher Priorität 3:"
                            LayoutCachedLeft =60
                            LayoutCachedTop =1377
                            LayoutCachedWidth =2563
                            LayoutCachedHeight =1600
                            ForeShade =50.0
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =1
                    ColumnCount =2
                    ListWidth =2280
                    Left =2629
                    Top =760
                    Width =1299
                    Height =223
                    TabIndex =6
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Kombinationsfeld110"
                    ControlSource ="Priorität_zeitl"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [Maßnahmen Prioritäten zeitlich].ID, [Rang] & \" : \" & [Prio"
                        "rität_zeitl] AS Rng_Prio FROM [Maßnahmen Prioritäten zeitlich] ORDER BY [Rang] &"
                        " \" : \" & [Priorität_zeitl];"
                    ColumnWidths ="0;2280"

                    LayoutCachedLeft =2629
                    LayoutCachedTop =760
                    LayoutCachedWidth =3928
                    LayoutCachedHeight =983
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1102
                            Top =760
                            Width =1440
                            Height =223
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld111"
                            Caption ="Zeitliche Priorität:"
                            LayoutCachedLeft =1102
                            LayoutCachedTop =760
                            LayoutCachedWidth =2542
                            LayoutCachedHeight =983
                            ForeShade =50.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =1
                    IMESentenceMode =3
                    Left =2648
                    Top =171
                    Width =8914
                    Height =223
                    ColumnWidth =7575
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"

                    LayoutCachedLeft =2648
                    LayoutCachedTop =171
                    LayoutCachedWidth =11562
                    LayoutCachedHeight =394
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1575
                            Top =171
                            Width =986
                            Height =223
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld113"
                            Caption ="Maßnahme:"
                            LayoutCachedLeft =1575
                            LayoutCachedTop =171
                            LayoutCachedWidth =2561
                            LayoutCachedHeight =394
                            ForeShade =50.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =1
                    IMESentenceMode =3
                    Left =6072
                    Top =472
                    Width =901
                    Height =223
                    TabIndex =2
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="Kostendatum"
                    ControlSource ="Kostendatum"
                    Format ="Short Date"
                    ConditionalFormat = Begin
                        0x0100000042010000010000000100000000000000000000007000000001010000 ,
                        0xff000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x5b0046006f0072006d0073005d0021005b00660072006d005f00300032003000 ,
                        0x5f00310030005f004d006100df006e00610068006d0065006e00760065007200 ,
                        0x770061006c00740075006e0067005d0021005b00550046005f00540065006900 ,
                        0x6c006d006100730073006e00610068006d0065005d002e005b0046006f007200 ,
                        0x6d005d0021005b00540046005f00530075006d006d005f0041006c006c006500 ,
                        0x5f0054004d005f0056006f0072004b006f00730074005d003e005b0054004600 ,
                        0x5f004d006100730073006e005f0056006f0072004b006f00730074005d000000 ,
                        0x0000
                    End

                    LayoutCachedLeft =6072
                    LayoutCachedTop =472
                    LayoutCachedWidth =6973
                    LayoutCachedHeight =695
                    ForeShade =50.0
                    ConditionalFormat14 = Begin
                        0x010001000000010000000000000001010000ff000000fff200006f0000005b00 ,
                        0x46006f0072006d0073005d0021005b00660072006d005f003000320030005f00 ,
                        0x310030005f004d006100df006e00610068006d0065006e007600650072007700 ,
                        0x61006c00740075006e0067005d0021005b00550046005f005400650069006c00 ,
                        0x6d006100730073006e00610068006d0065005d002e005b0046006f0072006d00 ,
                        0x5d0021005b00540046005f00530075006d006d005f0041006c006c0065005f00 ,
                        0x54004d005f0056006f0072004b006f00730074005d003e005b00540046005f00 ,
                        0x4d006100730073006e005f0056006f0072004b006f00730074005d0000000000 ,
                        0x0000000000000000000000000000000000
                    End
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =4823
                            Top =472
                            Width =1166
                            Height =223
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld114"
                            Caption ="Kostendatum:"
                            LayoutCachedLeft =4823
                            LayoutCachedTop =472
                            LayoutCachedWidth =5989
                            LayoutCachedHeight =695
                            ForeShade =50.0
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =9419
                    Top =476
                    Width =185
                    Height =195
                    TabIndex =3
                    Name ="Bilanz_relevant"
                    ControlSource ="Bilanz_relevant"

                    LayoutCachedLeft =9419
                    LayoutCachedTop =476
                    LayoutCachedWidth =9604
                    LayoutCachedHeight =671
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =7255
                            Top =472
                            Width =2113
                            Height =223
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld115"
                            Caption ="Bilanz-relevanter San-Stau:"
                            LayoutCachedLeft =7255
                            LayoutCachedTop =472
                            LayoutCachedWidth =9368
                            LayoutCachedHeight =695
                            ForeShade =50.0
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =11371
                    Top =475
                    Width =185
                    Height =195
                    TabIndex =10
                    Name ="KK_Aktiv_Eigenl"
                    ControlSource ="Aktiv_Eigenl"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =11371
                    LayoutCachedTop =475
                    LayoutCachedWidth =11556
                    LayoutCachedHeight =670
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =9808
                            Top =472
                            Width =1509
                            Height =223
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld117"
                            Caption ="Aktiv. Eigenleistg.:"
                            LayoutCachedLeft =9808
                            LayoutCachedTop =472
                            LayoutCachedWidth =11317
                            LayoutCachedHeight =695
                            ForeShade =50.0
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =1
                    IMESentenceMode =3
                    Left =5720
                    Top =763
                    Width =5842
                    Height =223
                    TabIndex =11
                    BackColor =15728383
                    ForeColor =4138256
                    Name ="TF_Aktiv_Eigenl_Bem"
                    ControlSource ="Aktiv_Eigenl_Bem"

                    LayoutCachedLeft =5720
                    LayoutCachedTop =763
                    LayoutCachedWidth =11562
                    LayoutCachedHeight =986
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =4025
                            Top =764
                            Width =1603
                            Height =223
                            FontWeight =700
                            ForeColor =4138256
                            Name ="Bezeichnungsfeld119"
                            Caption ="Bem.zu akt. Eigenl.:"
                            LayoutCachedLeft =4025
                            LayoutCachedTop =764
                            LayoutCachedWidth =5628
                            LayoutCachedHeight =987
                            ForeShade =50.0
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =247
                    BackStyle =1
                    IMESentenceMode =3
                    Left =2633
                    Top =1671
                    Width =1758
                    Height =223
                    TabIndex =12
                    BackColor =15728383
                    Name ="Text120"
                    ControlSource ="Name"

                    LayoutCachedLeft =2633
                    LayoutCachedTop =1671
                    LayoutCachedWidth =4391
                    LayoutCachedHeight =1894
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_020_20_Maßn_verw_Einzel_DS.cls"
