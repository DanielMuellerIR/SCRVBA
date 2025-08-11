Attribute VB_Name = "mdl_060_01_01_Loeschen_moeglich"
Option Compare Database
Option Explicit

Function DS_Loeschen_moeglich(Tabname As String, ID_Feld_Name As String, ByRef ID_Wert As Long)
' Diese Funktion überprüft sämtliche in Beziehung stehende TAbellen, ob hier Tochter-DS existieren,
' so dass  aufgrund dre regulär fehlenden Löschweitergabe das Löschen dieses DS eh nicht möglich ist.

10  For Each rel In CurrentDb.Relations

20      If (rel.Table = Tabname) And Not (rel.Attributes And dbRelationDeleteCascade) Then
            ' dbRelationDeleteCascade = Löschweitergabe aktiviert

            '30          If DLookup("[" & ID_Feld_Name & "]", rel.ForeignTable, "[" & ID_Feld_Name & "] = " & ID_Wert) = ID_Wert Then
30          If DLookup("[" & ID_Feld_Name & "]", rel.ForeignTable, ID_Feld_Name & " = " & ID_Wert) = ID_Wert Then
40              MsgBox "Sie können diesen Datensatz nicht löschen," & vbCrLf _
                     & "da es hierzu noch verknüpfte Tochterdatensätze in der Tabelle " & rel.ForeignTable & " gibt." & vbCrLf _
                     & "Bitte löschen Sie erst diese ..", vbOKOnly, "Löschen nicht möglich"

50              DS_Loeschen_moeglich = False
60              Exit Function
70          End If
80      End If

90  Next rel

    ' Wenn die rel-Schleife komplett durchlief, dann alles ok = keine Tochter-DS'e mehr, die hiermit in Beziehung stehen
100 DS_Loeschen_moeglich = True

End Function
