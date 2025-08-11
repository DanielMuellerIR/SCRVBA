Attribute VB_Name = "mdl_Budde_Tools"
' ===============================================================================================================================
' ACHTUNG:
' Die hier hinterlegten Tools führen u.U. sehr mächtige Manipulationen aus,
' die in der Regel nicht mehr rückgängig zu machen sind.
' Es sollte UNBEDINGT VOR DEM GEBRAUCH ein SICHERUNGSKOPIE dieser DB-Datei erstellt werden
' ===============================================================================================================================

Option Compare Database
Option Explicit

Type str_PRTMIP
    strGZF As String * 28
End Type
Type type_PRTMIP
    xLeftMargin As Long
    yTopMargin As Long
    xRightMargin As Long
    yBotMargin As Long
    fDataOnly As Long
    xWidth As Long
    yHeight As Long
    fDefaultSize As Long
    cxColumns As Long
    yColumnSpacing As Long
    xRowSpacing As Long
    rItemLayout As Long
    fFastPrint As Long
    fDatasheet As Long
End Type
'

Sub Manipuliere_Formulare()

    Dim cnt As Container
    Dim Doc As Document
    Dim i As Long

10  DoCmd.SetWarnings True

20  For Each cnt In CurrentDb.Containers

30      If cnt.Name = "Forms" Then

40          i = 0
50          For Each Doc In cnt.Documents
60              i = i + 1
70              DoCmd.OpenForm Doc.Name, acDesign, , , , acHidden

80              Forms(Doc.Name).MenuBar = ""

                ' setze zu allen Formularen die Eigenschaft Popup ..
                ' (True : Das Form überdeckt auf dem Bildschirm immer andere ebenfalls geöffnete Formulare)
90              Forms(Doc.Name).PopUp = True

                ' setze zu allen Formularen die Eigenschaft Gebunden ..
                ' (True : Das Form behält immer den Focus,
                '         andere ggf. vorher geöffnete Formulare (dahinter) können nicht angeklickt werden)
100             Forms(Doc.Name).Modal = True

110             DoCmd.Close acForm, Doc.Name, acSaveYes
120             DBEngine.Idle dbRefreshCache

130         Next Doc

140     End If

150 Next cnt

160 Debug.Print
170 Debug.Print i & " Formulare umgebaut"

End Sub

Sub Manipuliere_Berichte()

    Dim cnt As Container
    Dim Doc As Document
    Dim i As Long, j As Long

10  DoCmd.SetWarnings True
20  i = 0
30  j = 0

40  For Each cnt In CurrentDb.Containers

50      If cnt.Name = "reports" Then

60          For Each Doc In cnt.Documents
70              i = i + 1
80              'DoCmd.OpenReport doc.Name, acViewDesign, , , acHidden

                ' Stelle Seitenränder auf 20 / 10 / 10 / 10 /10 mm
90              repRaender Doc.Name, 20, 10, 10, 10
110             DoCmd.Close acReport, Doc.Name, acSaveYes

120             DBEngine.Idle dbRefreshCache

130         Next Doc

140     End If

150 Next cnt
160 Debug.Print
170 Debug.Print i & " Berichte"

End Sub

Sub repRaender(Berichtsname As String, LRand, RRand, ORand, URand)

'Beispiel für den Aufruf:
'Call  repRaender("HauptBericht",20,10,15.01,15.93)
'Somit wird der Bericht "Hauptbericht" in der Entwurfsansicht
'geöffnet und dessen linker, rechter, oberer und unterer
'Rand in Millimetern eingestellt.

    Dim PrtMipZeichenfolge As str_PRTMIP
    Dim PM As type_PRTMIP
    Dim rpt As Report

10  DoCmd.OpenReport Berichtsname, acDesign, , , acHidden
20  Set rpt = Reports(Berichtsname)

30  PrtMipZeichenfolge.strGZF = rpt.PrtMip
40  LSet PM = PrtMipZeichenfolge
50  PM.xLeftMargin = LRand * 1440 / 25.4
60  PM.xRightMargin = RRand * 1440 / 25.4
70  PM.yTopMargin = ORand * 1440 / 25.4
80  PM.yBotMargin = URand * 1440 / 25.4
90  LSet PrtMipZeichenfolge = PM
100 rpt.PrtMip = PrtMipZeichenfolge.strGZF

110 DoCmd.Close acReport, Berichtsname, acSaveYes

End Sub

Sub Akt_ArbeitsOrdner()
    Dim Pfad As Variant
    Dim str_Datei As String
    Dim str_Ordner As String

10  Pfad = Split(CurrentDb.Name, "\")
20  str_Datei = Pfad(UBound(Pfad))
30  str_Ordner = Left(CurrentDb.Name, Len(CurrentDb.Name) - Len(str_Datei) - 1)
40  ChDir str_Ordner

End Sub
