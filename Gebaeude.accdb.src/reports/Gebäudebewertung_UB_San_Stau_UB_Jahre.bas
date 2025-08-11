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
    Width =7993
    DatasheetFontHeight =10
    ItemSuffix =152
    Left =8580
    Top =10200
    RecSrcDt = Begin
        0xa343cd2d2e26e340
    End
    RecordSource ="geplante Finanzierung"
    Caption ="Gebäudeliste"
    OnOpen ="= Maxim_Bericht()"
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
            ControlSource ="Kalenderjahr"
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =225
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    TextAlign =1
                    Left =453
                    Width =621
                    Height =225
                    FontSize =8
                    Name ="Kalenderjahr"
                    ControlSource ="Kalenderjahr"

                End
                Begin TextBox
                    Left =1133
                    Width =1686
                    Height =225
                    FontSize =8
                    TabIndex =1
                    Name ="Betrag"
                    ControlSource ="Betrag"

                End
                Begin TextBox
                    Visible = NotDefault
                    Left =4423
                    Width =381
                    Height =225
                    FontSize =8
                    TabIndex =2
                    Name ="TF_ID_Massnahme"
                    ControlSource ="ID_Massnahme"

                End
                Begin Line
                    BorderWidth =1
                    Width =0
                    Height =225
                    Name ="Linie150"
                End
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    Left =7935
                    Width =0
                    Height =225
                    Name ="Linie151"
                End
            End
        End
    End
End
CodeBehindForm
' See "Gebäudebewertung_UB_San_Stau_UB_Jahre.cls"
