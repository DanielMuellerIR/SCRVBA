Attribute VB_Name = "Konvertiertes Makro- B_Gesamtergebnisse_zusammenstellen"
Option Compare Database
Option Explicit

'------------------------------------------------------------
' B_Gesamtergebnisse_zusammenstellen
'
'------------------------------------------------------------
Function B_Gesamtergebnisse_zusammenstellen()
On Error GoTo B_Gesamtergebnisse_zusammenstellen_Err

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse_A_erstellen", acNormal, acEdit
    DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse_B_erstellen", acNormal, acEdit
    DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse_C_erstellen", acNormal, acEdit
    DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse_D_erstellen", acNormal, acEdit
    DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse_E_erstellen", acNormal, acEdit
    DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse_G_erstellen", acNormal, acEdit
    DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse_H_erstellen", acNormal, acEdit
    DoCmd.OpenQuery "B_Abfrage_alle_Ergebnisse", acNormal, acEdit
    DoCmd.SetWarnings True


B_Gesamtergebnisse_zusammenstellen_Exit:
    Exit Function

B_Gesamtergebnisse_zusammenstellen_Err:
    MsgBox Error$
    Resume B_Gesamtergebnisse_zusammenstellen_Exit

End Function
