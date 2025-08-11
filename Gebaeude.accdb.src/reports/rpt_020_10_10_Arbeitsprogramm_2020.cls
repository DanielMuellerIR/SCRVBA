Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Dim str_TF_Name As String
Dim X1 As Long, X2 As Long, Y1 As Long, Y2 As Long

Dim dbl_Dat_L_Pos As Double
Dim dbl_L_Jahr_Start As Double
Dim dbl_L_Jahr_Ende As Double

Dim lng_Linien_Farbe As Long
Dim Farbe_GLE As Long
Dim Farbe_Planung As Long
Dim Farbe_Ausschr As Long
Dim Farbe_Ausfuehrung As Long
Dim Farbe_Abrechnung As Long
Dim Farbe_Abschl_DB As Long
Dim Farbe_Heute As Long
'

Private Sub Report_Open(Cancel As Integer)

10  If InStr(1, str_Openargs, "*SB_nicht_festg*") > 0 Then
20          Me.RecordSource = _
        "SELECT qry_020_10_10_Rep_Arbeitsprogramm.*" _
                        & " FROM qry_020_10_10_Rep_Arbeitsprogramm" _
                        & " WHERE (((qry_020_10_10_Rep_Arbeitsprogramm.ID_SB) Is Null) AND ((qry_020_10_10_Rep_Arbeitsprogramm.Tats_Voraus_Kosten)>0));"
30  Else

40      If lng_ID_SB_Min = lng_ID_SB_Max Then
            ' Falls nur ein SB ausgewählt wurde, sollen die Maßnahmen ohne festgelegte SBs nicht meht angezeigt werden
50          Me.RecordSource = _
            "SELECT qry_020_10_10_Rep_Arbeitsprogramm.*" _
                            & " FROM qry_020_10_10_Rep_Arbeitsprogramm" _
                            & " WHERE (((qry_020_10_10_Rep_Arbeitsprogramm.ID_SB)>=F_VAriable('lng_ID_SB_Min')) AND ((qry_020_10_10_Rep_Arbeitsprogramm.[ID_SB])<=F_VAriable('lng_ID_SB_Max'))" _
                            & " AND ((qry_020_10_10_Rep_Arbeitsprogramm.Tats_Voraus_Kosten)>0));"
60      Else
            ' Falls alle SB ausgewählt wurde, sollen auch die Maßnahmen ohne festgelegte SBs mit angezeigt werden
70          Me.RecordSource = _
            "SELECT qry_020_10_10_Rep_Arbeitsprogramm.*" _
                            & " FROM qry_020_10_10_Rep_Arbeitsprogramm" _
                            & " WHERE (((qry_020_10_10_Rep_Arbeitsprogramm.ID_SB)>=F_VAriable('lng_ID_SB_Min') Or (qry_020_10_10_Rep_Arbeitsprogramm.ID_SB) Is Null)" _
                            & " AND ((qry_020_10_10_Rep_Arbeitsprogramm.[ID_SB])<=F_VAriable('lng_ID_SB_Max'))" _
                            & " AND ((qry_020_10_10_Rep_Arbeitsprogramm.Tats_Voraus_Kosten)>0));"
80      End If

90  End If

100 DoCmd.Maximize

110 lng_Linien_Farbe = RGB(127, 127, 127)  ' Linie grau darstellen.
120 Farbe_GLE = RGB(255, 242, 0)
130 Farbe_Planung = RGB(34, 177, 76)
140 Farbe_Ausschr = RGB(237, 28, 36)
150 Farbe_Ausfuehrung = RGB(0, 114, 188)
160 Farbe_Abrechnung = RGB(0, 0, 0)
170 Farbe_Abschl_DB = RGB(205, 220, 175)
180 Farbe_Heute = RGB(204, 0, 0)

190 Me!TF_Dat_Abschluss_DB.BackColor = Farbe_Abschl_DB
200 Me!TF_Dat_Abschluss_DB.BackColor = Farbe_Abschl_DB

210 dbl_L_Jahr_Start = 21.563
220 dbl_L_Jahr_Ende = 27.573
230 dbl_Dat_L_Pos = dbl_L_Jahr_Start + ((dbl_L_Jahr_Ende - dbl_L_Jahr_Start) * (Date - CDate("01.01." & Year(Date))) / 365)
    ' Zum Kalibrieren:
    'dbl_Dat_L_Pos = dbl_L_Jahr_Start + (dbl_L_Jahr_Ende - dbl_L_Jahr_Start) * 1 / 365
    'dbl_Dat_L_Pos = dbl_L_Jahr_Start + (dbl_L_Jahr_Ende - dbl_L_Jahr_Start) * 1

240 For Each Ctrl In Me.Section("Berichtskopf").Controls
250     On Error Resume Next

260     If Ctrl.Tag = "Heute" Then

270         If InStr(1, str_Openargs, "*Heute*") > 0 Then

280             Ctrl.Visible = True
290             Ctrl.ForeColor = Farbe_Heute
300             Ctrl.BorderColor = Farbe_Heute
310             Me!LI_Heute.Left = (dbl_Dat_L_Pos / 2.54) * 1440
320             Me!BF_Heute.Caption = Date
330             Me!BF_Heute.Left = ((dbl_Dat_L_Pos / 2.54) * 1440) - Me.BF_Heute.Width
340         Else
350             Ctrl.Visible = False
360         End If

370     End If
380     On Error GoTo 0
390 Next Ctrl


    ' Bei Filter auf einen SB Summeneinblendung der voruasscihtlichen Kosten andrucken,
    ' Bei Filter auf alle SB Summeneinblendung der tatsächlichen Kosten andrucken,
    ' Telefonat mit H. Kania am 25.10.2017
400 If lng_ID_SB_Min = lng_ID_SB_Max Then
        ' Nur ein SB
410     Me!TF_VorausK_Zw_Sum.Visible = True
420     Me!TF_VorausK_Sum.Visible = True
430     Me!TF_TatsK_Zw_Sum.Visible = False
440     Me!TF_TatsK_Sum.Visible = False
450 Else
        ' Alle SB
460     Me!TF_VorausK_Zw_Sum.Visible = False
470     Me!TF_VorausK_Sum.Visible = False
480     Me!TF_TatsK_Zw_Sum.Visible = True
490     Me!TF_TatsK_Sum.Visible = True
500 End If

End Sub

Private Sub Gruppenkopf0_Print(Cancel As Integer, PrintCount As Integer)

10  Me.ScaleMode = 7               ' Festlegen der Maßeinheit Zentimeter
20  Me.DrawWidth = 8               ' Außenlinien 7 Pixel stark

30  Y1 = (Me!Linie_OK_Gruppe.Top / 1440) * 2.54
40  Y2 = 10   ' Zeichne eine Linie 10 cm nach unten
50  Me.Line (0.106, Y1)-(0.106, Y2), lng_Linien_Farbe
'60  Me.Line (17.6, Y1)-(17.6, Y2), lng_Linien_Farbe
70  Me.Line (27.6, Y1)-(27.6, Y2), lng_Linien_Farbe


80  If InStr(1, str_Openargs, "*Heute*") > 0 Then
90      Me.Line (dbl_Dat_L_Pos, Y1)-(dbl_Dat_L_Pos, Y2), Farbe_Heute
100 End If


End Sub


Private Sub Detailbereich_Format(Cancel As Integer, FormatCount As Integer)

10  Me.ScaleMode = 7               ' Festlegen der Maßeinheit Zentimeter
20  Me.DrawWidth = 8               ' Außenlinien 7 Pixel stark

30  Y1 = 0
40  Y2 = 10   ' Zeichne eine Linie 10 cm nach unten
50  Me.Line (0.106, Y1)-(0.106, Y2), lng_Linien_Farbe
60  Me.Line (17.6, Y1)-(17.6, Y2), lng_Linien_Farbe
70  Me.Line (27.6, Y1)-(27.6, Y2), lng_Linien_Farbe

80  If InStr(1, str_Openargs, "*Heute*") > 0 Then
90      Me.Line (dbl_Dat_L_Pos, Y1)-(dbl_Dat_L_Pos, Y2), Farbe_Heute
100 End If
110 On Error GoTo Abbruch

120 Select Case Me!TF_Jan
    Case "Grundl.ermittlung"
130     Me!TF_Jan.BackColor = Farbe_GLE
140     Me!TF_Jan.ForeColor = Farbe_GLE
150 Case "Planung"
160     Me!TF_Jan.BackColor = Farbe_Planung
170     Me!TF_Jan.ForeColor = Farbe_Planung
180 Case "Auschreibung"
190     Me!TF_Jan.BackColor = Farbe_Ausschr
200     Me!TF_Jan.ForeColor = Farbe_Ausschr
210 Case "Ausführung"
220     Me!TF_Jan.BackColor = Farbe_Ausfuehrung
230     Me!TF_Jan.ForeColor = Farbe_Ausfuehrung
240 Case "Abrechnung"
250     Me!TF_Jan.BackColor = Farbe_Abrechnung
260     Me!TF_Jan.ForeColor = Farbe_Abrechnung
270 Case Else
280     Me!TF_Jan.BackColor = RGB(255, 255, 255)
290     Me!TF_Jan.ForeColor = RGB(255, 255, 255)
300 End Select

310 Select Case Me!TF_Feb
    Case "Grundl.ermittlung"
320     Me!TF_Feb.BackColor = Farbe_GLE
330     Me!TF_Feb.ForeColor = Farbe_GLE
340 Case "Planung"
350     Me!TF_Feb.BackColor = Farbe_Planung
360     Me!TF_Feb.ForeColor = Farbe_Planung
370 Case "Auschreibung"
380     Me!TF_Feb.BackColor = Farbe_Ausschr
390     Me!TF_Feb.ForeColor = Farbe_Ausschr
400 Case "Ausführung"
410     Me!TF_Feb.BackColor = Farbe_Ausfuehrung
420     Me!TF_Feb.ForeColor = Farbe_Ausfuehrung
430 Case "Abrechnung"
440     Me!TF_Feb.BackColor = Farbe_Abrechnung
450     Me!TF_Feb.ForeColor = Farbe_Abrechnung
460 Case Else
470     Me!TF_Feb.BackColor = RGB(255, 255, 255)
480     Me!TF_Feb.ForeColor = RGB(255, 255, 255)
490 End Select

500 Select Case Me!TF_Mrz
    Case "Grundl.ermittlung"
510     Me!TF_Mrz.BackColor = Farbe_GLE
520     Me!TF_Mrz.ForeColor = Farbe_GLE
530 Case "Planung"
540     Me!TF_Mrz.BackColor = Farbe_Planung
550     Me!TF_Mrz.ForeColor = Farbe_Planung
560 Case "Auschreibung"
570     Me!TF_Mrz.BackColor = Farbe_Ausschr
580     Me!TF_Mrz.ForeColor = Farbe_Ausschr
590 Case "Ausführung"
600     Me!TF_Mrz.BackColor = Farbe_Ausfuehrung
610     Me!TF_Mrz.ForeColor = Farbe_Ausfuehrung
620 Case "Abrechnung"
630     Me!TF_Mrz.BackColor = Farbe_Abrechnung
640     Me!TF_Mrz.ForeColor = Farbe_Abrechnung
650 Case Else
660     Me!TF_Mrz.BackColor = RGB(255, 255, 255)
670     Me!TF_Mrz.ForeColor = RGB(255, 255, 255)
680 End Select

690 Select Case Me!TF_Apr
    Case "Grundl.ermittlung"
700     Me!TF_Apr.BackColor = Farbe_GLE
710     Me!TF_Apr.ForeColor = Farbe_GLE
720 Case "Planung"
730     Me!TF_Apr.BackColor = Farbe_Planung
740     Me!TF_Apr.ForeColor = Farbe_Planung
750 Case "Auschreibung"
760     Me!TF_Apr.BackColor = Farbe_Ausschr
770     Me!TF_Apr.ForeColor = Farbe_Ausschr
780 Case "Ausführung"
790     Me!TF_Apr.BackColor = Farbe_Ausfuehrung
800     Me!TF_Apr.ForeColor = Farbe_Ausfuehrung
810 Case "Abrechnung"
820     Me!TF_Apr.BackColor = Farbe_Abrechnung
830     Me!TF_Apr.ForeColor = Farbe_Abrechnung
840 Case Else
850     Me!TF_Apr.BackColor = RGB(255, 255, 255)
860     Me!TF_Apr.ForeColor = RGB(255, 255, 255)
870 End Select


880 Select Case Me!TF_Mai
    Case "Grundl.ermittlung"
890     Me!TF_Mai.BackColor = Farbe_GLE
900     Me!TF_Mai.ForeColor = Farbe_GLE
910 Case "Planung"
920     Me!TF_Mai.BackColor = Farbe_Planung
930     Me!TF_Mai.ForeColor = Farbe_Planung
940 Case "Auschreibung"
950     Me!TF_Mai.BackColor = Farbe_Ausschr
960     Me!TF_Mai.ForeColor = Farbe_Ausschr
970 Case "Ausführung"
980     Me!TF_Mai.BackColor = Farbe_Ausfuehrung
990     Me!TF_Mai.ForeColor = Farbe_Ausfuehrung
1000 Case "Abrechnung"
1010    Me!TF_Mai.BackColor = Farbe_Abrechnung
1020    Me!TF_Mai.ForeColor = Farbe_Abrechnung
1030 Case Else
1040    Me!TF_Mai.BackColor = RGB(255, 255, 255)
1050    Me!TF_Mai.ForeColor = RGB(255, 255, 255)
1060 End Select

1070 Select Case Me!TF_Jun
    Case "Grundl.ermittlung"
1080    Me!TF_Jun.BackColor = Farbe_GLE
1090    Me!TF_Jun.ForeColor = Farbe_GLE
1100 Case "Planung"
1110    Me!TF_Jun.BackColor = Farbe_Planung
1120    Me!TF_Jun.ForeColor = Farbe_Planung
1130 Case "Auschreibung"
1140    Me!TF_Jun.BackColor = Farbe_Ausschr
1150    Me!TF_Jun.ForeColor = Farbe_Ausschr
1160 Case "Ausführung"
1170    Me!TF_Jun.BackColor = Farbe_Ausfuehrung
1180    Me!TF_Jun.ForeColor = Farbe_Ausfuehrung
1190 Case "Abrechnung"
1200    Me!TF_Jun.BackColor = Farbe_Abrechnung
1210    Me!TF_Jun.ForeColor = Farbe_Abrechnung
1220 Case Else
1230    Me!TF_Jun.BackColor = RGB(255, 255, 255)
1240    Me!TF_Jun.ForeColor = RGB(255, 255, 255)
1250 End Select


1260 Select Case Me!TF_Jul
    Case "Grundl.ermittlung"
1270    Me!TF_Jul.BackColor = Farbe_GLE
1280    Me!TF_Jul.ForeColor = Farbe_GLE
1290 Case "Planung"
1300    Me!TF_Jul.BackColor = Farbe_Planung
1310    Me!TF_Jul.ForeColor = Farbe_Planung
1320 Case "Auschreibung"
1330    Me!TF_Jul.BackColor = Farbe_Ausschr
1340    Me!TF_Jul.ForeColor = Farbe_Ausschr
1350 Case "Ausführung"
1360    Me!TF_Jul.BackColor = Farbe_Ausfuehrung
1370    Me!TF_Jul.ForeColor = Farbe_Ausfuehrung
1380 Case "Abrechnung"
1390    Me!TF_Jul.BackColor = Farbe_Abrechnung
1400    Me!TF_Jul.ForeColor = Farbe_Abrechnung
1410 Case Else
1420    Me!TF_Jul.BackColor = RGB(255, 255, 255)
1430    Me!TF_Jul.ForeColor = RGB(255, 255, 255)
1440 End Select

1450 Select Case Me!TF_Aug
    Case "Grundl.ermittlung"
1460    Me!TF_Aug.BackColor = Farbe_GLE
1470    Me!TF_Aug.ForeColor = Farbe_GLE
1480 Case "Planung"
1490    Me!TF_Aug.BackColor = Farbe_Planung
1500    Me!TF_Aug.ForeColor = Farbe_Planung
1510 Case "Auschreibung"
1520    Me!TF_Aug.BackColor = Farbe_Ausschr
1530    Me!TF_Aug.ForeColor = Farbe_Ausschr
1540 Case "Ausführung"
1550    Me!TF_Aug.BackColor = Farbe_Ausfuehrung
1560    Me!TF_Aug.ForeColor = Farbe_Ausfuehrung
1570 Case "Abrechnung"
1580    Me!TF_Aug.BackColor = Farbe_Abrechnung
1590    Me!TF_Aug.ForeColor = Farbe_Abrechnung
1600 Case Else
1610    Me!TF_Aug.BackColor = RGB(255, 255, 255)
1620    Me!TF_Aug.ForeColor = RGB(255, 255, 255)
1630 End Select

1640 Select Case Me!TF_Sep
    Case "Grundl.ermittlung"
1650    Me!TF_Sep.BackColor = Farbe_GLE
1660    Me!TF_Sep.ForeColor = Farbe_GLE
1670 Case "Planung"
1680    Me!TF_Sep.BackColor = Farbe_Planung
1690    Me!TF_Sep.ForeColor = Farbe_Planung
1700 Case "Auschreibung"
1710    Me!TF_Sep.BackColor = Farbe_Ausschr
1720    Me!TF_Sep.ForeColor = Farbe_Ausschr
1730 Case "Ausführung"
1740    Me!TF_Sep.BackColor = Farbe_Ausfuehrung
1750    Me!TF_Sep.ForeColor = Farbe_Ausfuehrung
1760 Case "Abrechnung"
1770    Me!TF_Sep.BackColor = Farbe_Abrechnung
1780    Me!TF_Sep.ForeColor = Farbe_Abrechnung
1790 Case Else
1800    Me!TF_Sep.BackColor = RGB(255, 255, 255)
1810    Me!TF_Sep.ForeColor = RGB(255, 255, 255)
1820 End Select

1830 Select Case Me!TF_Okt
    Case "Grundl.ermittlung"
1840    Me!TF_Okt.BackColor = Farbe_GLE
1850    Me!TF_Okt.ForeColor = Farbe_GLE
1860 Case "Planung"
1870    Me!TF_Okt.BackColor = Farbe_Planung
1880    Me!TF_Okt.ForeColor = Farbe_Planung
1890 Case "Auschreibung"
1900    Me!TF_Okt.BackColor = Farbe_Ausschr
1910    Me!TF_Okt.ForeColor = Farbe_Ausschr
1920 Case "Ausführung"
1930    Me!TF_Okt.BackColor = Farbe_Ausfuehrung
1940    Me!TF_Okt.ForeColor = Farbe_Ausfuehrung
1950 Case "Abrechnung"
1960    Me!TF_Okt.BackColor = Farbe_Abrechnung
1970    Me!TF_Okt.ForeColor = Farbe_Abrechnung
1980 Case Else
1990    Me!TF_Okt.BackColor = RGB(255, 255, 255)
2000    Me!TF_Okt.ForeColor = RGB(255, 255, 255)
2010 End Select

2020 Select Case Me!TF_Nov
    Case "Grundl.ermittlung"
2030    Me!TF_Nov.BackColor = Farbe_GLE
2040    Me!TF_Nov.ForeColor = Farbe_GLE
2050 Case "Planung"
2060    Me!TF_Nov.BackColor = Farbe_Planung
2070    Me!TF_Nov.ForeColor = Farbe_Planung
2080 Case "Auschreibung"
2090    Me!TF_Nov.BackColor = Farbe_Ausschr
2100    Me!TF_Nov.ForeColor = Farbe_Ausschr
2110 Case "Ausführung"
2120    Me!TF_Nov.BackColor = Farbe_Ausfuehrung
2130    Me!TF_Nov.ForeColor = Farbe_Ausfuehrung
2140 Case "Abrechnung"
2150    Me!TF_Nov.BackColor = Farbe_Abrechnung
2160    Me!TF_Nov.ForeColor = Farbe_Abrechnung
2170 Case Else
2180    Me!TF_Nov.BackColor = RGB(255, 255, 255)
2190    Me!TF_Nov.ForeColor = RGB(255, 255, 255)
2200 End Select

2210 Select Case Me!TF_Dez
    Case "Grundl.ermittlung"
2220    Me!TF_Dez.BackColor = Farbe_GLE
2230    Me!TF_Dez.ForeColor = Farbe_GLE
2240 Case "Planung"
2250    Me!TF_Dez.BackColor = Farbe_Planung
2260    Me!TF_Dez.ForeColor = Farbe_Planung
2270 Case "Auschreibung"
2280    Me!TF_Dez.BackColor = Farbe_Ausschr
2290    Me!TF_Dez.ForeColor = Farbe_Ausschr
2300 Case "Ausführung"
2310    Me!TF_Dez.BackColor = Farbe_Ausfuehrung
2320    Me!TF_Dez.ForeColor = Farbe_Ausfuehrung
2330 Case "Abrechnung"
2340    Me!TF_Dez.BackColor = Farbe_Abrechnung
2350    Me!TF_Dez.ForeColor = Farbe_Abrechnung
2360 Case Else
2370    Me!TF_Dez.BackColor = RGB(255, 255, 255)
2380    Me!TF_Dez.ForeColor = RGB(255, 255, 255)
2390 End Select


2400 If Not IsNull(Me.TF_Kennfarbe) Then
2410    Me!TF_Name.BackColor = CLng(Me!TF_Kennfarbe)
2420 Else
2430    Me!TF_Name.BackColor = RGB(255, 255, 255)
2440 End If

2450 If Not IsNull(Me!TF_Dat_Abschluss_DB) Then
2460    Me!TF_Dat_Abschluss_DB.Visible = True
2470    i = Month(CDate(Me!TF_Dat_Abschluss_DB))
2480    Fuelle_Rest_auf_Abschl_DB i
2490 Else
2500    Me!TF_Dat_Abschluss_DB.Visible = False
2510 End If

2520 Exit Sub

Abbruch:
2530 On Error GoTo 0
2540 Exit Sub

End Sub

Private Sub Report_NoData(Cancel As Integer)
10  MsgBox "Zu den getroffenen Filterkriterien existieren keine Daten."
End Sub

Private Sub Fuelle_Rest_auf_Abschl_DB(Monat_1)

10  For i = Monat_1 To 12
20      str_TF_Name = "TF_" & Format(CDate("01." & i & "." & Year(Date)), "mmm")
30      Me.Controls(str_TF_Name).BackColor = Farbe_Abschl_DB
40      Me.Controls(str_TF_Name).ForeColor = Farbe_Abschl_DB
50  Next i

End Sub
