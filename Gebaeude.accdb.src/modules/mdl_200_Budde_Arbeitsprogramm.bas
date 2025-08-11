Attribute VB_Name = "mdl_200_Budde_Arbeitsprogramm"
Option Compare Database
Option Explicit

Function fct_Jan(KJ, Dat_Grundl_Erm_Start, Dat_Grundl_Erm_Ende, Dat_Planung_Start, Dat_Planung_Ende, _
                 Dat_Ausschr_Start, Dat_Ausschr_Ende, Dat_Ausf_Start, Dat_Ausf_Ende, _
                 Dat_Abr_Start, Dat_Abr_Ende, Dat_Abschluss_DB)

10  fct_Jan = ""

20  If Year(Dat_Grundl_Erm_Start) = KJ And (Month(Dat_Grundl_Erm_Start) <= 1 And Month(Dat_Grundl_Erm_Ende) >= 1) Then
30      fct_Jan = "Grundl.ermittlung"
40      Exit Function
50  End If

60  If Year(Dat_Planung_Start) = KJ And Month(Dat_Planung_Start) <= 1 And Month(Dat_Planung_Ende) >= 1 Then
70      fct_Jan = "Planung"
80      Exit Function
90  End If


100 If Year(Dat_Ausschr_Start) = KJ And Month(Dat_Ausschr_Start) <= 1 And Month(Dat_Ausschr_Ende) >= 1 Then
110     fct_Jan = "Auschreibung"
120     Exit Function
130 End If

140 If Year(Dat_Ausf_Start) = KJ And Month(Dat_Ausf_Start) <= 1 And Month(Dat_Ausf_Ende) >= 1 Then
150     fct_Jan = "Ausführung"
160     Exit Function
170 End If

180 If Year(Dat_Abr_Start) = KJ And Month(Dat_Abr_Start) <= 1 And Month(Dat_Abr_Ende) >= 1 Then
190     fct_Jan = "Abrechnung"
200     Exit Function
210 End If

260 If Year(Dat_Abschluss_DB) = KJ And (Month(Dat_Abschluss_DB) = 1) Then
270     fct_Jan = "Abschluss mit DB"
280     Exit Function
290 End If

End Function

Function fct_Feb(KJ, Dat_Grundl_Erm_Start, Dat_Grundl_Erm_Ende, Dat_Planung_Start, Dat_Planung_Ende, _
                 Dat_Ausschr_Start, Dat_Ausschr_Ende, Dat_Ausf_Start, Dat_Ausf_Ende, _
                 Dat_Abr_Start, Dat_Abr_Ende, Dat_Abschluss_DB)

10  fct_Feb = ""

20  If Year(Dat_Grundl_Erm_Start) = KJ And (Month(Dat_Grundl_Erm_Start) <= 2 And Month(Dat_Grundl_Erm_Ende) >= 2) Then
30      fct_Feb = "Grundl.ermittlung"
40      Exit Function
50  End If

60  If Year(Dat_Planung_Start) = KJ And Month(Dat_Planung_Start) <= 2 And Month(Dat_Planung_Ende) >= 2 Then
70      fct_Feb = "Planung"
80      Exit Function
90  End If


100 If Year(Dat_Ausschr_Start) = KJ And Month(Dat_Ausschr_Start) <= 2 And Month(Dat_Ausschr_Ende) >= 2 Then
110     fct_Feb = "Auschreibung"
120     Exit Function
130 End If

140 If Year(Dat_Ausf_Start) = KJ And Month(Dat_Ausf_Start) <= 2 And Month(Dat_Ausf_Ende) >= 2 Then
150     fct_Feb = "Ausführung"
160     Exit Function
170 End If

180 If Year(Dat_Abr_Start) = KJ And Month(Dat_Abr_Start) <= 2 And Month(Dat_Abr_Ende) >= 2 Then
190     fct_Feb = "Abrechnung"
200     Exit Function
210 End If

260 If Year(Dat_Abschluss_DB) = KJ And (Month(Dat_Abschluss_DB) = 2) Then
270     fct_Feb = "Abschluss mit DB"
280     Exit Function
290 End If

End Function

Function fct_Mrz(KJ, Dat_Grundl_Erm_Start, Dat_Grundl_Erm_Ende, Dat_Planung_Start, Dat_Planung_Ende, _
                 Dat_Ausschr_Start, Dat_Ausschr_Ende, Dat_Ausf_Start, Dat_Ausf_Ende, _
                 Dat_Abr_Start, Dat_Abr_Ende, Dat_Abschluss_DB)

10  fct_Mrz = ""

20  If Year(Dat_Grundl_Erm_Start) = KJ And (Month(Dat_Grundl_Erm_Start) <= 3 And Month(Dat_Grundl_Erm_Ende) >= 3) Then
30      fct_Mrz = "Grundl.ermittlung"
40      Exit Function
50  End If

60  If Year(Dat_Planung_Start) = KJ And Month(Dat_Planung_Start) <= 3 And Month(Dat_Planung_Ende) >= 3 Then
70      fct_Mrz = "Planung"
80      Exit Function
90  End If


100 If Year(Dat_Ausschr_Start) = KJ And Month(Dat_Ausschr_Start) <= 3 And Month(Dat_Ausschr_Ende) >= 3 Then
110     fct_Mrz = "Auschreibung"
120     Exit Function
130 End If

140 If Year(Dat_Ausf_Start) = KJ And Month(Dat_Ausf_Start) <= 3 And Month(Dat_Ausf_Ende) >= 3 Then
150     fct_Mrz = "Ausführung"
160     Exit Function
170 End If

180 If Year(Dat_Abr_Start) = KJ And Month(Dat_Abr_Start) <= 3 And Month(Dat_Abr_Ende) >= 3 Then
190     fct_Mrz = "Abrechnung"
200     Exit Function
210 End If

260 If Year(Dat_Abschluss_DB) = KJ And (Month(Dat_Abschluss_DB) = 3) Then
270     fct_Mrz = "Abschluss mit DB"
280     Exit Function
290 End If

End Function

Function fct_Apr(KJ, Dat_Grundl_Erm_Start, Dat_Grundl_Erm_Ende, Dat_Planung_Start, Dat_Planung_Ende, _
                 Dat_Ausschr_Start, Dat_Ausschr_Ende, Dat_Ausf_Start, Dat_Ausf_Ende, _
                 Dat_Abr_Start, Dat_Abr_Ende, Dat_Abschluss_DB)

10  fct_Apr = ""

20  If Year(Dat_Grundl_Erm_Start) = KJ And (Month(Dat_Grundl_Erm_Start) <= 4 And Month(Dat_Grundl_Erm_Ende) >= 4) Then
30      fct_Apr = "Grundl.ermittlung"
40      Exit Function
50  End If

60  If Year(Dat_Planung_Start) = KJ And Month(Dat_Planung_Start) <= 4 And Month(Dat_Planung_Ende) >= 4 Then
70      fct_Apr = "Planung"
80      Exit Function
90  End If


100 If Year(Dat_Ausschr_Start) = KJ And Month(Dat_Ausschr_Start) <= 4 And Month(Dat_Ausschr_Ende) >= 4 Then
110     fct_Apr = "Auschreibung"
120     Exit Function
130 End If

140 If Year(Dat_Ausf_Start) = KJ And Month(Dat_Ausf_Start) <= 4 And Month(Dat_Ausf_Ende) >= 4 Then
150     fct_Apr = "Ausführung"
160     Exit Function
170 End If

180 If Year(Dat_Abr_Start) = KJ And Month(Dat_Abr_Start) <= 4 And Month(Dat_Abr_Ende) >= 4 Then
190     fct_Apr = "Abrechnung"
200     Exit Function
210 End If

260 If Year(Dat_Abschluss_DB) = KJ And (Month(Dat_Abschluss_DB) = 4) Then
270     fct_Apr = "Abschluss mit DB"
280     Exit Function
290 End If

End Function

Function fct_Mai(KJ, Dat_Grundl_Erm_Start, Dat_Grundl_Erm_Ende, Dat_Planung_Start, Dat_Planung_Ende, _
                 Dat_Ausschr_Start, Dat_Ausschr_Ende, Dat_Ausf_Start, Dat_Ausf_Ende, _
                 Dat_Abr_Start, Dat_Abr_Ende, Dat_Abschluss_DB)

10  fct_Mai = ""

20  If Year(Dat_Grundl_Erm_Start) = KJ And (Month(Dat_Grundl_Erm_Start) <= 5 And Month(Dat_Grundl_Erm_Ende) >= 5) Then
30      fct_Mai = "Grundl.ermittlung"
40      Exit Function
50  End If

60  If Year(Dat_Planung_Start) = KJ And Month(Dat_Planung_Start) <= 5 And Month(Dat_Planung_Ende) >= 5 Then
70      fct_Mai = "Planung"
80      Exit Function
90  End If


100 If Year(Dat_Ausschr_Start) = KJ And Month(Dat_Ausschr_Start) <= 5 And Month(Dat_Ausschr_Ende) >= 5 Then
110     fct_Mai = "Auschreibung"
120     Exit Function
130 End If

140 If Year(Dat_Ausf_Start) = KJ And Month(Dat_Ausf_Start) <= 5 And Month(Dat_Ausf_Ende) >= 5 Then
150     fct_Mai = "Ausführung"
160     Exit Function
170 End If

180 If Year(Dat_Abr_Start) = KJ And Month(Dat_Abr_Start) <= 5 And Month(Dat_Abr_Ende) >= 5 Then
190     fct_Mai = "Abrechnung"
200     Exit Function
210 End If

260 If Year(Dat_Abschluss_DB) = KJ And (Month(Dat_Abschluss_DB) = 5) Then
270     fct_Mai = "Abschluss mit DB"
280     Exit Function
290 End If

End Function

Function fct_Jun(KJ, Dat_Grundl_Erm_Start, Dat_Grundl_Erm_Ende, Dat_Planung_Start, Dat_Planung_Ende, _
                 Dat_Ausschr_Start, Dat_Ausschr_Ende, Dat_Ausf_Start, Dat_Ausf_Ende, _
                 Dat_Abr_Start, Dat_Abr_Ende, Dat_Abschluss_DB)

10  fct_Jun = ""

20  If Year(Dat_Grundl_Erm_Start) = KJ And (Month(Dat_Grundl_Erm_Start) <= 6 And Month(Dat_Grundl_Erm_Ende) >= 6) Then
30      fct_Jun = "Grundl.ermittlung"
40      Exit Function
50  End If

60  If Year(Dat_Planung_Start) = KJ And Month(Dat_Planung_Start) <= 6 And Month(Dat_Planung_Ende) >= 6 Then
70      fct_Jun = "Planung"
80      Exit Function
90  End If


100 If Year(Dat_Ausschr_Start) = KJ And Month(Dat_Ausschr_Start) <= 6 And Month(Dat_Ausschr_Ende) >= 6 Then
110     fct_Jun = "Auschreibung"
120     Exit Function
130 End If

140 If Year(Dat_Ausf_Start) = KJ And Month(Dat_Ausf_Start) <= 6 And Month(Dat_Ausf_Ende) >= 6 Then
150     fct_Jun = "Ausführung"
160     Exit Function
170 End If

180 If Year(Dat_Abr_Start) = KJ And Month(Dat_Abr_Start) <= 6 And Month(Dat_Abr_Ende) >= 6 Then
190     fct_Jun = "Abrechnung"
200     Exit Function
210 End If

260 If Year(Dat_Abschluss_DB) = KJ And (Month(Dat_Abschluss_DB) = 6) Then
270     fct_Jun = "Abschluss mit DB"
280     Exit Function
290 End If

End Function

Function fct_Jul(KJ, Dat_Grundl_Erm_Start, Dat_Grundl_Erm_Ende, Dat_Planung_Start, Dat_Planung_Ende, _
                 Dat_Ausschr_Start, Dat_Ausschr_Ende, Dat_Ausf_Start, Dat_Ausf_Ende, _
                 Dat_Abr_Start, Dat_Abr_Ende, Dat_Abschluss_DB)

10  fct_Jul = ""

20  If Year(Dat_Grundl_Erm_Start) = KJ And (Month(Dat_Grundl_Erm_Start) <= 7 And Month(Dat_Grundl_Erm_Ende) >= 7) Then
30      fct_Jul = "Grundl.ermittlung"
40      Exit Function
50  End If

60  If Year(Dat_Planung_Start) = KJ And Month(Dat_Planung_Start) <= 7 And Month(Dat_Planung_Ende) >= 7 Then
70      fct_Jul = "Planung"
80      Exit Function
90  End If


100 If Year(Dat_Ausschr_Start) = KJ And Month(Dat_Ausschr_Start) <= 7 And Month(Dat_Ausschr_Ende) >= 7 Then
110     fct_Jul = "Auschreibung"
120     Exit Function
130 End If

140 If Year(Dat_Ausf_Start) = KJ And Month(Dat_Ausf_Start) <= 7 And Month(Dat_Ausf_Ende) >= 7 Then
150     fct_Jul = "Ausführung"
160     Exit Function
170 End If

180 If Year(Dat_Abr_Start) = KJ And Month(Dat_Abr_Start) <= 7 And Month(Dat_Abr_Ende) >= 7 Then
190     fct_Jul = "Abrechnung"
200     Exit Function
210 End If

260 If Year(Dat_Abschluss_DB) = KJ And (Month(Dat_Abschluss_DB) = 7) Then
270     fct_Jul = "Abschluss mit DB"
280     Exit Function
290 End If

End Function

Function fct_Aug(KJ, Dat_Grundl_Erm_Start, Dat_Grundl_Erm_Ende, Dat_Planung_Start, Dat_Planung_Ende, _
                 Dat_Ausschr_Start, Dat_Ausschr_Ende, Dat_Ausf_Start, Dat_Ausf_Ende, _
                 Dat_Abr_Start, Dat_Abr_Ende, Dat_Abschluss_DB)

10  fct_Aug = ""

20  If Year(Dat_Grundl_Erm_Start) = KJ And (Month(Dat_Grundl_Erm_Start) <= 8 And Month(Dat_Grundl_Erm_Ende) >= 8) Then
30      fct_Aug = "Grundl.ermittlung"
40      Exit Function
50  End If

60  If Year(Dat_Planung_Start) = KJ And Month(Dat_Planung_Start) <= 8 And Month(Dat_Planung_Ende) >= 8 Then
70      fct_Aug = "Planung"
80      Exit Function
90  End If


100 If Year(Dat_Ausschr_Start) = KJ And Month(Dat_Ausschr_Start) <= 8 And Month(Dat_Ausschr_Ende) >= 8 Then
110     fct_Aug = "Auschreibung"
120     Exit Function
130 End If

140 If Year(Dat_Ausf_Start) = KJ And Month(Dat_Ausf_Start) <= 8 And Month(Dat_Ausf_Ende) >= 8 Then
150     fct_Aug = "Ausführung"
160     Exit Function
170 End If

180 If Year(Dat_Abr_Start) = KJ And Month(Dat_Abr_Start) <= 8 And Month(Dat_Abr_Ende) >= 8 Then
190     fct_Aug = "Abrechnung"
200     Exit Function
210 End If

260 If Year(Dat_Abschluss_DB) = KJ And (Month(Dat_Abschluss_DB) = 8) Then
270     fct_Aug = "Abschluss mit DB"
280     Exit Function
290 End If

End Function

Function fct_Sep(KJ, Dat_Grundl_Erm_Start, Dat_Grundl_Erm_Ende, Dat_Planung_Start, Dat_Planung_Ende, _
                 Dat_Ausschr_Start, Dat_Ausschr_Ende, Dat_Ausf_Start, Dat_Ausf_Ende, _
                 Dat_Abr_Start, Dat_Abr_Ende, Dat_Abschluss_DB)

10  fct_Sep = ""

20  If Year(Dat_Grundl_Erm_Start) = KJ And (Month(Dat_Grundl_Erm_Start) <= 9 And Month(Dat_Grundl_Erm_Ende) >= 9) Then
30      fct_Sep = "Grundl.ermittlung"
40      Exit Function
50  End If

60  If Year(Dat_Planung_Start) = KJ And Month(Dat_Planung_Start) <= 9 And Month(Dat_Planung_Ende) >= 9 Then
70      fct_Sep = "Planung"
80      Exit Function
90  End If


100 If Year(Dat_Ausschr_Start) = KJ And Month(Dat_Ausschr_Start) <= 9 And Month(Dat_Ausschr_Ende) >= 9 Then
110     fct_Sep = "Auschreibung"
120     Exit Function
130 End If

140 If Year(Dat_Ausf_Start) = KJ And Month(Dat_Ausf_Start) <= 9 And Month(Dat_Ausf_Ende) >= 9 Then
150     fct_Sep = "Ausführung"
160     Exit Function
170 End If

180 If Year(Dat_Abr_Start) = KJ And Month(Dat_Abr_Start) <= 9 And Month(Dat_Abr_Ende) >= 9 Then
190     fct_Sep = "Abrechnung"
200     Exit Function
210 End If

260 If Year(Dat_Abschluss_DB) = KJ And (Month(Dat_Abschluss_DB) = 9) Then
270     fct_Sep = "Abschluss mit DB"
280     Exit Function
290 End If

End Function

Function fct_Okt(KJ, Dat_Grundl_Erm_Start, Dat_Grundl_Erm_Ende, Dat_Planung_Start, Dat_Planung_Ende, _
                 Dat_Ausschr_Start, Dat_Ausschr_Ende, Dat_Ausf_Start, Dat_Ausf_Ende, _
                 Dat_Abr_Start, Dat_Abr_Ende, Dat_Abschluss_DB)

10  fct_Okt = ""

20  If Year(Dat_Grundl_Erm_Start) = KJ And (Month(Dat_Grundl_Erm_Start) <= 10 And Month(Dat_Grundl_Erm_Ende) >= 10) Then
30      fct_Okt = "Grundl.ermittlung"
40      Exit Function
50  End If

60  If Year(Dat_Planung_Start) = KJ And Month(Dat_Planung_Start) <= 10 And Month(Dat_Planung_Ende) >= 10 Then
70      fct_Okt = "Planung"
80      Exit Function
90  End If


100 If Year(Dat_Ausschr_Start) = KJ And Month(Dat_Ausschr_Start) <= 10 And Month(Dat_Ausschr_Ende) >= 10 Then
110     fct_Okt = "Auschreibung"
120     Exit Function
130 End If

140 If Year(Dat_Ausf_Start) = KJ And Month(Dat_Ausf_Start) <= 10 And Month(Dat_Ausf_Ende) >= 10 Then
150     fct_Okt = "Ausführung"
160     Exit Function
170 End If

180 If Year(Dat_Abr_Start) = KJ And Month(Dat_Abr_Start) <= 10 And Month(Dat_Abr_Ende) >= 10 Then
190     fct_Okt = "Abrechnung"
200     Exit Function
210 End If

260 If Year(Dat_Abschluss_DB) = KJ And (Month(Dat_Abschluss_DB) = 10) Then
270     fct_Okt = "Abschluss mit DB"
280     Exit Function
290 End If

End Function

Function fct_Nov(KJ, Dat_Grundl_Erm_Start, Dat_Grundl_Erm_Ende, Dat_Planung_Start, Dat_Planung_Ende, _
                 Dat_Ausschr_Start, Dat_Ausschr_Ende, Dat_Ausf_Start, Dat_Ausf_Ende, _
                 Dat_Abr_Start, Dat_Abr_Ende, Dat_Abschluss_DB)

10  fct_Nov = ""

20  If Year(Dat_Grundl_Erm_Start) = KJ And (Month(Dat_Grundl_Erm_Start) <= 11 And Month(Dat_Grundl_Erm_Ende) >= 11) Then
30      fct_Nov = "Grundl.ermittlung"
40      Exit Function
50  End If

60  If Year(Dat_Planung_Start) = KJ And Month(Dat_Planung_Start) <= 11 And Month(Dat_Planung_Ende) >= 11 Then
70      fct_Nov = "Planung"
80      Exit Function
90  End If


100 If Year(Dat_Ausschr_Start) = KJ And Month(Dat_Ausschr_Start) <= 11 And Month(Dat_Ausschr_Ende) >= 11 Then
110     fct_Nov = "Auschreibung"
120     Exit Function
130 End If

140 If Year(Dat_Ausf_Start) = KJ And Month(Dat_Ausf_Start) <= 11 And Month(Dat_Ausf_Ende) >= 11 Then
150     fct_Nov = "Ausführung"
160     Exit Function
170 End If

180 If Year(Dat_Abr_Start) = KJ And Month(Dat_Abr_Start) <= 11 And Month(Dat_Abr_Ende) >= 11 Then
190     fct_Nov = "Abrechnung"
200     Exit Function
210 End If

260 If Year(Dat_Abschluss_DB) = KJ And (Month(Dat_Abschluss_DB) = 11) Then
270     fct_Nov = "Abschluss mit DB"
280     Exit Function
290 End If

End Function

Function fct_Dez(KJ, Dat_Grundl_Erm_Start, Dat_Grundl_Erm_Ende, Dat_Planung_Start, Dat_Planung_Ende, _
                 Dat_Ausschr_Start, Dat_Ausschr_Ende, Dat_Ausf_Start, Dat_Ausf_Ende, _
                 Dat_Abr_Start, Dat_Abr_Ende, Dat_Abschluss_DB)

10  fct_Dez = ""

20  If Year(Dat_Grundl_Erm_Start) = KJ And (Month(Dat_Grundl_Erm_Start) <= 12 And Month(Dat_Grundl_Erm_Ende) >= 12) Then
30      fct_Dez = "Grundl.ermittlung"
40      Exit Function
50  End If

60  If Year(Dat_Planung_Start) = KJ And Month(Dat_Planung_Start) <= 12 And Month(Dat_Planung_Ende) >= 12 Then
70      fct_Dez = "Planung"
80      Exit Function
90  End If


100 If Year(Dat_Ausschr_Start) = KJ And Month(Dat_Ausschr_Start) <= 12 And Month(Dat_Ausschr_Ende) >= 12 Then
110     fct_Dez = "Auschreibung"
120     Exit Function
130 End If

140 If Year(Dat_Ausf_Start) = KJ And Month(Dat_Ausf_Start) <= 12 And Month(Dat_Ausf_Ende) >= 12 Then
150     fct_Dez = "Ausführung"
160     Exit Function
170 End If

180 If Year(Dat_Abr_Start) = KJ And Month(Dat_Abr_Start) <= 12 And Month(Dat_Abr_Ende) >= 12 Then
190     fct_Dez = "Abrechnung"
200     Exit Function
210 End If

260 If Year(Dat_Abschluss_DB) = KJ And (Month(Dat_Abschluss_DB) = 12) Then
270     fct_Dez = "Abschluss mit DB"
280     Exit Function
290 End If

End Function

Function fct_Erst_d_naechst_Mon(Optional Endetermin)

10  If IsNull(Endetermin) Then
20      fct_Erst_d_naechst_Mon = ""
30      Exit Function
40  End If

50  If IsMissing(Endetermin) Then
60      fct_Erst_d_naechst_Mon = ""
70      Exit Function
80  End If

90  If Not IsDate(Endetermin) Then
100     fct_Erst_d_naechst_Mon = ""
110     Exit Function
120 End If

130 If Month(Endetermin) = 12 Then
140     fct_Erst_d_naechst_Mon = CDate("01.01." & Year(Endetermin) + 1)
150     Exit Function
160 End If

170 fct_Erst_d_naechst_Mon = CDate("01." & Month(Endetermin) + 1 & "." & Year(Endetermin))

End Function
