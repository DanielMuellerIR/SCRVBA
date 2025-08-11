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
    Width =13350
    DatasheetFontHeight =10
    ItemSuffix =29
    Left =10785
    Top =2685
    RecSrcDt = Begin
        0xdb06dbfd70e1e240
    End
    RecordSource ="Bericht Sanierungsstau nach Finanzplanung_Kreuztabelle"
    Caption ="Bericht Sanierungsstau nach Finanzplanung_Kreuztabelle"
    OnOpen ="= Maxim_Bericht()"
    DatasheetFontName ="Arial"
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            TextAlign =1
            FontSize =10
            FontWeight =700
            FontName ="Arial"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =2
            BorderLineStyle =0
            Width =850
            Height =850
            BorderColor =12632256
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
            TextFontFamily =18
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
        End
        Begin ListBox
            TextFontFamily =18
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
        End
        Begin ComboBox
            OldBorderStyle =0
            TextFontFamily =18
            BorderLineStyle =0
            BackStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Times New Roman"
        End
        Begin Subform
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1014
            BackColor =12632256
            Name ="Berichtskopf"
            Begin
                Begin Label
                    BackStyle =1
                    Left =57
                    Top =57
                    Width =9120
                    Height =615
                    FontSize =24
                    FontWeight =900
                    BackColor =12632256
                    ForeColor =16777215
                    Name ="Bezeichnungsfeld18"
                    Caption ="Bericht Sanierungsstau "
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =444
            Name ="Detailbereich"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    Left =57
                    Top =57
                    Width =969
                    Height =330
                    ColumnWidth =5865
                    FontSize =8
                    Name ="Gebäude"
                    ControlSource ="Gebäude"

                End
                Begin TextBox
                    Left =1083
                    Top =57
                    Width =969
                    Height =330
                    ColumnWidth =2655
                    FontSize =8
                    TabIndex =1
                    Name ="Gesamtsumme von Betrag"
                    ControlSource ="Gesamtsumme von Betrag"
                    EventProcPrefix ="Gesamtsumme_von_Betrag"

                End
                Begin TextBox
                    Left =2109
                    Top =57
                    Width =969
                    Height =330
                    FontSize =8
                    TabIndex =2
                    Name ="<>"
                    ControlSource ="<>"
                    EventProcPrefix ="Ctl__"

                End
                Begin TextBox
                    Left =3135
                    Top =57
                    Width =969
                    Height =330
                    FontSize =8
                    TabIndex =3
                    Name ="0"
                    ControlSource ="0"
                    EventProcPrefix ="Ctl0"

                End
                Begin TextBox
                    Left =4161
                    Top =57
                    Width =969
                    Height =330
                    FontSize =8
                    TabIndex =4
                    Name ="2006"
                    ControlSource ="2006"
                    EventProcPrefix ="Ctl2006"

                End
                Begin TextBox
                    Left =5187
                    Top =57
                    Width =969
                    Height =330
                    FontSize =8
                    TabIndex =5
                    Name ="2007"
                    ControlSource ="2007"
                    EventProcPrefix ="Ctl2007"

                End
                Begin TextBox
                    Left =6213
                    Top =57
                    Width =969
                    Height =330
                    FontSize =8
                    TabIndex =6
                    Name ="2008"
                    ControlSource ="2008"
                    EventProcPrefix ="Ctl2008"

                End
                Begin TextBox
                    Left =7239
                    Top =57
                    Width =969
                    Height =330
                    FontSize =8
                    TabIndex =7
                    Name ="2009"
                    ControlSource ="2009"
                    EventProcPrefix ="Ctl2009"

                End
                Begin TextBox
                    Left =8265
                    Top =57
                    Width =750
                    Height =330
                    FontSize =8
                    TabIndex =8
                    Name ="2010"
                    ControlSource ="2010"
                    EventProcPrefix ="Ctl2010"

                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =1077
            Name ="Berichtsfuß"
            Begin
                Begin TextBox
                    Left =4138
                    Top =113
                    Width =969
                    Height =330
                    FontSize =8
                    Name ="Text23"
                    ControlSource ="=Sum([2006])"

                End
                Begin TextBox
                    Left =5164
                    Top =113
                    Width =969
                    Height =330
                    FontSize =8
                    TabIndex =1
                    Name ="Text24"
                    ControlSource ="=Sum([2007])"

                End
                Begin TextBox
                    Left =6190
                    Top =113
                    Width =969
                    Height =330
                    FontSize =8
                    TabIndex =2
                    Name ="Text25"
                    ControlSource ="=Sum([2008])"

                End
                Begin TextBox
                    Left =7216
                    Top =113
                    Width =969
                    Height =330
                    FontSize =8
                    TabIndex =3
                    Name ="Text26"
                    ControlSource ="=Sum([2009])"

                End
                Begin TextBox
                    Left =8242
                    Top =113
                    Width =750
                    Height =330
                    FontSize =8
                    TabIndex =4
                    Name ="Text27"
                    ControlSource ="=Sum([2010])"

                End
                Begin TextBox
                    Left =3004
                    Top =113
                    Width =969
                    Height =330
                    FontSize =8
                    TabIndex =5
                    Name ="Text28"
                    ControlSource ="=Sum([0])"

                End
            End
        End
    End
End
