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
    Width =8107
    DatasheetFontHeight =10
    ItemSuffix =149
    Left =7275
    Top =4215
    RecSrcDt = Begin
        0xc3e2fb6b15f7e440
    End
    RecordSource ="SELECT tbl_200_30_10_Bew_Bilanz_Sanierungsstau.* FROM tbl_200_30_10_Bew_Bilanz_S"
        "anierungsstau WHERE (((tbl_200_30_10_Bew_Bilanz_Sanierungsstau.Bilanz_relevant)="
        "True));"
    Caption ="Gebäudeliste"
    OnOpen ="= Maxim_Bericht()"
    OnClose ="Makro Filter.SchließenFilter"
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
        Begin PageBreak
            Width =283
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =2
            ControlSource ="ID_Gebäudeteil"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =680
            Name ="Gruppenkopf0"
            Begin
                Begin Label
                    TextAlign =0
                    Left =165
                    Top =171
                    Width =4665
                    Height =270
                    FontSize =10
                    FontWeight =600
                    Name ="Bezeichnungsfeld95"
                    Caption ="Zusammenstellung Sanierungsstau:"
                    FontName ="Arial"
                    LayoutCachedLeft =165
                    LayoutCachedTop =171
                    LayoutCachedWidth =4830
                    LayoutCachedHeight =441
                End
                Begin Line
                    BorderWidth =1
                    Left =165
                    Top =570
                    Width =7938
                    Name ="Linie148"
                    LayoutCachedLeft =165
                    LayoutCachedTop =570
                    LayoutCachedWidth =8103
                    LayoutCachedHeight =570
                End
                Begin Label
                    Left =7725
                    Top =165
                    Width =240
                    Height =240
                    FontSize =10
                    Name ="Bezeichnungsfeld218"
                    Caption ="9)"
                    FontName ="Arial"
                    LayoutCachedLeft =7725
                    LayoutCachedTop =165
                    LayoutCachedWidth =7965
                    LayoutCachedHeight =405
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =340
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    Left =158
                    Width =5811
                    Height =255
                    FontWeight =700
                    Name ="Maßnahme"
                    ControlSource ="Maßnahme"

                    LayoutCachedLeft =158
                    LayoutCachedWidth =5969
                    LayoutCachedHeight =255
                End
                Begin TextBox
                    Left =6237
                    Height =255
                    TabIndex =1
                    Name ="voraussichtliche Kosten gesamt"
                    ControlSource ="voraussichtliche Kosten gesamt"
                    EventProcPrefix ="voraussichtliche_Kosten_gesamt"

                    LayoutCachedLeft =6237
                    LayoutCachedWidth =7938
                    LayoutCachedHeight =255
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =453
            Name ="Gruppenfuß1"
            Begin
                Begin TextBox
                    DecimalPlaces =2
                    OldBorderStyle =1
                    Left =6237
                    Top =56
                    Height =285
                    FontWeight =700
                    Name ="TF_Sanstau_Summe"
                    ControlSource ="=Sum([voraussichtliche Kosten gesamt])"
                    Format ="#,##0.00 €;-#,##0.00 €"

                    LayoutCachedLeft =6237
                    LayoutCachedTop =56
                    LayoutCachedWidth =7938
                    LayoutCachedHeight =341
                    BorderThemeColorIndex =0
                End
                Begin Label
                    TextAlign =0
                    Left =155
                    Top =45
                    Width =2895
                    Height =270
                    FontSize =9
                    FontWeight =600
                    Name ="Bezeichnungsfeld140"
                    Caption ="Summe Sanierungsstau:"
                    FontName ="Arial"
                    LayoutCachedLeft =155
                    LayoutCachedTop =45
                    LayoutCachedWidth =3050
                    LayoutCachedHeight =315
                End
                Begin Label
                    TextAlign =2
                    Left =5655
                    Top =60
                    Width =495
                    Height =285
                    FontSize =9
                    FontWeight =700
                    Name ="Bezeichnungsfeld314"
                    Caption ="C:"
                    FontName ="Arial"
                    LayoutCachedLeft =5655
                    LayoutCachedTop =60
                    LayoutCachedWidth =6150
                    LayoutCachedHeight =345
                    ForeThemeColorIndex =1
                    ForeShade =75.0
                End
            End
        End
    End
End
CodeBehindForm
' See "rpt_200_10_30_Bew_Bil_Sanierungsstau.cls"
