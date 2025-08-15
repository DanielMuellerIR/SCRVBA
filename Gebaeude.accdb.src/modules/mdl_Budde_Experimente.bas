Attribute VB_Name = "mdl_Budde_Experimente"
Option Compare Database
Option Explicit

Sub PseudoArray()

    Dim str_komplett As String
    Dim lng_Pos_erst As Long
    Dim lng_Pos_letzt As Long

10  str_komplett = "|Erster||Zweiter|||Dritter||||Vierter||||||Fünfter||||||Sechster"
20  lng_Pos_erst = InStr(1, str_komplett, "|") + 1
30  lng_Pos_letzt = InStr(1, str_komplett, "||") - 2

40  Debug.Print "Dritter: " & Mid(str_komplett, lng_Pos_erst, lng_Pos_letzt)


End Sub


Public Sub TestDM()

Dim v As Variant

v = DLookup("Sum(Differenz)", "SummeGeplUndTats_JeGeb", IIf([Erledigt_Status] Like "1*", "[erledigt im Jahr] IS NOT NULL", "[erledigt im Jahr] IS NULL") & " AND id_geb=" & CStr([ID_Gebäude]))
MsgBox v
End Sub
