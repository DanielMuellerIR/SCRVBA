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
    Width =11622
    DatasheetFontHeight =10
    ItemSuffix =48
    Left =18555
    Top =7770
    Right =26325
    Bottom =10590
    PaintPalette = Begin
        0x000301000000000000000000
    End
    RecSrcDt = Begin
        0x52b683e30e65e540
    End
    RecordSource ="SELECT Buchungsstellen.Buchungsstelle, Buchungsstellen.Sachkonto, Buchungsstelle"
        "n.[Text Buchungsstelle], Buchungsstellen.[für Gebäude] FROM Buchungsstellen WHER"
        "E (((Buchungsstellen.ID)=F_Variable(\"lng_ID_Buchung\"))) ORDER BY Buchungsstell"
        "en.Buchungsstelle;"
    Caption ="Neue Buchungsstelle einrichten"
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
        Begin FormHeader
            Height =396
            BackColor =12632256
            Name ="Formularkopf"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =56
                    Top =56
                    Width =1516
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld17"
                    Caption ="Nummer - alt"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =56
                    LayoutCachedTop =56
                    LayoutCachedWidth =1572
                    LayoutCachedHeight =356
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =3396
                    Top =56
                    Width =3963
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld18"
                    Caption ="Text"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =3396
                    LayoutCachedTop =56
                    LayoutCachedWidth =7359
                    LayoutCachedHeight =356
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =7637
                    Top =56
                    Width =3858
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld44"
                    Caption ="für Gebäude"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =7637
                    LayoutCachedTop =56
                    LayoutCachedWidth =11495
                    LayoutCachedHeight =356
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =1757
                    Top =56
                    Width =1353
                    Height =300
                    FontSize =10
                    ForeColor =0
                    Name ="Bezeichnungsfeld45"
                    Caption ="Sachkonto"
                    Tag ="DetachedLabel"
                    LayoutCachedLeft =1757
                    LayoutCachedTop =56
                    LayoutCachedWidth =3110
                    LayoutCachedHeight =356
                End
            End
        End
        Begin Section
            Height =453
            BackColor =12632256
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =60
                    Top =62
                    Width =1524
                    Height =284
                    FontSize =10
                    BackColor =16777215
                    Name ="Buchungsstelle"
                    ControlSource ="Buchungsstelle"
                    DefaultValue ="0"

                    LayoutCachedLeft =60
                    LayoutCachedTop =62
                    LayoutCachedWidth =1584
                    LayoutCachedHeight =346
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =3400
                    Top =62
                    Width =3957
                    Height =284
                    FontSize =10
                    TabIndex =1
                    BackColor =16777215
                    Name ="Text Buchungsstelle"
                    ControlSource ="Text Buchungsstelle"
                    EventProcPrefix ="Text_Buchungsstelle"

                    LayoutCachedLeft =3400
                    LayoutCachedTop =62
                    LayoutCachedWidth =7357
                    LayoutCachedHeight =346
                End
                Begin ComboBox
                    SpecialEffect =0
                    OverlapFlags =85
                    ColumnCount =3
                    ListRows =50
                    ListWidth =4455
                    Left =7646
                    Top =62
                    Width =3855
                    Height =284
                    TabIndex =2
                    BackColor =16777215
                    BorderColor =16777215
                    Name ="Kombinationsfeld42"
                    ControlSource ="für Gebäude"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Gebäudeliste.ID, Gebäudeliste.[Straße Hausnummer], Gebäudelis"
                        "te.Bezeichung FROM Gebäudeliste ORDER BY Gebäudeliste.[Straße Hausnummer];"
                    ColumnWidths ="0;1845;2610"

                    LayoutCachedLeft =7646
                    LayoutCachedTop =62
                    LayoutCachedWidth =11501
                    LayoutCachedHeight =346
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =1756
                    Top =60
                    Width =1375
                    Height =284
                    FontSize =10
                    TabIndex =3
                    BackColor =16777215
                    Name ="Text46"
                    ControlSource ="Sachkonto"
                    DefaultValue ="0"

                    LayoutCachedLeft =1756
                    LayoutCachedTop =60
                    LayoutCachedWidth =3131
                    LayoutCachedHeight =344
                End
            End
        End
        Begin FormFooter
            Height =680
            BackColor =12632256
            Name ="Formularfuß"
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =5040
                    Top =125
                    Width =3143
                    Height =420
                    Name ="BF_BS_Uebenehmen"
                    Caption ="Neue Buchungsstelle übernehmen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =5040
                    LayoutCachedTop =125
                    LayoutCachedWidth =8183
                    LayoutCachedHeight =545
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =8354
                    Top =120
                    Width =3143
                    Height =420
                    TabIndex =1
                    Name ="BS_Verwerfen"
                    Caption ="Abbrechen und Verwerfen"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =8354
                    LayoutCachedTop =120
                    LayoutCachedWidth =11497
                    LayoutCachedHeight =540
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_015_10_10_Buchungsstelle.cls"
