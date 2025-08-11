Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    ShortcutMenu = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =17020
    DatasheetFontHeight =10
    ItemSuffix =29
    Left =8175
    Top =5325
    Right =26085
    Bottom =17985
    RecSrcDt = Begin
        0xd3139688b7cfe240
    End
    RecordSource ="Maßnahmen"
    DatasheetFontName ="Arial"
    OnActivate ="[Event Procedure]"
    FilterOnLoad =0
    ShowPageMargins =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Image
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
            ForeColor =-2147483630
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin TextBox
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin ComboBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin Subform
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =2
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin Tab
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin Page
            Width =1701
            Height =1701
        End
        Begin Section
            CanGrow = NotDefault
            Height =10601
            BackColor =-2147483633
            Name ="Detailbereich"
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =4
                    ListRows =50
                    ListWidth =11340
                    Left =340
                    Top =510
                    Width =6930
                    Height =284
                    Name ="Maßnahmeauswahl"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW Maßnahmen.ID, Gebäudeliste.Bezeichung, Gebäudeliste.[Straße H"
                        "ausnummer], Maßnahmen.Maßnahme FROM (Gebäudeliste RIGHT JOIN Maßnahmen ON Gebäud"
                        "eliste.ID = Maßnahmen.[ID aus Gebäudeliste]) LEFT JOIN Haushaltsdaten ON Maßnahm"
                        "en.ID = Haushaltsdaten.[ID aus Maßnahmen] WHERE (((Haushaltsdaten.[ID aus Maßnah"
                        "men]) Is Not Null)) GROUP BY Maßnahmen.ID, Gebäudeliste.Bezeichung, Gebäudeliste"
                        ".[Straße Hausnummer], Maßnahmen.Maßnahme ORDER BY Gebäudeliste.[Straße Hausnumme"
                        "r];"
                    ColumnWidths ="0;3402;1845;5389"
                    AfterUpdate ="[Event Procedure]"

                End
                Begin Image
                    Left =7710
                    Top =283
                    Width =1575
                    Height =780
                    Name ="OLEUngebunden9"
                    PictureData = Begin
                        0x030000000000000008000000b70a0000c306000000000000010009000003d900 ,
                        0x000004001c00000000001400000026060f001e00ffffffff040014000000576f ,
                        0x72640e004d6963726f736f667420576f7264050000000b02feff020005000000 ,
                        0x0c02990188021c000000fb02adff000000000000900100000000044000125469 ,
                        0x6d6573204e657720526f6d616e00e6c0f477efc0f47701000000000030000400 ,
                        0x00002d0100000500000002010100000005000000090200000000050000000201 ,
                        0x010000001000000026060f001600ffffffff0000170000001200000078020000 ,
                        0x8301000008000000fa0200000600000000000000040000002d01010007000000 ,
                        0xfc020000ffffff000000040000002d0102001200000024030700b1001600b100 ,
                        0x70007302700073022401b1002401b1007e011b00ca0008000000fa0200000000 ,
                        0x000000000000040000002d01030004000000f001010007000000fc020000ffff ,
                        0xff000000040000002d01010004000000f00102000800000026060f000600ffff ,
                        0xffff01001c000000fb021000070000000000bc02000000000102022253797374 ,
                        0x656d000000000a00000004000000000002000000010000000000300004000000 ,
                        0x2d010200030000000000
                    End

                    TabIndex =2
                End
                Begin Label
                    OverlapFlags =85
                    Left =9411
                    Top =510
                    Width =3691
                    Height =623
                    FontSize =12
                    FontWeight =700
                    ForeColor =255
                    Name ="Bezeichnungsfeld10"
                    Caption ="Maßnahme auswählen"
                End
                Begin Subform
                    OverlapFlags =85
                    Left =340
                    Top =1360
                    Width =14535
                    Height =8730
                    TabIndex =1
                    Name ="Unterformular Auftragsabwicklung"
                    SourceObject ="Form.Unterformular Auftragsabwicklung"
                    LinkChildFields ="ID"
                    LinkMasterFields ="Maßnahmeauswahl"
                    EventProcPrefix ="Unterformular_Auftragsabwicklung"

                End
            End
        End
    End
End
CodeBehindForm
' See "Formular Aufträge.cls"
