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
    Width =9404
    DatasheetFontHeight =10
    ItemSuffix =45
    Left =8966
    Top =1508
    RecSrcDt = Begin
        0x4909d48d34cce440
    End
    Caption ="Gebäudeliste"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =1
            FontSize =12
            FontName ="Haettenschweiler"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =1
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
        End
        Begin Image
            OldBorderStyle =0
            BorderLineStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin BoundObjectFrame
            BorderLineStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin ListBox
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin ComboBox
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =9
            FontName ="Arial"
        End
        Begin Subform
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            Width =4536
            Height =2835
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="Name"
        End
        Begin BreakLevel
            ControlSource ="Straße_HNr"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1189
            Name ="Berichtskopf"
            Begin
                Begin Label
                    FontItalic = NotDefault
                    SpecialEffect =1
                    BackStyle =1
                    TextAlign =2
                    Left =513
                    Top =67
                    Width =2600
                    Height =491
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    Name ="BF_Caisy"
                    Caption ="Caisy B 60"
                    FontName ="Arial"
                End
                Begin Label
                    FontItalic = NotDefault
                    TextAlign =2
                    Left =15
                    Top =30
                    Width =3530
                    Height =1129
                    FontSize =18
                    FontWeight =700
                    BackColor =12632256
                    ForeColor =65535
                    Name ="Text4"
                    Caption ="Caisy B 60"
                    FontName ="Arial"
                    LayoutCachedLeft =15
                    LayoutCachedTop =30
                    LayoutCachedWidth =3545
                    LayoutCachedHeight =1159
                End
                Begin Label
                    Top =680
                    Width =7097
                    Height =397
                    FontSize =16
                    FontWeight =700
                    Name ="BF_Verantwortung"
                    Caption =" "
                    FontName ="Arial"
                    LayoutCachedTop =680
                    LayoutCachedWidth =7097
                    LayoutCachedHeight =1077
                End
            End
        End
        Begin PageHeader
            Height =283
            Name ="Seitenkopf"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =963
            Name ="Gruppenkopf0"
            Begin
                Begin TextBox
                    Left =120
                    Top =401
                    Width =7155
                    Height =405
                    ColumnWidth =3735
                    FontSize =14
                    FontWeight =700
                    Name ="Name"
                    ControlSource ="Name"

                    LayoutCachedLeft =120
                    LayoutCachedTop =401
                    LayoutCachedWidth =7275
                    LayoutCachedHeight =806
                End
                Begin Rectangle
                    Left =120
                    Top =345
                    Width =9014
                    Height =566
                    Name ="Rechteck23"
                    LayoutCachedLeft =120
                    LayoutCachedTop =345
                    LayoutCachedWidth =9134
                    LayoutCachedHeight =911
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =283
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextAlign =1
                    Left =345
                    Width =7215
                    Height =255
                    Name ="Text40"
                    ControlSource ="=[Bezeichnung] & \", \" & [Straße_HNr]"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =345
                    LayoutCachedWidth =7560
                    LayoutCachedHeight =255
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =283
            Name ="Gruppenfuß1"
        End
        Begin PageFooter
            Height =498
            Name ="Seitenfuß"
            Begin
                Begin TextBox
                    TextAlign =1
                    Width =4421
                    Height =270
                    FontSize =8
                    Name ="Text17"
                    ControlSource ="=Now()"
                    Format ="Long Date"

                    LayoutCachedWidth =4421
                    LayoutCachedHeight =270
                End
                Begin TextBox
                    TextAlign =3
                    Left =4920
                    Width =4421
                    Height =270
                    FontSize =8
                    TabIndex =1
                    Name ="Text18"
                    ControlSource ="=\"Seite \" & [Page] & \" von \" & [Pages]"

                    LayoutCachedLeft =4920
                    LayoutCachedWidth =9341
                    LayoutCachedHeight =270
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =0
            Name ="Berichtsfuß"
        End
    End
End
CodeBehindForm
' See "Objektverantwortung.cls"
