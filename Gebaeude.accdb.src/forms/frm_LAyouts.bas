Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =8811
    DatasheetFontHeight =10
    ItemSuffix =59
    Left =13395
    Top =7455
    Right =22380
    Bottom =13335
    RecSrcDt = Begin
        0x28e32d7cc18ee240
    End
    RecordSource ="tblRelationshipViews"
    Caption ="Speichern / Öffnen Beziehungen-Layouts"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
        End
        Begin CommandButton
            FontSize =8
            FontWeight =400
            ForeColor =-2147483630
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin TextBox
            FELineBreak = NotDefault
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            FontName ="Tahoma"
            AsianLineBreak =255
        End
        Begin ListBox
            SpecialEffect =2
            BorderLineStyle =0
            FontName ="Tahoma"
        End
        Begin Tab
            FontName ="Tahoma"
            BorderLineStyle =0
        End
        Begin Section
            Height =5433
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin Tab
                    OverlapFlags =85
                    Left =255
                    Top =240
                    Width =8370
                    Height =4620
                    FontSize =10
                    Name ="TabCtl21"
                    FontName ="Calibri"

                    LayoutCachedLeft =255
                    LayoutCachedTop =240
                    LayoutCachedWidth =8625
                    LayoutCachedHeight =4860
                    Begin
                        Begin Page
                            OverlapFlags =87
                            Left =353
                            Top =660
                            Width =8175
                            Height =4103
                            Name ="Page22"
                            Caption ="Speichern / Reaktivieren / Löschen von Beziehungen-Layouts"
                            LayoutCachedLeft =353
                            LayoutCachedTop =660
                            LayoutCachedWidth =8528
                            LayoutCachedHeight =4763
                            Begin
                                Begin TextBox
                                    AllowAutoCorrect = NotDefault
                                    OverlapFlags =215
                                    TextFontFamily =0
                                    Left =386
                                    Top =2662
                                    Width =3600
                                    Height =337
                                    FontSize =9
                                    Name ="txtEnterID"
                                    DefaultValue ="\"Neues Layout?\""
                                    FontName ="Cakibri"

                                    LayoutCachedLeft =386
                                    LayoutCachedTop =2662
                                    LayoutCachedWidth =3986
                                    LayoutCachedHeight =2999
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OldBorderStyle =1
                                            OverlapFlags =215
                                            TextAlign =2
                                            TextFontFamily =0
                                            Left =386
                                            Top =704
                                            Width =3600
                                            Height =643
                                            FontSize =9
                                            FontWeight =700
                                            BackColor =0
                                            ForeColor =16777215
                                            Name ="Label4"
                                            Caption ="Legen Sie einen neuen Namen für das aktuelle Beziehungen-Layout fest\015\012Rela"
                                                "tionship Window Layout"
                                            FontName ="Cakibri"
                                            LayoutCachedLeft =386
                                            LayoutCachedTop =704
                                            LayoutCachedWidth =3986
                                            LayoutCachedHeight =1347
                                        End
                                    End
                                End
                                Begin ListBox
                                    OverlapFlags =247
                                    TextFontFamily =0
                                    Left =4229
                                    Top =1085
                                    Width =3495
                                    Height =1914
                                    FontSize =9
                                    TabIndex =1
                                    Name ="listStored"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT First([tblRelationshipViews].[ID]) AS [ID Field], Count([tblRelationshipV"
                                        "iews].[ID]) AS NumberOfDups FROM tblRelationshipViews GROUP BY [tblRelationshipV"
                                        "iews].[ID] HAVING (((Count(tblRelationshipViews.ID))>1)); "
                                    ColumnWidths ="2880"
                                    FontName ="Cakibri"

                                    LayoutCachedLeft =4229
                                    LayoutCachedTop =1085
                                    LayoutCachedWidth =7724
                                    LayoutCachedHeight =2999
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OldBorderStyle =1
                                            OverlapFlags =215
                                            TextAlign =2
                                            TextFontFamily =0
                                            Left =4229
                                            Top =704
                                            Width =3495
                                            Height =231
                                            FontSize =9
                                            FontWeight =700
                                            BackColor =0
                                            ForeColor =16777215
                                            Name ="Label30"
                                            Caption ="Wählen Sie ein gespeichertes Layout .."
                                            FontName ="Cakibri"
                                            LayoutCachedLeft =4229
                                            LayoutCachedTop =704
                                            LayoutCachedWidth =7724
                                            LayoutCachedHeight =935
                                        End
                                    End
                                End
                                Begin CommandButton
                                    OverlapFlags =215
                                    TextFontFamily =0
                                    Left =410
                                    Top =3165
                                    Width =3539
                                    Height =282
                                    FontSize =9
                                    TabIndex =2
                                    Name ="cmdSave"
                                    Caption ="Speichern des aktuellen Layouts"
                                    OnClick ="[Event Procedure]"
                                    FontName ="Cakibri"

                                    LayoutCachedLeft =410
                                    LayoutCachedTop =3165
                                    LayoutCachedWidth =3949
                                    LayoutCachedHeight =3447
                                End
                                Begin CommandButton
                                    OverlapFlags =215
                                    TextFontFamily =0
                                    Left =4398
                                    Top =3568
                                    Width =3291
                                    Height =282
                                    FontSize =9
                                    TabIndex =3
                                    Name ="BS_Layout_Loeschen"
                                    Caption ="Löschen des markierten Layouts"
                                    OnClick ="[Event Procedure]"
                                    FontName ="Cakibri"

                                    LayoutCachedLeft =4398
                                    LayoutCachedTop =3568
                                    LayoutCachedWidth =7689
                                    LayoutCachedHeight =3850
                                End
                                Begin CommandButton
                                    OverlapFlags =215
                                    TextFontFamily =0
                                    Left =4398
                                    Top =3213
                                    Width =3291
                                    Height =282
                                    FontSize =9
                                    TabIndex =4
                                    Name ="BS_Layout_reakt"
                                    Caption ="Reaktivieren des markierten Layouts"
                                    OnClick ="[Event Procedure]"
                                    FontName ="Cakibri"

                                    LayoutCachedLeft =4398
                                    LayoutCachedTop =3213
                                    LayoutCachedWidth =7689
                                    LayoutCachedHeight =3495
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =247
                            Left =353
                            Top =660
                            Width =8175
                            Height =4103
                            Name ="Page28"
                            Caption =" BLOB Internals"
                            LayoutCachedLeft =353
                            LayoutCachedTop =660
                            LayoutCachedWidth =8528
                            LayoutCachedHeight =4763
                            Begin
                                Begin CommandButton
                                    OverlapFlags =247
                                    Left =464
                                    Top =3193
                                    Width =7065
                                    Height =404
                                    Name ="cmdGetBlob"
                                    Caption ="Get and Decode Relationship Window Layout BLOB for this MDB"
                                    OnClick ="[Event Procedure]"

                                    LayoutCachedLeft =464
                                    LayoutCachedTop =3193
                                    LayoutCachedWidth =7529
                                    LayoutCachedHeight =3597
                                End
                                Begin TextBox
                                    OldBorderStyle =1
                                    OverlapFlags =247
                                    Left =499
                                    Top =989
                                    Width =1755
                                    Height =360
                                    BackColor =-2147483643
                                    ForeColor =-2147483640
                                    Name ="txtSig"
                                    FontName ="MS Sans Serif"

                                    LayoutCachedLeft =499
                                    LayoutCachedTop =989
                                    LayoutCachedWidth =2254
                                    LayoutCachedHeight =1349
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OverlapFlags =255
                                            Left =499
                                            Top =749
                                            Width =1755
                                            Height =240
                                            BackColor =0
                                            ForeColor =16777215
                                            Name ="Label37"
                                            Caption ="SIG"
                                            LayoutCachedLeft =499
                                            LayoutCachedTop =749
                                            LayoutCachedWidth =2254
                                            LayoutCachedHeight =989
                                        End
                                    End
                                End
                                Begin TextBox
                                    OldBorderStyle =1
                                    OverlapFlags =247
                                    Left =2309
                                    Top =989
                                    Width =1755
                                    Height =360
                                    BackColor =-2147483643
                                    ForeColor =-2147483640
                                    Name ="txtAAAs"
                                    FontName ="MS Sans Serif"

                                    LayoutCachedLeft =2309
                                    LayoutCachedTop =989
                                    LayoutCachedWidth =4064
                                    LayoutCachedHeight =1349
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OverlapFlags =255
                                            Left =2309
                                            Top =749
                                            Width =1755
                                            Height =240
                                            BackColor =0
                                            ForeColor =16777215
                                            Name ="Label39"
                                            Caption ="AAAs"
                                            LayoutCachedLeft =2309
                                            LayoutCachedTop =749
                                            LayoutCachedWidth =4064
                                            LayoutCachedHeight =989
                                        End
                                    End
                                End
                                Begin TextBox
                                    OldBorderStyle =1
                                    OverlapFlags =247
                                    Left =499
                                    Top =1829
                                    Width =1755
                                    Height =360
                                    BackColor =-2147483643
                                    ForeColor =-2147483640
                                    Name ="txtRelWinX1"
                                    FontName ="MS Sans Serif"

                                    LayoutCachedLeft =499
                                    LayoutCachedTop =1829
                                    LayoutCachedWidth =2254
                                    LayoutCachedHeight =2189
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OverlapFlags =255
                                            Left =499
                                            Top =1589
                                            Width =1755
                                            Height =240
                                            BackColor =0
                                            ForeColor =16777215
                                            Name ="Label41"
                                            Caption ="RelWinX1"
                                            LayoutCachedLeft =499
                                            LayoutCachedTop =1589
                                            LayoutCachedWidth =2254
                                            LayoutCachedHeight =1829
                                        End
                                    End
                                End
                                Begin TextBox
                                    OldBorderStyle =1
                                    OverlapFlags =247
                                    Left =499
                                    Top =2669
                                    Width =1755
                                    Height =360
                                    BackColor =-2147483643
                                    ForeColor =-2147483640
                                    Name ="txtRelWinY1"
                                    FontName ="MS Sans Serif"

                                    LayoutCachedLeft =499
                                    LayoutCachedTop =2669
                                    LayoutCachedWidth =2254
                                    LayoutCachedHeight =3029
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OverlapFlags =255
                                            Left =499
                                            Top =2429
                                            Width =1755
                                            Height =240
                                            BackColor =0
                                            ForeColor =16777215
                                            Name ="Label43"
                                            Caption ="RelWin1Y"
                                            LayoutCachedLeft =499
                                            LayoutCachedTop =2429
                                            LayoutCachedWidth =2254
                                            LayoutCachedHeight =2669
                                        End
                                    End
                                End
                                Begin TextBox
                                    OldBorderStyle =1
                                    OverlapFlags =247
                                    Left =2309
                                    Top =1829
                                    Width =1755
                                    Height =360
                                    BackColor =-2147483643
                                    ForeColor =-2147483640
                                    Name ="txtRelWinX2"
                                    FontName ="MS Sans Serif"

                                    LayoutCachedLeft =2309
                                    LayoutCachedTop =1829
                                    LayoutCachedWidth =4064
                                    LayoutCachedHeight =2189
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OverlapFlags =255
                                            Left =2309
                                            Top =1589
                                            Width =1755
                                            Height =240
                                            BackColor =0
                                            ForeColor =16777215
                                            Name ="Label45"
                                            Caption ="RelWinX2"
                                            LayoutCachedLeft =2309
                                            LayoutCachedTop =1589
                                            LayoutCachedWidth =4064
                                            LayoutCachedHeight =1829
                                        End
                                    End
                                End
                                Begin TextBox
                                    OldBorderStyle =1
                                    OverlapFlags =247
                                    Left =2309
                                    Top =2669
                                    Width =1755
                                    Height =360
                                    BackColor =-2147483643
                                    ForeColor =-2147483640
                                    Name ="txtRelWinY2"
                                    FontName ="MS Sans Serif"

                                    LayoutCachedLeft =2309
                                    LayoutCachedTop =2669
                                    LayoutCachedWidth =4064
                                    LayoutCachedHeight =3029
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OverlapFlags =255
                                            Left =2309
                                            Top =2429
                                            Width =1755
                                            Height =240
                                            BackColor =0
                                            ForeColor =16777215
                                            Name ="Label47"
                                            Caption ="RelWinY2"
                                            LayoutCachedLeft =2309
                                            LayoutCachedTop =2429
                                            LayoutCachedWidth =4064
                                            LayoutCachedHeight =2669
                                        End
                                    End
                                End
                                Begin TextBox
                                    OldBorderStyle =1
                                    OverlapFlags =247
                                    Left =4124
                                    Top =989
                                    Width =1755
                                    Height =360
                                    BackColor =-2147483643
                                    ForeColor =-2147483640
                                    Name ="txtBlank"
                                    FontName ="MS Sans Serif"

                                    LayoutCachedLeft =4124
                                    LayoutCachedTop =989
                                    LayoutCachedWidth =5879
                                    LayoutCachedHeight =1349
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OverlapFlags =255
                                            Left =4124
                                            Top =749
                                            Width =1755
                                            Height =240
                                            BackColor =0
                                            ForeColor =16777215
                                            Name ="Label49"
                                            Caption ="Blank"
                                            LayoutCachedLeft =4124
                                            LayoutCachedTop =749
                                            LayoutCachedWidth =5879
                                            LayoutCachedHeight =989
                                        End
                                    End
                                End
                                Begin TextBox
                                    OldBorderStyle =1
                                    OverlapFlags =247
                                    Left =5939
                                    Top =989
                                    Width =1755
                                    Height =360
                                    BackColor =-2147483643
                                    ForeColor =-2147483640
                                    Name ="txtFFFs"
                                    FontName ="MS Sans Serif"

                                    LayoutCachedLeft =5939
                                    LayoutCachedTop =989
                                    LayoutCachedWidth =7694
                                    LayoutCachedHeight =1349
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OverlapFlags =255
                                            Left =5939
                                            Top =749
                                            Width =1755
                                            Height =240
                                            BackColor =0
                                            ForeColor =16777215
                                            Name ="Label51"
                                            Caption ="FFFs"
                                            LayoutCachedLeft =5939
                                            LayoutCachedTop =749
                                            LayoutCachedWidth =7694
                                            LayoutCachedHeight =989
                                        End
                                    End
                                End
                                Begin TextBox
                                    OldBorderStyle =1
                                    OverlapFlags =247
                                    Left =4124
                                    Top =1829
                                    Width =1755
                                    Height =360
                                    BackColor =-2147483643
                                    ForeColor =-2147483640
                                    Name ="txtClientRectX"
                                    FontName ="MS Sans Serif"

                                    LayoutCachedLeft =4124
                                    LayoutCachedTop =1829
                                    LayoutCachedWidth =5879
                                    LayoutCachedHeight =2189
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OverlapFlags =255
                                            Left =4124
                                            Top =1589
                                            Width =1755
                                            Height =240
                                            BackColor =0
                                            ForeColor =16777215
                                            Name ="Label53"
                                            Caption ="RelWin Client RectX"
                                            LayoutCachedLeft =4124
                                            LayoutCachedTop =1589
                                            LayoutCachedWidth =5879
                                            LayoutCachedHeight =1829
                                        End
                                    End
                                End
                                Begin TextBox
                                    OldBorderStyle =1
                                    OverlapFlags =247
                                    Left =5939
                                    Top =1829
                                    Width =1755
                                    Height =360
                                    BackColor =-2147483643
                                    ForeColor =-2147483640
                                    Name ="txtPadding"
                                    FontName ="MS Sans Serif"

                                    LayoutCachedLeft =5939
                                    LayoutCachedTop =1829
                                    LayoutCachedWidth =7694
                                    LayoutCachedHeight =2189
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OverlapFlags =255
                                            Left =5939
                                            Top =1589
                                            Width =1755
                                            Height =240
                                            BackColor =0
                                            ForeColor =16777215
                                            Name ="Label55"
                                            Caption ="Padding"
                                            LayoutCachedLeft =5939
                                            LayoutCachedTop =1589
                                            LayoutCachedWidth =7694
                                            LayoutCachedHeight =1829
                                        End
                                    End
                                End
                                Begin TextBox
                                    OldBorderStyle =1
                                    OverlapFlags =247
                                    Left =4124
                                    Top =2669
                                    Width =1755
                                    Height =360
                                    BackColor =-2147483643
                                    ForeColor =-2147483640
                                    Name ="txtClientRectY"
                                    FontName ="MS Sans Serif"

                                    LayoutCachedLeft =4124
                                    LayoutCachedTop =2669
                                    LayoutCachedWidth =5879
                                    LayoutCachedHeight =3029
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OverlapFlags =255
                                            Left =4124
                                            Top =2429
                                            Width =1755
                                            Height =240
                                            BackColor =0
                                            ForeColor =16777215
                                            Name ="Label57"
                                            Caption ="RelWin Client RectY"
                                            LayoutCachedLeft =4124
                                            LayoutCachedTop =2429
                                            LayoutCachedWidth =5879
                                            LayoutCachedHeight =2669
                                        End
                                    End
                                End
                                Begin TextBox
                                    OldBorderStyle =1
                                    OverlapFlags =247
                                    Left =5939
                                    Top =2669
                                    Width =1755
                                    Height =360
                                    BackColor =-2147483643
                                    ForeColor =-2147483640
                                    Name ="txtNumWindows"
                                    FontName ="MS Sans Serif"

                                    LayoutCachedLeft =5939
                                    LayoutCachedTop =2669
                                    LayoutCachedWidth =7694
                                    LayoutCachedHeight =3029
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OverlapFlags =255
                                            Left =5939
                                            Top =2429
                                            Width =1755
                                            Height =240
                                            BackColor =0
                                            ForeColor =16777215
                                            Name ="Label59"
                                            Caption ="NumWindows"
                                            LayoutCachedLeft =5939
                                            LayoutCachedTop =2429
                                            LayoutCachedWidth =7694
                                            LayoutCachedHeight =2669
                                        End
                                    End
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =247
                            Left =353
                            Top =660
                            Width =8175
                            Height =4103
                            Name ="Page46"
                            Caption ="Über.."
                            LayoutCachedLeft =353
                            LayoutCachedTop =660
                            LayoutCachedWidth =8528
                            LayoutCachedHeight =4763
                            Begin
                                Begin Label
                                    BackStyle =1
                                    OldBorderStyle =1
                                    OverlapFlags =247
                                    Left =464
                                    Top =734
                                    Width =7903
                                    Height =2415
                                    FontSize =10
                                    FontWeight =700
                                    Name ="Label2"
                                    Caption ="Author: Stephen Lebans\015\012\015\012Please feel free to use this code within y"
                                        "our own applications, whether private or commercial without cost or obligation a"
                                        "s long as you retain any existing copyright notices within the source code. A pu"
                                        "blic notice of copyright is not required.\015\012\015\012The source code may not"
                                        " be resold, in whole or part, by itself or as part of a collection.\015\012\015\012"
                                        "Lebans Holdings 1999 Inc.\015\012www.lebans.com"
                                    FontName ="Calibri"
                                    LayoutCachedLeft =464
                                    LayoutCachedTop =734
                                    LayoutCachedWidth =8367
                                    LayoutCachedHeight =3149
                                    BackThemeColorIndex =3
                                    BorderThemeColorIndex =4
                                    BorderShade =50.0
                                    ForeThemeColorIndex =4
                                    ForeShade =50.0
                                End
                                Begin CommandButton
                                    FontUnderline = NotDefault
                                    OverlapFlags =247
                                    Left =464
                                    Top =3194
                                    Width =7903
                                    Height =405
                                    FontSize =10
                                    ForeColor =1279872587
                                    Name ="cmdWeb"
                                    Caption ="Visit my Web site here: www.lebans.com"
                                    OnClick ="[Event Procedure]"
                                    FontName ="Calibri"
                                    HyperlinkAddress ="http://www.lebans.com/"

                                    LayoutCachedLeft =464
                                    LayoutCachedTop =3194
                                    LayoutCachedWidth =8367
                                    LayoutCachedHeight =3599
                                End
                                Begin Label
                                    OverlapFlags =255
                                    Left =480
                                    Top =3729
                                    Width =7809
                                    Height =652
                                    FontSize =10
                                    Name ="Bezeichnungsfeld55"
                                    Caption ="This app was slightly amended  and translated to german language by W. Budde, 20"
                                        "18-07-27.\015\012\015\012"
                                    FontName ="Calibri"
                                    LayoutCachedLeft =480
                                    LayoutCachedTop =3729
                                    LayoutCachedWidth =8289
                                    LayoutCachedHeight =4381
                                End
                                Begin Label
                                    FontUnderline = NotDefault
                                    OverlapFlags =247
                                    Left =2837
                                    Top =3994
                                    Width =2666
                                    Height =274
                                    FontSize =10
                                    Name ="Bezeichnungsfeld57"
                                    Caption ="www.systemberatung-budde.de"
                                    FontName ="Calibri"
                                    HyperlinkAddress ="http://www.systemberatung-budde.de"
                                    LayoutCachedLeft =2837
                                    LayoutCachedTop =3994
                                    LayoutCachedWidth =5503
                                    LayoutCachedHeight =4268
                                    ThemeFontIndex =1
                                    ForeThemeColorIndex =10
                                End
                                Begin Label
                                    OverlapFlags =247
                                    Left =464
                                    Top =4461
                                    Width =2734
                                    Height =266
                                    FontSize =10
                                    FontWeight =700
                                    Name ="Bezeichnungsfeld58"
                                    Caption ="Many Thanks to Stephen Lebans"
                                    FontName ="Calibri"
                                    LayoutCachedLeft =464
                                    LayoutCachedTop =4461
                                    LayoutCachedWidth =3198
                                    LayoutCachedHeight =4727
                                End
                            End
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7706
                    Top =4911
                    Width =900
                    Height =317
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    Name ="BS_Schließen"
                    Caption ="Schließen"
                    OnClick ="[Event Procedure]"
                    FontName ="Calibri"

                    LayoutCachedLeft =7706
                    LayoutCachedTop =4911
                    LayoutCachedWidth =8606
                    LayoutCachedHeight =5228
                    Overlaps =1
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_LAyouts.cls"
